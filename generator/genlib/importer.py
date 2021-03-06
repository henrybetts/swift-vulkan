from .parser import CContext, CEnum, CBitmask, CStruct, CType, CHandle, CMember, CCommand, CAlias
from . import typeconversion as tc
from typing import Optional, Tuple, List, Dict
import re


class SwiftEnum(CEnum):
    def __init__(self, c_enum: CEnum, raw_type: str, error: bool = False, **kwargs):
        super().__init__(**kwargs)
        self.c_enum = c_enum
        self.raw_type = raw_type
        self.error = error


class SwiftOptionSet(CEnum):
    def __init__(self, c_bitmask: CBitmask, raw_type: str, **kwargs):
        super().__init__(**kwargs)
        self.c_bitmask = c_bitmask
        self.raw_type = raw_type


class SwiftMember:
    def __init__(self, name: str, type_: str, is_closure: bool = False):
        self.name = name
        self.type = type_
        self.is_closure = is_closure


class SwiftStruct:
    def __init__(self, c_struct: CStruct, name: str,
                 members: List[SwiftMember], member_conversions: tc.MemberConversions,
                 convertible_from_c_struct: bool = True, parent_class: 'SwiftClass' = None):
        self.name = name
        self.members = members
        self.member_conversions: tc.MemberConversions = member_conversions
        self.c_struct = c_struct
        self.convertible_from_c_struct = convertible_from_c_struct
        self.parent_class = parent_class


class SwiftCommand:
    def __init__(self, c_command: CCommand, name: str, return_type: str, throws: bool,
                 class_params: Dict[str, 'SwiftClass'], params: List[SwiftMember],
                 param_conversions: tc.MemberConversions, return_conversion: tc.Conversion,
                 output_param: str = None, output_param_implicit_type: str = None, unwrap_output_param: bool = False,
                 enumeration_pointer_param: str = None, enumeration_count_param: str = None,
                 dispatcher: 'SwiftClass' = None):
        self.c_command = c_command
        self.name = name
        self.return_type = return_type
        self.throws = throws
        self.class_params = class_params
        self.params = params
        self.param_conversions = param_conversions
        self.return_conversion = return_conversion
        self.output_param = output_param
        self.output_param_implicit_type = output_param_implicit_type
        self.unwrap_output_param = unwrap_output_param
        self.enumeration_pointer_param = enumeration_pointer_param
        self.enumeration_count_param = enumeration_count_param
        self.dispatcher = dispatcher


class DispatchTable:
    def __init__(self, name: str, loader: Tuple[str, str], param: Tuple[str, str] = None,
                 commands: List[CCommand] = None):
        self.name = name
        self.loader = loader
        self.param = param
        self.commands = commands or []


class SwiftClass:
    def __init__(self, name: str, reference_name: str, c_handle: CHandle = None,  parent: 'SwiftClass' = None,
                 dispatch_table: DispatchTable = None, dispatcher: 'SwiftClass' = None,
                 commands: List[SwiftCommand] = None):
        self.c_handle = c_handle
        self.name = name
        self.reference_name = reference_name
        self.parent = parent
        self.dispatch_table = dispatch_table
        self.dispatcher = dispatcher
        self.commands = commands or []

    @property
    def ancestors(self) -> List['SwiftClass']:
        ancestors: List[SwiftClass] = []
        current_class = self
        while current_class.parent:
            current_class = current_class.parent
            ancestors.append(current_class)
        return ancestors


class SwiftAlias:
    def __init__(self, c_alias: CAlias, name: str, alias: str):
        self.c_alias = c_alias
        self.name = name
        self.alias = alias


class SwiftContext:
    def __init__(self):
        self.enums: List[SwiftEnum] = []
        self.option_sets: List[SwiftOptionSet] = []
        self.structs: List[SwiftStruct] = []
        self.classes: List[SwiftClass] = []
        self.aliases: List[SwiftAlias] = []
        self.dispatch_tables: List[DispatchTable] = []


