from genlib.parser import CContext
from genlib.importer import Importer
from genlib.generator import Generator

if __name__ == '__main__':
    c_context = CContext()
    c_context.parse('vk.xml')

    importer = Importer(c_context)
    swift_context = importer.import_all()

    with open('../Sources/Vulkan/Enums.swift', 'w') as f:
        generator = Generator(f)
        for enum in swift_context.enums:
            generator.generate_enum(enum)

    with open('../Sources/Vulkan/OptionSets.swift', 'w') as f:
        generator = Generator(f)
        for option_set in swift_context.option_sets:
            generator.generate_option_set(option_set)

    with open('../Sources/Vulkan/Structs.swift', 'w') as f:
        generator = Generator(f)
        generator.generate_imports()
        for struct in swift_context.structs:
            generator.generate_struct(struct)
