from contextlib import contextmanager
from .importer import SwiftEnum, SwiftOptionSet, SwiftStruct, SwiftClass, SwiftCommand, get_class_chain
from typing import TextIO, List, Tuple
from . import typeconversion as tc


class BaseGenerator:
    def __init__(self, stream: TextIO):
        self.stream = stream
        self.indent_size = 0

    def write(self, text: str):
        indent = '    ' * self.indent_size
        for line in text.splitlines(keepends=True):
            self.stream.write(indent + line)
        self.linebreak()

    def linebreak(self, n: int=1):
        self.stream.write('\n' * n)

    def __lshift__(self, text: str):
        self.write(text)

    @contextmanager
    def indent(self, prepend: str = None, append: str = None):
        if prepend is not None:
            self << prepend
        self.indent_size += 1
        yield
        self.indent_size -= 1
        if append is not None:
            self << append


class Generator(BaseGenerator):
    def generate_imports(self):
        self << 'import CVulkan'
        self.linebreak()

    def generate_enum(self, enum: SwiftEnum):
        types = [enum.raw_type]
        if enum.error:
            types.append('Error')
        with self.indent(f'enum {enum.name}: {", ".join(types)} {{', '}'):
            for case in enum.cases:
                self << f'case {safe_name(case.name)} = {case.value}'
        self.linebreak()

    def generate_option_set(self, option_set: SwiftOptionSet):
        with self.indent(f'struct {option_set.name}: OptionSet {{', '}'):
            self << f'let rawValue: {option_set.raw_type}'
            for case in option_set.cases:
                self << f'static let {case.name} = {option_set.name}(rawValue: {case.value})'
        self.linebreak()

    def generate_struct(self, struct: SwiftStruct):
        with self.indent(f'struct {struct.name}: CStructConvertible {{', '}'):
            self << f'typealias CStruct = {struct.c_struct.name}'
            self.linebreak()
            for member in struct.members:
                self << f'let {safe_name(member.name)}: {member.type}'
            self.linebreak()
            self.generate_struct_c_to_swift_method(struct)
            self.linebreak()
            self.generate_struct_swift_to_c_method(struct)
        self.linebreak()

    def generate_struct_c_to_swift_method(self, struct: SwiftStruct):
        with self.indent(f'init(cStruct: {struct.c_struct.name}) {{', '}'):
            if not struct.convertible_from_c_struct:
                self << 'fatalError("This initializer should be removed.")'
                return
            
            c_values_map = {member.name: f'cStruct.{member.name}' for member in struct.c_struct.members}
            for member in struct.members:
                self << f'self.{member.name} = {member.value_generator(c_values_map)}'

    def generate_struct_swift_to_c_method(self, struct: SwiftStruct):
        with self.indent('func withCStruct<R>'
                         f'(_ body: (UnsafePointer<{struct.c_struct.name}>) throws -> R)'
                         ' rethrows -> R {', '}'):

            swift_values_map = {member.name: f'self.{member.name}' for member in struct.members}
            closures = [gen(swift_values_map) for gen in struct.closure_generators]

            with self.closures(closures, throws=True):
                self << f'var cStruct = {struct.c_struct.name}()'
                for member, generator in zip(struct.c_struct.members, struct.c_value_generators):
                    self << f'cStruct.{member.name} = {generator(swift_values_map)}'
                self << 'return try body(&cStruct)'

    def generate_class(self, cls: SwiftClass):
        with self.indent(f'class {cls.name} {{', '}'):
            self << f'let handle: {cls.c_handle.name}!'
            if cls.parent:
                self << f'let {cls.parent.reference_name}: {cls.parent.name}'

            self.linebreak()
            self.generate_class_init(cls)

            for command in cls.commands:
                self.linebreak()
                self.generate_command(command, cls)

        self.linebreak()

    def generate_class_init(self, cls: SwiftClass):
        param_string = f'handle: {cls.c_handle.name}!'
        if cls.parent:
            param_string += f', {cls.parent.reference_name}: {cls.parent.name}'

        with self.indent(f'init({param_string}) {{', '}'):
            self << 'self.handle = handle'
            if cls.parent:
                self << f'self.{cls.parent.reference_name} = {cls.parent.reference_name}'

    def generate_command(self, command: SwiftCommand, cls: SwiftClass):
        swift_values_map = {param.name: param.name for param in command.params}
        swift_values_map.update(
            {param: get_class_chain(cls, target_class) for param, target_class in command.class_params.items()}
        )
        closures = [gen(swift_values_map) for gen in command.closure_generators]

        param_string = ', '.join([f'{param.name}: {param.type}' for param in command.params])
        throws_string = ' throws' if command.throws else ''
        static_string = 'static ' if not command.class_params else ''

        with self.indent(f'{static_string}func {command.name}({param_string})'
                         f'{throws_string} -> {command.return_type} {{', '}'):
            with self.closures(closures, throws=command.throws):
                params = []
                for param in command.c_command.params:
                    if param.name == command.output_param:
                        if isinstance(command.return_conversion, tc.ArrayConversion):
                            params.append('out.baseAddress')
                        else:
                            params.append('&out')
                    elif param.name == command.enumeration_pointer_param:
                        params.append(command.enumeration_pointer_param)
                    elif param.name == command.enumeration_count_param:
                        params.append(command.enumeration_count_param)
                    else:
                        params.append(command.c_value_generators[param.name](swift_values_map))
                param_string = ', '.join(params)
                call_string = f'{command.c_command.name}({param_string})'

                if command.output_param:
                    if isinstance(command.return_conversion, tc.ArrayConversion):
                        conversion = command.return_conversion
                        map_string = f'.map {{ {conversion.swift_map_template} }}' \
                            if conversion.swift_map_template else ''
                        count_value = command.c_value_generators[conversion.length](swift_values_map)
                        with self.closures([(
                                f'Array<{command.output_param_implicit_type}>'
                                f'(unsafeUninitializedCapacity: Int({count_value})) {{ '
                                f'out, initializedCount in',
                                f'}}{map_string}'
                        )], throws=command.throws):
                            if command.throws:
                                with self.indent('try checkResult(', ')'):
                                    self << call_string
                            else:
                                self << call_string
                    else:
                        if command.unwrap_output_param:
                            self << f'var out: {command.output_param_implicit_type}!'
                        else:
                            self << f'var out = {command.output_param_implicit_type}()'
                        if command.throws:
                            with self.indent('try checkResult(', ')'):
                                self << call_string
                        else:
                            self << call_string
                        self << f'return {command.return_conversion.get_swift_value_generator("out")({"out": "out"})}'

                elif command.enumeration_pointer_param:
                    assert isinstance(command.return_conversion, tc.ArrayConversion)
                    conversion = command.return_conversion
                    map_string = f'.map {{ {conversion.swift_map_template} }}' if conversion.swift_map_template else ''
                    try_string = 'try ' if command.throws else ''
                    with self.indent(f'{try_string}enumerate {{ {command.enumeration_pointer_param}, '
                                     f'{command.enumeration_count_param} in', f'}}{map_string}'):
                        self << call_string
                else:
                    result_string = command.return_conversion.get_swift_value_generator('return')({'return': call_string})
                    if command.throws:
                        with self.indent('try checkResult(', ')'):
                            self << result_string
                    else:
                        self << result_string

    @contextmanager
    def closures(self, closures: List[Tuple[str, str]], throws: bool = False):
        for closure in closures:
            if throws:
                self << 'try ' + closure[0]
            else:
                self << closure[0]
            self.indent_size += 1
        yield
        for closure in reversed(closures):
            self.indent_size -= 1
            self << closure[1]


def safe_name(name: str) -> str:
    if name in ('repeat', 'default'):
        return f'`{name}`'
    return name
