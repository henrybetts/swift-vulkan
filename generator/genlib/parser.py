from xml.etree import ElementTree
from typing import List, Union, Dict
import re
from itertools import zip_longest


class CEnum:
    class Case:
        def __init__(self, name: str, value: str):
            self.name = name
            self.value = value

    def __init__(self, name: str, cases: List[Case] = None):
        self.name = name
        self.cases = cases or []


class CBitmask:
    def __init__(self, name: str, enum: CEnum = None):
        self.name = name
        self.enum = enum


class CType:
    def __init__(self, name: str = None, pointer_to: 'CType' = None, array_of: 'CType' = None,
                 const: bool = False, length: Union[str, int] = None, optional: bool = False, values: List[str] = None):
        self.name = name
        self.pointer_to = pointer_to
        self.array_of = array_of
        self.const = const
        self.length = length
        self.optional = optional
        self.values = values or []


class CStruct:
    class Member:
        def __init__(self, name: str, type_: CType):
            self.name = name
            self.type = type_

    def __init__(self, name: str, members: List[Member] = None):
        self.name = name
        self.members = members or []


class CExtension:
    def __init__(self, name: str, supported: str = None, platform: str = None,
                 types: List[str] = None, enums: List[CEnum] = None):
        self.name = name
        self.supported = supported
        self.platform = platform
        self.types = types or []
        self.enums = enums or []


