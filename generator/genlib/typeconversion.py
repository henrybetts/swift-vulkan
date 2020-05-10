from typing import Callable, Dict

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


class TypeConversion:
    def get_swift_value(self, c_value: str) -> str:
        raise NotImplementedError

    def get_c_value(self, swift_value: str) -> str:
        raise NotImplementedError

    def bind_swift_value(self, swift_value: str) -> ValueGenerator:
        def generator(values_map: Dict[str, str]) -> str:
            return self.get_c_value(values_map.get(swift_value, swift_value))
        return generator

    def bind_c_value(self, c_value: str) -> ValueGenerator:
        def generator(values_map: Dict[str, str]) -> str:
            return self.get_swift_value(values_map.get(c_value, c_value))
        return generator


class ImplicitConversion(TypeConversion):
    def get_swift_value(self, c_value: str) -> str:
        return c_value

    def get_c_value(self, swift_value: str) -> str:
        return swift_value


class BoolConversion(TypeConversion):
    def get_swift_value(self, c_value: str) -> str:
        return f'{c_value} == VK_TRUE'

    def get_c_value(self, swift_value: str) -> str:
        return f'VkBool32({swift_value} ? VK_TRUE : VK_FALSE)'


class EnumConversion(TypeConversion):
    def __init__(self, c_enum: str, swift_enum: str):
        self.c_enum = c_enum
        self.swift_enum = swift_enum

    def get_swift_value(self, c_value: str) -> str:
        return f'{self.swift_enum}(rawValue: {c_value}.rawValue)!'

    def get_c_value(self, swift_value: str) -> str:
        return f'{self.c_enum}(rawValue: {swift_value}.rawValue)'


class OptionSetConversion(TypeConversion):
    def __init__(self, option_set: str):
        self.option_set = option_set

    def get_swift_value(self, c_value: str) -> str:
        return f'{self.option_set}(rawValue: {c_value})'

    def get_c_value(self, swift_value: str) -> str:
        return f'{swift_value}.rawValue'
