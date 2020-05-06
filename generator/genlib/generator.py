from contextlib import contextmanager
from .importer import SwiftEnum, SwiftContext, SwiftOptionSet, SwiftStruct
from typing import TextIO


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
    def generate_all(self, context: SwiftContext):
        for enum in context.enums:
            self.generate_enum(enum)
        for option_set in context.option_sets:
            self.generate_option_set(option_set)
        for struct in context.structs:
            self.generate_struct(struct)

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
        with self.indent(f'struct {struct.name} {{', '}'):
            self << f'var cStruct: {struct.c_struct.name}'
        self.linebreak()


def safe_name(name: str) -> str:
    if name in ('repeat', 'default'):
        return f'`{name}`'
    return name