class Importer:
    def __init__(self, c_context: CContext):
        self.c_context = c_context
        self.swift_context = SwiftContext()
        self.imported_enums: Dict[str, str] = {}
        self.imported_option_sets: Dict[str, str] = {}
        self.imported_option_set_bits: Dict[str, str] = {}
        self.imported_structs: Dict[str, SwiftStruct] = {}
        self.imported_classes: Dict[str, SwiftClass] = {}
        self.imported_aliases: Dict[str, SwiftAlias] = {}
        self.pointer_types = [handle.name for handle in c_context.handles] + [alias.name for alias in c_context.aliases]
        self.c_structs = {c_struct.name: c_struct for c_struct in c_context.structs}

    def import_all(self) -> SwiftContext:
        for enum in self.c_context.enums:
            self.import_enum(enum)

        for bitmask in self.c_context.bitmasks:
            self.import_bitmask(bitmask)

        for handle in self.c_context.handles:
            if not handle.protect:
                self.import_handle(handle)

        for alias in self.c_context.aliases:
            if not alias.protect:
                self.import_alias(alias)

        for struct in self.c_context.structs:
            if struct.name not in ('VkBaseInStructure', 'VkBaseOutStructure'):
                self.import_struct(struct)

        for command in self.c_context.commands:
            self.import_command(command)

        return self.swift_context

    def import_enum(self, c_enum: CEnum) -> SwiftEnum:
        swift_enum = SwiftEnum(
            name=remove_vk_prefix(c_enum.name),
            cases=[],
            c_enum=c_enum,
            raw_type='UInt32',
            error=c_enum.name == 'VkResult'
        )

        prefix, enum_tag = self.pop_extension_tag(swift_enum.name)

        starts_with_digit = False
        for case in c_enum.cases:
            name = remove_vk_prefix(case.name)
            name, tag = self.pop_extension_tag(name)
            name = snake_to_pascal(name)

            if name.startswith(prefix):
                name = name[len(prefix):]

            if not name:
                name = tag.lower()
            elif tag and tag != enum_tag:
                name += tag

            name = name[0].lower() + name[1:]

            if name[0].isdigit():
                starts_with_digit = True

            try:
                if int(case.value) < 0:
                    swift_enum.raw_type = 'Int32'
            except ValueError:
                pass

            swift_enum.cases.append(SwiftEnum.Case(name=name, value=case.value))

        if starts_with_digit:
            for case in swift_enum.cases:
                case.name = 'type' + case.name[0].upper() + case.name[1:]

        self.swift_context.enums.append(swift_enum)
        self.imported_enums[c_enum.name] = swift_enum.name
        return swift_enum

    def import_bitmask(self, c_bitmask: CBitmask) -> SwiftOptionSet:
        option_set = SwiftOptionSet(
            name=remove_vk_prefix(c_bitmask.name),
            cases=[],
            c_bitmask=c_bitmask,
            raw_type='UInt32'
        )

        if c_bitmask.enum:
            prefix, enum_tag = self.pop_extension_tag(option_set.name)
            if prefix.endswith('Flags'):
                prefix = prefix[:-5]

            starts_with_digit = False
            for case in c_bitmask.enum.cases:
                name = remove_vk_prefix(case.name)
                name, tag = self.pop_extension_tag(name)
                name = snake_to_pascal(name)

                if name.startswith(prefix):
                    name = name[len(prefix):]

                if name.endswith('Bit'):
                    name = name[:-3]

                if not name:
                    name = tag.lower()
                elif tag and tag != enum_tag:
                    name += tag

                name = name[0].lower() + name[1:]

                if name[0].isdigit():
                    starts_with_digit = True

                option_set.cases.append(SwiftOptionSet.Case(name=name, value=case.value))

            if starts_with_digit:
                for case in option_set.cases:
                    case.name = 'type' + case.name[0].upper() + case.name[1:]

            self.imported_option_set_bits[c_bitmask.enum.name] = option_set.name

        self.swift_context.option_sets.append(option_set)
        self.imported_option_sets[c_bitmask.name] = option_set.name
        return option_set

    def import_struct(self, c_struct: CStruct) -> SwiftStruct:
        if c_struct.name in self.imported_structs:
            return self.imported_structs[c_struct.name]

        name = remove_vk_prefix(c_struct.name)

        convertible_from_c_struct = True
        parent_class: SwiftClass = None
        for member in c_struct.members:
            type_name = member.type.type_name
            if type_name in self.c_structs:
                child_struct = self.import_struct(self.c_structs[type_name])
                if convertible_from_c_struct:
                    convertible_from_c_struct = child_struct.convertible_from_c_struct
                    if child_struct.parent_class:
                        parent_class = child_struct.parent_class
            elif convertible_from_c_struct:
                if type_name in self.imported_aliases:
                    type_name = self.imported_aliases[type_name].c_alias.alias
                if type_name in ('VkPhysicalDevice', 'VkDisplayKHR', 'VkDisplayModeKHR'):
                    parent_class = self.imported_classes[type_name].parent
                elif type_name in self.imported_classes:
                    convertible_from_c_struct = False

        members, conversions = self.get_member_conversions(c_struct.members, c_struct=c_struct)
        struct = SwiftStruct(c_struct=c_struct,
                             name=name,
                             members=members,
                             member_conversions=conversions,
                             convertible_from_c_struct=convertible_from_c_struct,
                             parent_class=parent_class)
        self.swift_context.structs.append(struct)
        self.imported_structs[c_struct.name] = struct
        return struct

    def import_entry(self) -> SwiftClass:
        if 'entry' in self.imported_classes:
            return self.imported_classes['entry']

        dispatch_table = DispatchTable('EntryDispatchTable', ('vkGetInstanceProcAddr', 'PFN_vkGetInstanceProcAddr'))
        loader = SwiftClass(name='Loader', reference_name='loader')
        entry = SwiftClass(name='Entry', reference_name='entry', parent=loader,
                           dispatch_table=dispatch_table, dispatcher=loader)

        self.swift_context.dispatch_tables.append(dispatch_table)
        self.swift_context.classes.append(entry)
        self.imported_classes['entry'] = entry
        return entry

    def import_handle(self, handle: CHandle) -> SwiftClass:
        if handle.name in self.imported_classes:
            return self.imported_classes[handle.name]

        name = remove_vk_prefix(handle.name)
        reference_name, _ = self.pop_extension_tag(name)
        reference_name = reference_name[0].lower() + reference_name[1:]

        if handle.name == 'VkInstance':
            parent = self.import_entry()
        elif handle.name == 'VkSwapchainKHR':
            parent = self.imported_classes['VkDevice']
        else:
            parent = self.import_handle(handle.parent) if handle.parent else None

        if handle.name == 'VkInstance':
            dispatch_table = DispatchTable('InstanceDispatchTable',
                                           ('vkGetInstanceProcAddr', 'PFN_vkGetInstanceProcAddr'),
                                           ('instance', 'VkInstance'))
            dispatcher = self.imported_classes['entry'].parent
        elif handle.name == 'VkDevice':
            dispatch_table = DispatchTable('DeviceDispatchTable',
                                           ('vkGetDeviceProcAddr', 'PFN_vkGetDeviceProcAddr'),
                                           ('device', 'VkDevice'))
            dispatcher = self.imported_classes['VkInstance']
        else:
            dispatch_table = None
            dispatcher = None

        if dispatch_table:
            self.swift_context.dispatch_tables.append(dispatch_table)

        cls = SwiftClass(
            c_handle=handle,
            name=name,
            reference_name=reference_name,
            parent=parent,
            dispatch_table=dispatch_table,
            dispatcher=dispatcher
        )
        self.swift_context.classes.append(cls)
        self.imported_classes[handle.name] = cls
        return cls

    def import_command(self, c_command: CCommand) -> SwiftCommand:
        class_params_and_classes = self.get_class_params(c_command)
        current_class = class_params_and_classes[-1][1] if class_params_and_classes \
            else self.imported_classes['entry']

        class_name_without_extension, _ = self.pop_extension_tag(current_class.name)

        name = remove_vk_prefix(c_command.name)
        name = re.sub(f'({class_name_without_extension})([A-Z]\w*)?$', r'\2', name)
        name = name[0].lower() + name[1:]
        if name.startswith('enumerate'):
            name = 'get' + name[9:]

        c_return_type = c_command.return_type
        throws = False
        if c_return_type.name == 'VkResult':
            throws = True
            c_return_type = CType(name='void')

        return_type, return_conversion = self.get_type_conversion(c_return_type, force_optional=True)

        output_param: str = None
        output_param_implicit_type: str = None
        unwrap_output_param = False
        enumeration_pointer_param: str = None
        enumeration_count_param: str = None
        if c_return_type.name == 'void':
            output_params = get_output_params(c_command)
            if len(output_params) == 1:
                if c_command.name == 'vkEnumerateInstanceVersion':
                    output_param = output_params[0].name
                    return_type, return_conversion = 'Version', tc.version_conversion
                    output_param_implicit_type = 'UInt32'
                elif is_array_convertible(output_params[0].type, ignore_const=True):
                    output_param = output_params[0].name
                    return_type, return_conversion = self.get_array_conversion(output_params[0].type)
                    output_param_implicit_type, _ = self.get_type_conversion(output_params[0].type.pointer_to,
                                                                             implicit_only=True, force_optional=True)
                elif not output_params[0].type.length:
                    output_param = output_params[0].name
                    return_type, return_conversion = self.get_type_conversion(output_params[0].type.pointer_to,
                                                                              force_optional=False)
                    output_param_implicit_type, _ = self.get_type_conversion(output_params[0].type.pointer_to,
                                                                             implicit_only=True, force_optional=False)
                    unwrap_output_param = self.is_pointer_type(output_params[0].type.pointer_to)

            elif len(output_params) == 2 and output_params[1].type.length == output_params[0].name:
                enumeration_pointer_param = output_params[1].name
                enumeration_count_param = output_params[0].name
                return_type, return_conversion = self.get_array_conversion(output_params[1].type, force_optional=False)

        class_params = [param for param, _ in class_params_and_classes]
        output_params = (output_param, enumeration_pointer_param, enumeration_count_param)
        c_input_params = [param for param in c_command.params if param.name not in output_params]
        c_input_params = class_params + c_input_params[len(class_params):]
        params, conversions = self.get_member_conversions(c_input_params, c_command=c_command)

        dispatcher = self.get_dispatcher(c_command)
        if dispatcher.dispatch_table:
            dispatcher.dispatch_table.commands.append(c_command)

        command = SwiftCommand(
            c_command=c_command,
            name=remove_vk_prefix(name),
            return_type=return_type,
            throws=throws,
            class_params={param.name: cls for param, cls in class_params_and_classes},
            params=params[len(class_params):],
            param_conversions=conversions,
            return_conversion=return_conversion,
            output_param=output_param,
            output_param_implicit_type=output_param_implicit_type,
            unwrap_output_param=unwrap_output_param,
            enumeration_pointer_param=enumeration_pointer_param,
            enumeration_count_param=enumeration_count_param,
            dispatcher=dispatcher
        )

        current_class.commands.append(command)
        return command

    def import_alias(self, c_alias: CAlias) -> SwiftAlias:
        alias = SwiftAlias(c_alias, remove_vk_prefix(c_alias.name), self.imported_classes[c_alias.alias].name)
        self.swift_context.aliases.append(alias)
        self.imported_aliases[c_alias.name] = alias
        return alias

    def get_dispatcher(self, command: CCommand) -> SwiftClass:
        if command.name == 'vkGetInstanceProcAddr':
            return self.imported_classes['entry'].parent
        if command.name == 'vkGetDeviceProcAddr':
            return self.imported_classes['VkInstance']

        if command.params:
            param = command.params[0]
            if param.type.name and param.type.name in self.imported_classes:
                cls = self.imported_classes[param.type.name]
                for ancestor in [cls] + cls.ancestors:
                    if ancestor.c_handle.name in ('VkInstance', 'VkDevice'):
                        return ancestor
        return self.imported_classes['entry']

    def get_class_params(self, command: CCommand) -> List[Tuple[CMember, SwiftClass]]:
        class_params: List[Tuple[CMember, SwiftClass]] = []
        previous_class: SwiftClass = None
        for param in command.params:
            if param.type.name and param.type.name in self.imported_classes:
                if not param.type.optional or command.name.startswith(('vkDestroy', 'vkFree')):
                    cls = self.imported_classes[param.type.name]
                    if not previous_class or previous_class in cls.ancestors:
                        previous_class = cls
                        class_params.append((CMember(param.name, CType(param.type.name)), cls))
                        continue
            break
        return class_params

    def get_member_conversions(self, c_members: List[CMember], c_struct: CStruct = None, c_command: CCommand = None
                               ) -> Tuple[List[SwiftMember], tc.MemberConversions]:
        members: List[SwiftMember] = []
        conversions = tc.MemberConversions()
        lengths: List[str] = []

        for c_member in c_members:
            if is_array_convertible(c_member.type):
                lengths.append(c_member.type.length)
        if c_struct:
            # why aren't these specified in the Vulkan spec?
            if c_struct.name == 'VkPhysicalDeviceMemoryProperties':
                lengths += ['memoryTypeCount', 'memoryHeapCount']
            elif c_struct.name == 'VkPhysicalDeviceGroupProperties':
                lengths.append('physicalDeviceCount')

        for c_member in c_members:
            if c_member.name in lengths:
                continue

            if len(c_member.values) == 1:
                conversions.add_static_value(c_member.name, c_member.values[0])
                continue

            if c_command and c_member.name == 'pAllocator':
                conversions.add_static_value(c_member.name, 'nil')
                continue

            if c_struct and c_member.name == 'pNext':
                conversions.add_static_value(c_member.name, 'nil')
                continue

            if (c_struct and (
                (c_struct.name in ('VkPhysicalDeviceProperties', 'VkApplicationInfo')
                    and c_member.name == 'apiVersion')
                or (c_struct.name == 'VkLayerProperties' and c_member.name == 'specVersion')
            )):
                swift_type, conversion = 'Version', tc.version_conversion

            elif c_struct and c_struct.name == 'VkPhysicalDeviceMemoryProperties' and c_member.name == 'memoryTypes':
                swift_type, conversion = 'Array<MemoryType>', tc.tuple_array_conversion(
                    tc.struct_array_conversion('MemoryType', 'memoryTypeCount'), 'VkMemoryType', c_member.type.length)

            elif c_struct and c_struct.name == 'VkPhysicalDeviceMemoryProperties' and c_member.name == 'memoryHeaps':
                swift_type, conversion = 'Array<MemoryHeap>', tc.tuple_array_conversion(
                    tc.struct_array_conversion('MemoryHeap', 'memoryHeapCount'), 'VkMemoryHeap', c_member.type.length)

            elif c_struct and c_struct.name == 'VkPhysicalDeviceGroupProperties' and c_member.name == 'physicalDevices':
                swift_type, conversion = 'Array<PhysicalDevice>', tc.tuple_array_conversion(
                    tc.array_mapped_conversion(
                        tc.class_conversion('PhysicalDevice', 'instance'), 'physicalDeviceCount'
                    ), 'VkPhysicalDevice?', c_member.type.length
                )

            else:
                swift_type, conversion = self.get_type_conversion(c_member.type,
                                                                  convert_array_to_pointer=c_command is not None)

            swift_name = get_member_name(c_member.name, c_member.type)
            is_closure = c_member.type.name and c_member.type.name.startswith('PFN_') and not c_member.type.optional

            member = SwiftMember(name=swift_name, type_=swift_type, is_closure=is_closure)
            members.append(member)
            conversions.add_conversion(c_member.name, swift_name, conversion)

        return members, conversions

    def get_type_conversion(self, c_type: CType, implicit_only: bool = False, force_optional: bool = None,
                            convert_array_to_pointer: bool = False) -> Tuple[str, tc.Conversion]:
        optional = force_optional if force_optional is not None else c_type.optional
        if c_type.name:
            if c_type.name in tc.IMPLICIT_TYPE_MAP:
                return tc.IMPLICIT_TYPE_MAP[c_type.name], tc.implicit_conversion
            if not implicit_only:
                if c_type.name == 'VkBool32':
                    return 'Bool', tc.bool_conversion
                if c_type.name in self.imported_enums:
                    swift_enum = self.imported_enums[c_type.name]
                    return swift_enum, tc.enum_conversion(c_type.name, swift_enum)
                if c_type.name in self.imported_option_sets:
                    option_set = self.imported_option_sets[c_type.name]
                    return option_set, tc.option_set_conversion(option_set)
                if c_type.name in self.imported_option_set_bits:
                    option_set = self.imported_option_set_bits[c_type.name]
                    return option_set, tc.option_set_bit_conversion(c_type.name, option_set)
                if c_type.name in self.imported_structs:
                    swift_struct = self.imported_structs[c_type.name]
                    parent_name = swift_struct.parent_class.reference_name if swift_struct.parent_class else None
                    return swift_struct.name, tc.struct_conversion(swift_struct.name, parent_name)

                alias = self.imported_aliases.get(c_type.name)
                c_name = alias.c_alias.alias if alias else c_type.name

                if c_name in self.imported_classes:
                    cls = self.imported_classes[c_name]
                    cls_name = alias.name if alias else cls.name
                    parent_name = cls.parent.reference_name if cls.parent else None
                    if optional:
                        return cls_name + '?', tc.optional_class_conversion(cls_name, parent_name)
                    else:
                        return cls_name, tc.class_conversion(cls_name, parent_name)

            swift_type = c_type.name
            if self.is_pointer_type(c_type) and optional:
                swift_type += '?'
            return swift_type, tc.implicit_conversion

        elif c_type.pointer_to:
            if c_type.pointer_to.name == 'void':
                swift_type = 'UnsafeRawPointer' if c_type.pointer_to.const else 'UnsafeMutableRawPointer'
                if optional:
                    swift_type += '?'
                return swift_type, tc.implicit_conversion

            if not implicit_only and c_type.pointer_to.const:
                if is_string_convertible(c_type):
                    if optional:
                        return 'String?', tc.optional_string_conversion
                    else:
                        return 'String', tc.string_conversion

                if is_array_convertible(c_type):
                    return self.get_array_conversion(c_type)

                if c_type.pointer_to.name and not c_type.length and c_type.pointer_to.name in self.imported_structs:
                    swift_struct = self.imported_structs[c_type.pointer_to.name]
                    parent_name = swift_struct.parent_class.reference_name if swift_struct.parent_class else None
                    if optional:
                        return swift_struct.name + '?', tc.optional_struct_conversion(swift_struct.name, parent_name)
                    else:
                        return swift_struct.name, tc.struct_pointer_conversion(swift_struct.name, parent_name)

            to_type, _ = self.get_type_conversion(c_type.pointer_to, implicit_only=True, force_optional=True)
            swift_type = f'UnsafePointer<{to_type}>' if c_type.pointer_to.const else f'UnsafeMutablePointer<{to_type}>'
            if optional:
                swift_type += '?'
            return swift_type, tc.implicit_conversion

        elif c_type.array_of:
            if c_type.array_of.name == 'char':
                return 'String', tc.char_array_conversion
            of_type, _ = self.get_type_conversion(c_type.array_of, implicit_only=True, force_optional=True)
            swift_type = f'({", ".join([of_type] * c_type.length)})'
            if convert_array_to_pointer:
                return swift_type, tc.tuple_pointer_conversion(of_type)
            else:
                return swift_type, tc.implicit_conversion

    def get_array_conversion(self, c_type: CType, force_optional: bool = None) -> Tuple[str, tc.ArrayConversion]:
        optional = force_optional if force_optional is not None else c_type.optional

        if is_string_convertible(c_type.pointer_to) and not optional:
            return 'Array<String>', tc.string_array_conversion(c_type.length)

        if c_type.pointer_to.name and c_type.pointer_to.name in self.imported_structs:
            swift_struct = self.imported_structs[c_type.pointer_to.name]
            parent_name = swift_struct.parent_class.reference_name if swift_struct.parent_class else None
            if not optional:
                return f'Array<{swift_struct.name}>', \
                       tc.struct_array_conversion(swift_struct.name, c_type.length, parent_name)
            else:
                return f'Array<{swift_struct.name}>?', \
                       tc.optional_struct_array_conversion(swift_struct.name, c_type.length, parent_name)

        if c_type.pointer_to.name:
            element_type, element_conversion = self.get_type_conversion(c_type.pointer_to)
            if element_conversion != tc.implicit_conversion:
                if not optional:
                    return f'Array<{element_type}>', \
                           tc.array_mapped_conversion(element_conversion, c_type.length)
                else:
                    return f'Array<{element_type}>?', \
                       tc.optional_array_mapped_conversion(element_conversion, c_type.length)

        element_type, _ = self.get_type_conversion(c_type.pointer_to, implicit_only=True, force_optional=True)
        if not optional:
            return f'Array<{element_type}>', tc.array_conversion(c_type.length)
        else:
            return f'Array<{element_type}>?', tc.optional_array_conversion(c_type.length)

    def is_pointer_type(self, c_type: CType) -> bool:
        return (c_type.pointer_to is not None
                or (c_type.name and (c_type.name in self.pointer_types or c_type.name.startswith('PFN_'))))

    def pop_extension_tag(self, string: str) -> Tuple[str, Optional[str]]:
        for tag in self.c_context.extension_tags:
            if string.endswith(tag):
                return string[:-len(tag)].rstrip('_'), tag
        return string, None


