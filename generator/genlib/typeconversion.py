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
            return values_map.get(swift_value, swift_value)
        return generator

    def bind_c_value(self, c_value: str) -> ValueGenerator:
        def generator(values_map: Dict[str, str]) -> str:
            return values_map.get(c_value, c_value)
        return generator


class ImplicitConversion(TypeConversion):
    def get_swift_value(self, c_value: str) -> str:
        return c_value

    def get_c_value(self, swift_value: str) -> str:
        return swift_value
