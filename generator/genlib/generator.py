from contextlib import contextmanager
from .importer import SwiftEnum, SwiftContext
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

    def generate_enum(self, enum: SwiftEnum):
        with self.indent(f'enum {enum.name}: UInt32 {{', '}'):
            for case in enum.cases:
                self << f'case {safe_name(case.name)} = {case.value}'
        self.linebreak()


def safe_name(name: str) -> str:
    if name in ('repeat', 'default'):
        return f'`{name}`'
    return name