class CContext:
    def __init__(self):
        self.extensions: List[CExtension] = []
        self.extension_tags: List[str] = []
        self.handles: List[str] = []
        self.enums: List[CEnum] = []
        self.bitmasks: List[CBitmask] = []
        self.structs: List[CStruct] = []

    def parse(self, source):
        tree = ElementTree.parse(source)
        self.parse_tree(tree)

    def parse_tree(self, tree: ElementTree):
        self.parse_extensions(tree)
        self.parse_extension_tags(tree)
        self.parse_handles(tree)
        self.parse_enums(tree)
        self.parse_bitmasks(tree)
        self.parse_structs(tree)

    def parse_extensions(self, tree: ElementTree):
        for e_extension in tree.findall('./extensions/extension'):
            extension_number = int(e_extension.attrib['number'])

            enums: Dict[str, List[CEnum.Case]] = {}
            for e_enum in e_extension.findall('./require/enum[@extends]'):
                if 'alias' in e_enum.attrib:
                    continue
                c_case = CEnum.Case(e_enum.attrib['name'], parse_enum_value(e_enum, extension_number))
                enums.setdefault(e_enum.attrib['extends'], []).append(c_case)

            c_extension = CExtension(
                name=e_extension.attrib['name'],
                supported=e_extension.get('supported'),
                platform=e_extension.get('platform'),
                types=[t.attrib['name'] for t in e_extension.findall('./require/type')],
                enums=[CEnum(enum_name, cases) for enum_name, cases in enums.items()]
            )
            self.extensions.append(c_extension)

    def parse_extension_tags(self, tree: ElementTree):
        for tag in tree.findall('./tags/tag'):
            self.extension_tags.append(tag.attrib['name'])

    def parse_handles(self, tree: ElementTree):
        for handle in tree.findall('./types/type[@category="handle"]'):
            if 'alias' in handle.attrib:
                continue
            handle_name = handle.find('./name').text
            if not self.should_ignore_type(handle_name):
                self.handles.append(handle_name)

    def parse_enums(self, tree: ElementTree):
        for e_enum in tree.findall('./enums[@type="enum"]'):
            enum_name = e_enum.attrib['name']

            if self.should_ignore_type(enum_name):
                continue

            cases = {}
            for e_case in e_enum.findall('./enum'):
                if 'alias' in e_case.attrib:
                    continue
                cases[e_case.attrib['name']] = parse_enum_value(e_case)

            for extension in self.extensions:
                if extension.supported == 'disabled' or extension.platform:
                    continue
                for ext_enum in extension.enums:
                    if ext_enum.name == enum_name:
                        for ext_case in ext_enum.cases:
                            cases[ext_case.name] = ext_case.value

            c_enum = CEnum(enum_name, [CEnum.Case(name, value) for name, value in cases.items()])
            self.enums.append(c_enum)

    def parse_bitmasks(self, tree: ElementTree):
        for e_bitmask in tree.findall('./types/type[@category="bitmask"]'):
            if 'alias' in e_bitmask.attrib:
                continue

            bitmask_name = e_bitmask.find('./name').text

            if self.should_ignore_type(bitmask_name):
                continue

            c_bitmask = CBitmask(bitmask_name)

            requires = e_bitmask.get('requires')
            if requires:
                cases = {}
                e_enum = tree.find(f'./enums[@name="{requires}"]')
                for e_case in e_enum.findall('./enum'):
                    if 'alias' in e_case.attrib:
                        continue
                    cases[e_case.attrib['name']] = parse_enum_value(e_case)

                for extension in self.extensions:
                    if extension.supported == 'disabled' or extension.platform:
                        continue
                    for ext_enum in extension.enums:
                        if ext_enum.name == requires:
                            for ext_case in ext_enum.cases:
                                cases[ext_case.name] = ext_case.value

                c_bitmask.enum = CEnum(requires, [CEnum.Case(name, value) for name, value in cases.items()])

            self.bitmasks.append(c_bitmask)

    def parse_structs(self, tree: ElementTree):
        for struct in tree.findall('./types/type[@category="struct"]'):
            if 'alias' in struct.attrib:
                continue

            if self.should_ignore_type(struct.attrib['name']):
                continue

            c_struct = CStruct(struct.attrib['name'])

            for member in struct.findall('./member'):
                e_type = member.find('./type')
                type_string = (member.text or '') + e_type.text + (e_type.tail or '')

                e_name = member.find('./name')
                name = e_name.text

                array_size: int = None
                if e_name.tail and e_name.tail.startswith('['):
                    match = re.match('\[\s*(\d+)\s*\]', e_name.tail)
                    if match:
                        array_size = int(match.group(1))
                    else:
                        e_enum = member.find('./enum')
                        array_size = int(tree.find(f'./enums/enum[@name="{e_enum.text}"]').attrib['value'])

                type_strings = type_string.split('*')

                first_type = type_strings[0].split()
                is_const = False
                if 'const' in first_type:
                    first_type.remove('const')
                    is_const = True
                if 'struct' in first_type:
                    first_type.remove('struct')
                c_type = CType(name=' '.join(first_type), const=is_const)

                pointers = type_strings[1:]
                lengths = member.attrib['len'].split(',') if 'len' in member.attrib else []
                optionals = member.attrib['optional'].split(',') if 'optional' in member.attrib else []

                if len(optionals) > len(pointers):
                    c_type.optional = optionals.pop(-1) == 'true'

                lengths = reversed(lengths[:len(pointers)])
                optionals = reversed(optionals[:len(pointers)])

                for pointer, length, optional in zip_longest(pointers, lengths, optionals):
                    c_type = CType(pointer_to=c_type, length=length, const='const' in pointer,
                                   optional=optional == 'true')

                if array_size is not None:
                    c_type = CType(array_of=c_type, length=array_size)

                c_struct.members.append(CStruct.Member(name, c_type))

            self.structs.append(c_struct)

    def should_ignore_type(self, type_name: str) -> bool:
        for extension in self.extensions:
            if type_name in extension.types:
                if extension.supported == 'disabled' or extension.platform:
                    return True
        return False


def parse_enum_value(e_enum: ElementTree, extension_number: int = None) -> str:
    if 'offset' in e_enum.attrib:
        if 'extnumber' in e_enum.attrib:
            extension_number = int(e_enum.attrib['extnumber'])
        value = 1000000000 + (extension_number - 1) * 1000 + int(e_enum.attrib['offset'])
        if e_enum.get('dir') == '-':
            value *= -1
        return str(value)
    elif 'bitpos' in e_enum.attrib:
        return str(2 ** int(e_enum.attrib['bitpos']))
    else:
        return e_enum.attrib['value']
