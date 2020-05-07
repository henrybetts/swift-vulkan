from .parser import CContext, CEnum, CBitmask, CStruct, CType
from typing import Optional, Tuple, List

IMPLICIT_TYPE_MAP = {
    'void': 'Void',
    'char': 'CChar',
    'float': 'Float',
    'double': 'Double',
    'uint8_t': 'UInt8',
    'uint16_t': 'UInt16',
    'uint32_t': 'UInt32',
    'uint64_t': 'UInt64',
    'int32_t': 'Int32',
    'int64_t': 'Int64',
    'size_t': 'Int',
    'int': 'Int32'
}


class SwiftEnum(CEnum):
    def __init__(self, c_enum: CEnum, raw_type: str, **kwargs):
        super().__init__(**kwargs)
        self.c_enum = c_enum
        self.raw_type = raw_type


class SwiftOptionSet(CEnum):
    def __init__(self, c_bitmask: CBitmask, raw_type: str, **kwargs):
        super().__init__(**kwargs)
        self.c_bitmask = c_bitmask
        self.raw_type = raw_type


class SwiftStruct:
    class Member:
        def __init__(self, name: str, type_: str):
            self.name = name
            self.type = type_

    def __init__(self, name: str, members: List[Member], c_struct: CStruct):
        self.name = name
        self.members = members
        self.c_struct = c_struct


class SwiftContext:
    def __init__(self):
        self.enums: List[SwiftEnum] = []
        self.option_sets: List[SwiftOptionSet] = []
        self.structs: List[SwiftStruct] = []


class Importer:
    def __init__(self, c_context: CContext):
        self.c_context = c_context

    def import_all(self) -> SwiftContext:
        context = SwiftContext()
        context.enums = [self.import_enum(enum) for enum in self.c_context.enums]
        context.option_sets = [self.import_bitmask(bitmask) for bitmask in self.c_context.bitmasks]
        context.structs = [self.import_struct(struct) for struct in self.c_context.structs]
        return context

    def import_enum(self, c_enum: CEnum) -> SwiftEnum:
        swift_enum = SwiftEnum(
            name=remove_vk_prefix(c_enum.name),
            cases=[],
            c_enum=c_enum,
            raw_type='UInt32'
        )

        prefix, enum_tag = self.pop_extension_tag(swift_enum.name)

        starts_with_digit = False
        for case in c_enum.cases:
            name = remove_vk_prefix(case.name)
            name, tag = self.pop_extension_tag(name)
            name = snake_to_pascal(name)

            if name.startswith(prefix):
                name = name[len(prefix):]

            if not name:
                name = tag.lower()
            elif tag and tag != enum_tag:
                name += tag

            name = name[0].lower() + name[1:]

            if name[0].isdigit():
                starts_with_digit = True

            try:
                if int(case.value) < 0:
                    swift_enum.raw_type = 'Int32'
            except ValueError:
                pass

            swift_enum.cases.append(SwiftEnum.Case(name=name, value=case.value))

        if starts_with_digit:
            for case in swift_enum.cases:
                case.name = 'type' + case.name[0].upper() + case.name[1:]

        return swift_enum

    def import_bitmask(self, c_bitmask: CBitmask) -> SwiftOptionSet:
        option_set = SwiftOptionSet(
            name=remove_vk_prefix(c_bitmask.name),
            cases=[],
            c_bitmask=c_bitmask,
            raw_type='UInt32'
        )

        if c_bitmask.enum:
            prefix, enum_tag = self.pop_extension_tag(option_set.name)
            if prefix.endswith('Flags'):
                prefix = prefix[:-5]

            starts_with_digit = False
            for case in c_bitmask.enum.cases:
                name = remove_vk_prefix(case.name)
                name, tag = self.pop_extension_tag(name)
                name = snake_to_pascal(name)

                if name.startswith(prefix):
                    name = name[len(prefix):]

                if name.endswith('Bit'):
                    name = name[:-3]

                if not name:
                    name = tag.lower()
                elif tag and tag != enum_tag:
                    name += tag

                name = name[0].lower() + name[1:]

                if name[0].isdigit():
                    starts_with_digit = True

                option_set.cases.append(SwiftOptionSet.Case(name=name, value=case.value))

            if starts_with_digit:
                for case in option_set.cases:
                    case.name = 'type' + case.name[0].upper() + case.name[1:]

        return option_set

    def import_struct(self, c_struct: CStruct) -> SwiftStruct:
        struct = SwiftStruct(
            name=remove_vk_prefix(c_struct.name),
            members=[SwiftStruct.Member(member.name, self.get_swift_type(member.type)) for member in c_struct.members],
            c_struct=c_struct
        )
        return struct

    def get_swift_type(self, c_type: CType) -> str:
        if c_type.name:
            if c_type.name in IMPLICIT_TYPE_MAP:
                return IMPLICIT_TYPE_MAP[c_type.name]
            return c_type.name
        elif c_type.pointer_to:
            if c_type.pointer_to.name == 'void':
                return 'UnsafeRawPointer' if c_type.pointer_to.const else 'UnsafeMutableRawPointer'
            to_type = self.get_swift_type(c_type.pointer_to)
            if self.is_pointer_type(c_type.pointer_to):
                to_type += '?'
            return f'UnsafePointer<{to_type}>' if c_type.pointer_to.const else f'UnsafeMutablePointer<{to_type}>'
        elif c_type.array_of:
            of_type = self.get_swift_type(c_type.array_of)
            return f'({", ".join([of_type] * c_type.length)})'

    def is_pointer_type(self, c_type: CType) -> bool:
        return (c_type.pointer_to is not None
                or (c_type.name and c_type.name in self.c_context.handles))

    def pop_extension_tag(self, string: str) -> Tuple[str, Optional[str]]:
        for tag in self.c_context.extension_tags:
            if string.endswith(tag):
                return string[:-len(tag)].rstrip('_'), tag
        return string, None


def remove_vk_prefix(string: str) -> str:
    if string[:2].lower() == 'vk':
        string = string[2:]
    return string.lstrip('_')


def snake_to_pascal(string: str) -> str:
    parts = string.lower().split('_')
    parts = map(lambda p: p[0].upper() + p[1:], parts)
    return ''.join(parts)


def snake_to_camel(string: str) -> str:
    pascal = snake_to_pascal(string)
    return pascal[0].lower() + pascal[1:]
