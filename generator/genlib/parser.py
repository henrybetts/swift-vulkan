from xml.etree import ElementTree
from typing import List


class CEnum:
    class Case:
        def __init__(self, name: str, value: str):
            self.name = name
            self.value = value

    def __init__(self, name: str, cases: List[Case]):
        self.name = name
        self.cases = cases


class CBitmask:
    def __init__(self, name: str, enum: CEnum = None):
        self.name = name
        self.enum = enum


class CContext:
    def __init__(self):
        self.extension_tags: List[str] = []
        self.enums: List[CEnum] = []
        self.bitmasks: List[CBitmask] = []

    def parse(self, source):
        tree = ElementTree.parse(source)
        self.parse_tree(tree)

    def parse_tree(self, tree: ElementTree):
        self.parse_extension_tags(tree),
        self.parse_enums(tree)
        self.parse_bitmasks(tree)

    def parse_extension_tags(self, tree: ElementTree):
        for tag in tree.findall('./tags/tag'):
            self.extension_tags.append(tag.attrib['name'])

    def parse_enums(self, tree: ElementTree):
        for enum in tree.findall('./enums[@type="enum"]'):
            c_enum = CEnum(name=enum.attrib['name'], cases=[])
            for case in enum.findall('./enum[@value]'):  # TODO: Handle aliases
                c_enum.cases.append(CEnum.Case(name=case.attrib['name'], value=case.attrib['value']))

            case_names = []
            for extension in tree.findall(f'./extensions/extension'):
                if extension.get('supported') == 'disabled':
                    continue

                ext_number = int(extension.attrib['number'])
                for case in extension.findall(f'./require/enum[@extends="{c_enum.name}"][@offset]'):
                    case_name = case.attrib['name']
                    if case_name in case_names:
                        continue

                    case_ext_number = ext_number
                    if 'extnumber' in case.attrib:
                        case_ext_number = int(case.attrib['extnumber'])

                    value = 1000000000 + (case_ext_number - 1) * 1000 + int(case.attrib['offset'])
                    signed_value = case.get('dir', '') + str(value)

                    case_names.append(case_name)
                    c_enum.cases.append(
                        CEnum.Case(name=case_name, value=signed_value)
                    )

            self.enums.append(c_enum)

    def parse_bitmasks(self, tree: ElementTree):
        for bitmask in tree.findall('./types/type[@category="bitmask"]'):
            if 'alias' in bitmask.attrib:
                continue

            name = bitmask.find('./name').text
            c_bitmask = CBitmask(name)

            requires = bitmask.get('requires')
            if requires:
                c_enum = CEnum(requires, [])
                enum = tree.find(f'./enums[@name="{requires}"]')

                for case in enum.findall('./enum'):
                    if 'alias' in case.attrib:
                        continue

                    if 'bitpos' in case.attrib:
                        value = str(2 ** int(case.attrib['bitpos']))
                    else:
                        value = case.attrib['value']

                    c_enum.cases.append(CEnum.Case(name=case.attrib['name'], value=value))

                case_names = []
                for extension in tree.findall(f'./extensions/extension'):
                    if extension.get('supported') == 'disabled':
                        continue

                    for case in extension.findall(f'./require/enum[@extends="{c_enum.name}"][@bitpos]'):
                        case_name = case.attrib['name']
                        if case_name in case_names:
                            continue

                        if 'bitpos' in case.attrib:
                            value = 2 ** int(case.attrib['bitpos'])
                        else:
                            value = case.attrib['value']

                        case_names.append(case_name)
                        c_enum.cases.append(
                            CEnum.Case(name=case_name, value=value)
                        )

                c_bitmask.enum = c_enum

            self.bitmasks.append(c_bitmask)
