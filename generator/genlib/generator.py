from contextlib import contextmanager
from .importer import SwiftEnum, SwiftOptionSet, SwiftStruct, SwiftClass
from typing import TextIO, List, Tuple


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
        with self.indent(f'enum {enum.name}: {enum.raw_type} {{', '}'):
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
            self.generate_struct_swift_to_c_method(struct)
        self.linebreak()

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
        with self.indent(f'struct {cls.name} {{', '}'):
            self << f'let handle: {cls.c_handle.name}!'
        self.linebreak()

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
