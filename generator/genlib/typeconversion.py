from typing import Dict, Tuple, List
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


class Conversion:
    def __init__(self, swift_value_template: str, c_value_template: str, c_closure_template: Tuple[str, str] = None):
        self.c_value_template = c_value_template
        self.c_closure_template = c_closure_template
        self.swift_value_template = swift_value_template

    @property
    def requires_closure(self) -> bool:
        return self.c_closure_template is not None

    def get_c_value(self, name: str, values: Dict[str, str] = None) -> str:
        value = values[name] if values is not None else name
        return Template(self.c_value_template).substitute(name=name, value=value)

    def get_c_closure(self, name: str, values: Dict[str, str] = None) -> Tuple[str, str]:
        value = values[name] if values is not None else name
        return (
            Template(self.c_closure_template[0]).substitute(name=name, value=value),
            Template(self.c_closure_template[1]).substitute(name=name, value=value)
        )

    def get_swift_value(self, name: str, values: Dict[str, str] = None) -> str:
        value = values[name] if values is not None else name
        return Template(self.swift_value_template).substitute(name=name, value=value)


class ArrayConversion(Conversion):
    def __init__(self, length: str, swift_value_template: str, c_value_template: str, c_length_template: str,
                 c_closure_template: Tuple[str, str] = None, swift_map_template: str = None):
        super().__init__(swift_value_template, c_value_template, c_closure_template)
        self.length = length
        self.c_length_template = c_length_template
        self.swift_map_template = swift_map_template

    def get_c_length(self, name: str, values: Dict[str, str] = None) -> str:
        value = values[name] if values is not None else name
        return Template(self.c_length_template).substitute(name=name, value=value)

    def get_swift_value(self, name: str, values: Dict[str, str] = None) -> str:
        value, length = (values[name], values[self.length]) if values is not None else (name, self.length)
        return Template(self.swift_value_template).substitute(name=name, value=value, length=length)


class MemberConversions:
    def __init__(self):
        self.conversions: List[Tuple[str, str, Conversion]] = []
        self.static_values: List[Tuple[str, str]] = []

    def add_conversion(self, c_member: str, swift_member: str, conversion: Conversion):
        self.conversions.append((c_member, swift_member, conversion))

    def add_static_value(self, c_member: str, value: str):
        self.static_values.append((c_member, value))

    def get_swift_values(self, c_values: Dict[str, str]) -> Dict[str, str]:
        result: Dict[str, str] = {}
        for c_member, swift_member, conversion in self.conversions:
            result.setdefault(swift_member, conversion.get_swift_value(c_member, c_values))
        return result

    def get_c_closures(self, swift_values: Dict[str, str]) -> List[Tuple[str, str]]:
        result: List[Tuple[str, str]] = []
        for _, swift_member, conversion in self.conversions:
            if conversion.requires_closure:
                result.append(conversion.get_c_closure(swift_member, swift_values))
        return result

    def get_c_values(self, swift_values: Dict[str, str]) -> Dict[str, str]:
        result: Dict[str, str] = {}
        for c_member, swift_member, conversion in self.conversions:
            result.setdefault(c_member, conversion.get_c_value(swift_member, swift_values))
            if isinstance(conversion, ArrayConversion):
                result.setdefault(conversion.length, conversion.get_c_length(swift_member, swift_values))
        for c_member, static_value in self.static_values:
            result.setdefault(c_member, static_value)
        return result


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
        swift_value_template=f'($value != nil) ? {swift_struct}(cStruct: $value.pointee) : nil',
        c_closure_template=('$value.withOptionalCStruct { ptr_$name in', '}'),
        c_value_template='ptr_$name'
    )


def class_conversion(swift_class: str, parent_name: str = None, parent_value: str = 'self') -> Conversion:
    class_params = f'handle: $value, {parent_name}: {parent_value}' if parent_name else 'handle: $value'
    return Conversion(
        swift_value_template=f'{swift_class}({class_params})',
        c_value_template='$value.handle'
    )


