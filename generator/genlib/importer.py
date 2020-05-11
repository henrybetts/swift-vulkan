from .parser import CContext, CEnum, CBitmask, CStruct, CType
from . import typeconversion as tc
from typing import Optional, Tuple, List, Dict


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
        def __init__(self, name: str, type_: str, value_generator: tc.ValueGenerator):
            self.name = name
            self.type = type_
            self.value_generator = value_generator

    def __init__(self, c_struct: CStruct, name: str, members: List[Member],
                 c_value_generators: List[tc.ValueGenerator], closure_generators: List[tc.ClosureGenerator]):
        self.name = name
        self.members = members
        self.c_value_generators = c_value_generators
        self.closure_generators = closure_generators
        self.c_struct = c_struct


class SwiftContext:
    def __init__(self):
        self.enums: List[SwiftEnum] = []
        self.option_sets: List[SwiftOptionSet] = []
        self.structs: List[SwiftStruct] = []


class Importer:
    def __init__(self, c_context: CContext):
        self.c_context = c_context
        self.imported_enums: Dict[str, str] = {}
        self.imported_option_sets: Dict[str, str] = {}
        self.imported_option_set_bits: Dict[str, str] = {}
        self.imported_structs: Dict[str, str] = {}

    def import_all(self) -> SwiftContext:
        context = SwiftContext()
        context.enums = [self.import_enum(enum) for enum in self.c_context.enums]
        context.option_sets = [self.import_bitmask(bitmask) for bitmask in self.c_context.bitmasks]
        for struct in self.c_context.structs:
            self.import_struct_name(struct)
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

        self.imported_enums[c_enum.name] = swift_enum.name
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

            self.imported_option_set_bits[c_bitmask.enum.name] = option_set.name

        self.imported_option_sets[c_bitmask.name] = option_set.name
        return option_set

    def import_struct_name(self, c_struct) -> str:
        name = remove_vk_prefix(c_struct.name)
        self.imported_structs[c_struct.name] = name
        return name

    def import_struct(self, c_struct: CStruct):
        struct = SwiftStruct(c_struct=c_struct,
                             name=self.imported_structs.get(c_struct.name) or self.import_struct_name(c_struct),
                             members=[],
                             c_value_generators=[],
                             closure_generators=[])

        for c_member in c_struct.members:
            if len(c_member.values) == 1:
                struct.c_value_generators.append(static_value_generator(c_member.values[0]))
                continue

            if c_member.name == 'pNext':
                struct.c_value_generators.append(static_value_generator('nil'))
                continue

            swift_type, conversion = self.get_type_conversion(c_member.type)
            member = SwiftStruct.Member(name=c_member.name, type_=swift_type,
                                        value_generator=conversion.get_c_value_generator(c_member.name))

            struct.members.append(member)
            struct.c_value_generators.append(conversion.get_c_value_generator(c_member.name))
            if isinstance(conversion, tc.RequiresClosure):
                struct.closure_generators.append(conversion.get_closure_generator(c_member.name))

        return struct

    def get_type_conversion(self, c_type: CType, implicit_only: bool = False) -> Tuple[str, tc.TypeConversion]:
        if c_type.name:
            if c_type.name in tc.IMPLICIT_TYPE_MAP:
                return tc.IMPLICIT_TYPE_MAP[c_type.name], tc.ImplicitConversion()
            if not implicit_only:
                if c_type.name == 'VkBool32':
                    return 'Bool', tc.BoolConversion()
                if c_type.name in self.imported_enums:
                    swift_enum = self.imported_enums[c_type.name]
                    return swift_enum, tc.EnumConversion(c_type.name, swift_enum)
                if c_type.name in self.imported_option_sets:
                    option_set = self.imported_option_sets[c_type.name]
                    return option_set, tc.OptionSetConversion(option_set)
                if c_type.name in self.imported_option_set_bits:
                    option_set = self.imported_option_set_bits[c_type.name]
                    return option_set, tc.OptionSetBitConversion(c_type.name, option_set)
                if c_type.name in self.imported_structs:
                    swift_struct = self.imported_structs[c_type.name]
                    return swift_struct, tc.StructConversion(c_type.name, swift_struct)
            return c_type.name, tc.ImplicitConversion()

        elif c_type.pointer_to:
            if c_type.pointer_to.name == 'void':
                if c_type.pointer_to.const:
                    return 'UnsafeRawPointer', tc.ImplicitConversion()
                else:
                    return 'UnsafeMutableRawPointer', tc.ImplicitConversion()

            if not implicit_only and c_type.pointer_to.const:
                if c_type.pointer_to.name == 'char' and c_type.length == 'null-terminated':
                    return 'String', tc.StringConversion()
                if c_type.pointer_to.name and not c_type.length and c_type.pointer_to.name in self.imported_structs:
                    swift_struct = self.imported_structs[c_type.pointer_to.name]
                    if c_type.optional:
                        return swift_struct + '?', tc.OptionalStructConversion(c_type.name, swift_struct)
                    else:
                        return swift_struct, tc.StructPointerConversion(c_type.name, swift_struct)

            to_type, _ = self.get_type_conversion(c_type.pointer_to, implicit_only=True)
            if self.is_pointer_type(c_type.pointer_to):
                to_type += '?'
            if c_type.pointer_to.const:
                return f'UnsafePointer<{to_type}>', tc.ImplicitConversion()
            else:
                return f'UnsafeMutablePointer<{to_type}>', tc.ImplicitConversion()

        elif c_type.array_of:
            if c_type.array_of.name == 'char':
                return 'String', tc.CharArrayConversion()
            of_type, _ = self.get_type_conversion(c_type.array_of, implicit_only=True)
            return f'({", ".join([of_type] * c_type.length)})', tc.ImplicitConversion()

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


def static_value_generator(static_value: str) -> tc.ValueGenerator:
    def generator(_) -> str:
        return static_value
    return generator