def get_output_params(command: CCommand) -> List[CMember]:
    output_params: List[CMember] = []
    for param in command.params:
        if param.type.pointer_to and not param.type.pointer_to.const and param.type.pointer_to.name != 'void':
            output_params.append(param)
    return output_params


def is_string_convertible(type_: CType) -> bool:
    return (type_.pointer_to and type_.pointer_to.name == 'char' and type_.length == 'null-terminated'
            and type_.pointer_to.const)


def is_array_convertible(type_: CType, ignore_const: bool = False) -> bool:
    return (type_.pointer_to and (type_.pointer_to.const or ignore_const)
            and type_.length and type_.length != 'null-terminated' and 'latexmath' not in type_.length
            and type_.pointer_to.name != 'void')


def remove_vk_prefix(string: str) -> str:
    if string[:2].lower() == 'vk':
        string = string[2:]
    return string.lstrip('_')


def snake_to_pascal(string: str) -> str:
    parts = string.lower().split('_')
    parts = map(lambda p: p[0].upper() + p[1:], parts)
    return ''.join(parts)


def snake_to_camel(string: str) -> str:
    pascal = snake_to_pascal(string)
    return pascal[0].lower() + pascal[1:]


def get_member_name(c_name: str, c_type: CType) -> str:
    if c_type.pointer_to and c_name.startswith('p'):
        return get_member_name(c_name[1].lower() + c_name[2:], c_type.pointer_to)
    return c_name
