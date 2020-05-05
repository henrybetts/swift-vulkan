from genlib.parser import CContext
from genlib.importer import Importer
from genlib.generator import Generator

if __name__ == '__main__':
    c_context = CContext()
    c_context.parse('vk.xml')

    importer = Importer(c_context)
    swift_context = importer.import_all()

    with open('../Sources/Vulkan/Vulkan.swift', 'w') as f:
        generator = Generator(f)
        generator.generate_all(swift_context)