def optional_class_conversion(swift_class: str, parent_name: str = None, parent_value: str = 'self') -> Conversion:
    class_params = f'handle: $value, {parent_name}: {parent_value}' if parent_name else 'handle: $value'
    return Conversion(
        swift_value_template=f'($value != nil) ? {swift_class}({class_params}) : nil',
        c_value_template='$value?.handle'
    )


def array_conversion(length: str) -> ArrayConversion:
    return ArrayConversion(
        length=length,
        swift_value_template='Array(UnsafeBufferPointer(start: $value, count: Int($length)))',
        c_closure_template=('$value.withUnsafeBufferPointer { ptr_$name in', '}'),
        c_value_template='ptr_$name.baseAddress',
        c_length_template='UInt32(ptr_$name.count)'
    )


def optional_array_conversion(length: str) -> ArrayConversion:
    return ArrayConversion(
        length=length,
        swift_value_template='($value != nil) ? Array(UnsafeBufferPointer(start: $value, count: Int($length))) : nil',
        c_closure_template=('$value.withOptionalUnsafeBufferPointer { ptr_$name in', '}'),
        c_value_template='ptr_$name.baseAddress',
        c_length_template='UInt32(ptr_$name.count)'
    )


def string_array_conversion(length: str) -> ArrayConversion:
    return ArrayConversion(
        length=length,
        swift_value_template=f'UnsafeBufferPointer(start: $value, count: Int($length)).map{{ String(cString: $$0!) }}',
        swift_map_template='String(cString: $0!)',
        c_closure_template=('$value.withCStringBufferPointer { ptr_$name in', '}'),
        c_value_template='ptr_$name.baseAddress',
        c_length_template='UInt32(ptr_$name.count)'
    )


def struct_array_conversion(swift_struct: str, length: str) -> ArrayConversion:
    return ArrayConversion(
        length=length,
        swift_value_template='UnsafeBufferPointer(start: $value, count: Int($length))'
                             f'.map{{ {swift_struct}(cStruct: $$0) }}',
        swift_map_template=f'{swift_struct}(cStruct: $0)',
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
    swift_element = element_conversion.get_swift_value('$$0')
    c_element = element_conversion.get_c_value('$$0')
    swift_map_template = element_conversion.get_swift_value('$0')
    return ArrayConversion(
        length=length,
        swift_value_template=f'UnsafeBufferPointer(start: $value, count: Int($length)).map{{ {swift_element} }}',
        swift_map_template=swift_map_template,
        c_closure_template=(f'$value.map{{ {c_element} }}.withUnsafeBufferPointer {{ ptr_$name in', '}'),
        c_value_template='ptr_$name.baseAddress',
        c_length_template='UInt32(ptr_$name.count)'
    )


def optional_array_mapped_conversion(element_conversion: Conversion, length: str) -> ArrayConversion:
    assert not element_conversion.requires_closure
    swift_element = element_conversion.get_swift_value('$$0')
    c_element = element_conversion.get_c_value('$$0')
    return ArrayConversion(
        length=length,
        swift_value_template='($value != nil) ? UnsafeBufferPointer(start: $value, count: Int($length))'
                             f'.map{{ {swift_element} }} : nil',
        c_closure_template=(f'($value?.map{{ {c_element} }}).withOptionalUnsafeBufferPointer {{ ptr_$name in', '}'),
        c_value_template='ptr_$name.baseAddress',
        c_length_template='UInt32(ptr_$name.count)'
    )


def tuple_pointer_conversion(element_type: str) -> Conversion:
    return Conversion(
        swift_value_template='',
        c_closure_template=('withUnsafeBytes(of: $value) { ptr_$name in', '}'),
        c_value_template=f'ptr_$name.bindMemory(to: {element_type}.self).baseAddress'
    )


version_conversion = Conversion(
    swift_value_template='Version(rawValue: $value)',
    c_value_template='$value.rawValue'
)
