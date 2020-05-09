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


class BoundValueGenerator:
    def __init__(self, get_value: Callable[[str], str], value: str):
        self.get_value = get_value
        self.value = value

    def __call__(self, values_map: Dict[str, str] = None) -> str:
        if values_map:
            return self.get_value(values_map.get(self.value, self.value))
        return self.get_value(self.value)


class TypeConversion:
    def get_swift_value(self, c_value: str) -> str:
        raise NotImplementedError

    def get_c_value(self, swift_value: str) -> str:
        raise NotImplementedError

    def bind_swift_value(self, swift_value: str) -> BoundValueGenerator:
        return BoundValueGenerator(self.get_c_value, swift_value)

    def bind_c_value(self, c_value: str) -> BoundValueGenerator:
        return BoundValueGenerator(self.get_swift_value, c_value)


class ImplicitConversion(TypeConversion):
    def get_swift_value(self, c_value: str) -> str:
        return c_value

    def get_c_value(self, swift_value: str) -> str:
        return swift_value
