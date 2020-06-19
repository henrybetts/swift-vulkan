# swift-vulkan

A natural Swift interface for Vulkan.

Its aim is to be a lightweight wrapper around Vulkan, yet remove many of the complexities of using the C API directly.

## Overview
- Generated from vk.xml
- Conventional Swift names and types (String, Array, Bool, Enum, OptionSet etc.)
- Classes used to organise commands and handles
- Native error handling (do/try/catch) for failable commands
- Commands loaded automatically
- Support for Vulkan 1.0 / 1.1 / 1.2, plus many extensions


## Example Usage
A simple example of how to get started.
```swift
// Create an entry point to the Vulkan API
// This attempts to load the Vulkan loader dynamically
let entry = try Entry()

// Create an instance
let instance = try entry.createInstance(
    createInfo: InstanceCreateInfo(
        flags: [],
        applicationInfo: nil,
        enabledLayerNames: [],
        enabledExtensionNames: []))

// Find any physical devices
let physicalDevices = try instance.getPhysicalDevices()

// Print the name of each device
for device in physicalDevices {
    print(device.getProperties().deviceName)
}
```

## Future Goals
Swift-vulkan is a relatively new project, and there are still some important milestones to achieve.

- Some degree of automatic memory management (currently, destroy/free commands have to be called manually)
- Import unions as appropriate Swift types
- Simpler initializers for structs with optional members, or members that have obvious default values
- Implement structure chaining (pNext)
- Optimize struct conversion (currently, a conversion is performed each time a struct is passed to a command)
- Use preprocessor conditions to enable specific types at compile time (could do this for all extensions / features, or just for platform-specific extensions)
- Parse Vulkan documentation and generate Swift comments
