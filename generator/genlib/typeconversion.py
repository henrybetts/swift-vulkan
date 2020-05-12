from typing import Callable, Dict, Tuple
from string import Template

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


class Conversion:
    def __init__(self, swift_value_template: str, c_value_template: str, c_closure_template: Tuple[str, str] = None):
        self.c_value_template = c_value_template
        self.c_closure_template = c_closure_template
        self.swift_value_template = swift_value_template

    @property
    def requires_closure(self) -> bool:
        return self.c_closure_template is not None

    def get_c_value_generator(self, name: str) -> ValueGenerator:
        def generator(values_map: Dict[str, str]) -> str:
            return Template(self.c_value_template).substitute(name=name, value=values_map[name])
        return generator

    def get_c_closure_generator(self, name: str) -> ClosureGenerator:
        def generator(values_map: Dict[str, str]) -> Tuple[str, str]:
            return (
                Template(self.c_closure_template[0]).substitute(name=name, value=values_map[name]),
                Template(self.c_closure_template[1]).substitute(name=name, value=values_map[name])
            )
        return generator

    def get_swift_value_generator(self, name: str) -> ValueGenerator:
        def generator(values_map: Dict[str, str]) -> str:
            return Template(self.swift_value_template).substitute(value=values_map[name])
        return generator


class ArrayConversion(Conversion):
    def __init__(self, length: str, swift_value_template: str, c_value_template: str, c_length_template: str,
                 c_closure_template: Tuple[str, str] = None):
        super().__init__(swift_value_template, c_value_template, c_closure_template)
        self.length = length
        self.c_length_template = c_length_template

    def get_c_length_generator(self, name: str) -> ValueGenerator:
        def generator(values_map: Dict[str, str]) -> str:
            return Template(self.c_length_template).substitute(name=name, value=values_map[name])
        return generator

    def get_swift_value_generator(self, name: str) -> ValueGenerator:
        def generator(values_map: Dict[str, str]) -> str:
            return Template(self.swift_value_template).substitute(value=values_map[name],
                                                                  length=values_map[self.length])
        return generator


implicit_conversion = Conversion(
    swift_value_template='$value',
    c_value_template='$value'
)


bool_conversion = Conversion(
    swift_value_template='$value == VK_TRUE',
    c_value_template='VkBool32($value ? VK_TRUE : VK_FALSE)'
)


def enum_conversion(c_enum: str, swift_enum: str) -> Conversion:
    return Conversion(
        swift_value_template=f'{swift_enum}(rawValue: $value.rawValue)!',
        c_value_template=f'{c_enum}(rawValue: $value.rawValue)'
    )


def option_set_conversion(option_set: str) -> Conversion:
    return Conversion(
        swift_value_template=f'{option_set}(rawValue: $value)',
        c_value_template='$value.rawValue'
    )


def option_set_bit_conversion(c_enum: str, option_set: str) -> Conversion:
    return Conversion(
        swift_value_template=f'{option_set}(rawValue: $value.rawValue)',
        c_value_template=f'{c_enum}(rawValue: $value.rawValue)'
    )


string_conversion = Conversion(
    swift_value_template='String(cString: $value)',
    c_closure_template=('$value.withCString { cString_$name in', '}'),
    c_value_template='cString_$name'
)

optional_string_conversion = Conversion(
    swift_value_template='($value != nil) ? String(cString: $value) : nil',
    c_closure_template=('$value.withOptionalCString { cString_$name in', '}'),
    c_value_template='cString_$name'
)


char_array_conversion = Conversion(
    swift_value_template='String(unsafeBytesOf: $value)',
    c_value_template='$value.unsafeBytesCopy()'
)


def struct_conversion(swift_struct: str) -> Conversion:
    return Conversion(
        swift_value_template=f'{swift_struct}(cStruct: $value)',
        c_closure_template=('$value.withCStruct { ptr_$name in', '}'),
        c_value_template='ptr_$name.pointee'
    )


def struct_pointer_conversion(swift_struct: str) -> Conversion:
    return Conversion(
        swift_value_template=f'{swift_struct}(cStruct: $value.pointee)',
        c_closure_template=('$value.withCStruct { ptr_$name in', '}'),
        c_value_template='ptr_$name'
    )


