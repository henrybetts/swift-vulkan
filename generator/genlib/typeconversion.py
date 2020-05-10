from typing import Callable, Dict, Tuple

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

ValueGenerator = Callable[[Dict[str, str]], str]
ClosureGenerator = Callable[[Dict[str, str]], Tuple[str, str]]


class TypeConversion:
    def get_swift_value(self, c_value: str) -> str:
        raise NotImplementedError

    def get_c_value(self, swift_value: str, name: str = '') -> str:
        raise NotImplementedError

    def get_c_value_generator(self, swift_name: str) -> ValueGenerator:
        def generator(values_map: Dict[str, str]) -> str:
            return self.get_c_value(values_map.get(swift_name, swift_name), swift_name)
        return generator

    def get_swift_value_generator(self, c_name: str) -> ValueGenerator:
        def generator(values_map: Dict[str, str]) -> str:
            return self.get_swift_value(values_map.get(c_name, c_name))
        return generator


class RequiresClosure:
    def get_closure(self, swift_value: str, name: str = '') -> Tuple[str, str]:
        raise NotImplementedError

    def get_closure_generator(self, swift_name: str) -> ClosureGenerator:
        def generator(values_map: Dict[str, str]) -> Tuple[str, str]:
            return self.get_closure(values_map.get(swift_name, swift_name), swift_name)
        return generator


class ImplicitConversion(TypeConversion):
    def get_swift_value(self, c_value: str) -> str:
        return c_value

    def get_c_value(self, swift_value: str, name: str = '') -> str:
        return swift_value


class BoolConversion(TypeConversion):
    def get_swift_value(self, c_value: str) -> str:
        return f'{c_value} == VK_TRUE'

    def get_c_value(self, swift_value: str, name: str = '') -> str:
        return f'VkBool32({swift_value} ? VK_TRUE : VK_FALSE)'


class EnumConversion(TypeConversion):
    def __init__(self, c_enum: str, swift_enum: str):
        self.c_enum = c_enum
        self.swift_enum = swift_enum

    def get_swift_value(self, c_value: str) -> str:
        return f'{self.swift_enum}(rawValue: {c_value}.rawValue)!'

    def get_c_value(self, swift_value: str, name: str = '') -> str:
        return f'{self.c_enum}(rawValue: {swift_value}.rawValue)'


class OptionSetConversion(TypeConversion):
    def __init__(self, option_set: str):
        self.option_set = option_set

    def get_swift_value(self, c_value: str) -> str:
        return f'{self.option_set}(rawValue: {c_value})'

    def get_c_value(self, swift_value: str, name: str = '') -> str:
        return f'{swift_value}.rawValue'


class StringConversion(TypeConversion, RequiresClosure):
    def get_swift_value(self, c_value: str) -> str:
        return f'String(cString: {c_value})'

    def get_closure(self, swift_value: str, name: str = '') -> Tuple[str, str]:
        return f'{swift_value}.withCString {{ cString_{name} in', '}'

    def get_c_value(self, swift_value: str, name: str = '') -> str:
        return f'cString_{name}'


class CharArrayConversion(TypeConversion):
    def get_swift_value(self, c_value: str) -> str:
        return f'String(unsafeBytesOf: {c_value})'

    def get_c_value(self, swift_value: str, name: str = '') -> str:
        return f'{swift_value}.unsafeBytesCopy()'


class StructConversion(TypeConversion, RequiresClosure):
    def __init__(self, c_struct: str, swift_struct: str):
        self.c_struct = c_struct
        self.swift_struct = swift_struct

    def get_swift_value(self, c_value: str) -> str:
        return f'{self.swift_struct}(cStruct: {c_value})'

    def get_closure(self, swift_value: str, name: str = '') -> Tuple[str, str]:
        return f'{swift_value}.withCStruct {{ ptr_{name} in', '}'

    def get_c_value(self, swift_value: str, name: str = '') -> str:
        return f'ptr_{name}.pointee'


class StructPointerConversion(TypeConversion, RequiresClosure):
    def __init__(self, c_struct: str, swift_struct: str):
        self.c_struct = c_struct
        self.swift_struct = swift_struct

    def get_swift_value(self, c_value: str) -> str:
        return f'{self.swift_struct}(cStruct: {c_value}.pointee)'

    def get_closure(self, swift_value: str, name: str = '') -> Tuple[str, str]:
        return f'{swift_value}.withCStruct {{ ptr_{name} in', '}'

    def get_c_value(self, swift_value: str, name: str = '') -> str:
        return f'ptr_{name}'


class OptionalStructConversion(StructPointerConversion):
    def get_swift_value(self, c_value: str) -> str:
        return f'({c_value} != nil) ? {self.swift_struct}(cStruct: {c_value}) : nil'

    def get_closure(self, swift_value: str, name: str = '') -> Tuple[str, str]:
        return f'{swift_value}.withOptionalCStruct {{ ptr_{name} in', '}'

    def get_c_value(self, swift_value: str, name: str = '') -> str:
        return f'ptr_{name}'
