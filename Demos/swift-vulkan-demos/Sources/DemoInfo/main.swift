import Vulkan

func print(extensions: [ExtensionProperties]) {
    for ext in extensions {
        print(ext.extensionName)
        withIndent {
            print(key: "revision", value: ext.specVersion)
        }
    }
}

print("===========")
print("Vulkan Info")
print("===========")
print()


let entry = try Entry()
let version = try entry.getInstanceVersion()
print("Instance Version \(version)")
print()


let extensions = try entry.getInstanceExtensionProperties(layerName: nil)
print(title: "Instance Extensions (\(extensions.count))")
withIndent {
    print(extensions: extensions)
}
print()


let layers = try entry.getInstanceLayerProperties()
print(title: "Instance Layers (\(layers.count))")
try withIndent {
    for layer in layers {
        print(layer.layerName)
        try withIndent {
            if !layer.description.isEmpty {
                print(layer.description)
            }
            print(key: "version", value: layer.specVersion)
            print(key: "revision", value: layer.implementationVersion)
            
            let extensions = try entry.getInstanceExtensionProperties(layerName: layer.layerName)
            if !extensions.isEmpty {
                print("Extensions (\(extensions.count))")
                withIndent {
                    print(extensions: extensions)
                }
            }
        }
    }
}
print()


let instance = try entry.createInstance(
    createInfo: .init(
        flags: [],
        applicationInfo: nil,
        enabledLayerNames: [],
        enabledExtensionNames: []
    )
)

let physicalDevices = try instance.getPhysicalDevices()
print(title: "Physical Devices (\(physicalDevices.count))")
try withIndent {
    for (index, device) in physicalDevices.enumerated() {
        print(index: index)
        try withIndent {
            let props = device.getProperties()
            print(subtitle: "Device Properties")
            withIndent {
                print(key: "apiVersion", value: props.apiVersion)
                print(key: "driverVersion", value: props.driverVersion)
                print(key: "vendorID", value: hex(props.vendorID))
                print(key: "deviceID", value: hex(props.deviceID))
                print(key: "deviceType", value: props.deviceType)
                print(key: "deviceName", value: props.deviceName)
            }
            print()
            
            print(subtitle: "Device Limits")
            withIndent {
                printChildren(of: props.limits)
            }
            print()
            
            print(subtitle: "Device Sparse Properties")
            withIndent {
                printChildren(of: props.sparseProperties)
            }
            print()
            
            let features = device.getFeatures()
            print(subtitle: "Device Features")
            withIndent {
                printChildren(of: features)
            }
            print()
            
            let extensions = try device.getDeviceExtensionProperties(layerName: nil)
            print(subtitle: "Device Extensions (\(extensions.count))")
            withIndent {
                print(extensions: extensions)
            }
            print()
            
            let queueFamilies = device.getQueueFamilyProperties()
            print(subtitle: "Device Queue Families (\(queueFamilies.count))")
            withIndent {
                for (index, family) in queueFamilies.enumerated() {
                    print(index: index)
                    withIndent {
                        printChildren(of: family)
                    }
                }
            }
            print()
            
            let memoryProps = device.getMemoryProperties()
            print(subtitle: "Device Memory Heaps (\(memoryProps.memoryHeaps.count))")
            withIndent {
                for (index, heap) in memoryProps.memoryHeaps.enumerated() {
                    print(index: index)
                    withIndent {
                        print(key: "flags", value: heap.flags)
                        let gbSize = Float(heap.size) / (1024 * 1024 * 1024)
                        print(key: "size", value: "\(heap.size) (\(gbSize) GiB)")
                    }
                }
            }
            print()
            
            print(subtitle: "Device Memory Types (\(memoryProps.memoryTypes.count))")
            withIndent {
                for (index, type) in memoryProps.memoryTypes.enumerated() {
                    print(index: index)
                    withIndent {
                        printChildren(of: type)
                    }
                }
            }
        }
    }
}
print()


let groups = try instance.getPhysicalDeviceGroups()
print(title: "Physical Device Groups (\(groups.count))")
withIndent {
    for (index, group) in groups.enumerated() {
        print(index: index)
        withIndent {
            print("Physical Devices (\(group.physicalDevices.count))")
            withIndent {
                for device in group.physicalDevices {
                    let deviceIndex = physicalDevices.firstIndex(of: device) ?? -1
                    print("\(device.getProperties().deviceName) [\(deviceIndex)]")
                }
            }
            print(key: "subsetAllocation", value: group.subsetAllocation)
        }
    }
}
print()