def optional_struct_conversion(swift_struct: str) -> Conversion:
    return Conversion(
        swift_value_template=f'($value != nil) ? {swift_struct}(cStruct: $value) : nil',
        c_closure_template=('$value.withOptionalCStruct { ptr_$name in', '}'),
        c_value_template='ptr_$name'
    )


def class_conversion(swift_class: str) -> Conversion:
    return Conversion(
        swift_value_template=f'{swift_class}(handle: $value)',
        c_value_template='$value.handle'
    )


def optional_class_conversion(swift_class: str) -> Conversion:
    return Conversion(
        swift_value_template=f'($value != nil) ? {swift_class}(handle: $value) : nil',
        c_value_template='$value?.handle'
    )


def array_conversion(length: str) -> ArrayConversion:
    return ArrayConversion(
        length=length,
        swift_value_template='Array(unsafePointer: $value, count: Int($length))',
        c_closure_template=('$value.withUnsafeBufferPointer { ptr_$name in', '}'),
        c_value_template='ptr_$name.baseAddress',
        c_length_template='UInt32(ptr_$name.count)'
    )


def optional_array_conversion(length: str) -> ArrayConversion:
    return ArrayConversion(
        length=length,
        swift_value_template='($value != nil) ? Array(unsafePointer: $value, count: Int($length)) : nil',
        c_closure_template=('$value.withOptionalUnsafeBufferPointer { ptr_$name in', '}'),
        c_value_template='ptr_$name.baseAddress',
        c_length_template='UInt32(ptr_$name.count)'
    )


def string_array_conversion(length: str) -> ArrayConversion:
    return ArrayConversion(
        length=length,
        swift_value_template='UnsafeBufferPointer(start: $value, count: Int($length)).map{ String(cString: $$0) }',
        c_closure_template=('$value.withCStringBufferPointer { ptr_$name in', '}'),
        c_value_template='ptr_$name.baseAddress',
        c_length_template='UInt32(ptr_$name.count)'
    )


def struct_array_conversion(swift_struct: str, length: str) -> ArrayConversion:
    return ArrayConversion(
        length=length,
        swift_value_template='UnsafeBufferPointer(start: $value, count: Int($length))'
                             f'.map{{ {swift_struct}(cStruct: $$0) }}',
        c_closure_template=('$value.withCStructBufferPointer { ptr_$name in', '}'),
        c_value_template='ptr_$name.baseAddress',
        c_length_template='UInt32(ptr_$name.count)'
    )


def optional_struct_array_conversion(swift_struct: str, length: str) -> ArrayConversion:
    return ArrayConversion(
        length=length,
        swift_value_template='($value != nil) ? UnsafeBufferPointer(start: $value, count: Int($length))'
                             f'.map{{ {swift_struct}(cStruct: $$0) }} : nil',
        c_closure_template=('$value.withOptionalCStructBufferPointer { ptr_$name in', '}'),
        c_value_template='ptr_$name.baseAddress',
        c_length_template='UInt32(ptr_$name.count)'
    )


def array_mapped_conversion(element_conversion: Conversion, length: str) -> ArrayConversion:
    assert not element_conversion.requires_closure
    swift_element = element_conversion.get_swift_value_generator('element')({'element': '$$0'})
    c_element = element_conversion.get_c_value_generator('element')({'element': '$$0'})
    return ArrayConversion(
        length=length,
        swift_value_template=f'UnsafeBufferPointer(start: $value, count: Int($count)).map{{ {swift_element} }}',
        c_closure_template=(f'$value.map{{ {c_element} }}.withUnsafeBufferPointer {{ ptr_$name in', '}'),
        c_value_template='ptr_$name.baseAddress',
        c_length_template='UInt32(ptr_$name.count)'
    )


def optional_array_mapped_conversion(element_conversion: Conversion, length: str) -> ArrayConversion:
    assert not element_conversion.requires_closure
    swift_element = element_conversion.get_swift_value_generator('element')({'element': '$$0'})
    c_element = element_conversion.get_c_value_generator('element')({'element': '$$0'})
    return ArrayConversion(
        length=length,
        swift_value_template='(value != nil) ? UnsafeBufferPointer(start: $value, count: Int($count))'
                             f'.map{{ {swift_element} }} : nil',
        c_closure_template=(f'($value?.map{{ {c_element} }}).withOptionalUnsafeBufferPointer {{ ptr_$name in', '}'),
        c_value_template='ptr_$name.baseAddress',
        c_length_template='UInt32(ptr_$name.count)'
    )
