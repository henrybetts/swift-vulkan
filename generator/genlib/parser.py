from xml.etree import ElementTree
from typing import List, Union, Dict, Optional
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
                 const: bool = False, length: Union[str, int] = None, optional: bool = False):
        self.name = name
        self.pointer_to = pointer_to
        self.array_of = array_of
        self.const = const
        self.length = length
        self.optional = optional


class CMember:
    def __init__(self, name: str, type_: CType, values: List[str] = None):
        self.name = name
        self.type = type_
        self.values = values or []


class CStruct:
    def __init__(self, name: str, members: List[CMember] = None, returned_only=False):
        self.name = name
        self.members = members or []
        self.returned_only = returned_only


class CHandle:
    def __init__(self, name: str, parent: 'CHandle' = None, protect: str = None):
        self.name = name
        self.parent = parent
        self.protect = protect


class CCommand:
    def __init__(self, name: str, return_type: CType, params: List[CMember] = None):
        self.name = name
        self.return_type = return_type
        self.params = params or []


class CExtension:
    def __init__(self, name: str, supported: str = None, platform: str = None, protect: str = None,
                 types: List[str] = None, enums: List[CEnum] = None, commands: List[str] = None):
        self.name = name
        self.supported = supported
        self.platform = platform
        self.protect = protect
        self.types = types or []
        self.enums = enums or []
        self.commands = commands or []


class CAlias:
    def __init__(self, name: str, alias: str, protect: str = None):
        self.name = name
        self.alias = alias
        self.protect = protect


class CContext:
    def __init__(self):
        self.platform_protects: Dict[str, str] = {}
        self.extensions: List[CExtension] = []
        self.extension_tags: List[str] = []
        self.handles: List[CHandle] = []
        self.enums: List[CEnum] = []
        self.bitmasks: List[CBitmask] = []
        self.structs: List[CStruct] = []
        self.commands: List[CCommand] = []
        self.aliases: List[CAlias] = []

    def parse(self, source):
        tree = ElementTree.parse(source)
        self.parse_tree(tree)

    def parse_tree(self, tree: ElementTree):
        self.parse_platforms(tree)
        self.parse_extensions(tree)
        self.parse_extension_tags(tree)
        self.parse_handles(tree)
        self.parse_enums(tree)
        self.parse_bitmasks(tree)
        self.parse_structs(tree)
        self.parse_commands(tree)

    def parse_platforms(self, tree: ElementTree):
        for platform in tree.findall('./platforms/platform'):
            self.platform_protects[platform.attrib['name']] = platform.attrib['protect']

    def parse_extensions(self, tree: ElementTree):
        for e_extension in tree.findall('./extensions/extension'):
            extension_number = int(e_extension.attrib['number'])

            enums: Dict[str, List[CEnum.Case]] = {}
            for e_enum in e_extension.findall('./require/enum[@extends]'):
                if 'alias' in e_enum.attrib:
                    continue
                c_case = CEnum.Case(e_enum.attrib['name'], parse_enum_value(e_enum, extension_number))
                enums.setdefault(e_enum.attrib['extends'], []).append(c_case)

            platform = e_extension.get('platform')

            c_extension = CExtension(
                name=e_extension.attrib['name'],
                supported=e_extension.get('supported'),
                platform=platform,
                protect=self.platform_protects[platform] if platform else None,
                types=[t.attrib['name'] for t in e_extension.findall('./require/type')],
                enums=[CEnum(enum_name, cases) for enum_name, cases in enums.items()],
                commands=[c.attrib['name'] for c in e_extension.findall('./require/command')],
            )
            self.extensions.append(c_extension)

    def parse_extension_tags(self, tree: ElementTree):
        for tag in tree.findall('./tags/tag'):
            self.extension_tags.append(tag.attrib['name'])

    def parse_handles(self, tree: ElementTree):
        handles: Dict[str, CHandle] = {}
        parents: Dict[str, str] = {}

        for e_handle in tree.findall('./types/type[@category="handle"]'):
            if 'alias' in e_handle.attrib:
                handle_name = e_handle.attrib['name']
                alias = handles[e_handle.attrib['alias']]
                protect = self.find_protect(type_=handle_name)
                self.aliases.append(CAlias(handle_name, alias.name, protect))
                if alias.protect and not protect:
                    alias.protect = None
                continue

            handle_name = e_handle.find('./name').text
            handle = CHandle(handle_name, protect=self.find_protect(type_=handle_name))
            self.handles.append(handle)
            handles[handle_name] = handle
            parents[handle_name] = e_handle.get('parent')

        for handle_name, handle in handles.items():
            try:
                handle.parent = handles[parents[handle_name]]
            except KeyError:
                pass

    def parse_enums(self, tree: ElementTree):
        for e_enum in tree.findall('./enums[@type="enum"]'):
            enum_name = e_enum.attrib['name']

            if self.should_ignore(type_=enum_name):
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

            if self.should_ignore(type_=bitmask_name):
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

            if self.should_ignore(type_=struct.attrib['name']):
                continue

            c_struct = CStruct(struct.attrib['name'], returned_only=struct.get('returnedonly') == 'true')

            for member in struct.findall('./member'):
                c_struct.members.append(parse_member(member, tree))

            self.structs.append(c_struct)

    def parse_commands(self, tree: ElementTree):
        for e_command in tree.findall('./commands/command'):
            if 'alias' in e_command.attrib:
                continue

            proto = parse_member(e_command.find('./proto'), tree)

            if self.should_ignore(command=proto.name):
                continue

            c_command = CCommand(proto.name, proto.type)
            for e_param in e_command.findall('./param'):
                c_command.params.append(parse_member(e_param, tree))

            self.commands.append(c_command)

    def find_extension(self, type_: str = None, command: str = None) -> Optional[CExtension]:
        for extension in self.extensions:
            if (type_ and type_ in extension.types) or (command and command in extension.commands):
                return extension

    def find_protect(self, type_: str = None, command: str = None) -> Optional[str]:
        extension = self.find_extension(type_, command)
        if extension:
            return extension.protect

    def should_ignore(self, type_: str = None, command: str = None) -> bool:
        extension = self.find_extension(type_, command)
        if extension and (extension.supported == 'disabled' or extension.platform):
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


def parse_member(member: ElementTree, tree: ElementTree) -> CMember:
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

    values_string = member.get('values')
    values = values_string.split(',') if values_string else []

    return CMember(name, c_type, values)
