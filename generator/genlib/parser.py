from xml.etree import ElementTree
from typing import List, Union
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
        self.enums: List[CEnum] = []
        self.bitmasks: List[CBitmask] = []
        self.structs: List[CStruct] = []

    def parse(self, source):
        tree = ElementTree.parse(source)
        self.parse_tree(tree)

    def parse_tree(self, tree: ElementTree):
        self.parse_extensions(tree)
        self.parse_extension_tags(tree),
        self.parse_enums(tree)
        self.parse_bitmasks(tree)
        self.parse_structs(tree)

    def parse_extensions(self, tree: ElementTree):
        for e_extension in tree.findall('./extensions/extension'):
            c_extension = CExtension(
                name=e_extension.attrib['name'],
                supported=e_extension.get('supported'),
                platform=e_extension.get('platform'),
                types=[t.attrib['name'] for t in e_extension.findall('./require/type')])
            self.extensions.append(c_extension)

    def parse_extension_tags(self, tree: ElementTree):
        for tag in tree.findall('./tags/tag'):
            self.extension_tags.append(tag.attrib['name'])

    def parse_enums(self, tree: ElementTree):
        for enum in tree.findall('./enums[@type="enum"]'):
            if self.should_ignore_type(enum.attrib['name']):
                continue

            c_enum = CEnum(name=enum.attrib['name'], cases=[])
            for case in enum.findall('./enum[@value]'):  # TODO: Handle aliases
                c_enum.cases.append(CEnum.Case(name=case.attrib['name'], value=case.attrib['value']))

            case_names = []
            for extension in tree.findall(f'./extensions/extension'):
                if extension.get('supported') == 'disabled':
                    continue

                ext_number = int(extension.attrib['number'])
                for case in extension.findall(f'./require/enum[@extends="{c_enum.name}"][@offset]'):
                    case_name = case.attrib['name']
                    if case_name in case_names:
                        continue

                    case_ext_number = ext_number
                    if 'extnumber' in case.attrib:
                        case_ext_number = int(case.attrib['extnumber'])

                    value = 1000000000 + (case_ext_number - 1) * 1000 + int(case.attrib['offset'])
                    signed_value = case.get('dir', '') + str(value)

                    case_names.append(case_name)
                    c_enum.cases.append(
                        CEnum.Case(name=case_name, value=signed_value)
                    )

            self.enums.append(c_enum)

    def parse_bitmasks(self, tree: ElementTree):
        for bitmask in tree.findall('./types/type[@category="bitmask"]'):
            if 'alias' in bitmask.attrib:
                continue

            name = bitmask.find('./name').text

            if self.should_ignore_type(name):
                continue

            c_bitmask = CBitmask(name)

            requires = bitmask.get('requires')
            if requires:
                c_enum = CEnum(requires, [])
                enum = tree.find(f'./enums[@name="{requires}"]')

                for case in enum.findall('./enum'):
                    if 'alias' in case.attrib:
                        continue

                    if 'bitpos' in case.attrib:
                        value = str(2 ** int(case.attrib['bitpos']))
                    else:
                        value = case.attrib['value']

                    c_enum.cases.append(CEnum.Case(name=case.attrib['name'], value=value))

                case_names = []
                for extension in tree.findall(f'./extensions/extension'):
                    if extension.get('supported') == 'disabled':
                        continue

                    for case in extension.findall(f'./require/enum[@extends="{c_enum.name}"][@bitpos]'):
                        case_name = case.attrib['name']
                        if case_name in case_names:
                            continue

                        if 'bitpos' in case.attrib:
                            value = 2 ** int(case.attrib['bitpos'])
                        else:
                            value = case.attrib['value']

                        case_names.append(case_name)
                        c_enum.cases.append(
                            CEnum.Case(name=case_name, value=value)
                        )

                c_bitmask.enum = c_enum

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

                lengths = lengths[:len(pointers)]
                optionals = optionals[:len(pointers)]

                for pointer, length, optional in zip_longest(reversed(pointers), lengths, optionals):
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
