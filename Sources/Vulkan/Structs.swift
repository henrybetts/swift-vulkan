import CVulkan

struct BaseOutStructure: CStructConvertible {
    typealias CStruct = VkBaseOutStructure

    let sType: VkStructureType

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkBaseOutStructure>) throws -> R) rethrows -> R {
        var cStruct = VkBaseOutStructure()
        cStruct.sType = self.sType
        cStruct.pNext = nil
        return try body(&cStruct)
    }
}

struct BaseInStructure: CStructConvertible {
    typealias CStruct = VkBaseInStructure

    let sType: VkStructureType

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkBaseInStructure>) throws -> R) rethrows -> R {
        var cStruct = VkBaseInStructure()
        cStruct.sType = self.sType
        cStruct.pNext = nil
        return try body(&cStruct)
    }
}

struct Offset2D: CStructConvertible {
    typealias CStruct = VkOffset2D

    let x: Int32
    let y: Int32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkOffset2D>) throws -> R) rethrows -> R {
        var cStruct = VkOffset2D()
        cStruct.x = self.x
        cStruct.y = self.y
        return try body(&cStruct)
    }
}

struct Offset3D: CStructConvertible {
    typealias CStruct = VkOffset3D

    let x: Int32
    let y: Int32
    let z: Int32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkOffset3D>) throws -> R) rethrows -> R {
        var cStruct = VkOffset3D()
        cStruct.x = self.x
        cStruct.y = self.y
        cStruct.z = self.z
        return try body(&cStruct)
    }
}

struct Extent2D: CStructConvertible {
    typealias CStruct = VkExtent2D

    let width: UInt32
    let height: UInt32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkExtent2D>) throws -> R) rethrows -> R {
        var cStruct = VkExtent2D()
        cStruct.width = self.width
        cStruct.height = self.height
        return try body(&cStruct)
    }
}

struct Extent3D: CStructConvertible {
    typealias CStruct = VkExtent3D

    let width: UInt32
    let height: UInt32
    let depth: UInt32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkExtent3D>) throws -> R) rethrows -> R {
        var cStruct = VkExtent3D()
        cStruct.width = self.width
        cStruct.height = self.height
        cStruct.depth = self.depth
        return try body(&cStruct)
    }
}

struct Viewport: CStructConvertible {
    typealias CStruct = VkViewport

    let x: Float
    let y: Float
    let width: Float
    let height: Float
    let minDepth: Float
    let maxDepth: Float

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkViewport>) throws -> R) rethrows -> R {
        var cStruct = VkViewport()
        cStruct.x = self.x
        cStruct.y = self.y
        cStruct.width = self.width
        cStruct.height = self.height
        cStruct.minDepth = self.minDepth
        cStruct.maxDepth = self.maxDepth
        return try body(&cStruct)
    }
}

struct Rect2D: CStructConvertible {
    typealias CStruct = VkRect2D

    let offset: VkOffset2D
    let extent: VkExtent2D

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkRect2D>) throws -> R) rethrows -> R {
        var cStruct = VkRect2D()
        cStruct.offset = self.offset
        cStruct.extent = self.extent
        return try body(&cStruct)
    }
}

struct ClearRect: CStructConvertible {
    typealias CStruct = VkClearRect

    let rect: VkRect2D
    let baseArrayLayer: UInt32
    let layerCount: UInt32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkClearRect>) throws -> R) rethrows -> R {
        var cStruct = VkClearRect()
        cStruct.rect = self.rect
        cStruct.baseArrayLayer = self.baseArrayLayer
        cStruct.layerCount = self.layerCount
        return try body(&cStruct)
    }
}

struct ComponentMapping: CStructConvertible {
    typealias CStruct = VkComponentMapping

    let r: VkComponentSwizzle
    let g: VkComponentSwizzle
    let b: VkComponentSwizzle
    let a: VkComponentSwizzle

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkComponentMapping>) throws -> R) rethrows -> R {
        var cStruct = VkComponentMapping()
        cStruct.r = self.r
        cStruct.g = self.g
        cStruct.b = self.b
        cStruct.a = self.a
        return try body(&cStruct)
    }
}

struct PhysicalDeviceProperties: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceProperties

    let apiVersion: UInt32
    let driverVersion: UInt32
    let vendorID: UInt32
    let deviceID: UInt32
    let deviceType: VkPhysicalDeviceType
    let deviceName: (CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar)
    let pipelineCacheUUID: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
    let limits: VkPhysicalDeviceLimits
    let sparseProperties: VkPhysicalDeviceSparseProperties

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceProperties>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceProperties()
        cStruct.apiVersion = self.apiVersion
        cStruct.driverVersion = self.driverVersion
        cStruct.vendorID = self.vendorID
        cStruct.deviceID = self.deviceID
        cStruct.deviceType = self.deviceType
        cStruct.deviceName = self.deviceName
        cStruct.pipelineCacheUUID = self.pipelineCacheUUID
        cStruct.limits = self.limits
        cStruct.sparseProperties = self.sparseProperties
        return try body(&cStruct)
    }
}

struct ExtensionProperties: CStructConvertible {
    typealias CStruct = VkExtensionProperties

    let extensionName: (CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar)
    let specVersion: UInt32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkExtensionProperties>) throws -> R) rethrows -> R {
        var cStruct = VkExtensionProperties()
        cStruct.extensionName = self.extensionName
        cStruct.specVersion = self.specVersion
        return try body(&cStruct)
    }
}

struct LayerProperties: CStructConvertible {
    typealias CStruct = VkLayerProperties

    let layerName: (CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar)
    let specVersion: UInt32
    let implementationVersion: UInt32
    let description: (CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar)

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkLayerProperties>) throws -> R) rethrows -> R {
        var cStruct = VkLayerProperties()
        cStruct.layerName = self.layerName
        cStruct.specVersion = self.specVersion
        cStruct.implementationVersion = self.implementationVersion
        cStruct.description = self.description
        return try body(&cStruct)
    }
}

struct ApplicationInfo: CStructConvertible {
    typealias CStruct = VkApplicationInfo

    let pApplicationName: UnsafePointer<CChar>
    let applicationVersion: UInt32
    let pEngineName: UnsafePointer<CChar>
    let engineVersion: UInt32
    let apiVersion: UInt32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkApplicationInfo>) throws -> R) rethrows -> R {
        var cStruct = VkApplicationInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_APPLICATION_INFO
        cStruct.pNext = nil
        cStruct.pApplicationName = self.pApplicationName
        cStruct.applicationVersion = self.applicationVersion
        cStruct.pEngineName = self.pEngineName
        cStruct.engineVersion = self.engineVersion
        cStruct.apiVersion = self.apiVersion
        return try body(&cStruct)
    }
}

struct AllocationCallbacks: CStructConvertible {
    typealias CStruct = VkAllocationCallbacks

    let pUserData: UnsafeMutableRawPointer
    let pfnAllocation: PFN_vkAllocationFunction
    let pfnReallocation: PFN_vkReallocationFunction
    let pfnFree: PFN_vkFreeFunction
    let pfnInternalAllocation: PFN_vkInternalAllocationNotification
    let pfnInternalFree: PFN_vkInternalFreeNotification

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkAllocationCallbacks>) throws -> R) rethrows -> R {
        var cStruct = VkAllocationCallbacks()
        cStruct.pUserData = self.pUserData
        cStruct.pfnAllocation = self.pfnAllocation
        cStruct.pfnReallocation = self.pfnReallocation
        cStruct.pfnFree = self.pfnFree
        cStruct.pfnInternalAllocation = self.pfnInternalAllocation
        cStruct.pfnInternalFree = self.pfnInternalFree
        return try body(&cStruct)
    }
}

struct DeviceQueueCreateInfo: CStructConvertible {
    typealias CStruct = VkDeviceQueueCreateInfo

    let flags: VkDeviceQueueCreateFlags
    let queueFamilyIndex: UInt32
    let queueCount: UInt32
    let pQueuePriorities: UnsafePointer<Float>

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkDeviceQueueCreateInfo>) throws -> R) rethrows -> R {
        var cStruct = VkDeviceQueueCreateInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_DEVICE_QUEUE_CREATE_INFO
        cStruct.pNext = nil
        cStruct.flags = self.flags
        cStruct.queueFamilyIndex = self.queueFamilyIndex
        cStruct.queueCount = self.queueCount
        cStruct.pQueuePriorities = self.pQueuePriorities
        return try body(&cStruct)
    }
}

struct DeviceCreateInfo: CStructConvertible {
    typealias CStruct = VkDeviceCreateInfo

    let flags: VkDeviceCreateFlags
    let queueCreateInfoCount: UInt32
    let pQueueCreateInfos: UnsafePointer<VkDeviceQueueCreateInfo>
    let enabledLayerCount: UInt32
    let ppEnabledLayerNames: UnsafePointer<UnsafePointer<CChar>?>
    let enabledExtensionCount: UInt32
    let ppEnabledExtensionNames: UnsafePointer<UnsafePointer<CChar>?>
    let pEnabledFeatures: UnsafePointer<VkPhysicalDeviceFeatures>

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkDeviceCreateInfo>) throws -> R) rethrows -> R {
        var cStruct = VkDeviceCreateInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_DEVICE_CREATE_INFO
        cStruct.pNext = nil
        cStruct.flags = self.flags
        cStruct.queueCreateInfoCount = self.queueCreateInfoCount
        cStruct.pQueueCreateInfos = self.pQueueCreateInfos
        cStruct.enabledLayerCount = self.enabledLayerCount
        cStruct.ppEnabledLayerNames = self.ppEnabledLayerNames
        cStruct.enabledExtensionCount = self.enabledExtensionCount
        cStruct.ppEnabledExtensionNames = self.ppEnabledExtensionNames
        cStruct.pEnabledFeatures = self.pEnabledFeatures
        return try body(&cStruct)
    }
}

struct InstanceCreateInfo: CStructConvertible {
    typealias CStruct = VkInstanceCreateInfo

    let flags: VkInstanceCreateFlags
    let pApplicationInfo: UnsafePointer<VkApplicationInfo>
    let enabledLayerCount: UInt32
    let ppEnabledLayerNames: UnsafePointer<UnsafePointer<CChar>?>
    let enabledExtensionCount: UInt32
    let ppEnabledExtensionNames: UnsafePointer<UnsafePointer<CChar>?>

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkInstanceCreateInfo>) throws -> R) rethrows -> R {
        var cStruct = VkInstanceCreateInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO
        cStruct.pNext = nil
        cStruct.flags = self.flags
        cStruct.pApplicationInfo = self.pApplicationInfo
        cStruct.enabledLayerCount = self.enabledLayerCount
        cStruct.ppEnabledLayerNames = self.ppEnabledLayerNames
        cStruct.enabledExtensionCount = self.enabledExtensionCount
        cStruct.ppEnabledExtensionNames = self.ppEnabledExtensionNames
        return try body(&cStruct)
    }
}

struct QueueFamilyProperties: CStructConvertible {
    typealias CStruct = VkQueueFamilyProperties

    let queueFlags: VkQueueFlags
    let queueCount: UInt32
    let timestampValidBits: UInt32
    let minImageTransferGranularity: VkExtent3D

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkQueueFamilyProperties>) throws -> R) rethrows -> R {
        var cStruct = VkQueueFamilyProperties()
        cStruct.queueFlags = self.queueFlags
        cStruct.queueCount = self.queueCount
        cStruct.timestampValidBits = self.timestampValidBits
        cStruct.minImageTransferGranularity = self.minImageTransferGranularity
        return try body(&cStruct)
    }
}

struct PhysicalDeviceMemoryProperties: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceMemoryProperties

    let memoryTypeCount: UInt32
    let memoryTypes: (VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType)
    let memoryHeapCount: UInt32
    let memoryHeaps: (VkMemoryHeap, VkMemoryHeap, VkMemoryHeap, VkMemoryHeap, VkMemoryHeap, VkMemoryHeap, VkMemoryHeap, VkMemoryHeap, VkMemoryHeap, VkMemoryHeap, VkMemoryHeap, VkMemoryHeap, VkMemoryHeap, VkMemoryHeap, VkMemoryHeap, VkMemoryHeap)

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceMemoryProperties>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceMemoryProperties()
        cStruct.memoryTypeCount = self.memoryTypeCount
        cStruct.memoryTypes = self.memoryTypes
        cStruct.memoryHeapCount = self.memoryHeapCount
        cStruct.memoryHeaps = self.memoryHeaps
        return try body(&cStruct)
    }
}

struct MemoryAllocateInfo: CStructConvertible {
    typealias CStruct = VkMemoryAllocateInfo

    let allocationSize: VkDeviceSize
    let memoryTypeIndex: UInt32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkMemoryAllocateInfo>) throws -> R) rethrows -> R {
        var cStruct = VkMemoryAllocateInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO
        cStruct.pNext = nil
        cStruct.allocationSize = self.allocationSize
        cStruct.memoryTypeIndex = self.memoryTypeIndex
        return try body(&cStruct)
    }
}

struct MemoryRequirements: CStructConvertible {
    typealias CStruct = VkMemoryRequirements

    let size: VkDeviceSize
    let alignment: VkDeviceSize
    let memoryTypeBits: UInt32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkMemoryRequirements>) throws -> R) rethrows -> R {
        var cStruct = VkMemoryRequirements()
        cStruct.size = self.size
        cStruct.alignment = self.alignment
        cStruct.memoryTypeBits = self.memoryTypeBits
        return try body(&cStruct)
    }
}

struct SparseImageFormatProperties: CStructConvertible {
    typealias CStruct = VkSparseImageFormatProperties

    let aspectMask: VkImageAspectFlags
    let imageGranularity: VkExtent3D
    let flags: VkSparseImageFormatFlags

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkSparseImageFormatProperties>) throws -> R) rethrows -> R {
        var cStruct = VkSparseImageFormatProperties()
        cStruct.aspectMask = self.aspectMask
        cStruct.imageGranularity = self.imageGranularity
        cStruct.flags = self.flags
        return try body(&cStruct)
    }
}

struct SparseImageMemoryRequirements: CStructConvertible {
    typealias CStruct = VkSparseImageMemoryRequirements

    let formatProperties: VkSparseImageFormatProperties
    let imageMipTailFirstLod: UInt32
    let imageMipTailSize: VkDeviceSize
    let imageMipTailOffset: VkDeviceSize
    let imageMipTailStride: VkDeviceSize

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkSparseImageMemoryRequirements>) throws -> R) rethrows -> R {
        var cStruct = VkSparseImageMemoryRequirements()
        cStruct.formatProperties = self.formatProperties
        cStruct.imageMipTailFirstLod = self.imageMipTailFirstLod
        cStruct.imageMipTailSize = self.imageMipTailSize
        cStruct.imageMipTailOffset = self.imageMipTailOffset
        cStruct.imageMipTailStride = self.imageMipTailStride
        return try body(&cStruct)
    }
}

struct MemoryType: CStructConvertible {
    typealias CStruct = VkMemoryType

    let propertyFlags: VkMemoryPropertyFlags
    let heapIndex: UInt32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkMemoryType>) throws -> R) rethrows -> R {
        var cStruct = VkMemoryType()
        cStruct.propertyFlags = self.propertyFlags
        cStruct.heapIndex = self.heapIndex
        return try body(&cStruct)
    }
}

struct MemoryHeap: CStructConvertible {
    typealias CStruct = VkMemoryHeap

    let size: VkDeviceSize
    let flags: VkMemoryHeapFlags

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkMemoryHeap>) throws -> R) rethrows -> R {
        var cStruct = VkMemoryHeap()
        cStruct.size = self.size
        cStruct.flags = self.flags
        return try body(&cStruct)
    }
}

struct MappedMemoryRange: CStructConvertible {
    typealias CStruct = VkMappedMemoryRange

    let memory: VkDeviceMemory
    let offset: VkDeviceSize
    let size: VkDeviceSize

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkMappedMemoryRange>) throws -> R) rethrows -> R {
        var cStruct = VkMappedMemoryRange()
        cStruct.sType = VK_STRUCTURE_TYPE_MAPPED_MEMORY_RANGE
        cStruct.pNext = nil
        cStruct.memory = self.memory
        cStruct.offset = self.offset
        cStruct.size = self.size
        return try body(&cStruct)
    }
}

struct FormatProperties: CStructConvertible {
    typealias CStruct = VkFormatProperties

    let linearTilingFeatures: VkFormatFeatureFlags
    let optimalTilingFeatures: VkFormatFeatureFlags
    let bufferFeatures: VkFormatFeatureFlags

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkFormatProperties>) throws -> R) rethrows -> R {
        var cStruct = VkFormatProperties()
        cStruct.linearTilingFeatures = self.linearTilingFeatures
        cStruct.optimalTilingFeatures = self.optimalTilingFeatures
        cStruct.bufferFeatures = self.bufferFeatures
        return try body(&cStruct)
    }
}

struct ImageFormatProperties: CStructConvertible {
    typealias CStruct = VkImageFormatProperties

    let maxExtent: VkExtent3D
    let maxMipLevels: UInt32
    let maxArrayLayers: UInt32
    let sampleCounts: VkSampleCountFlags
    let maxResourceSize: VkDeviceSize

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkImageFormatProperties>) throws -> R) rethrows -> R {
        var cStruct = VkImageFormatProperties()
        cStruct.maxExtent = self.maxExtent
        cStruct.maxMipLevels = self.maxMipLevels
        cStruct.maxArrayLayers = self.maxArrayLayers
        cStruct.sampleCounts = self.sampleCounts
        cStruct.maxResourceSize = self.maxResourceSize
        return try body(&cStruct)
    }
}

struct DescriptorBufferInfo: CStructConvertible {
    typealias CStruct = VkDescriptorBufferInfo

    let buffer: VkBuffer
    let offset: VkDeviceSize
    let range: VkDeviceSize

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkDescriptorBufferInfo>) throws -> R) rethrows -> R {
        var cStruct = VkDescriptorBufferInfo()
        cStruct.buffer = self.buffer
        cStruct.offset = self.offset
        cStruct.range = self.range
        return try body(&cStruct)
    }
}

struct DescriptorImageInfo: CStructConvertible {
    typealias CStruct = VkDescriptorImageInfo

    let sampler: VkSampler
    let imageView: VkImageView
    let imageLayout: VkImageLayout

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkDescriptorImageInfo>) throws -> R) rethrows -> R {
        var cStruct = VkDescriptorImageInfo()
        cStruct.sampler = self.sampler
        cStruct.imageView = self.imageView
        cStruct.imageLayout = self.imageLayout
        return try body(&cStruct)
    }
}

struct WriteDescriptorSet: CStructConvertible {
    typealias CStruct = VkWriteDescriptorSet

    let dstSet: VkDescriptorSet
    let dstBinding: UInt32
    let dstArrayElement: UInt32
    let descriptorCount: UInt32
    let descriptorType: VkDescriptorType
    let pImageInfo: UnsafePointer<VkDescriptorImageInfo>
    let pBufferInfo: UnsafePointer<VkDescriptorBufferInfo>
    let pTexelBufferView: UnsafePointer<VkBufferView?>

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkWriteDescriptorSet>) throws -> R) rethrows -> R {
        var cStruct = VkWriteDescriptorSet()
        cStruct.sType = VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET
        cStruct.pNext = nil
        cStruct.dstSet = self.dstSet
        cStruct.dstBinding = self.dstBinding
        cStruct.dstArrayElement = self.dstArrayElement
        cStruct.descriptorCount = self.descriptorCount
        cStruct.descriptorType = self.descriptorType
        cStruct.pImageInfo = self.pImageInfo
        cStruct.pBufferInfo = self.pBufferInfo
        cStruct.pTexelBufferView = self.pTexelBufferView
        return try body(&cStruct)
    }
}

struct CopyDescriptorSet: CStructConvertible {
    typealias CStruct = VkCopyDescriptorSet

    let srcSet: VkDescriptorSet
    let srcBinding: UInt32
    let srcArrayElement: UInt32
    let dstSet: VkDescriptorSet
    let dstBinding: UInt32
    let dstArrayElement: UInt32
    let descriptorCount: UInt32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkCopyDescriptorSet>) throws -> R) rethrows -> R {
        var cStruct = VkCopyDescriptorSet()
        cStruct.sType = VK_STRUCTURE_TYPE_COPY_DESCRIPTOR_SET
        cStruct.pNext = nil
        cStruct.srcSet = self.srcSet
        cStruct.srcBinding = self.srcBinding
        cStruct.srcArrayElement = self.srcArrayElement
        cStruct.dstSet = self.dstSet
        cStruct.dstBinding = self.dstBinding
        cStruct.dstArrayElement = self.dstArrayElement
        cStruct.descriptorCount = self.descriptorCount
        return try body(&cStruct)
    }
}

struct BufferCreateInfo: CStructConvertible {
    typealias CStruct = VkBufferCreateInfo

    let flags: VkBufferCreateFlags
    let size: VkDeviceSize
    let usage: VkBufferUsageFlags
    let sharingMode: VkSharingMode
    let queueFamilyIndexCount: UInt32
    let pQueueFamilyIndices: UnsafePointer<UInt32>

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkBufferCreateInfo>) throws -> R) rethrows -> R {
        var cStruct = VkBufferCreateInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO
        cStruct.pNext = nil
        cStruct.flags = self.flags
        cStruct.size = self.size
        cStruct.usage = self.usage
        cStruct.sharingMode = self.sharingMode
        cStruct.queueFamilyIndexCount = self.queueFamilyIndexCount
        cStruct.pQueueFamilyIndices = self.pQueueFamilyIndices
        return try body(&cStruct)
    }
}

struct BufferViewCreateInfo: CStructConvertible {
    typealias CStruct = VkBufferViewCreateInfo

    let flags: VkBufferViewCreateFlags
    let buffer: VkBuffer
    let format: VkFormat
    let offset: VkDeviceSize
    let range: VkDeviceSize

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkBufferViewCreateInfo>) throws -> R) rethrows -> R {
        var cStruct = VkBufferViewCreateInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_BUFFER_VIEW_CREATE_INFO
        cStruct.pNext = nil
        cStruct.flags = self.flags
        cStruct.buffer = self.buffer
        cStruct.format = self.format
        cStruct.offset = self.offset
        cStruct.range = self.range
        return try body(&cStruct)
    }
}

struct ImageSubresource: CStructConvertible {
    typealias CStruct = VkImageSubresource

    let aspectMask: VkImageAspectFlags
    let mipLevel: UInt32
    let arrayLayer: UInt32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkImageSubresource>) throws -> R) rethrows -> R {
        var cStruct = VkImageSubresource()
        cStruct.aspectMask = self.aspectMask
        cStruct.mipLevel = self.mipLevel
        cStruct.arrayLayer = self.arrayLayer
        return try body(&cStruct)
    }
}

struct ImageSubresourceLayers: CStructConvertible {
    typealias CStruct = VkImageSubresourceLayers

    let aspectMask: VkImageAspectFlags
    let mipLevel: UInt32
    let baseArrayLayer: UInt32
    let layerCount: UInt32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkImageSubresourceLayers>) throws -> R) rethrows -> R {
        var cStruct = VkImageSubresourceLayers()
        cStruct.aspectMask = self.aspectMask
        cStruct.mipLevel = self.mipLevel
        cStruct.baseArrayLayer = self.baseArrayLayer
        cStruct.layerCount = self.layerCount
        return try body(&cStruct)
    }
}

struct ImageSubresourceRange: CStructConvertible {
    typealias CStruct = VkImageSubresourceRange

    let aspectMask: VkImageAspectFlags
    let baseMipLevel: UInt32
    let levelCount: UInt32
    let baseArrayLayer: UInt32
    let layerCount: UInt32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkImageSubresourceRange>) throws -> R) rethrows -> R {
        var cStruct = VkImageSubresourceRange()
        cStruct.aspectMask = self.aspectMask
        cStruct.baseMipLevel = self.baseMipLevel
        cStruct.levelCount = self.levelCount
        cStruct.baseArrayLayer = self.baseArrayLayer
        cStruct.layerCount = self.layerCount
        return try body(&cStruct)
    }
}

struct MemoryBarrier: CStructConvertible {
    typealias CStruct = VkMemoryBarrier

    let srcAccessMask: VkAccessFlags
    let dstAccessMask: VkAccessFlags

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkMemoryBarrier>) throws -> R) rethrows -> R {
        var cStruct = VkMemoryBarrier()
        cStruct.sType = VK_STRUCTURE_TYPE_MEMORY_BARRIER
        cStruct.pNext = nil
        cStruct.srcAccessMask = self.srcAccessMask
        cStruct.dstAccessMask = self.dstAccessMask
        return try body(&cStruct)
    }
}

struct BufferMemoryBarrier: CStructConvertible {
    typealias CStruct = VkBufferMemoryBarrier

    let srcAccessMask: VkAccessFlags
    let dstAccessMask: VkAccessFlags
    let srcQueueFamilyIndex: UInt32
    let dstQueueFamilyIndex: UInt32
    let buffer: VkBuffer
    let offset: VkDeviceSize
    let size: VkDeviceSize

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkBufferMemoryBarrier>) throws -> R) rethrows -> R {
        var cStruct = VkBufferMemoryBarrier()
        cStruct.sType = VK_STRUCTURE_TYPE_BUFFER_MEMORY_BARRIER
        cStruct.pNext = nil
        cStruct.srcAccessMask = self.srcAccessMask
        cStruct.dstAccessMask = self.dstAccessMask
        cStruct.srcQueueFamilyIndex = self.srcQueueFamilyIndex
        cStruct.dstQueueFamilyIndex = self.dstQueueFamilyIndex
        cStruct.buffer = self.buffer
        cStruct.offset = self.offset
        cStruct.size = self.size
        return try body(&cStruct)
    }
}

struct ImageMemoryBarrier: CStructConvertible {
    typealias CStruct = VkImageMemoryBarrier

    let srcAccessMask: VkAccessFlags
    let dstAccessMask: VkAccessFlags
    let oldLayout: VkImageLayout
    let newLayout: VkImageLayout
    let srcQueueFamilyIndex: UInt32
    let dstQueueFamilyIndex: UInt32
    let image: VkImage
    let subresourceRange: VkImageSubresourceRange

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkImageMemoryBarrier>) throws -> R) rethrows -> R {
        var cStruct = VkImageMemoryBarrier()
        cStruct.sType = VK_STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER
        cStruct.pNext = nil
        cStruct.srcAccessMask = self.srcAccessMask
        cStruct.dstAccessMask = self.dstAccessMask
        cStruct.oldLayout = self.oldLayout
        cStruct.newLayout = self.newLayout
        cStruct.srcQueueFamilyIndex = self.srcQueueFamilyIndex
        cStruct.dstQueueFamilyIndex = self.dstQueueFamilyIndex
        cStruct.image = self.image
        cStruct.subresourceRange = self.subresourceRange
        return try body(&cStruct)
    }
}

struct ImageCreateInfo: CStructConvertible {
    typealias CStruct = VkImageCreateInfo

    let flags: VkImageCreateFlags
    let imageType: VkImageType
    let format: VkFormat
    let extent: VkExtent3D
    let mipLevels: UInt32
    let arrayLayers: UInt32
    let samples: VkSampleCountFlagBits
    let tiling: VkImageTiling
    let usage: VkImageUsageFlags
    let sharingMode: VkSharingMode
    let queueFamilyIndexCount: UInt32
    let pQueueFamilyIndices: UnsafePointer<UInt32>
    let initialLayout: VkImageLayout

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkImageCreateInfo>) throws -> R) rethrows -> R {
        var cStruct = VkImageCreateInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_IMAGE_CREATE_INFO
        cStruct.pNext = nil
        cStruct.flags = self.flags
        cStruct.imageType = self.imageType
        cStruct.format = self.format
        cStruct.extent = self.extent
        cStruct.mipLevels = self.mipLevels
        cStruct.arrayLayers = self.arrayLayers
        cStruct.samples = self.samples
        cStruct.tiling = self.tiling
        cStruct.usage = self.usage
        cStruct.sharingMode = self.sharingMode
        cStruct.queueFamilyIndexCount = self.queueFamilyIndexCount
        cStruct.pQueueFamilyIndices = self.pQueueFamilyIndices
        cStruct.initialLayout = self.initialLayout
        return try body(&cStruct)
    }
}

struct SubresourceLayout: CStructConvertible {
    typealias CStruct = VkSubresourceLayout

    let offset: VkDeviceSize
    let size: VkDeviceSize
    let rowPitch: VkDeviceSize
    let arrayPitch: VkDeviceSize
    let depthPitch: VkDeviceSize

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkSubresourceLayout>) throws -> R) rethrows -> R {
        var cStruct = VkSubresourceLayout()
        cStruct.offset = self.offset
        cStruct.size = self.size
        cStruct.rowPitch = self.rowPitch
        cStruct.arrayPitch = self.arrayPitch
        cStruct.depthPitch = self.depthPitch
        return try body(&cStruct)
    }
}

struct ImageViewCreateInfo: CStructConvertible {
    typealias CStruct = VkImageViewCreateInfo

    let flags: VkImageViewCreateFlags
    let image: VkImage
    let viewType: VkImageViewType
    let format: VkFormat
    let components: VkComponentMapping
    let subresourceRange: VkImageSubresourceRange

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkImageViewCreateInfo>) throws -> R) rethrows -> R {
        var cStruct = VkImageViewCreateInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_IMAGE_VIEW_CREATE_INFO
        cStruct.pNext = nil
        cStruct.flags = self.flags
        cStruct.image = self.image
        cStruct.viewType = self.viewType
        cStruct.format = self.format
        cStruct.components = self.components
        cStruct.subresourceRange = self.subresourceRange
        return try body(&cStruct)
    }
}

struct BufferCopy: CStructConvertible {
    typealias CStruct = VkBufferCopy

    let srcOffset: VkDeviceSize
    let dstOffset: VkDeviceSize
    let size: VkDeviceSize

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkBufferCopy>) throws -> R) rethrows -> R {
        var cStruct = VkBufferCopy()
        cStruct.srcOffset = self.srcOffset
        cStruct.dstOffset = self.dstOffset
        cStruct.size = self.size
        return try body(&cStruct)
    }
}

struct SparseMemoryBind: CStructConvertible {
    typealias CStruct = VkSparseMemoryBind

    let resourceOffset: VkDeviceSize
    let size: VkDeviceSize
    let memory: VkDeviceMemory
    let memoryOffset: VkDeviceSize
    let flags: VkSparseMemoryBindFlags

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkSparseMemoryBind>) throws -> R) rethrows -> R {
        var cStruct = VkSparseMemoryBind()
        cStruct.resourceOffset = self.resourceOffset
        cStruct.size = self.size
        cStruct.memory = self.memory
        cStruct.memoryOffset = self.memoryOffset
        cStruct.flags = self.flags
        return try body(&cStruct)
    }
}

struct SparseImageMemoryBind: CStructConvertible {
    typealias CStruct = VkSparseImageMemoryBind

    let subresource: VkImageSubresource
    let offset: VkOffset3D
    let extent: VkExtent3D
    let memory: VkDeviceMemory
    let memoryOffset: VkDeviceSize
    let flags: VkSparseMemoryBindFlags

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkSparseImageMemoryBind>) throws -> R) rethrows -> R {
        var cStruct = VkSparseImageMemoryBind()
        cStruct.subresource = self.subresource
        cStruct.offset = self.offset
        cStruct.extent = self.extent
        cStruct.memory = self.memory
        cStruct.memoryOffset = self.memoryOffset
        cStruct.flags = self.flags
        return try body(&cStruct)
    }
}

struct SparseBufferMemoryBindInfo: CStructConvertible {
    typealias CStruct = VkSparseBufferMemoryBindInfo

    let buffer: VkBuffer
    let bindCount: UInt32
    let pBinds: UnsafePointer<VkSparseMemoryBind>

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkSparseBufferMemoryBindInfo>) throws -> R) rethrows -> R {
        var cStruct = VkSparseBufferMemoryBindInfo()
        cStruct.buffer = self.buffer
        cStruct.bindCount = self.bindCount
        cStruct.pBinds = self.pBinds
        return try body(&cStruct)
    }
}

struct SparseImageOpaqueMemoryBindInfo: CStructConvertible {
    typealias CStruct = VkSparseImageOpaqueMemoryBindInfo

    let image: VkImage
    let bindCount: UInt32
    let pBinds: UnsafePointer<VkSparseMemoryBind>

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkSparseImageOpaqueMemoryBindInfo>) throws -> R) rethrows -> R {
        var cStruct = VkSparseImageOpaqueMemoryBindInfo()
        cStruct.image = self.image
        cStruct.bindCount = self.bindCount
        cStruct.pBinds = self.pBinds
        return try body(&cStruct)
    }
}

struct SparseImageMemoryBindInfo: CStructConvertible {
    typealias CStruct = VkSparseImageMemoryBindInfo

    let image: VkImage
    let bindCount: UInt32
    let pBinds: UnsafePointer<VkSparseImageMemoryBind>

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkSparseImageMemoryBindInfo>) throws -> R) rethrows -> R {
        var cStruct = VkSparseImageMemoryBindInfo()
        cStruct.image = self.image
        cStruct.bindCount = self.bindCount
        cStruct.pBinds = self.pBinds
        return try body(&cStruct)
    }
}

struct BindSparseInfo: CStructConvertible {
    typealias CStruct = VkBindSparseInfo

    let waitSemaphoreCount: UInt32
    let pWaitSemaphores: UnsafePointer<VkSemaphore?>
    let bufferBindCount: UInt32
    let pBufferBinds: UnsafePointer<VkSparseBufferMemoryBindInfo>
    let imageOpaqueBindCount: UInt32
    let pImageOpaqueBinds: UnsafePointer<VkSparseImageOpaqueMemoryBindInfo>
    let imageBindCount: UInt32
    let pImageBinds: UnsafePointer<VkSparseImageMemoryBindInfo>
    let signalSemaphoreCount: UInt32
    let pSignalSemaphores: UnsafePointer<VkSemaphore?>

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkBindSparseInfo>) throws -> R) rethrows -> R {
        var cStruct = VkBindSparseInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_BIND_SPARSE_INFO
        cStruct.pNext = nil
        cStruct.waitSemaphoreCount = self.waitSemaphoreCount
        cStruct.pWaitSemaphores = self.pWaitSemaphores
        cStruct.bufferBindCount = self.bufferBindCount
        cStruct.pBufferBinds = self.pBufferBinds
        cStruct.imageOpaqueBindCount = self.imageOpaqueBindCount
        cStruct.pImageOpaqueBinds = self.pImageOpaqueBinds
        cStruct.imageBindCount = self.imageBindCount
        cStruct.pImageBinds = self.pImageBinds
        cStruct.signalSemaphoreCount = self.signalSemaphoreCount
        cStruct.pSignalSemaphores = self.pSignalSemaphores
        return try body(&cStruct)
    }
}

struct ImageCopy: CStructConvertible {
    typealias CStruct = VkImageCopy

    let srcSubresource: VkImageSubresourceLayers
    let srcOffset: VkOffset3D
    let dstSubresource: VkImageSubresourceLayers
    let dstOffset: VkOffset3D
    let extent: VkExtent3D

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkImageCopy>) throws -> R) rethrows -> R {
        var cStruct = VkImageCopy()
        cStruct.srcSubresource = self.srcSubresource
        cStruct.srcOffset = self.srcOffset
        cStruct.dstSubresource = self.dstSubresource
        cStruct.dstOffset = self.dstOffset
        cStruct.extent = self.extent
        return try body(&cStruct)
    }
}

struct ImageBlit: CStructConvertible {
    typealias CStruct = VkImageBlit

    let srcSubresource: VkImageSubresourceLayers
    let srcOffsets: (VkOffset3D, VkOffset3D)
    let dstSubresource: VkImageSubresourceLayers
    let dstOffsets: (VkOffset3D, VkOffset3D)

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkImageBlit>) throws -> R) rethrows -> R {
        var cStruct = VkImageBlit()
        cStruct.srcSubresource = self.srcSubresource
        cStruct.srcOffsets = self.srcOffsets
        cStruct.dstSubresource = self.dstSubresource
        cStruct.dstOffsets = self.dstOffsets
        return try body(&cStruct)
    }
}

struct BufferImageCopy: CStructConvertible {
    typealias CStruct = VkBufferImageCopy

    let bufferOffset: VkDeviceSize
    let bufferRowLength: UInt32
    let bufferImageHeight: UInt32
    let imageSubresource: VkImageSubresourceLayers
    let imageOffset: VkOffset3D
    let imageExtent: VkExtent3D

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkBufferImageCopy>) throws -> R) rethrows -> R {
        var cStruct = VkBufferImageCopy()
        cStruct.bufferOffset = self.bufferOffset
        cStruct.bufferRowLength = self.bufferRowLength
        cStruct.bufferImageHeight = self.bufferImageHeight
        cStruct.imageSubresource = self.imageSubresource
        cStruct.imageOffset = self.imageOffset
        cStruct.imageExtent = self.imageExtent
        return try body(&cStruct)
    }
}

struct ImageResolve: CStructConvertible {
    typealias CStruct = VkImageResolve

    let srcSubresource: VkImageSubresourceLayers
    let srcOffset: VkOffset3D
    let dstSubresource: VkImageSubresourceLayers
    let dstOffset: VkOffset3D
    let extent: VkExtent3D

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkImageResolve>) throws -> R) rethrows -> R {
        var cStruct = VkImageResolve()
        cStruct.srcSubresource = self.srcSubresource
        cStruct.srcOffset = self.srcOffset
        cStruct.dstSubresource = self.dstSubresource
        cStruct.dstOffset = self.dstOffset
        cStruct.extent = self.extent
        return try body(&cStruct)
    }
}

struct ShaderModuleCreateInfo: CStructConvertible {
    typealias CStruct = VkShaderModuleCreateInfo

    let flags: VkShaderModuleCreateFlags
    let codeSize: Int
    let pCode: UnsafePointer<UInt32>

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkShaderModuleCreateInfo>) throws -> R) rethrows -> R {
        var cStruct = VkShaderModuleCreateInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_SHADER_MODULE_CREATE_INFO
        cStruct.pNext = nil
        cStruct.flags = self.flags
        cStruct.codeSize = self.codeSize
        cStruct.pCode = self.pCode
        return try body(&cStruct)
    }
}

struct DescriptorSetLayoutBinding: CStructConvertible {
    typealias CStruct = VkDescriptorSetLayoutBinding

    let binding: UInt32
    let descriptorType: VkDescriptorType
    let descriptorCount: UInt32
    let stageFlags: VkShaderStageFlags
    let pImmutableSamplers: UnsafePointer<VkSampler?>

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkDescriptorSetLayoutBinding>) throws -> R) rethrows -> R {
        var cStruct = VkDescriptorSetLayoutBinding()
        cStruct.binding = self.binding
        cStruct.descriptorType = self.descriptorType
        cStruct.descriptorCount = self.descriptorCount
        cStruct.stageFlags = self.stageFlags
        cStruct.pImmutableSamplers = self.pImmutableSamplers
        return try body(&cStruct)
    }
}

struct DescriptorSetLayoutCreateInfo: CStructConvertible {
    typealias CStruct = VkDescriptorSetLayoutCreateInfo

    let flags: VkDescriptorSetLayoutCreateFlags
    let bindingCount: UInt32
    let pBindings: UnsafePointer<VkDescriptorSetLayoutBinding>

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkDescriptorSetLayoutCreateInfo>) throws -> R) rethrows -> R {
        var cStruct = VkDescriptorSetLayoutCreateInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_CREATE_INFO
        cStruct.pNext = nil
        cStruct.flags = self.flags
        cStruct.bindingCount = self.bindingCount
        cStruct.pBindings = self.pBindings
        return try body(&cStruct)
    }
}

struct DescriptorPoolSize: CStructConvertible {
    typealias CStruct = VkDescriptorPoolSize

    let type: VkDescriptorType
    let descriptorCount: UInt32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkDescriptorPoolSize>) throws -> R) rethrows -> R {
        var cStruct = VkDescriptorPoolSize()
        cStruct.type = self.type
        cStruct.descriptorCount = self.descriptorCount
        return try body(&cStruct)
    }
}

struct DescriptorPoolCreateInfo: CStructConvertible {
    typealias CStruct = VkDescriptorPoolCreateInfo

    let flags: VkDescriptorPoolCreateFlags
    let maxSets: UInt32
    let poolSizeCount: UInt32
    let pPoolSizes: UnsafePointer<VkDescriptorPoolSize>

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkDescriptorPoolCreateInfo>) throws -> R) rethrows -> R {
        var cStruct = VkDescriptorPoolCreateInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_DESCRIPTOR_POOL_CREATE_INFO
        cStruct.pNext = nil
        cStruct.flags = self.flags
        cStruct.maxSets = self.maxSets
        cStruct.poolSizeCount = self.poolSizeCount
        cStruct.pPoolSizes = self.pPoolSizes
        return try body(&cStruct)
    }
}

struct DescriptorSetAllocateInfo: CStructConvertible {
    typealias CStruct = VkDescriptorSetAllocateInfo

    let descriptorPool: VkDescriptorPool
    let descriptorSetCount: UInt32
    let pSetLayouts: UnsafePointer<VkDescriptorSetLayout?>

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkDescriptorSetAllocateInfo>) throws -> R) rethrows -> R {
        var cStruct = VkDescriptorSetAllocateInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_DESCRIPTOR_SET_ALLOCATE_INFO
        cStruct.pNext = nil
        cStruct.descriptorPool = self.descriptorPool
        cStruct.descriptorSetCount = self.descriptorSetCount
        cStruct.pSetLayouts = self.pSetLayouts
        return try body(&cStruct)
    }
}

struct SpecializationMapEntry: CStructConvertible {
    typealias CStruct = VkSpecializationMapEntry

    let constantID: UInt32
    let offset: UInt32
    let size: Int

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkSpecializationMapEntry>) throws -> R) rethrows -> R {
        var cStruct = VkSpecializationMapEntry()
        cStruct.constantID = self.constantID
        cStruct.offset = self.offset
        cStruct.size = self.size
        return try body(&cStruct)
    }
}

struct SpecializationInfo: CStructConvertible {
    typealias CStruct = VkSpecializationInfo

    let mapEntryCount: UInt32
    let pMapEntries: UnsafePointer<VkSpecializationMapEntry>
    let dataSize: Int
    let pData: UnsafeRawPointer

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkSpecializationInfo>) throws -> R) rethrows -> R {
        var cStruct = VkSpecializationInfo()
        cStruct.mapEntryCount = self.mapEntryCount
        cStruct.pMapEntries = self.pMapEntries
        cStruct.dataSize = self.dataSize
        cStruct.pData = self.pData
        return try body(&cStruct)
    }
}

struct PipelineShaderStageCreateInfo: CStructConvertible {
    typealias CStruct = VkPipelineShaderStageCreateInfo

    let flags: VkPipelineShaderStageCreateFlags
    let stage: VkShaderStageFlagBits
    let module: VkShaderModule
    let pName: UnsafePointer<CChar>
    let pSpecializationInfo: UnsafePointer<VkSpecializationInfo>

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPipelineShaderStageCreateInfo>) throws -> R) rethrows -> R {
        var cStruct = VkPipelineShaderStageCreateInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_CREATE_INFO
        cStruct.pNext = nil
        cStruct.flags = self.flags
        cStruct.stage = self.stage
        cStruct.module = self.module
        cStruct.pName = self.pName
        cStruct.pSpecializationInfo = self.pSpecializationInfo
        return try body(&cStruct)
    }
}

struct ComputePipelineCreateInfo: CStructConvertible {
    typealias CStruct = VkComputePipelineCreateInfo

    let flags: VkPipelineCreateFlags
    let stage: VkPipelineShaderStageCreateInfo
    let layout: VkPipelineLayout
    let basePipelineHandle: VkPipeline
    let basePipelineIndex: Int32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkComputePipelineCreateInfo>) throws -> R) rethrows -> R {
        var cStruct = VkComputePipelineCreateInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_COMPUTE_PIPELINE_CREATE_INFO
        cStruct.pNext = nil
        cStruct.flags = self.flags
        cStruct.stage = self.stage
        cStruct.layout = self.layout
        cStruct.basePipelineHandle = self.basePipelineHandle
        cStruct.basePipelineIndex = self.basePipelineIndex
        return try body(&cStruct)
    }
}

struct VertexInputBindingDescription: CStructConvertible {
    typealias CStruct = VkVertexInputBindingDescription

    let binding: UInt32
    let stride: UInt32
    let inputRate: VkVertexInputRate

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkVertexInputBindingDescription>) throws -> R) rethrows -> R {
        var cStruct = VkVertexInputBindingDescription()
        cStruct.binding = self.binding
        cStruct.stride = self.stride
        cStruct.inputRate = self.inputRate
        return try body(&cStruct)
    }
}

struct VertexInputAttributeDescription: CStructConvertible {
    typealias CStruct = VkVertexInputAttributeDescription

    let location: UInt32
    let binding: UInt32
    let format: VkFormat
    let offset: UInt32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkVertexInputAttributeDescription>) throws -> R) rethrows -> R {
        var cStruct = VkVertexInputAttributeDescription()
        cStruct.location = self.location
        cStruct.binding = self.binding
        cStruct.format = self.format
        cStruct.offset = self.offset
        return try body(&cStruct)
    }
}

struct PipelineVertexInputStateCreateInfo: CStructConvertible {
    typealias CStruct = VkPipelineVertexInputStateCreateInfo

    let flags: VkPipelineVertexInputStateCreateFlags
    let vertexBindingDescriptionCount: UInt32
    let pVertexBindingDescriptions: UnsafePointer<VkVertexInputBindingDescription>
    let vertexAttributeDescriptionCount: UInt32
    let pVertexAttributeDescriptions: UnsafePointer<VkVertexInputAttributeDescription>

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPipelineVertexInputStateCreateInfo>) throws -> R) rethrows -> R {
        var cStruct = VkPipelineVertexInputStateCreateInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_VERTEX_INPUT_STATE_CREATE_INFO
        cStruct.pNext = nil
        cStruct.flags = self.flags
        cStruct.vertexBindingDescriptionCount = self.vertexBindingDescriptionCount
        cStruct.pVertexBindingDescriptions = self.pVertexBindingDescriptions
        cStruct.vertexAttributeDescriptionCount = self.vertexAttributeDescriptionCount
        cStruct.pVertexAttributeDescriptions = self.pVertexAttributeDescriptions
        return try body(&cStruct)
    }
}

struct PipelineInputAssemblyStateCreateInfo: CStructConvertible {
    typealias CStruct = VkPipelineInputAssemblyStateCreateInfo

    let flags: VkPipelineInputAssemblyStateCreateFlags
    let topology: VkPrimitiveTopology
    let primitiveRestartEnable: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPipelineInputAssemblyStateCreateInfo>) throws -> R) rethrows -> R {
        var cStruct = VkPipelineInputAssemblyStateCreateInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_INPUT_ASSEMBLY_STATE_CREATE_INFO
        cStruct.pNext = nil
        cStruct.flags = self.flags
        cStruct.topology = self.topology
        cStruct.primitiveRestartEnable = self.primitiveRestartEnable
        return try body(&cStruct)
    }
}

struct PipelineTessellationStateCreateInfo: CStructConvertible {
    typealias CStruct = VkPipelineTessellationStateCreateInfo

    let flags: VkPipelineTessellationStateCreateFlags
    let patchControlPoints: UInt32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPipelineTessellationStateCreateInfo>) throws -> R) rethrows -> R {
        var cStruct = VkPipelineTessellationStateCreateInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_TESSELLATION_STATE_CREATE_INFO
        cStruct.pNext = nil
        cStruct.flags = self.flags
        cStruct.patchControlPoints = self.patchControlPoints
        return try body(&cStruct)
    }
}

struct PipelineViewportStateCreateInfo: CStructConvertible {
    typealias CStruct = VkPipelineViewportStateCreateInfo

    let flags: VkPipelineViewportStateCreateFlags
    let viewportCount: UInt32
    let pViewports: UnsafePointer<VkViewport>
    let scissorCount: UInt32
    let pScissors: UnsafePointer<VkRect2D>

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPipelineViewportStateCreateInfo>) throws -> R) rethrows -> R {
        var cStruct = VkPipelineViewportStateCreateInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_STATE_CREATE_INFO
        cStruct.pNext = nil
        cStruct.flags = self.flags
        cStruct.viewportCount = self.viewportCount
        cStruct.pViewports = self.pViewports
        cStruct.scissorCount = self.scissorCount
        cStruct.pScissors = self.pScissors
        return try body(&cStruct)
    }
}

struct PipelineRasterizationStateCreateInfo: CStructConvertible {
    typealias CStruct = VkPipelineRasterizationStateCreateInfo

    let flags: VkPipelineRasterizationStateCreateFlags
    let depthClampEnable: VkBool32
    let rasterizerDiscardEnable: VkBool32
    let polygonMode: VkPolygonMode
    let cullMode: VkCullModeFlags
    let frontFace: VkFrontFace
    let depthBiasEnable: VkBool32
    let depthBiasConstantFactor: Float
    let depthBiasClamp: Float
    let depthBiasSlopeFactor: Float
    let lineWidth: Float

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPipelineRasterizationStateCreateInfo>) throws -> R) rethrows -> R {
        var cStruct = VkPipelineRasterizationStateCreateInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_STATE_CREATE_INFO
        cStruct.pNext = nil
        cStruct.flags = self.flags
        cStruct.depthClampEnable = self.depthClampEnable
        cStruct.rasterizerDiscardEnable = self.rasterizerDiscardEnable
        cStruct.polygonMode = self.polygonMode
        cStruct.cullMode = self.cullMode
        cStruct.frontFace = self.frontFace
        cStruct.depthBiasEnable = self.depthBiasEnable
        cStruct.depthBiasConstantFactor = self.depthBiasConstantFactor
        cStruct.depthBiasClamp = self.depthBiasClamp
        cStruct.depthBiasSlopeFactor = self.depthBiasSlopeFactor
        cStruct.lineWidth = self.lineWidth
        return try body(&cStruct)
    }
}

struct PipelineMultisampleStateCreateInfo: CStructConvertible {
    typealias CStruct = VkPipelineMultisampleStateCreateInfo

    let flags: VkPipelineMultisampleStateCreateFlags
    let rasterizationSamples: VkSampleCountFlagBits
    let sampleShadingEnable: VkBool32
    let minSampleShading: Float
    let pSampleMask: UnsafePointer<VkSampleMask>
    let alphaToCoverageEnable: VkBool32
    let alphaToOneEnable: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPipelineMultisampleStateCreateInfo>) throws -> R) rethrows -> R {
        var cStruct = VkPipelineMultisampleStateCreateInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_MULTISAMPLE_STATE_CREATE_INFO
        cStruct.pNext = nil
        cStruct.flags = self.flags
        cStruct.rasterizationSamples = self.rasterizationSamples
        cStruct.sampleShadingEnable = self.sampleShadingEnable
        cStruct.minSampleShading = self.minSampleShading
        cStruct.pSampleMask = self.pSampleMask
        cStruct.alphaToCoverageEnable = self.alphaToCoverageEnable
        cStruct.alphaToOneEnable = self.alphaToOneEnable
        return try body(&cStruct)
    }
}

struct PipelineColorBlendAttachmentState: CStructConvertible {
    typealias CStruct = VkPipelineColorBlendAttachmentState

    let blendEnable: VkBool32
    let srcColorBlendFactor: VkBlendFactor
    let dstColorBlendFactor: VkBlendFactor
    let colorBlendOp: VkBlendOp
    let srcAlphaBlendFactor: VkBlendFactor
    let dstAlphaBlendFactor: VkBlendFactor
    let alphaBlendOp: VkBlendOp
    let colorWriteMask: VkColorComponentFlags

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPipelineColorBlendAttachmentState>) throws -> R) rethrows -> R {
        var cStruct = VkPipelineColorBlendAttachmentState()
        cStruct.blendEnable = self.blendEnable
        cStruct.srcColorBlendFactor = self.srcColorBlendFactor
        cStruct.dstColorBlendFactor = self.dstColorBlendFactor
        cStruct.colorBlendOp = self.colorBlendOp
        cStruct.srcAlphaBlendFactor = self.srcAlphaBlendFactor
        cStruct.dstAlphaBlendFactor = self.dstAlphaBlendFactor
        cStruct.alphaBlendOp = self.alphaBlendOp
        cStruct.colorWriteMask = self.colorWriteMask
        return try body(&cStruct)
    }
}

struct PipelineColorBlendStateCreateInfo: CStructConvertible {
    typealias CStruct = VkPipelineColorBlendStateCreateInfo

    let flags: VkPipelineColorBlendStateCreateFlags
    let logicOpEnable: VkBool32
    let logicOp: VkLogicOp
    let attachmentCount: UInt32
    let pAttachments: UnsafePointer<VkPipelineColorBlendAttachmentState>
    let blendConstants: (Float, Float, Float, Float)

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPipelineColorBlendStateCreateInfo>) throws -> R) rethrows -> R {
        var cStruct = VkPipelineColorBlendStateCreateInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_COLOR_BLEND_STATE_CREATE_INFO
        cStruct.pNext = nil
        cStruct.flags = self.flags
        cStruct.logicOpEnable = self.logicOpEnable
        cStruct.logicOp = self.logicOp
        cStruct.attachmentCount = self.attachmentCount
        cStruct.pAttachments = self.pAttachments
        cStruct.blendConstants = self.blendConstants
        return try body(&cStruct)
    }
}

struct PipelineDynamicStateCreateInfo: CStructConvertible {
    typealias CStruct = VkPipelineDynamicStateCreateInfo

    let flags: VkPipelineDynamicStateCreateFlags
    let dynamicStateCount: UInt32
    let pDynamicStates: UnsafePointer<VkDynamicState>

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPipelineDynamicStateCreateInfo>) throws -> R) rethrows -> R {
        var cStruct = VkPipelineDynamicStateCreateInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_DYNAMIC_STATE_CREATE_INFO
        cStruct.pNext = nil
        cStruct.flags = self.flags
        cStruct.dynamicStateCount = self.dynamicStateCount
        cStruct.pDynamicStates = self.pDynamicStates
        return try body(&cStruct)
    }
}

struct StencilOpState: CStructConvertible {
    typealias CStruct = VkStencilOpState

    let failOp: VkStencilOp
    let passOp: VkStencilOp
    let depthFailOp: VkStencilOp
    let compareOp: VkCompareOp
    let compareMask: UInt32
    let writeMask: UInt32
    let reference: UInt32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkStencilOpState>) throws -> R) rethrows -> R {
        var cStruct = VkStencilOpState()
        cStruct.failOp = self.failOp
        cStruct.passOp = self.passOp
        cStruct.depthFailOp = self.depthFailOp
        cStruct.compareOp = self.compareOp
        cStruct.compareMask = self.compareMask
        cStruct.writeMask = self.writeMask
        cStruct.reference = self.reference
        return try body(&cStruct)
    }
}

struct PipelineDepthStencilStateCreateInfo: CStructConvertible {
    typealias CStruct = VkPipelineDepthStencilStateCreateInfo

    let flags: VkPipelineDepthStencilStateCreateFlags
    let depthTestEnable: VkBool32
    let depthWriteEnable: VkBool32
    let depthCompareOp: VkCompareOp
    let depthBoundsTestEnable: VkBool32
    let stencilTestEnable: VkBool32
    let front: VkStencilOpState
    let back: VkStencilOpState
    let minDepthBounds: Float
    let maxDepthBounds: Float

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPipelineDepthStencilStateCreateInfo>) throws -> R) rethrows -> R {
        var cStruct = VkPipelineDepthStencilStateCreateInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_DEPTH_STENCIL_STATE_CREATE_INFO
        cStruct.pNext = nil
        cStruct.flags = self.flags
        cStruct.depthTestEnable = self.depthTestEnable
        cStruct.depthWriteEnable = self.depthWriteEnable
        cStruct.depthCompareOp = self.depthCompareOp
        cStruct.depthBoundsTestEnable = self.depthBoundsTestEnable
        cStruct.stencilTestEnable = self.stencilTestEnable
        cStruct.front = self.front
        cStruct.back = self.back
        cStruct.minDepthBounds = self.minDepthBounds
        cStruct.maxDepthBounds = self.maxDepthBounds
        return try body(&cStruct)
    }
}

struct GraphicsPipelineCreateInfo: CStructConvertible {
    typealias CStruct = VkGraphicsPipelineCreateInfo

    let flags: VkPipelineCreateFlags
    let stageCount: UInt32
    let pStages: UnsafePointer<VkPipelineShaderStageCreateInfo>
    let pVertexInputState: UnsafePointer<VkPipelineVertexInputStateCreateInfo>
    let pInputAssemblyState: UnsafePointer<VkPipelineInputAssemblyStateCreateInfo>
    let pTessellationState: UnsafePointer<VkPipelineTessellationStateCreateInfo>
    let pViewportState: UnsafePointer<VkPipelineViewportStateCreateInfo>
    let pRasterizationState: UnsafePointer<VkPipelineRasterizationStateCreateInfo>
    let pMultisampleState: UnsafePointer<VkPipelineMultisampleStateCreateInfo>
    let pDepthStencilState: UnsafePointer<VkPipelineDepthStencilStateCreateInfo>
    let pColorBlendState: UnsafePointer<VkPipelineColorBlendStateCreateInfo>
    let pDynamicState: UnsafePointer<VkPipelineDynamicStateCreateInfo>
    let layout: VkPipelineLayout
    let renderPass: VkRenderPass
    let subpass: UInt32
    let basePipelineHandle: VkPipeline
    let basePipelineIndex: Int32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkGraphicsPipelineCreateInfo>) throws -> R) rethrows -> R {
        var cStruct = VkGraphicsPipelineCreateInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_GRAPHICS_PIPELINE_CREATE_INFO
        cStruct.pNext = nil
        cStruct.flags = self.flags
        cStruct.stageCount = self.stageCount
        cStruct.pStages = self.pStages
        cStruct.pVertexInputState = self.pVertexInputState
        cStruct.pInputAssemblyState = self.pInputAssemblyState
        cStruct.pTessellationState = self.pTessellationState
        cStruct.pViewportState = self.pViewportState
        cStruct.pRasterizationState = self.pRasterizationState
        cStruct.pMultisampleState = self.pMultisampleState
        cStruct.pDepthStencilState = self.pDepthStencilState
        cStruct.pColorBlendState = self.pColorBlendState
        cStruct.pDynamicState = self.pDynamicState
        cStruct.layout = self.layout
        cStruct.renderPass = self.renderPass
        cStruct.subpass = self.subpass
        cStruct.basePipelineHandle = self.basePipelineHandle
        cStruct.basePipelineIndex = self.basePipelineIndex
        return try body(&cStruct)
    }
}

struct PipelineCacheCreateInfo: CStructConvertible {
    typealias CStruct = VkPipelineCacheCreateInfo

    let flags: VkPipelineCacheCreateFlags
    let initialDataSize: Int
    let pInitialData: UnsafeRawPointer

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPipelineCacheCreateInfo>) throws -> R) rethrows -> R {
        var cStruct = VkPipelineCacheCreateInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_CACHE_CREATE_INFO
        cStruct.pNext = nil
        cStruct.flags = self.flags
        cStruct.initialDataSize = self.initialDataSize
        cStruct.pInitialData = self.pInitialData
        return try body(&cStruct)
    }
}

struct PushConstantRange: CStructConvertible {
    typealias CStruct = VkPushConstantRange

    let stageFlags: VkShaderStageFlags
    let offset: UInt32
    let size: UInt32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPushConstantRange>) throws -> R) rethrows -> R {
        var cStruct = VkPushConstantRange()
        cStruct.stageFlags = self.stageFlags
        cStruct.offset = self.offset
        cStruct.size = self.size
        return try body(&cStruct)
    }
}

struct PipelineLayoutCreateInfo: CStructConvertible {
    typealias CStruct = VkPipelineLayoutCreateInfo

    let flags: VkPipelineLayoutCreateFlags
    let setLayoutCount: UInt32
    let pSetLayouts: UnsafePointer<VkDescriptorSetLayout?>
    let pushConstantRangeCount: UInt32
    let pPushConstantRanges: UnsafePointer<VkPushConstantRange>

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPipelineLayoutCreateInfo>) throws -> R) rethrows -> R {
        var cStruct = VkPipelineLayoutCreateInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_LAYOUT_CREATE_INFO
        cStruct.pNext = nil
        cStruct.flags = self.flags
        cStruct.setLayoutCount = self.setLayoutCount
        cStruct.pSetLayouts = self.pSetLayouts
        cStruct.pushConstantRangeCount = self.pushConstantRangeCount
        cStruct.pPushConstantRanges = self.pPushConstantRanges
        return try body(&cStruct)
    }
}

struct SamplerCreateInfo: CStructConvertible {
    typealias CStruct = VkSamplerCreateInfo

    let flags: VkSamplerCreateFlags
    let magFilter: VkFilter
    let minFilter: VkFilter
    let mipmapMode: VkSamplerMipmapMode
    let addressModeU: VkSamplerAddressMode
    let addressModeV: VkSamplerAddressMode
    let addressModeW: VkSamplerAddressMode
    let mipLodBias: Float
    let anisotropyEnable: VkBool32
    let maxAnisotropy: Float
    let compareEnable: VkBool32
    let compareOp: VkCompareOp
    let minLod: Float
    let maxLod: Float
    let borderColor: VkBorderColor
    let unnormalizedCoordinates: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkSamplerCreateInfo>) throws -> R) rethrows -> R {
        var cStruct = VkSamplerCreateInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_SAMPLER_CREATE_INFO
        cStruct.pNext = nil
        cStruct.flags = self.flags
        cStruct.magFilter = self.magFilter
        cStruct.minFilter = self.minFilter
        cStruct.mipmapMode = self.mipmapMode
        cStruct.addressModeU = self.addressModeU
        cStruct.addressModeV = self.addressModeV
        cStruct.addressModeW = self.addressModeW
        cStruct.mipLodBias = self.mipLodBias
        cStruct.anisotropyEnable = self.anisotropyEnable
        cStruct.maxAnisotropy = self.maxAnisotropy
        cStruct.compareEnable = self.compareEnable
        cStruct.compareOp = self.compareOp
        cStruct.minLod = self.minLod
        cStruct.maxLod = self.maxLod
        cStruct.borderColor = self.borderColor
        cStruct.unnormalizedCoordinates = self.unnormalizedCoordinates
        return try body(&cStruct)
    }
}

struct CommandPoolCreateInfo: CStructConvertible {
    typealias CStruct = VkCommandPoolCreateInfo

    let flags: VkCommandPoolCreateFlags
    let queueFamilyIndex: UInt32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkCommandPoolCreateInfo>) throws -> R) rethrows -> R {
        var cStruct = VkCommandPoolCreateInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_COMMAND_POOL_CREATE_INFO
        cStruct.pNext = nil
        cStruct.flags = self.flags
        cStruct.queueFamilyIndex = self.queueFamilyIndex
        return try body(&cStruct)
    }
}

struct CommandBufferAllocateInfo: CStructConvertible {
    typealias CStruct = VkCommandBufferAllocateInfo

    let commandPool: VkCommandPool
    let level: VkCommandBufferLevel
    let commandBufferCount: UInt32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkCommandBufferAllocateInfo>) throws -> R) rethrows -> R {
        var cStruct = VkCommandBufferAllocateInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO
        cStruct.pNext = nil
        cStruct.commandPool = self.commandPool
        cStruct.level = self.level
        cStruct.commandBufferCount = self.commandBufferCount
        return try body(&cStruct)
    }
}

struct CommandBufferInheritanceInfo: CStructConvertible {
    typealias CStruct = VkCommandBufferInheritanceInfo

    let renderPass: VkRenderPass
    let subpass: UInt32
    let framebuffer: VkFramebuffer
    let occlusionQueryEnable: VkBool32
    let queryFlags: VkQueryControlFlags
    let pipelineStatistics: VkQueryPipelineStatisticFlags

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkCommandBufferInheritanceInfo>) throws -> R) rethrows -> R {
        var cStruct = VkCommandBufferInheritanceInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_COMMAND_BUFFER_INHERITANCE_INFO
        cStruct.pNext = nil
        cStruct.renderPass = self.renderPass
        cStruct.subpass = self.subpass
        cStruct.framebuffer = self.framebuffer
        cStruct.occlusionQueryEnable = self.occlusionQueryEnable
        cStruct.queryFlags = self.queryFlags
        cStruct.pipelineStatistics = self.pipelineStatistics
        return try body(&cStruct)
    }
}

struct CommandBufferBeginInfo: CStructConvertible {
    typealias CStruct = VkCommandBufferBeginInfo

    let flags: VkCommandBufferUsageFlags
    let pInheritanceInfo: UnsafePointer<VkCommandBufferInheritanceInfo>

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkCommandBufferBeginInfo>) throws -> R) rethrows -> R {
        var cStruct = VkCommandBufferBeginInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO
        cStruct.pNext = nil
        cStruct.flags = self.flags
        cStruct.pInheritanceInfo = self.pInheritanceInfo
        return try body(&cStruct)
    }
}

struct RenderPassBeginInfo: CStructConvertible {
    typealias CStruct = VkRenderPassBeginInfo

    let renderPass: VkRenderPass
    let framebuffer: VkFramebuffer
    let renderArea: VkRect2D
    let clearValueCount: UInt32
    let pClearValues: UnsafePointer<VkClearValue>

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkRenderPassBeginInfo>) throws -> R) rethrows -> R {
        var cStruct = VkRenderPassBeginInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_RENDER_PASS_BEGIN_INFO
        cStruct.pNext = nil
        cStruct.renderPass = self.renderPass
        cStruct.framebuffer = self.framebuffer
        cStruct.renderArea = self.renderArea
        cStruct.clearValueCount = self.clearValueCount
        cStruct.pClearValues = self.pClearValues
        return try body(&cStruct)
    }
}

struct ClearDepthStencilValue: CStructConvertible {
    typealias CStruct = VkClearDepthStencilValue

    let depth: Float
    let stencil: UInt32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkClearDepthStencilValue>) throws -> R) rethrows -> R {
        var cStruct = VkClearDepthStencilValue()
        cStruct.depth = self.depth
        cStruct.stencil = self.stencil
        return try body(&cStruct)
    }
}

struct ClearAttachment: CStructConvertible {
    typealias CStruct = VkClearAttachment

    let aspectMask: VkImageAspectFlags
    let colorAttachment: UInt32
    let clearValue: VkClearValue

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkClearAttachment>) throws -> R) rethrows -> R {
        var cStruct = VkClearAttachment()
        cStruct.aspectMask = self.aspectMask
        cStruct.colorAttachment = self.colorAttachment
        cStruct.clearValue = self.clearValue
        return try body(&cStruct)
    }
}

struct AttachmentDescription: CStructConvertible {
    typealias CStruct = VkAttachmentDescription

    let flags: VkAttachmentDescriptionFlags
    let format: VkFormat
    let samples: VkSampleCountFlagBits
    let loadOp: VkAttachmentLoadOp
    let storeOp: VkAttachmentStoreOp
    let stencilLoadOp: VkAttachmentLoadOp
    let stencilStoreOp: VkAttachmentStoreOp
    let initialLayout: VkImageLayout
    let finalLayout: VkImageLayout

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkAttachmentDescription>) throws -> R) rethrows -> R {
        var cStruct = VkAttachmentDescription()
        cStruct.flags = self.flags
        cStruct.format = self.format
        cStruct.samples = self.samples
        cStruct.loadOp = self.loadOp
        cStruct.storeOp = self.storeOp
        cStruct.stencilLoadOp = self.stencilLoadOp
        cStruct.stencilStoreOp = self.stencilStoreOp
        cStruct.initialLayout = self.initialLayout
        cStruct.finalLayout = self.finalLayout
        return try body(&cStruct)
    }
}

struct AttachmentReference: CStructConvertible {
    typealias CStruct = VkAttachmentReference

    let attachment: UInt32
    let layout: VkImageLayout

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkAttachmentReference>) throws -> R) rethrows -> R {
        var cStruct = VkAttachmentReference()
        cStruct.attachment = self.attachment
        cStruct.layout = self.layout
        return try body(&cStruct)
    }
}

struct SubpassDescription: CStructConvertible {
    typealias CStruct = VkSubpassDescription

    let flags: VkSubpassDescriptionFlags
    let pipelineBindPoint: VkPipelineBindPoint
    let inputAttachmentCount: UInt32
    let pInputAttachments: UnsafePointer<VkAttachmentReference>
    let colorAttachmentCount: UInt32
    let pColorAttachments: UnsafePointer<VkAttachmentReference>
    let pResolveAttachments: UnsafePointer<VkAttachmentReference>
    let pDepthStencilAttachment: UnsafePointer<VkAttachmentReference>
    let preserveAttachmentCount: UInt32
    let pPreserveAttachments: UnsafePointer<UInt32>

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkSubpassDescription>) throws -> R) rethrows -> R {
        var cStruct = VkSubpassDescription()
        cStruct.flags = self.flags
        cStruct.pipelineBindPoint = self.pipelineBindPoint
        cStruct.inputAttachmentCount = self.inputAttachmentCount
        cStruct.pInputAttachments = self.pInputAttachments
        cStruct.colorAttachmentCount = self.colorAttachmentCount
        cStruct.pColorAttachments = self.pColorAttachments
        cStruct.pResolveAttachments = self.pResolveAttachments
        cStruct.pDepthStencilAttachment = self.pDepthStencilAttachment
        cStruct.preserveAttachmentCount = self.preserveAttachmentCount
        cStruct.pPreserveAttachments = self.pPreserveAttachments
        return try body(&cStruct)
    }
}

struct SubpassDependency: CStructConvertible {
    typealias CStruct = VkSubpassDependency

    let srcSubpass: UInt32
    let dstSubpass: UInt32
    let srcStageMask: VkPipelineStageFlags
    let dstStageMask: VkPipelineStageFlags
    let srcAccessMask: VkAccessFlags
    let dstAccessMask: VkAccessFlags
    let dependencyFlags: VkDependencyFlags

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkSubpassDependency>) throws -> R) rethrows -> R {
        var cStruct = VkSubpassDependency()
        cStruct.srcSubpass = self.srcSubpass
        cStruct.dstSubpass = self.dstSubpass
        cStruct.srcStageMask = self.srcStageMask
        cStruct.dstStageMask = self.dstStageMask
        cStruct.srcAccessMask = self.srcAccessMask
        cStruct.dstAccessMask = self.dstAccessMask
        cStruct.dependencyFlags = self.dependencyFlags
        return try body(&cStruct)
    }
}

struct RenderPassCreateInfo: CStructConvertible {
    typealias CStruct = VkRenderPassCreateInfo

    let flags: VkRenderPassCreateFlags
    let attachmentCount: UInt32
    let pAttachments: UnsafePointer<VkAttachmentDescription>
    let subpassCount: UInt32
    let pSubpasses: UnsafePointer<VkSubpassDescription>
    let dependencyCount: UInt32
    let pDependencies: UnsafePointer<VkSubpassDependency>

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkRenderPassCreateInfo>) throws -> R) rethrows -> R {
        var cStruct = VkRenderPassCreateInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_RENDER_PASS_CREATE_INFO
        cStruct.pNext = nil
        cStruct.flags = self.flags
        cStruct.attachmentCount = self.attachmentCount
        cStruct.pAttachments = self.pAttachments
        cStruct.subpassCount = self.subpassCount
        cStruct.pSubpasses = self.pSubpasses
        cStruct.dependencyCount = self.dependencyCount
        cStruct.pDependencies = self.pDependencies
        return try body(&cStruct)
    }
}

struct EventCreateInfo: CStructConvertible {
    typealias CStruct = VkEventCreateInfo

    let flags: VkEventCreateFlags

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkEventCreateInfo>) throws -> R) rethrows -> R {
        var cStruct = VkEventCreateInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_EVENT_CREATE_INFO
        cStruct.pNext = nil
        cStruct.flags = self.flags
        return try body(&cStruct)
    }
}

struct FenceCreateInfo: CStructConvertible {
    typealias CStruct = VkFenceCreateInfo

    let flags: VkFenceCreateFlags

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkFenceCreateInfo>) throws -> R) rethrows -> R {
        var cStruct = VkFenceCreateInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_FENCE_CREATE_INFO
        cStruct.pNext = nil
        cStruct.flags = self.flags
        return try body(&cStruct)
    }
}

struct PhysicalDeviceFeatures: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceFeatures

    let robustBufferAccess: VkBool32
    let fullDrawIndexUint32: VkBool32
    let imageCubeArray: VkBool32
    let independentBlend: VkBool32
    let geometryShader: VkBool32
    let tessellationShader: VkBool32
    let sampleRateShading: VkBool32
    let dualSrcBlend: VkBool32
    let logicOp: VkBool32
    let multiDrawIndirect: VkBool32
    let drawIndirectFirstInstance: VkBool32
    let depthClamp: VkBool32
    let depthBiasClamp: VkBool32
    let fillModeNonSolid: VkBool32
    let depthBounds: VkBool32
    let wideLines: VkBool32
    let largePoints: VkBool32
    let alphaToOne: VkBool32
    let multiViewport: VkBool32
    let samplerAnisotropy: VkBool32
    let textureCompressionETC2: VkBool32
    let textureCompressionASTC_LDR: VkBool32
    let textureCompressionBC: VkBool32
    let occlusionQueryPrecise: VkBool32
    let pipelineStatisticsQuery: VkBool32
    let vertexPipelineStoresAndAtomics: VkBool32
    let fragmentStoresAndAtomics: VkBool32
    let shaderTessellationAndGeometryPointSize: VkBool32
    let shaderImageGatherExtended: VkBool32
    let shaderStorageImageExtendedFormats: VkBool32
    let shaderStorageImageMultisample: VkBool32
    let shaderStorageImageReadWithoutFormat: VkBool32
    let shaderStorageImageWriteWithoutFormat: VkBool32
    let shaderUniformBufferArrayDynamicIndexing: VkBool32
    let shaderSampledImageArrayDynamicIndexing: VkBool32
    let shaderStorageBufferArrayDynamicIndexing: VkBool32
    let shaderStorageImageArrayDynamicIndexing: VkBool32
    let shaderClipDistance: VkBool32
    let shaderCullDistance: VkBool32
    let shaderFloat64: VkBool32
    let shaderInt64: VkBool32
    let shaderInt16: VkBool32
    let shaderResourceResidency: VkBool32
    let shaderResourceMinLod: VkBool32
    let sparseBinding: VkBool32
    let sparseResidencyBuffer: VkBool32
    let sparseResidencyImage2D: VkBool32
    let sparseResidencyImage3D: VkBool32
    let sparseResidency2Samples: VkBool32
    let sparseResidency4Samples: VkBool32
    let sparseResidency8Samples: VkBool32
    let sparseResidency16Samples: VkBool32
    let sparseResidencyAliased: VkBool32
    let variableMultisampleRate: VkBool32
    let inheritedQueries: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceFeatures>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceFeatures()
        cStruct.robustBufferAccess = self.robustBufferAccess
        cStruct.fullDrawIndexUint32 = self.fullDrawIndexUint32
        cStruct.imageCubeArray = self.imageCubeArray
        cStruct.independentBlend = self.independentBlend
        cStruct.geometryShader = self.geometryShader
        cStruct.tessellationShader = self.tessellationShader
        cStruct.sampleRateShading = self.sampleRateShading
        cStruct.dualSrcBlend = self.dualSrcBlend
        cStruct.logicOp = self.logicOp
        cStruct.multiDrawIndirect = self.multiDrawIndirect
        cStruct.drawIndirectFirstInstance = self.drawIndirectFirstInstance
        cStruct.depthClamp = self.depthClamp
        cStruct.depthBiasClamp = self.depthBiasClamp
        cStruct.fillModeNonSolid = self.fillModeNonSolid
        cStruct.depthBounds = self.depthBounds
        cStruct.wideLines = self.wideLines
        cStruct.largePoints = self.largePoints
        cStruct.alphaToOne = self.alphaToOne
        cStruct.multiViewport = self.multiViewport
        cStruct.samplerAnisotropy = self.samplerAnisotropy
        cStruct.textureCompressionETC2 = self.textureCompressionETC2
        cStruct.textureCompressionASTC_LDR = self.textureCompressionASTC_LDR
        cStruct.textureCompressionBC = self.textureCompressionBC
        cStruct.occlusionQueryPrecise = self.occlusionQueryPrecise
        cStruct.pipelineStatisticsQuery = self.pipelineStatisticsQuery
        cStruct.vertexPipelineStoresAndAtomics = self.vertexPipelineStoresAndAtomics
        cStruct.fragmentStoresAndAtomics = self.fragmentStoresAndAtomics
        cStruct.shaderTessellationAndGeometryPointSize = self.shaderTessellationAndGeometryPointSize
        cStruct.shaderImageGatherExtended = self.shaderImageGatherExtended
        cStruct.shaderStorageImageExtendedFormats = self.shaderStorageImageExtendedFormats
        cStruct.shaderStorageImageMultisample = self.shaderStorageImageMultisample
        cStruct.shaderStorageImageReadWithoutFormat = self.shaderStorageImageReadWithoutFormat
        cStruct.shaderStorageImageWriteWithoutFormat = self.shaderStorageImageWriteWithoutFormat
        cStruct.shaderUniformBufferArrayDynamicIndexing = self.shaderUniformBufferArrayDynamicIndexing
        cStruct.shaderSampledImageArrayDynamicIndexing = self.shaderSampledImageArrayDynamicIndexing
        cStruct.shaderStorageBufferArrayDynamicIndexing = self.shaderStorageBufferArrayDynamicIndexing
        cStruct.shaderStorageImageArrayDynamicIndexing = self.shaderStorageImageArrayDynamicIndexing
        cStruct.shaderClipDistance = self.shaderClipDistance
        cStruct.shaderCullDistance = self.shaderCullDistance
        cStruct.shaderFloat64 = self.shaderFloat64
        cStruct.shaderInt64 = self.shaderInt64
        cStruct.shaderInt16 = self.shaderInt16
        cStruct.shaderResourceResidency = self.shaderResourceResidency
        cStruct.shaderResourceMinLod = self.shaderResourceMinLod
        cStruct.sparseBinding = self.sparseBinding
        cStruct.sparseResidencyBuffer = self.sparseResidencyBuffer
        cStruct.sparseResidencyImage2D = self.sparseResidencyImage2D
        cStruct.sparseResidencyImage3D = self.sparseResidencyImage3D
        cStruct.sparseResidency2Samples = self.sparseResidency2Samples
        cStruct.sparseResidency4Samples = self.sparseResidency4Samples
        cStruct.sparseResidency8Samples = self.sparseResidency8Samples
        cStruct.sparseResidency16Samples = self.sparseResidency16Samples
        cStruct.sparseResidencyAliased = self.sparseResidencyAliased
        cStruct.variableMultisampleRate = self.variableMultisampleRate
        cStruct.inheritedQueries = self.inheritedQueries
        return try body(&cStruct)
    }
}

struct PhysicalDeviceSparseProperties: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceSparseProperties

    let residencyStandard2DBlockShape: VkBool32
    let residencyStandard2DMultisampleBlockShape: VkBool32
    let residencyStandard3DBlockShape: VkBool32
    let residencyAlignedMipSize: VkBool32
    let residencyNonResidentStrict: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceSparseProperties>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceSparseProperties()
        cStruct.residencyStandard2DBlockShape = self.residencyStandard2DBlockShape
        cStruct.residencyStandard2DMultisampleBlockShape = self.residencyStandard2DMultisampleBlockShape
        cStruct.residencyStandard3DBlockShape = self.residencyStandard3DBlockShape
        cStruct.residencyAlignedMipSize = self.residencyAlignedMipSize
        cStruct.residencyNonResidentStrict = self.residencyNonResidentStrict
        return try body(&cStruct)
    }
}

struct PhysicalDeviceLimits: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceLimits

    let maxImageDimension1D: UInt32
    let maxImageDimension2D: UInt32
    let maxImageDimension3D: UInt32
    let maxImageDimensionCube: UInt32
    let maxImageArrayLayers: UInt32
    let maxTexelBufferElements: UInt32
    let maxUniformBufferRange: UInt32
    let maxStorageBufferRange: UInt32
    let maxPushConstantsSize: UInt32
    let maxMemoryAllocationCount: UInt32
    let maxSamplerAllocationCount: UInt32
    let bufferImageGranularity: VkDeviceSize
    let sparseAddressSpaceSize: VkDeviceSize
    let maxBoundDescriptorSets: UInt32
    let maxPerStageDescriptorSamplers: UInt32
    let maxPerStageDescriptorUniformBuffers: UInt32
    let maxPerStageDescriptorStorageBuffers: UInt32
    let maxPerStageDescriptorSampledImages: UInt32
    let maxPerStageDescriptorStorageImages: UInt32
    let maxPerStageDescriptorInputAttachments: UInt32
    let maxPerStageResources: UInt32
    let maxDescriptorSetSamplers: UInt32
    let maxDescriptorSetUniformBuffers: UInt32
    let maxDescriptorSetUniformBuffersDynamic: UInt32
    let maxDescriptorSetStorageBuffers: UInt32
    let maxDescriptorSetStorageBuffersDynamic: UInt32
    let maxDescriptorSetSampledImages: UInt32
    let maxDescriptorSetStorageImages: UInt32
    let maxDescriptorSetInputAttachments: UInt32
    let maxVertexInputAttributes: UInt32
    let maxVertexInputBindings: UInt32
    let maxVertexInputAttributeOffset: UInt32
    let maxVertexInputBindingStride: UInt32
    let maxVertexOutputComponents: UInt32
    let maxTessellationGenerationLevel: UInt32
    let maxTessellationPatchSize: UInt32
    let maxTessellationControlPerVertexInputComponents: UInt32
    let maxTessellationControlPerVertexOutputComponents: UInt32
    let maxTessellationControlPerPatchOutputComponents: UInt32
    let maxTessellationControlTotalOutputComponents: UInt32
    let maxTessellationEvaluationInputComponents: UInt32
    let maxTessellationEvaluationOutputComponents: UInt32
    let maxGeometryShaderInvocations: UInt32
    let maxGeometryInputComponents: UInt32
    let maxGeometryOutputComponents: UInt32
    let maxGeometryOutputVertices: UInt32
    let maxGeometryTotalOutputComponents: UInt32
    let maxFragmentInputComponents: UInt32
    let maxFragmentOutputAttachments: UInt32
    let maxFragmentDualSrcAttachments: UInt32
    let maxFragmentCombinedOutputResources: UInt32
    let maxComputeSharedMemorySize: UInt32
    let maxComputeWorkGroupCount: (UInt32, UInt32, UInt32)
    let maxComputeWorkGroupInvocations: UInt32
    let maxComputeWorkGroupSize: (UInt32, UInt32, UInt32)
    let subPixelPrecisionBits: UInt32
    let subTexelPrecisionBits: UInt32
    let mipmapPrecisionBits: UInt32
    let maxDrawIndexedIndexValue: UInt32
    let maxDrawIndirectCount: UInt32
    let maxSamplerLodBias: Float
    let maxSamplerAnisotropy: Float
    let maxViewports: UInt32
    let maxViewportDimensions: (UInt32, UInt32)
    let viewportBoundsRange: (Float, Float)
    let viewportSubPixelBits: UInt32
    let minMemoryMapAlignment: Int
    let minTexelBufferOffsetAlignment: VkDeviceSize
    let minUniformBufferOffsetAlignment: VkDeviceSize
    let minStorageBufferOffsetAlignment: VkDeviceSize
    let minTexelOffset: Int32
    let maxTexelOffset: UInt32
    let minTexelGatherOffset: Int32
    let maxTexelGatherOffset: UInt32
    let minInterpolationOffset: Float
    let maxInterpolationOffset: Float
    let subPixelInterpolationOffsetBits: UInt32
    let maxFramebufferWidth: UInt32
    let maxFramebufferHeight: UInt32
    let maxFramebufferLayers: UInt32
    let framebufferColorSampleCounts: VkSampleCountFlags
    let framebufferDepthSampleCounts: VkSampleCountFlags
    let framebufferStencilSampleCounts: VkSampleCountFlags
    let framebufferNoAttachmentsSampleCounts: VkSampleCountFlags
    let maxColorAttachments: UInt32
    let sampledImageColorSampleCounts: VkSampleCountFlags
    let sampledImageIntegerSampleCounts: VkSampleCountFlags
    let sampledImageDepthSampleCounts: VkSampleCountFlags
    let sampledImageStencilSampleCounts: VkSampleCountFlags
    let storageImageSampleCounts: VkSampleCountFlags
    let maxSampleMaskWords: UInt32
    let timestampComputeAndGraphics: VkBool32
    let timestampPeriod: Float
    let maxClipDistances: UInt32
    let maxCullDistances: UInt32
    let maxCombinedClipAndCullDistances: UInt32
    let discreteQueuePriorities: UInt32
    let pointSizeRange: (Float, Float)
    let lineWidthRange: (Float, Float)
    let pointSizeGranularity: Float
    let lineWidthGranularity: Float
    let strictLines: VkBool32
    let standardSampleLocations: VkBool32
    let optimalBufferCopyOffsetAlignment: VkDeviceSize
    let optimalBufferCopyRowPitchAlignment: VkDeviceSize
    let nonCoherentAtomSize: VkDeviceSize

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceLimits>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceLimits()
        cStruct.maxImageDimension1D = self.maxImageDimension1D
        cStruct.maxImageDimension2D = self.maxImageDimension2D
        cStruct.maxImageDimension3D = self.maxImageDimension3D
        cStruct.maxImageDimensionCube = self.maxImageDimensionCube
        cStruct.maxImageArrayLayers = self.maxImageArrayLayers
        cStruct.maxTexelBufferElements = self.maxTexelBufferElements
        cStruct.maxUniformBufferRange = self.maxUniformBufferRange
        cStruct.maxStorageBufferRange = self.maxStorageBufferRange
        cStruct.maxPushConstantsSize = self.maxPushConstantsSize
        cStruct.maxMemoryAllocationCount = self.maxMemoryAllocationCount
        cStruct.maxSamplerAllocationCount = self.maxSamplerAllocationCount
        cStruct.bufferImageGranularity = self.bufferImageGranularity
        cStruct.sparseAddressSpaceSize = self.sparseAddressSpaceSize
        cStruct.maxBoundDescriptorSets = self.maxBoundDescriptorSets
        cStruct.maxPerStageDescriptorSamplers = self.maxPerStageDescriptorSamplers
        cStruct.maxPerStageDescriptorUniformBuffers = self.maxPerStageDescriptorUniformBuffers
        cStruct.maxPerStageDescriptorStorageBuffers = self.maxPerStageDescriptorStorageBuffers
        cStruct.maxPerStageDescriptorSampledImages = self.maxPerStageDescriptorSampledImages
        cStruct.maxPerStageDescriptorStorageImages = self.maxPerStageDescriptorStorageImages
        cStruct.maxPerStageDescriptorInputAttachments = self.maxPerStageDescriptorInputAttachments
        cStruct.maxPerStageResources = self.maxPerStageResources
        cStruct.maxDescriptorSetSamplers = self.maxDescriptorSetSamplers
        cStruct.maxDescriptorSetUniformBuffers = self.maxDescriptorSetUniformBuffers
        cStruct.maxDescriptorSetUniformBuffersDynamic = self.maxDescriptorSetUniformBuffersDynamic
        cStruct.maxDescriptorSetStorageBuffers = self.maxDescriptorSetStorageBuffers
        cStruct.maxDescriptorSetStorageBuffersDynamic = self.maxDescriptorSetStorageBuffersDynamic
        cStruct.maxDescriptorSetSampledImages = self.maxDescriptorSetSampledImages
        cStruct.maxDescriptorSetStorageImages = self.maxDescriptorSetStorageImages
        cStruct.maxDescriptorSetInputAttachments = self.maxDescriptorSetInputAttachments
        cStruct.maxVertexInputAttributes = self.maxVertexInputAttributes
        cStruct.maxVertexInputBindings = self.maxVertexInputBindings
        cStruct.maxVertexInputAttributeOffset = self.maxVertexInputAttributeOffset
        cStruct.maxVertexInputBindingStride = self.maxVertexInputBindingStride
        cStruct.maxVertexOutputComponents = self.maxVertexOutputComponents
        cStruct.maxTessellationGenerationLevel = self.maxTessellationGenerationLevel
        cStruct.maxTessellationPatchSize = self.maxTessellationPatchSize
        cStruct.maxTessellationControlPerVertexInputComponents = self.maxTessellationControlPerVertexInputComponents
        cStruct.maxTessellationControlPerVertexOutputComponents = self.maxTessellationControlPerVertexOutputComponents
        cStruct.maxTessellationControlPerPatchOutputComponents = self.maxTessellationControlPerPatchOutputComponents
        cStruct.maxTessellationControlTotalOutputComponents = self.maxTessellationControlTotalOutputComponents
        cStruct.maxTessellationEvaluationInputComponents = self.maxTessellationEvaluationInputComponents
        cStruct.maxTessellationEvaluationOutputComponents = self.maxTessellationEvaluationOutputComponents
        cStruct.maxGeometryShaderInvocations = self.maxGeometryShaderInvocations
        cStruct.maxGeometryInputComponents = self.maxGeometryInputComponents
        cStruct.maxGeometryOutputComponents = self.maxGeometryOutputComponents
        cStruct.maxGeometryOutputVertices = self.maxGeometryOutputVertices
        cStruct.maxGeometryTotalOutputComponents = self.maxGeometryTotalOutputComponents
        cStruct.maxFragmentInputComponents = self.maxFragmentInputComponents
        cStruct.maxFragmentOutputAttachments = self.maxFragmentOutputAttachments
        cStruct.maxFragmentDualSrcAttachments = self.maxFragmentDualSrcAttachments
        cStruct.maxFragmentCombinedOutputResources = self.maxFragmentCombinedOutputResources
        cStruct.maxComputeSharedMemorySize = self.maxComputeSharedMemorySize
        cStruct.maxComputeWorkGroupCount = self.maxComputeWorkGroupCount
        cStruct.maxComputeWorkGroupInvocations = self.maxComputeWorkGroupInvocations
        cStruct.maxComputeWorkGroupSize = self.maxComputeWorkGroupSize
        cStruct.subPixelPrecisionBits = self.subPixelPrecisionBits
        cStruct.subTexelPrecisionBits = self.subTexelPrecisionBits
        cStruct.mipmapPrecisionBits = self.mipmapPrecisionBits
        cStruct.maxDrawIndexedIndexValue = self.maxDrawIndexedIndexValue
        cStruct.maxDrawIndirectCount = self.maxDrawIndirectCount
        cStruct.maxSamplerLodBias = self.maxSamplerLodBias
        cStruct.maxSamplerAnisotropy = self.maxSamplerAnisotropy
        cStruct.maxViewports = self.maxViewports
        cStruct.maxViewportDimensions = self.maxViewportDimensions
        cStruct.viewportBoundsRange = self.viewportBoundsRange
        cStruct.viewportSubPixelBits = self.viewportSubPixelBits
        cStruct.minMemoryMapAlignment = self.minMemoryMapAlignment
        cStruct.minTexelBufferOffsetAlignment = self.minTexelBufferOffsetAlignment
        cStruct.minUniformBufferOffsetAlignment = self.minUniformBufferOffsetAlignment
        cStruct.minStorageBufferOffsetAlignment = self.minStorageBufferOffsetAlignment
        cStruct.minTexelOffset = self.minTexelOffset
        cStruct.maxTexelOffset = self.maxTexelOffset
        cStruct.minTexelGatherOffset = self.minTexelGatherOffset
        cStruct.maxTexelGatherOffset = self.maxTexelGatherOffset
        cStruct.minInterpolationOffset = self.minInterpolationOffset
        cStruct.maxInterpolationOffset = self.maxInterpolationOffset
        cStruct.subPixelInterpolationOffsetBits = self.subPixelInterpolationOffsetBits
        cStruct.maxFramebufferWidth = self.maxFramebufferWidth
        cStruct.maxFramebufferHeight = self.maxFramebufferHeight
        cStruct.maxFramebufferLayers = self.maxFramebufferLayers
        cStruct.framebufferColorSampleCounts = self.framebufferColorSampleCounts
        cStruct.framebufferDepthSampleCounts = self.framebufferDepthSampleCounts
        cStruct.framebufferStencilSampleCounts = self.framebufferStencilSampleCounts
        cStruct.framebufferNoAttachmentsSampleCounts = self.framebufferNoAttachmentsSampleCounts
        cStruct.maxColorAttachments = self.maxColorAttachments
        cStruct.sampledImageColorSampleCounts = self.sampledImageColorSampleCounts
        cStruct.sampledImageIntegerSampleCounts = self.sampledImageIntegerSampleCounts
        cStruct.sampledImageDepthSampleCounts = self.sampledImageDepthSampleCounts
        cStruct.sampledImageStencilSampleCounts = self.sampledImageStencilSampleCounts
        cStruct.storageImageSampleCounts = self.storageImageSampleCounts
        cStruct.maxSampleMaskWords = self.maxSampleMaskWords
        cStruct.timestampComputeAndGraphics = self.timestampComputeAndGraphics
        cStruct.timestampPeriod = self.timestampPeriod
        cStruct.maxClipDistances = self.maxClipDistances
        cStruct.maxCullDistances = self.maxCullDistances
        cStruct.maxCombinedClipAndCullDistances = self.maxCombinedClipAndCullDistances
        cStruct.discreteQueuePriorities = self.discreteQueuePriorities
        cStruct.pointSizeRange = self.pointSizeRange
        cStruct.lineWidthRange = self.lineWidthRange
        cStruct.pointSizeGranularity = self.pointSizeGranularity
        cStruct.lineWidthGranularity = self.lineWidthGranularity
        cStruct.strictLines = self.strictLines
        cStruct.standardSampleLocations = self.standardSampleLocations
        cStruct.optimalBufferCopyOffsetAlignment = self.optimalBufferCopyOffsetAlignment
        cStruct.optimalBufferCopyRowPitchAlignment = self.optimalBufferCopyRowPitchAlignment
        cStruct.nonCoherentAtomSize = self.nonCoherentAtomSize
        return try body(&cStruct)
    }
}

struct SemaphoreCreateInfo: CStructConvertible {
    typealias CStruct = VkSemaphoreCreateInfo

    let flags: VkSemaphoreCreateFlags

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkSemaphoreCreateInfo>) throws -> R) rethrows -> R {
        var cStruct = VkSemaphoreCreateInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_SEMAPHORE_CREATE_INFO
        cStruct.pNext = nil
        cStruct.flags = self.flags
        return try body(&cStruct)
    }
}

struct QueryPoolCreateInfo: CStructConvertible {
    typealias CStruct = VkQueryPoolCreateInfo

    let flags: VkQueryPoolCreateFlags
    let queryType: VkQueryType
    let queryCount: UInt32
    let pipelineStatistics: VkQueryPipelineStatisticFlags

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkQueryPoolCreateInfo>) throws -> R) rethrows -> R {
        var cStruct = VkQueryPoolCreateInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_QUERY_POOL_CREATE_INFO
        cStruct.pNext = nil
        cStruct.flags = self.flags
        cStruct.queryType = self.queryType
        cStruct.queryCount = self.queryCount
        cStruct.pipelineStatistics = self.pipelineStatistics
        return try body(&cStruct)
    }
}

struct FramebufferCreateInfo: CStructConvertible {
    typealias CStruct = VkFramebufferCreateInfo

    let flags: VkFramebufferCreateFlags
    let renderPass: VkRenderPass
    let attachmentCount: UInt32
    let pAttachments: UnsafePointer<VkImageView?>
    let width: UInt32
    let height: UInt32
    let layers: UInt32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkFramebufferCreateInfo>) throws -> R) rethrows -> R {
        var cStruct = VkFramebufferCreateInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_FRAMEBUFFER_CREATE_INFO
        cStruct.pNext = nil
        cStruct.flags = self.flags
        cStruct.renderPass = self.renderPass
        cStruct.attachmentCount = self.attachmentCount
        cStruct.pAttachments = self.pAttachments
        cStruct.width = self.width
        cStruct.height = self.height
        cStruct.layers = self.layers
        return try body(&cStruct)
    }
}

struct DrawIndirectCommand: CStructConvertible {
    typealias CStruct = VkDrawIndirectCommand

    let vertexCount: UInt32
    let instanceCount: UInt32
    let firstVertex: UInt32
    let firstInstance: UInt32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkDrawIndirectCommand>) throws -> R) rethrows -> R {
        var cStruct = VkDrawIndirectCommand()
        cStruct.vertexCount = self.vertexCount
        cStruct.instanceCount = self.instanceCount
        cStruct.firstVertex = self.firstVertex
        cStruct.firstInstance = self.firstInstance
        return try body(&cStruct)
    }
}

struct DrawIndexedIndirectCommand: CStructConvertible {
    typealias CStruct = VkDrawIndexedIndirectCommand

    let indexCount: UInt32
    let instanceCount: UInt32
    let firstIndex: UInt32
    let vertexOffset: Int32
    let firstInstance: UInt32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkDrawIndexedIndirectCommand>) throws -> R) rethrows -> R {
        var cStruct = VkDrawIndexedIndirectCommand()
        cStruct.indexCount = self.indexCount
        cStruct.instanceCount = self.instanceCount
        cStruct.firstIndex = self.firstIndex
        cStruct.vertexOffset = self.vertexOffset
        cStruct.firstInstance = self.firstInstance
        return try body(&cStruct)
    }
}

struct DispatchIndirectCommand: CStructConvertible {
    typealias CStruct = VkDispatchIndirectCommand

    let x: UInt32
    let y: UInt32
    let z: UInt32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkDispatchIndirectCommand>) throws -> R) rethrows -> R {
        var cStruct = VkDispatchIndirectCommand()
        cStruct.x = self.x
        cStruct.y = self.y
        cStruct.z = self.z
        return try body(&cStruct)
    }
}

struct SubmitInfo: CStructConvertible {
    typealias CStruct = VkSubmitInfo

    let waitSemaphoreCount: UInt32
    let pWaitSemaphores: UnsafePointer<VkSemaphore?>
    let pWaitDstStageMask: UnsafePointer<VkPipelineStageFlags>
    let commandBufferCount: UInt32
    let pCommandBuffers: UnsafePointer<VkCommandBuffer?>
    let signalSemaphoreCount: UInt32
    let pSignalSemaphores: UnsafePointer<VkSemaphore?>

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkSubmitInfo>) throws -> R) rethrows -> R {
        var cStruct = VkSubmitInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_SUBMIT_INFO
        cStruct.pNext = nil
        cStruct.waitSemaphoreCount = self.waitSemaphoreCount
        cStruct.pWaitSemaphores = self.pWaitSemaphores
        cStruct.pWaitDstStageMask = self.pWaitDstStageMask
        cStruct.commandBufferCount = self.commandBufferCount
        cStruct.pCommandBuffers = self.pCommandBuffers
        cStruct.signalSemaphoreCount = self.signalSemaphoreCount
        cStruct.pSignalSemaphores = self.pSignalSemaphores
        return try body(&cStruct)
    }
}

struct DisplayPropertiesKHR: CStructConvertible {
    typealias CStruct = VkDisplayPropertiesKHR

    let display: VkDisplayKHR
    let displayName: UnsafePointer<CChar>
    let physicalDimensions: VkExtent2D
    let physicalResolution: VkExtent2D
    let supportedTransforms: VkSurfaceTransformFlagsKHR
    let planeReorderPossible: VkBool32
    let persistentContent: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkDisplayPropertiesKHR>) throws -> R) rethrows -> R {
        var cStruct = VkDisplayPropertiesKHR()
        cStruct.display = self.display
        cStruct.displayName = self.displayName
        cStruct.physicalDimensions = self.physicalDimensions
        cStruct.physicalResolution = self.physicalResolution
        cStruct.supportedTransforms = self.supportedTransforms
        cStruct.planeReorderPossible = self.planeReorderPossible
        cStruct.persistentContent = self.persistentContent
        return try body(&cStruct)
    }
}

struct DisplayPlanePropertiesKHR: CStructConvertible {
    typealias CStruct = VkDisplayPlanePropertiesKHR

    let currentDisplay: VkDisplayKHR
    let currentStackIndex: UInt32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkDisplayPlanePropertiesKHR>) throws -> R) rethrows -> R {
        var cStruct = VkDisplayPlanePropertiesKHR()
        cStruct.currentDisplay = self.currentDisplay
        cStruct.currentStackIndex = self.currentStackIndex
        return try body(&cStruct)
    }
}

struct DisplayModeParametersKHR: CStructConvertible {
    typealias CStruct = VkDisplayModeParametersKHR

    let visibleRegion: VkExtent2D
    let refreshRate: UInt32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkDisplayModeParametersKHR>) throws -> R) rethrows -> R {
        var cStruct = VkDisplayModeParametersKHR()
        cStruct.visibleRegion = self.visibleRegion
        cStruct.refreshRate = self.refreshRate
        return try body(&cStruct)
    }
}

struct DisplayModePropertiesKHR: CStructConvertible {
    typealias CStruct = VkDisplayModePropertiesKHR

    let displayMode: VkDisplayModeKHR
    let parameters: VkDisplayModeParametersKHR

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkDisplayModePropertiesKHR>) throws -> R) rethrows -> R {
        var cStruct = VkDisplayModePropertiesKHR()
        cStruct.displayMode = self.displayMode
        cStruct.parameters = self.parameters
        return try body(&cStruct)
    }
}

struct DisplayModeCreateInfoKHR: CStructConvertible {
    typealias CStruct = VkDisplayModeCreateInfoKHR

    let flags: VkDisplayModeCreateFlagsKHR
    let parameters: VkDisplayModeParametersKHR

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkDisplayModeCreateInfoKHR>) throws -> R) rethrows -> R {
        var cStruct = VkDisplayModeCreateInfoKHR()
        cStruct.sType = VK_STRUCTURE_TYPE_DISPLAY_MODE_CREATE_INFO_KHR
        cStruct.pNext = nil
        cStruct.flags = self.flags
        cStruct.parameters = self.parameters
        return try body(&cStruct)
    }
}

struct DisplayPlaneCapabilitiesKHR: CStructConvertible {
    typealias CStruct = VkDisplayPlaneCapabilitiesKHR

    let supportedAlpha: VkDisplayPlaneAlphaFlagsKHR
    let minSrcPosition: VkOffset2D
    let maxSrcPosition: VkOffset2D
    let minSrcExtent: VkExtent2D
    let maxSrcExtent: VkExtent2D
    let minDstPosition: VkOffset2D
    let maxDstPosition: VkOffset2D
    let minDstExtent: VkExtent2D
    let maxDstExtent: VkExtent2D

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkDisplayPlaneCapabilitiesKHR>) throws -> R) rethrows -> R {
        var cStruct = VkDisplayPlaneCapabilitiesKHR()
        cStruct.supportedAlpha = self.supportedAlpha
        cStruct.minSrcPosition = self.minSrcPosition
        cStruct.maxSrcPosition = self.maxSrcPosition
        cStruct.minSrcExtent = self.minSrcExtent
        cStruct.maxSrcExtent = self.maxSrcExtent
        cStruct.minDstPosition = self.minDstPosition
        cStruct.maxDstPosition = self.maxDstPosition
        cStruct.minDstExtent = self.minDstExtent
        cStruct.maxDstExtent = self.maxDstExtent
        return try body(&cStruct)
    }
}

struct DisplaySurfaceCreateInfoKHR: CStructConvertible {
    typealias CStruct = VkDisplaySurfaceCreateInfoKHR

    let flags: VkDisplaySurfaceCreateFlagsKHR
    let displayMode: VkDisplayModeKHR
    let planeIndex: UInt32
    let planeStackIndex: UInt32
    let transform: VkSurfaceTransformFlagBitsKHR
    let globalAlpha: Float
    let alphaMode: VkDisplayPlaneAlphaFlagBitsKHR
    let imageExtent: VkExtent2D

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkDisplaySurfaceCreateInfoKHR>) throws -> R) rethrows -> R {
        var cStruct = VkDisplaySurfaceCreateInfoKHR()
        cStruct.sType = VK_STRUCTURE_TYPE_DISPLAY_SURFACE_CREATE_INFO_KHR
        cStruct.pNext = nil
        cStruct.flags = self.flags
        cStruct.displayMode = self.displayMode
        cStruct.planeIndex = self.planeIndex
        cStruct.planeStackIndex = self.planeStackIndex
        cStruct.transform = self.transform
        cStruct.globalAlpha = self.globalAlpha
        cStruct.alphaMode = self.alphaMode
        cStruct.imageExtent = self.imageExtent
        return try body(&cStruct)
    }
}

struct DisplayPresentInfoKHR: CStructConvertible {
    typealias CStruct = VkDisplayPresentInfoKHR

    let srcRect: VkRect2D
    let dstRect: VkRect2D
    let persistent: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkDisplayPresentInfoKHR>) throws -> R) rethrows -> R {
        var cStruct = VkDisplayPresentInfoKHR()
        cStruct.sType = VK_STRUCTURE_TYPE_DISPLAY_PRESENT_INFO_KHR
        cStruct.pNext = nil
        cStruct.srcRect = self.srcRect
        cStruct.dstRect = self.dstRect
        cStruct.persistent = self.persistent
        return try body(&cStruct)
    }
}

struct SurfaceCapabilitiesKHR: CStructConvertible {
    typealias CStruct = VkSurfaceCapabilitiesKHR

    let minImageCount: UInt32
    let maxImageCount: UInt32
    let currentExtent: VkExtent2D
    let minImageExtent: VkExtent2D
    let maxImageExtent: VkExtent2D
    let maxImageArrayLayers: UInt32
    let supportedTransforms: VkSurfaceTransformFlagsKHR
    let currentTransform: VkSurfaceTransformFlagBitsKHR
    let supportedCompositeAlpha: VkCompositeAlphaFlagsKHR
    let supportedUsageFlags: VkImageUsageFlags

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkSurfaceCapabilitiesKHR>) throws -> R) rethrows -> R {
        var cStruct = VkSurfaceCapabilitiesKHR()
        cStruct.minImageCount = self.minImageCount
        cStruct.maxImageCount = self.maxImageCount
        cStruct.currentExtent = self.currentExtent
        cStruct.minImageExtent = self.minImageExtent
        cStruct.maxImageExtent = self.maxImageExtent
        cStruct.maxImageArrayLayers = self.maxImageArrayLayers
        cStruct.supportedTransforms = self.supportedTransforms
        cStruct.currentTransform = self.currentTransform
        cStruct.supportedCompositeAlpha = self.supportedCompositeAlpha
        cStruct.supportedUsageFlags = self.supportedUsageFlags
        return try body(&cStruct)
    }
}

struct SurfaceFormatKHR: CStructConvertible {
    typealias CStruct = VkSurfaceFormatKHR

    let format: VkFormat
    let colorSpace: VkColorSpaceKHR

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkSurfaceFormatKHR>) throws -> R) rethrows -> R {
        var cStruct = VkSurfaceFormatKHR()
        cStruct.format = self.format
        cStruct.colorSpace = self.colorSpace
        return try body(&cStruct)
    }
}

struct SwapchainCreateInfoKHR: CStructConvertible {
    typealias CStruct = VkSwapchainCreateInfoKHR

    let flags: VkSwapchainCreateFlagsKHR
    let surface: VkSurfaceKHR
    let minImageCount: UInt32
    let imageFormat: VkFormat
    let imageColorSpace: VkColorSpaceKHR
    let imageExtent: VkExtent2D
    let imageArrayLayers: UInt32
    let imageUsage: VkImageUsageFlags
    let imageSharingMode: VkSharingMode
    let queueFamilyIndexCount: UInt32
    let pQueueFamilyIndices: UnsafePointer<UInt32>
    let preTransform: VkSurfaceTransformFlagBitsKHR
    let compositeAlpha: VkCompositeAlphaFlagBitsKHR
    let presentMode: VkPresentModeKHR
    let clipped: VkBool32
    let oldSwapchain: VkSwapchainKHR

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkSwapchainCreateInfoKHR>) throws -> R) rethrows -> R {
        var cStruct = VkSwapchainCreateInfoKHR()
        cStruct.sType = VK_STRUCTURE_TYPE_SWAPCHAIN_CREATE_INFO_KHR
        cStruct.pNext = nil
        cStruct.flags = self.flags
        cStruct.surface = self.surface
        cStruct.minImageCount = self.minImageCount
        cStruct.imageFormat = self.imageFormat
        cStruct.imageColorSpace = self.imageColorSpace
        cStruct.imageExtent = self.imageExtent
        cStruct.imageArrayLayers = self.imageArrayLayers
        cStruct.imageUsage = self.imageUsage
        cStruct.imageSharingMode = self.imageSharingMode
        cStruct.queueFamilyIndexCount = self.queueFamilyIndexCount
        cStruct.pQueueFamilyIndices = self.pQueueFamilyIndices
        cStruct.preTransform = self.preTransform
        cStruct.compositeAlpha = self.compositeAlpha
        cStruct.presentMode = self.presentMode
        cStruct.clipped = self.clipped
        cStruct.oldSwapchain = self.oldSwapchain
        return try body(&cStruct)
    }
}

struct PresentInfoKHR: CStructConvertible {
    typealias CStruct = VkPresentInfoKHR

    let waitSemaphoreCount: UInt32
    let pWaitSemaphores: UnsafePointer<VkSemaphore?>
    let swapchainCount: UInt32
    let pSwapchains: UnsafePointer<VkSwapchainKHR?>
    let pImageIndices: UnsafePointer<UInt32>
    let pResults: UnsafeMutablePointer<VkResult>

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPresentInfoKHR>) throws -> R) rethrows -> R {
        var cStruct = VkPresentInfoKHR()
        cStruct.sType = VK_STRUCTURE_TYPE_PRESENT_INFO_KHR
        cStruct.pNext = nil
        cStruct.waitSemaphoreCount = self.waitSemaphoreCount
        cStruct.pWaitSemaphores = self.pWaitSemaphores
        cStruct.swapchainCount = self.swapchainCount
        cStruct.pSwapchains = self.pSwapchains
        cStruct.pImageIndices = self.pImageIndices
        cStruct.pResults = self.pResults
        return try body(&cStruct)
    }
}

struct DebugReportCallbackCreateInfoEXT: CStructConvertible {
    typealias CStruct = VkDebugReportCallbackCreateInfoEXT

    let flags: VkDebugReportFlagsEXT
    let pfnCallback: PFN_vkDebugReportCallbackEXT
    let pUserData: UnsafeMutableRawPointer

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkDebugReportCallbackCreateInfoEXT>) throws -> R) rethrows -> R {
        var cStruct = VkDebugReportCallbackCreateInfoEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_DEBUG_REPORT_CALLBACK_CREATE_INFO_EXT
        cStruct.pNext = nil
        cStruct.flags = self.flags
        cStruct.pfnCallback = self.pfnCallback
        cStruct.pUserData = self.pUserData
        return try body(&cStruct)
    }
}

struct ValidationFlagsEXT: CStructConvertible {
    typealias CStruct = VkValidationFlagsEXT

    let disabledValidationCheckCount: UInt32
    let pDisabledValidationChecks: UnsafePointer<VkValidationCheckEXT>

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkValidationFlagsEXT>) throws -> R) rethrows -> R {
        var cStruct = VkValidationFlagsEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_VALIDATION_FLAGS_EXT
        cStruct.pNext = nil
        cStruct.disabledValidationCheckCount = self.disabledValidationCheckCount
        cStruct.pDisabledValidationChecks = self.pDisabledValidationChecks
        return try body(&cStruct)
    }
}

struct ValidationFeaturesEXT: CStructConvertible {
    typealias CStruct = VkValidationFeaturesEXT

    let enabledValidationFeatureCount: UInt32
    let pEnabledValidationFeatures: UnsafePointer<VkValidationFeatureEnableEXT>
    let disabledValidationFeatureCount: UInt32
    let pDisabledValidationFeatures: UnsafePointer<VkValidationFeatureDisableEXT>

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkValidationFeaturesEXT>) throws -> R) rethrows -> R {
        var cStruct = VkValidationFeaturesEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_VALIDATION_FEATURES_EXT
        cStruct.pNext = nil
        cStruct.enabledValidationFeatureCount = self.enabledValidationFeatureCount
        cStruct.pEnabledValidationFeatures = self.pEnabledValidationFeatures
        cStruct.disabledValidationFeatureCount = self.disabledValidationFeatureCount
        cStruct.pDisabledValidationFeatures = self.pDisabledValidationFeatures
        return try body(&cStruct)
    }
}

struct PipelineRasterizationStateRasterizationOrderAMD: CStructConvertible {
    typealias CStruct = VkPipelineRasterizationStateRasterizationOrderAMD

    let rasterizationOrder: VkRasterizationOrderAMD

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPipelineRasterizationStateRasterizationOrderAMD>) throws -> R) rethrows -> R {
        var cStruct = VkPipelineRasterizationStateRasterizationOrderAMD()
        cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_STATE_RASTERIZATION_ORDER_AMD
        cStruct.pNext = nil
        cStruct.rasterizationOrder = self.rasterizationOrder
        return try body(&cStruct)
    }
}

struct DebugMarkerObjectNameInfoEXT: CStructConvertible {
    typealias CStruct = VkDebugMarkerObjectNameInfoEXT

    let objectType: VkDebugReportObjectTypeEXT
    let object: UInt64
    let pObjectName: UnsafePointer<CChar>

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkDebugMarkerObjectNameInfoEXT>) throws -> R) rethrows -> R {
        var cStruct = VkDebugMarkerObjectNameInfoEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_DEBUG_MARKER_OBJECT_NAME_INFO_EXT
        cStruct.pNext = nil
        cStruct.objectType = self.objectType
        cStruct.object = self.object
        cStruct.pObjectName = self.pObjectName
        return try body(&cStruct)
    }
}

struct DebugMarkerObjectTagInfoEXT: CStructConvertible {
    typealias CStruct = VkDebugMarkerObjectTagInfoEXT

    let objectType: VkDebugReportObjectTypeEXT
    let object: UInt64
    let tagName: UInt64
    let tagSize: Int
    let pTag: UnsafeRawPointer

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkDebugMarkerObjectTagInfoEXT>) throws -> R) rethrows -> R {
        var cStruct = VkDebugMarkerObjectTagInfoEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_DEBUG_MARKER_OBJECT_TAG_INFO_EXT
        cStruct.pNext = nil
        cStruct.objectType = self.objectType
        cStruct.object = self.object
        cStruct.tagName = self.tagName
        cStruct.tagSize = self.tagSize
        cStruct.pTag = self.pTag
        return try body(&cStruct)
    }
}

struct DebugMarkerMarkerInfoEXT: CStructConvertible {
    typealias CStruct = VkDebugMarkerMarkerInfoEXT

    let pMarkerName: UnsafePointer<CChar>
    let color: (Float, Float, Float, Float)

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkDebugMarkerMarkerInfoEXT>) throws -> R) rethrows -> R {
        var cStruct = VkDebugMarkerMarkerInfoEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_DEBUG_MARKER_MARKER_INFO_EXT
        cStruct.pNext = nil
        cStruct.pMarkerName = self.pMarkerName
        cStruct.color = self.color
        return try body(&cStruct)
    }
}

struct DedicatedAllocationImageCreateInfoNV: CStructConvertible {
    typealias CStruct = VkDedicatedAllocationImageCreateInfoNV

    let dedicatedAllocation: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkDedicatedAllocationImageCreateInfoNV>) throws -> R) rethrows -> R {
        var cStruct = VkDedicatedAllocationImageCreateInfoNV()
        cStruct.sType = VK_STRUCTURE_TYPE_DEDICATED_ALLOCATION_IMAGE_CREATE_INFO_NV
        cStruct.pNext = nil
        cStruct.dedicatedAllocation = self.dedicatedAllocation
        return try body(&cStruct)
    }
}

struct DedicatedAllocationBufferCreateInfoNV: CStructConvertible {
    typealias CStruct = VkDedicatedAllocationBufferCreateInfoNV

    let dedicatedAllocation: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkDedicatedAllocationBufferCreateInfoNV>) throws -> R) rethrows -> R {
        var cStruct = VkDedicatedAllocationBufferCreateInfoNV()
        cStruct.sType = VK_STRUCTURE_TYPE_DEDICATED_ALLOCATION_BUFFER_CREATE_INFO_NV
        cStruct.pNext = nil
        cStruct.dedicatedAllocation = self.dedicatedAllocation
        return try body(&cStruct)
    }
}

struct DedicatedAllocationMemoryAllocateInfoNV: CStructConvertible {
    typealias CStruct = VkDedicatedAllocationMemoryAllocateInfoNV

    let image: VkImage
    let buffer: VkBuffer

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkDedicatedAllocationMemoryAllocateInfoNV>) throws -> R) rethrows -> R {
        var cStruct = VkDedicatedAllocationMemoryAllocateInfoNV()
        cStruct.sType = VK_STRUCTURE_TYPE_DEDICATED_ALLOCATION_MEMORY_ALLOCATE_INFO_NV
        cStruct.pNext = nil
        cStruct.image = self.image
        cStruct.buffer = self.buffer
        return try body(&cStruct)
    }
}

struct ExternalImageFormatPropertiesNV: CStructConvertible {
    typealias CStruct = VkExternalImageFormatPropertiesNV

    let imageFormatProperties: VkImageFormatProperties
    let externalMemoryFeatures: VkExternalMemoryFeatureFlagsNV
    let exportFromImportedHandleTypes: VkExternalMemoryHandleTypeFlagsNV
    let compatibleHandleTypes: VkExternalMemoryHandleTypeFlagsNV

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkExternalImageFormatPropertiesNV>) throws -> R) rethrows -> R {
        var cStruct = VkExternalImageFormatPropertiesNV()
        cStruct.imageFormatProperties = self.imageFormatProperties
        cStruct.externalMemoryFeatures = self.externalMemoryFeatures
        cStruct.exportFromImportedHandleTypes = self.exportFromImportedHandleTypes
        cStruct.compatibleHandleTypes = self.compatibleHandleTypes
        return try body(&cStruct)
    }
}

struct ExternalMemoryImageCreateInfoNV: CStructConvertible {
    typealias CStruct = VkExternalMemoryImageCreateInfoNV

    let handleTypes: VkExternalMemoryHandleTypeFlagsNV

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkExternalMemoryImageCreateInfoNV>) throws -> R) rethrows -> R {
        var cStruct = VkExternalMemoryImageCreateInfoNV()
        cStruct.sType = VK_STRUCTURE_TYPE_EXTERNAL_MEMORY_IMAGE_CREATE_INFO_NV
        cStruct.pNext = nil
        cStruct.handleTypes = self.handleTypes
        return try body(&cStruct)
    }
}

struct ExportMemoryAllocateInfoNV: CStructConvertible {
    typealias CStruct = VkExportMemoryAllocateInfoNV

    let handleTypes: VkExternalMemoryHandleTypeFlagsNV

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkExportMemoryAllocateInfoNV>) throws -> R) rethrows -> R {
        var cStruct = VkExportMemoryAllocateInfoNV()
        cStruct.sType = VK_STRUCTURE_TYPE_EXPORT_MEMORY_ALLOCATE_INFO_NV
        cStruct.pNext = nil
        cStruct.handleTypes = self.handleTypes
        return try body(&cStruct)
    }
}

struct PhysicalDeviceDeviceGeneratedCommandsFeaturesNV: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceDeviceGeneratedCommandsFeaturesNV

    let deviceGeneratedCommands: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceDeviceGeneratedCommandsFeaturesNV>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceDeviceGeneratedCommandsFeaturesNV()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DEVICE_GENERATED_COMMANDS_FEATURES_NV
        cStruct.pNext = nil
        cStruct.deviceGeneratedCommands = self.deviceGeneratedCommands
        return try body(&cStruct)
    }
}

struct PhysicalDeviceDeviceGeneratedCommandsPropertiesNV: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV

    let maxGraphicsShaderGroupCount: UInt32
    let maxIndirectSequenceCount: UInt32
    let maxIndirectCommandsTokenCount: UInt32
    let maxIndirectCommandsStreamCount: UInt32
    let maxIndirectCommandsTokenOffset: UInt32
    let maxIndirectCommandsStreamStride: UInt32
    let minSequencesCountBufferOffsetAlignment: UInt32
    let minSequencesIndexBufferOffsetAlignment: UInt32
    let minIndirectCommandsBufferOffsetAlignment: UInt32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DEVICE_GENERATED_COMMANDS_PROPERTIES_NV
        cStruct.pNext = nil
        cStruct.maxGraphicsShaderGroupCount = self.maxGraphicsShaderGroupCount
        cStruct.maxIndirectSequenceCount = self.maxIndirectSequenceCount
        cStruct.maxIndirectCommandsTokenCount = self.maxIndirectCommandsTokenCount
        cStruct.maxIndirectCommandsStreamCount = self.maxIndirectCommandsStreamCount
        cStruct.maxIndirectCommandsTokenOffset = self.maxIndirectCommandsTokenOffset
        cStruct.maxIndirectCommandsStreamStride = self.maxIndirectCommandsStreamStride
        cStruct.minSequencesCountBufferOffsetAlignment = self.minSequencesCountBufferOffsetAlignment
        cStruct.minSequencesIndexBufferOffsetAlignment = self.minSequencesIndexBufferOffsetAlignment
        cStruct.minIndirectCommandsBufferOffsetAlignment = self.minIndirectCommandsBufferOffsetAlignment
        return try body(&cStruct)
    }
}

struct GraphicsShaderGroupCreateInfoNV: CStructConvertible {
    typealias CStruct = VkGraphicsShaderGroupCreateInfoNV

    let stageCount: UInt32
    let pStages: UnsafePointer<VkPipelineShaderStageCreateInfo>
    let pVertexInputState: UnsafePointer<VkPipelineVertexInputStateCreateInfo>
    let pTessellationState: UnsafePointer<VkPipelineTessellationStateCreateInfo>

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkGraphicsShaderGroupCreateInfoNV>) throws -> R) rethrows -> R {
        var cStruct = VkGraphicsShaderGroupCreateInfoNV()
        cStruct.sType = VK_STRUCTURE_TYPE_GRAPHICS_SHADER_GROUP_CREATE_INFO_NV
        cStruct.pNext = nil
        cStruct.stageCount = self.stageCount
        cStruct.pStages = self.pStages
        cStruct.pVertexInputState = self.pVertexInputState
        cStruct.pTessellationState = self.pTessellationState
        return try body(&cStruct)
    }
}

struct GraphicsPipelineShaderGroupsCreateInfoNV: CStructConvertible {
    typealias CStruct = VkGraphicsPipelineShaderGroupsCreateInfoNV

    let groupCount: UInt32
    let pGroups: UnsafePointer<VkGraphicsShaderGroupCreateInfoNV>
    let pipelineCount: UInt32
    let pPipelines: UnsafePointer<VkPipeline?>

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkGraphicsPipelineShaderGroupsCreateInfoNV>) throws -> R) rethrows -> R {
        var cStruct = VkGraphicsPipelineShaderGroupsCreateInfoNV()
        cStruct.sType = VK_STRUCTURE_TYPE_GRAPHICS_PIPELINE_SHADER_GROUPS_CREATE_INFO_NV
        cStruct.pNext = nil
        cStruct.groupCount = self.groupCount
        cStruct.pGroups = self.pGroups
        cStruct.pipelineCount = self.pipelineCount
        cStruct.pPipelines = self.pPipelines
        return try body(&cStruct)
    }
}

struct BindShaderGroupIndirectCommandNV: CStructConvertible {
    typealias CStruct = VkBindShaderGroupIndirectCommandNV

    let groupIndex: UInt32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkBindShaderGroupIndirectCommandNV>) throws -> R) rethrows -> R {
        var cStruct = VkBindShaderGroupIndirectCommandNV()
        cStruct.groupIndex = self.groupIndex
        return try body(&cStruct)
    }
}

struct BindIndexBufferIndirectCommandNV: CStructConvertible {
    typealias CStruct = VkBindIndexBufferIndirectCommandNV

    let bufferAddress: VkDeviceAddress
    let size: UInt32
    let indexType: VkIndexType

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkBindIndexBufferIndirectCommandNV>) throws -> R) rethrows -> R {
        var cStruct = VkBindIndexBufferIndirectCommandNV()
        cStruct.bufferAddress = self.bufferAddress
        cStruct.size = self.size
        cStruct.indexType = self.indexType
        return try body(&cStruct)
    }
}

struct BindVertexBufferIndirectCommandNV: CStructConvertible {
    typealias CStruct = VkBindVertexBufferIndirectCommandNV

    let bufferAddress: VkDeviceAddress
    let size: UInt32
    let stride: UInt32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkBindVertexBufferIndirectCommandNV>) throws -> R) rethrows -> R {
        var cStruct = VkBindVertexBufferIndirectCommandNV()
        cStruct.bufferAddress = self.bufferAddress
        cStruct.size = self.size
        cStruct.stride = self.stride
        return try body(&cStruct)
    }
}

struct SetStateFlagsIndirectCommandNV: CStructConvertible {
    typealias CStruct = VkSetStateFlagsIndirectCommandNV

    let data: UInt32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkSetStateFlagsIndirectCommandNV>) throws -> R) rethrows -> R {
        var cStruct = VkSetStateFlagsIndirectCommandNV()
        cStruct.data = self.data
        return try body(&cStruct)
    }
}

struct IndirectCommandsStreamNV: CStructConvertible {
    typealias CStruct = VkIndirectCommandsStreamNV

    let buffer: VkBuffer
    let offset: VkDeviceSize

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkIndirectCommandsStreamNV>) throws -> R) rethrows -> R {
        var cStruct = VkIndirectCommandsStreamNV()
        cStruct.buffer = self.buffer
        cStruct.offset = self.offset
        return try body(&cStruct)
    }
}

struct IndirectCommandsLayoutTokenNV: CStructConvertible {
    typealias CStruct = VkIndirectCommandsLayoutTokenNV

    let tokenType: VkIndirectCommandsTokenTypeNV
    let stream: UInt32
    let offset: UInt32
    let vertexBindingUnit: UInt32
    let vertexDynamicStride: VkBool32
    let pushconstantPipelineLayout: VkPipelineLayout
    let pushconstantShaderStageFlags: VkShaderStageFlags
    let pushconstantOffset: UInt32
    let pushconstantSize: UInt32
    let indirectStateFlags: VkIndirectStateFlagsNV
    let indexTypeCount: UInt32
    let pIndexTypes: UnsafePointer<VkIndexType>
    let pIndexTypeValues: UnsafePointer<UInt32>

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkIndirectCommandsLayoutTokenNV>) throws -> R) rethrows -> R {
        var cStruct = VkIndirectCommandsLayoutTokenNV()
        cStruct.sType = VK_STRUCTURE_TYPE_INDIRECT_COMMANDS_LAYOUT_TOKEN_NV
        cStruct.pNext = nil
        cStruct.tokenType = self.tokenType
        cStruct.stream = self.stream
        cStruct.offset = self.offset
        cStruct.vertexBindingUnit = self.vertexBindingUnit
        cStruct.vertexDynamicStride = self.vertexDynamicStride
        cStruct.pushconstantPipelineLayout = self.pushconstantPipelineLayout
        cStruct.pushconstantShaderStageFlags = self.pushconstantShaderStageFlags
        cStruct.pushconstantOffset = self.pushconstantOffset
        cStruct.pushconstantSize = self.pushconstantSize
        cStruct.indirectStateFlags = self.indirectStateFlags
        cStruct.indexTypeCount = self.indexTypeCount
        cStruct.pIndexTypes = self.pIndexTypes
        cStruct.pIndexTypeValues = self.pIndexTypeValues
        return try body(&cStruct)
    }
}

struct IndirectCommandsLayoutCreateInfoNV: CStructConvertible {
    typealias CStruct = VkIndirectCommandsLayoutCreateInfoNV

    let flags: VkIndirectCommandsLayoutUsageFlagsNV
    let pipelineBindPoint: VkPipelineBindPoint
    let tokenCount: UInt32
    let pTokens: UnsafePointer<VkIndirectCommandsLayoutTokenNV>
    let streamCount: UInt32
    let pStreamStrides: UnsafePointer<UInt32>

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkIndirectCommandsLayoutCreateInfoNV>) throws -> R) rethrows -> R {
        var cStruct = VkIndirectCommandsLayoutCreateInfoNV()
        cStruct.sType = VK_STRUCTURE_TYPE_INDIRECT_COMMANDS_LAYOUT_CREATE_INFO_NV
        cStruct.pNext = nil
        cStruct.flags = self.flags
        cStruct.pipelineBindPoint = self.pipelineBindPoint
        cStruct.tokenCount = self.tokenCount
        cStruct.pTokens = self.pTokens
        cStruct.streamCount = self.streamCount
        cStruct.pStreamStrides = self.pStreamStrides
        return try body(&cStruct)
    }
}

struct GeneratedCommandsInfoNV: CStructConvertible {
    typealias CStruct = VkGeneratedCommandsInfoNV

    let pipelineBindPoint: VkPipelineBindPoint
    let pipeline: VkPipeline
    let indirectCommandsLayout: VkIndirectCommandsLayoutNV
    let streamCount: UInt32
    let pStreams: UnsafePointer<VkIndirectCommandsStreamNV>
    let sequencesCount: UInt32
    let preprocessBuffer: VkBuffer
    let preprocessOffset: VkDeviceSize
    let preprocessSize: VkDeviceSize
    let sequencesCountBuffer: VkBuffer
    let sequencesCountOffset: VkDeviceSize
    let sequencesIndexBuffer: VkBuffer
    let sequencesIndexOffset: VkDeviceSize

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkGeneratedCommandsInfoNV>) throws -> R) rethrows -> R {
        var cStruct = VkGeneratedCommandsInfoNV()
        cStruct.sType = VK_STRUCTURE_TYPE_GENERATED_COMMANDS_INFO_NV
        cStruct.pNext = nil
        cStruct.pipelineBindPoint = self.pipelineBindPoint
        cStruct.pipeline = self.pipeline
        cStruct.indirectCommandsLayout = self.indirectCommandsLayout
        cStruct.streamCount = self.streamCount
        cStruct.pStreams = self.pStreams
        cStruct.sequencesCount = self.sequencesCount
        cStruct.preprocessBuffer = self.preprocessBuffer
        cStruct.preprocessOffset = self.preprocessOffset
        cStruct.preprocessSize = self.preprocessSize
        cStruct.sequencesCountBuffer = self.sequencesCountBuffer
        cStruct.sequencesCountOffset = self.sequencesCountOffset
        cStruct.sequencesIndexBuffer = self.sequencesIndexBuffer
        cStruct.sequencesIndexOffset = self.sequencesIndexOffset
        return try body(&cStruct)
    }
}

struct GeneratedCommandsMemoryRequirementsInfoNV: CStructConvertible {
    typealias CStruct = VkGeneratedCommandsMemoryRequirementsInfoNV

    let pipelineBindPoint: VkPipelineBindPoint
    let pipeline: VkPipeline
    let indirectCommandsLayout: VkIndirectCommandsLayoutNV
    let maxSequencesCount: UInt32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkGeneratedCommandsMemoryRequirementsInfoNV>) throws -> R) rethrows -> R {
        var cStruct = VkGeneratedCommandsMemoryRequirementsInfoNV()
        cStruct.sType = VK_STRUCTURE_TYPE_GENERATED_COMMANDS_MEMORY_REQUIREMENTS_INFO_NV
        cStruct.pNext = nil
        cStruct.pipelineBindPoint = self.pipelineBindPoint
        cStruct.pipeline = self.pipeline
        cStruct.indirectCommandsLayout = self.indirectCommandsLayout
        cStruct.maxSequencesCount = self.maxSequencesCount
        return try body(&cStruct)
    }
}

struct PhysicalDeviceFeatures2: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceFeatures2

    let features: VkPhysicalDeviceFeatures

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceFeatures2>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceFeatures2()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FEATURES_2
        cStruct.pNext = nil
        cStruct.features = self.features
        return try body(&cStruct)
    }
}

struct PhysicalDeviceProperties2: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceProperties2

    let properties: VkPhysicalDeviceProperties

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceProperties2>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceProperties2()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PROPERTIES_2
        cStruct.pNext = nil
        cStruct.properties = self.properties
        return try body(&cStruct)
    }
}

struct FormatProperties2: CStructConvertible {
    typealias CStruct = VkFormatProperties2

    let formatProperties: VkFormatProperties

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkFormatProperties2>) throws -> R) rethrows -> R {
        var cStruct = VkFormatProperties2()
        cStruct.sType = VK_STRUCTURE_TYPE_FORMAT_PROPERTIES_2
        cStruct.pNext = nil
        cStruct.formatProperties = self.formatProperties
        return try body(&cStruct)
    }
}

struct ImageFormatProperties2: CStructConvertible {
    typealias CStruct = VkImageFormatProperties2

    let imageFormatProperties: VkImageFormatProperties

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkImageFormatProperties2>) throws -> R) rethrows -> R {
        var cStruct = VkImageFormatProperties2()
        cStruct.sType = VK_STRUCTURE_TYPE_IMAGE_FORMAT_PROPERTIES_2
        cStruct.pNext = nil
        cStruct.imageFormatProperties = self.imageFormatProperties
        return try body(&cStruct)
    }
}

struct PhysicalDeviceImageFormatInfo2: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceImageFormatInfo2

    let format: VkFormat
    let type: VkImageType
    let tiling: VkImageTiling
    let usage: VkImageUsageFlags
    let flags: VkImageCreateFlags

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceImageFormatInfo2>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceImageFormatInfo2()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_FORMAT_INFO_2
        cStruct.pNext = nil
        cStruct.format = self.format
        cStruct.type = self.type
        cStruct.tiling = self.tiling
        cStruct.usage = self.usage
        cStruct.flags = self.flags
        return try body(&cStruct)
    }
}

struct QueueFamilyProperties2: CStructConvertible {
    typealias CStruct = VkQueueFamilyProperties2

    let queueFamilyProperties: VkQueueFamilyProperties

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkQueueFamilyProperties2>) throws -> R) rethrows -> R {
        var cStruct = VkQueueFamilyProperties2()
        cStruct.sType = VK_STRUCTURE_TYPE_QUEUE_FAMILY_PROPERTIES_2
        cStruct.pNext = nil
        cStruct.queueFamilyProperties = self.queueFamilyProperties
        return try body(&cStruct)
    }
}

struct PhysicalDeviceMemoryProperties2: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceMemoryProperties2

    let memoryProperties: VkPhysicalDeviceMemoryProperties

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceMemoryProperties2>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceMemoryProperties2()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MEMORY_PROPERTIES_2
        cStruct.pNext = nil
        cStruct.memoryProperties = self.memoryProperties
        return try body(&cStruct)
    }
}

struct SparseImageFormatProperties2: CStructConvertible {
    typealias CStruct = VkSparseImageFormatProperties2

    let properties: VkSparseImageFormatProperties

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkSparseImageFormatProperties2>) throws -> R) rethrows -> R {
        var cStruct = VkSparseImageFormatProperties2()
        cStruct.sType = VK_STRUCTURE_TYPE_SPARSE_IMAGE_FORMAT_PROPERTIES_2
        cStruct.pNext = nil
        cStruct.properties = self.properties
        return try body(&cStruct)
    }
}

struct PhysicalDeviceSparseImageFormatInfo2: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceSparseImageFormatInfo2

    let format: VkFormat
    let type: VkImageType
    let samples: VkSampleCountFlagBits
    let usage: VkImageUsageFlags
    let tiling: VkImageTiling

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceSparseImageFormatInfo2>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceSparseImageFormatInfo2()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SPARSE_IMAGE_FORMAT_INFO_2
        cStruct.pNext = nil
        cStruct.format = self.format
        cStruct.type = self.type
        cStruct.samples = self.samples
        cStruct.usage = self.usage
        cStruct.tiling = self.tiling
        return try body(&cStruct)
    }
}

struct PhysicalDevicePushDescriptorPropertiesKHR: CStructConvertible {
    typealias CStruct = VkPhysicalDevicePushDescriptorPropertiesKHR

    let maxPushDescriptors: UInt32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDevicePushDescriptorPropertiesKHR>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDevicePushDescriptorPropertiesKHR()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PUSH_DESCRIPTOR_PROPERTIES_KHR
        cStruct.pNext = nil
        cStruct.maxPushDescriptors = self.maxPushDescriptors
        return try body(&cStruct)
    }
}

struct ConformanceVersion: CStructConvertible {
    typealias CStruct = VkConformanceVersion

    let major: UInt8
    let minor: UInt8
    let subminor: UInt8
    let patch: UInt8

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkConformanceVersion>) throws -> R) rethrows -> R {
        var cStruct = VkConformanceVersion()
        cStruct.major = self.major
        cStruct.minor = self.minor
        cStruct.subminor = self.subminor
        cStruct.patch = self.patch
        return try body(&cStruct)
    }
}

struct PhysicalDeviceDriverProperties: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceDriverProperties

    let driverID: VkDriverId
    let driverName: (CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar)
    let driverInfo: (CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar)
    let conformanceVersion: VkConformanceVersion

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceDriverProperties>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceDriverProperties()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DRIVER_PROPERTIES
        cStruct.pNext = nil
        cStruct.driverID = self.driverID
        cStruct.driverName = self.driverName
        cStruct.driverInfo = self.driverInfo
        cStruct.conformanceVersion = self.conformanceVersion
        return try body(&cStruct)
    }
}

struct PresentRegionsKHR: CStructConvertible {
    typealias CStruct = VkPresentRegionsKHR

    let swapchainCount: UInt32
    let pRegions: UnsafePointer<VkPresentRegionKHR>

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPresentRegionsKHR>) throws -> R) rethrows -> R {
        var cStruct = VkPresentRegionsKHR()
        cStruct.sType = VK_STRUCTURE_TYPE_PRESENT_REGIONS_KHR
        cStruct.pNext = nil
        cStruct.swapchainCount = self.swapchainCount
        cStruct.pRegions = self.pRegions
        return try body(&cStruct)
    }
}

struct PresentRegionKHR: CStructConvertible {
    typealias CStruct = VkPresentRegionKHR

    let rectangleCount: UInt32
    let pRectangles: UnsafePointer<VkRectLayerKHR>

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPresentRegionKHR>) throws -> R) rethrows -> R {
        var cStruct = VkPresentRegionKHR()
        cStruct.rectangleCount = self.rectangleCount
        cStruct.pRectangles = self.pRectangles
        return try body(&cStruct)
    }
}

struct RectLayerKHR: CStructConvertible {
    typealias CStruct = VkRectLayerKHR

    let offset: VkOffset2D
    let extent: VkExtent2D
    let layer: UInt32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkRectLayerKHR>) throws -> R) rethrows -> R {
        var cStruct = VkRectLayerKHR()
        cStruct.offset = self.offset
        cStruct.extent = self.extent
        cStruct.layer = self.layer
        return try body(&cStruct)
    }
}

struct PhysicalDeviceVariablePointersFeatures: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceVariablePointersFeatures

    let variablePointersStorageBuffer: VkBool32
    let variablePointers: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceVariablePointersFeatures>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceVariablePointersFeatures()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VARIABLE_POINTERS_FEATURES
        cStruct.pNext = nil
        cStruct.variablePointersStorageBuffer = self.variablePointersStorageBuffer
        cStruct.variablePointers = self.variablePointers
        return try body(&cStruct)
    }
}

struct ExternalMemoryProperties: CStructConvertible {
    typealias CStruct = VkExternalMemoryProperties

    let externalMemoryFeatures: VkExternalMemoryFeatureFlags
    let exportFromImportedHandleTypes: VkExternalMemoryHandleTypeFlags
    let compatibleHandleTypes: VkExternalMemoryHandleTypeFlags

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkExternalMemoryProperties>) throws -> R) rethrows -> R {
        var cStruct = VkExternalMemoryProperties()
        cStruct.externalMemoryFeatures = self.externalMemoryFeatures
        cStruct.exportFromImportedHandleTypes = self.exportFromImportedHandleTypes
        cStruct.compatibleHandleTypes = self.compatibleHandleTypes
        return try body(&cStruct)
    }
}

struct PhysicalDeviceExternalImageFormatInfo: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceExternalImageFormatInfo

    let handleType: VkExternalMemoryHandleTypeFlagBits

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceExternalImageFormatInfo>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceExternalImageFormatInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_IMAGE_FORMAT_INFO
        cStruct.pNext = nil
        cStruct.handleType = self.handleType
        return try body(&cStruct)
    }
}

struct ExternalImageFormatProperties: CStructConvertible {
    typealias CStruct = VkExternalImageFormatProperties

    let externalMemoryProperties: VkExternalMemoryProperties

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkExternalImageFormatProperties>) throws -> R) rethrows -> R {
        var cStruct = VkExternalImageFormatProperties()
        cStruct.sType = VK_STRUCTURE_TYPE_EXTERNAL_IMAGE_FORMAT_PROPERTIES
        cStruct.pNext = nil
        cStruct.externalMemoryProperties = self.externalMemoryProperties
        return try body(&cStruct)
    }
}

struct PhysicalDeviceExternalBufferInfo: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceExternalBufferInfo

    let flags: VkBufferCreateFlags
    let usage: VkBufferUsageFlags
    let handleType: VkExternalMemoryHandleTypeFlagBits

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceExternalBufferInfo>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceExternalBufferInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_BUFFER_INFO
        cStruct.pNext = nil
        cStruct.flags = self.flags
        cStruct.usage = self.usage
        cStruct.handleType = self.handleType
        return try body(&cStruct)
    }
}

struct ExternalBufferProperties: CStructConvertible {
    typealias CStruct = VkExternalBufferProperties

    let externalMemoryProperties: VkExternalMemoryProperties

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkExternalBufferProperties>) throws -> R) rethrows -> R {
        var cStruct = VkExternalBufferProperties()
        cStruct.sType = VK_STRUCTURE_TYPE_EXTERNAL_BUFFER_PROPERTIES
        cStruct.pNext = nil
        cStruct.externalMemoryProperties = self.externalMemoryProperties
        return try body(&cStruct)
    }
}

struct PhysicalDeviceIDProperties: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceIDProperties

    let deviceUUID: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
    let driverUUID: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
    let deviceLUID: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
    let deviceNodeMask: UInt32
    let deviceLUIDValid: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceIDProperties>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceIDProperties()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_ID_PROPERTIES
        cStruct.pNext = nil
        cStruct.deviceUUID = self.deviceUUID
        cStruct.driverUUID = self.driverUUID
        cStruct.deviceLUID = self.deviceLUID
        cStruct.deviceNodeMask = self.deviceNodeMask
        cStruct.deviceLUIDValid = self.deviceLUIDValid
        return try body(&cStruct)
    }
}

struct ExternalMemoryImageCreateInfo: CStructConvertible {
    typealias CStruct = VkExternalMemoryImageCreateInfo

    let handleTypes: VkExternalMemoryHandleTypeFlags

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkExternalMemoryImageCreateInfo>) throws -> R) rethrows -> R {
        var cStruct = VkExternalMemoryImageCreateInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_EXTERNAL_MEMORY_IMAGE_CREATE_INFO
        cStruct.pNext = nil
        cStruct.handleTypes = self.handleTypes
        return try body(&cStruct)
    }
}

struct ExternalMemoryBufferCreateInfo: CStructConvertible {
    typealias CStruct = VkExternalMemoryBufferCreateInfo

    let handleTypes: VkExternalMemoryHandleTypeFlags

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkExternalMemoryBufferCreateInfo>) throws -> R) rethrows -> R {
        var cStruct = VkExternalMemoryBufferCreateInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_EXTERNAL_MEMORY_BUFFER_CREATE_INFO
        cStruct.pNext = nil
        cStruct.handleTypes = self.handleTypes
        return try body(&cStruct)
    }
}

struct ExportMemoryAllocateInfo: CStructConvertible {
    typealias CStruct = VkExportMemoryAllocateInfo

    let handleTypes: VkExternalMemoryHandleTypeFlags

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkExportMemoryAllocateInfo>) throws -> R) rethrows -> R {
        var cStruct = VkExportMemoryAllocateInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_EXPORT_MEMORY_ALLOCATE_INFO
        cStruct.pNext = nil
        cStruct.handleTypes = self.handleTypes
        return try body(&cStruct)
    }
}

struct ImportMemoryFdInfoKHR: CStructConvertible {
    typealias CStruct = VkImportMemoryFdInfoKHR

    let handleType: VkExternalMemoryHandleTypeFlagBits
    let fd: Int32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkImportMemoryFdInfoKHR>) throws -> R) rethrows -> R {
        var cStruct = VkImportMemoryFdInfoKHR()
        cStruct.sType = VK_STRUCTURE_TYPE_IMPORT_MEMORY_FD_INFO_KHR
        cStruct.pNext = nil
        cStruct.handleType = self.handleType
        cStruct.fd = self.fd
        return try body(&cStruct)
    }
}

struct MemoryFdPropertiesKHR: CStructConvertible {
    typealias CStruct = VkMemoryFdPropertiesKHR

    let memoryTypeBits: UInt32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkMemoryFdPropertiesKHR>) throws -> R) rethrows -> R {
        var cStruct = VkMemoryFdPropertiesKHR()
        cStruct.sType = VK_STRUCTURE_TYPE_MEMORY_FD_PROPERTIES_KHR
        cStruct.pNext = nil
        cStruct.memoryTypeBits = self.memoryTypeBits
        return try body(&cStruct)
    }
}

struct MemoryGetFdInfoKHR: CStructConvertible {
    typealias CStruct = VkMemoryGetFdInfoKHR

    let memory: VkDeviceMemory
    let handleType: VkExternalMemoryHandleTypeFlagBits

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkMemoryGetFdInfoKHR>) throws -> R) rethrows -> R {
        var cStruct = VkMemoryGetFdInfoKHR()
        cStruct.sType = VK_STRUCTURE_TYPE_MEMORY_GET_FD_INFO_KHR
        cStruct.pNext = nil
        cStruct.memory = self.memory
        cStruct.handleType = self.handleType
        return try body(&cStruct)
    }
}

struct PhysicalDeviceExternalSemaphoreInfo: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceExternalSemaphoreInfo

    let handleType: VkExternalSemaphoreHandleTypeFlagBits

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceExternalSemaphoreInfo>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceExternalSemaphoreInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_SEMAPHORE_INFO
        cStruct.pNext = nil
        cStruct.handleType = self.handleType
        return try body(&cStruct)
    }
}

struct ExternalSemaphoreProperties: CStructConvertible {
    typealias CStruct = VkExternalSemaphoreProperties

    let exportFromImportedHandleTypes: VkExternalSemaphoreHandleTypeFlags
    let compatibleHandleTypes: VkExternalSemaphoreHandleTypeFlags
    let externalSemaphoreFeatures: VkExternalSemaphoreFeatureFlags

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkExternalSemaphoreProperties>) throws -> R) rethrows -> R {
        var cStruct = VkExternalSemaphoreProperties()
        cStruct.sType = VK_STRUCTURE_TYPE_EXTERNAL_SEMAPHORE_PROPERTIES
        cStruct.pNext = nil
        cStruct.exportFromImportedHandleTypes = self.exportFromImportedHandleTypes
        cStruct.compatibleHandleTypes = self.compatibleHandleTypes
        cStruct.externalSemaphoreFeatures = self.externalSemaphoreFeatures
        return try body(&cStruct)
    }
}

struct ExportSemaphoreCreateInfo: CStructConvertible {
    typealias CStruct = VkExportSemaphoreCreateInfo

    let handleTypes: VkExternalSemaphoreHandleTypeFlags

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkExportSemaphoreCreateInfo>) throws -> R) rethrows -> R {
        var cStruct = VkExportSemaphoreCreateInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_EXPORT_SEMAPHORE_CREATE_INFO
        cStruct.pNext = nil
        cStruct.handleTypes = self.handleTypes
        return try body(&cStruct)
    }
}

struct ImportSemaphoreFdInfoKHR: CStructConvertible {
    typealias CStruct = VkImportSemaphoreFdInfoKHR

    let semaphore: VkSemaphore
    let flags: VkSemaphoreImportFlags
    let handleType: VkExternalSemaphoreHandleTypeFlagBits
    let fd: Int32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkImportSemaphoreFdInfoKHR>) throws -> R) rethrows -> R {
        var cStruct = VkImportSemaphoreFdInfoKHR()
        cStruct.sType = VK_STRUCTURE_TYPE_IMPORT_SEMAPHORE_FD_INFO_KHR
        cStruct.pNext = nil
        cStruct.semaphore = self.semaphore
        cStruct.flags = self.flags
        cStruct.handleType = self.handleType
        cStruct.fd = self.fd
        return try body(&cStruct)
    }
}

struct SemaphoreGetFdInfoKHR: CStructConvertible {
    typealias CStruct = VkSemaphoreGetFdInfoKHR

    let semaphore: VkSemaphore
    let handleType: VkExternalSemaphoreHandleTypeFlagBits

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkSemaphoreGetFdInfoKHR>) throws -> R) rethrows -> R {
        var cStruct = VkSemaphoreGetFdInfoKHR()
        cStruct.sType = VK_STRUCTURE_TYPE_SEMAPHORE_GET_FD_INFO_KHR
        cStruct.pNext = nil
        cStruct.semaphore = self.semaphore
        cStruct.handleType = self.handleType
        return try body(&cStruct)
    }
}

struct PhysicalDeviceExternalFenceInfo: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceExternalFenceInfo

    let handleType: VkExternalFenceHandleTypeFlagBits

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceExternalFenceInfo>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceExternalFenceInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_FENCE_INFO
        cStruct.pNext = nil
        cStruct.handleType = self.handleType
        return try body(&cStruct)
    }
}

struct ExternalFenceProperties: CStructConvertible {
    typealias CStruct = VkExternalFenceProperties

    let exportFromImportedHandleTypes: VkExternalFenceHandleTypeFlags
    let compatibleHandleTypes: VkExternalFenceHandleTypeFlags
    let externalFenceFeatures: VkExternalFenceFeatureFlags

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkExternalFenceProperties>) throws -> R) rethrows -> R {
        var cStruct = VkExternalFenceProperties()
        cStruct.sType = VK_STRUCTURE_TYPE_EXTERNAL_FENCE_PROPERTIES
        cStruct.pNext = nil
        cStruct.exportFromImportedHandleTypes = self.exportFromImportedHandleTypes
        cStruct.compatibleHandleTypes = self.compatibleHandleTypes
        cStruct.externalFenceFeatures = self.externalFenceFeatures
        return try body(&cStruct)
    }
}

struct ExportFenceCreateInfo: CStructConvertible {
    typealias CStruct = VkExportFenceCreateInfo

    let handleTypes: VkExternalFenceHandleTypeFlags

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkExportFenceCreateInfo>) throws -> R) rethrows -> R {
        var cStruct = VkExportFenceCreateInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_EXPORT_FENCE_CREATE_INFO
        cStruct.pNext = nil
        cStruct.handleTypes = self.handleTypes
        return try body(&cStruct)
    }
}

struct ImportFenceFdInfoKHR: CStructConvertible {
    typealias CStruct = VkImportFenceFdInfoKHR

    let fence: VkFence
    let flags: VkFenceImportFlags
    let handleType: VkExternalFenceHandleTypeFlagBits
    let fd: Int32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkImportFenceFdInfoKHR>) throws -> R) rethrows -> R {
        var cStruct = VkImportFenceFdInfoKHR()
        cStruct.sType = VK_STRUCTURE_TYPE_IMPORT_FENCE_FD_INFO_KHR
        cStruct.pNext = nil
        cStruct.fence = self.fence
        cStruct.flags = self.flags
        cStruct.handleType = self.handleType
        cStruct.fd = self.fd
        return try body(&cStruct)
    }
}

struct FenceGetFdInfoKHR: CStructConvertible {
    typealias CStruct = VkFenceGetFdInfoKHR

    let fence: VkFence
    let handleType: VkExternalFenceHandleTypeFlagBits

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkFenceGetFdInfoKHR>) throws -> R) rethrows -> R {
        var cStruct = VkFenceGetFdInfoKHR()
        cStruct.sType = VK_STRUCTURE_TYPE_FENCE_GET_FD_INFO_KHR
        cStruct.pNext = nil
        cStruct.fence = self.fence
        cStruct.handleType = self.handleType
        return try body(&cStruct)
    }
}

struct PhysicalDeviceMultiviewFeatures: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceMultiviewFeatures

    let multiview: VkBool32
    let multiviewGeometryShader: VkBool32
    let multiviewTessellationShader: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceMultiviewFeatures>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceMultiviewFeatures()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MULTIVIEW_FEATURES
        cStruct.pNext = nil
        cStruct.multiview = self.multiview
        cStruct.multiviewGeometryShader = self.multiviewGeometryShader
        cStruct.multiviewTessellationShader = self.multiviewTessellationShader
        return try body(&cStruct)
    }
}

struct PhysicalDeviceMultiviewProperties: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceMultiviewProperties

    let maxMultiviewViewCount: UInt32
    let maxMultiviewInstanceIndex: UInt32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceMultiviewProperties>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceMultiviewProperties()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MULTIVIEW_PROPERTIES
        cStruct.pNext = nil
        cStruct.maxMultiviewViewCount = self.maxMultiviewViewCount
        cStruct.maxMultiviewInstanceIndex = self.maxMultiviewInstanceIndex
        return try body(&cStruct)
    }
}

struct RenderPassMultiviewCreateInfo: CStructConvertible {
    typealias CStruct = VkRenderPassMultiviewCreateInfo

    let subpassCount: UInt32
    let pViewMasks: UnsafePointer<UInt32>
    let dependencyCount: UInt32
    let pViewOffsets: UnsafePointer<Int32>
    let correlationMaskCount: UInt32
    let pCorrelationMasks: UnsafePointer<UInt32>

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkRenderPassMultiviewCreateInfo>) throws -> R) rethrows -> R {
        var cStruct = VkRenderPassMultiviewCreateInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_RENDER_PASS_MULTIVIEW_CREATE_INFO
        cStruct.pNext = nil
        cStruct.subpassCount = self.subpassCount
        cStruct.pViewMasks = self.pViewMasks
        cStruct.dependencyCount = self.dependencyCount
        cStruct.pViewOffsets = self.pViewOffsets
        cStruct.correlationMaskCount = self.correlationMaskCount
        cStruct.pCorrelationMasks = self.pCorrelationMasks
        return try body(&cStruct)
    }
}

struct SurfaceCapabilities2EXT: CStructConvertible {
    typealias CStruct = VkSurfaceCapabilities2EXT

    let minImageCount: UInt32
    let maxImageCount: UInt32
    let currentExtent: VkExtent2D
    let minImageExtent: VkExtent2D
    let maxImageExtent: VkExtent2D
    let maxImageArrayLayers: UInt32
    let supportedTransforms: VkSurfaceTransformFlagsKHR
    let currentTransform: VkSurfaceTransformFlagBitsKHR
    let supportedCompositeAlpha: VkCompositeAlphaFlagsKHR
    let supportedUsageFlags: VkImageUsageFlags
    let supportedSurfaceCounters: VkSurfaceCounterFlagsEXT

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkSurfaceCapabilities2EXT>) throws -> R) rethrows -> R {
        var cStruct = VkSurfaceCapabilities2EXT()
        cStruct.sType = VK_STRUCTURE_TYPE_SURFACE_CAPABILITIES_2_EXT
        cStruct.pNext = nil
        cStruct.minImageCount = self.minImageCount
        cStruct.maxImageCount = self.maxImageCount
        cStruct.currentExtent = self.currentExtent
        cStruct.minImageExtent = self.minImageExtent
        cStruct.maxImageExtent = self.maxImageExtent
        cStruct.maxImageArrayLayers = self.maxImageArrayLayers
        cStruct.supportedTransforms = self.supportedTransforms
        cStruct.currentTransform = self.currentTransform
        cStruct.supportedCompositeAlpha = self.supportedCompositeAlpha
        cStruct.supportedUsageFlags = self.supportedUsageFlags
        cStruct.supportedSurfaceCounters = self.supportedSurfaceCounters
        return try body(&cStruct)
    }
}

struct DisplayPowerInfoEXT: CStructConvertible {
    typealias CStruct = VkDisplayPowerInfoEXT

    let powerState: VkDisplayPowerStateEXT

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkDisplayPowerInfoEXT>) throws -> R) rethrows -> R {
        var cStruct = VkDisplayPowerInfoEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_DISPLAY_POWER_INFO_EXT
        cStruct.pNext = nil
        cStruct.powerState = self.powerState
        return try body(&cStruct)
    }
}

struct DeviceEventInfoEXT: CStructConvertible {
    typealias CStruct = VkDeviceEventInfoEXT

    let deviceEvent: VkDeviceEventTypeEXT

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkDeviceEventInfoEXT>) throws -> R) rethrows -> R {
        var cStruct = VkDeviceEventInfoEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_DEVICE_EVENT_INFO_EXT
        cStruct.pNext = nil
        cStruct.deviceEvent = self.deviceEvent
        return try body(&cStruct)
    }
}

struct DisplayEventInfoEXT: CStructConvertible {
    typealias CStruct = VkDisplayEventInfoEXT

    let displayEvent: VkDisplayEventTypeEXT

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkDisplayEventInfoEXT>) throws -> R) rethrows -> R {
        var cStruct = VkDisplayEventInfoEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_DISPLAY_EVENT_INFO_EXT
        cStruct.pNext = nil
        cStruct.displayEvent = self.displayEvent
        return try body(&cStruct)
    }
}

struct SwapchainCounterCreateInfoEXT: CStructConvertible {
    typealias CStruct = VkSwapchainCounterCreateInfoEXT

    let surfaceCounters: VkSurfaceCounterFlagsEXT

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkSwapchainCounterCreateInfoEXT>) throws -> R) rethrows -> R {
        var cStruct = VkSwapchainCounterCreateInfoEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_SWAPCHAIN_COUNTER_CREATE_INFO_EXT
        cStruct.pNext = nil
        cStruct.surfaceCounters = self.surfaceCounters
        return try body(&cStruct)
    }
}

struct PhysicalDeviceGroupProperties: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceGroupProperties

    let physicalDeviceCount: UInt32
    let physicalDevices: (VkPhysicalDevice, VkPhysicalDevice, VkPhysicalDevice, VkPhysicalDevice, VkPhysicalDevice, VkPhysicalDevice, VkPhysicalDevice, VkPhysicalDevice, VkPhysicalDevice, VkPhysicalDevice, VkPhysicalDevice, VkPhysicalDevice, VkPhysicalDevice, VkPhysicalDevice, VkPhysicalDevice, VkPhysicalDevice, VkPhysicalDevice, VkPhysicalDevice, VkPhysicalDevice, VkPhysicalDevice, VkPhysicalDevice, VkPhysicalDevice, VkPhysicalDevice, VkPhysicalDevice, VkPhysicalDevice, VkPhysicalDevice, VkPhysicalDevice, VkPhysicalDevice, VkPhysicalDevice, VkPhysicalDevice, VkPhysicalDevice, VkPhysicalDevice)
    let subsetAllocation: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceGroupProperties>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceGroupProperties()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_GROUP_PROPERTIES
        cStruct.pNext = nil
        cStruct.physicalDeviceCount = self.physicalDeviceCount
        cStruct.physicalDevices = self.physicalDevices
        cStruct.subsetAllocation = self.subsetAllocation
        return try body(&cStruct)
    }
}

struct MemoryAllocateFlagsInfo: CStructConvertible {
    typealias CStruct = VkMemoryAllocateFlagsInfo

    let flags: VkMemoryAllocateFlags
    let deviceMask: UInt32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkMemoryAllocateFlagsInfo>) throws -> R) rethrows -> R {
        var cStruct = VkMemoryAllocateFlagsInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_FLAGS_INFO
        cStruct.pNext = nil
        cStruct.flags = self.flags
        cStruct.deviceMask = self.deviceMask
        return try body(&cStruct)
    }
}

struct BindBufferMemoryInfo: CStructConvertible {
    typealias CStruct = VkBindBufferMemoryInfo

    let buffer: VkBuffer
    let memory: VkDeviceMemory
    let memoryOffset: VkDeviceSize

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkBindBufferMemoryInfo>) throws -> R) rethrows -> R {
        var cStruct = VkBindBufferMemoryInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_BIND_BUFFER_MEMORY_INFO
        cStruct.pNext = nil
        cStruct.buffer = self.buffer
        cStruct.memory = self.memory
        cStruct.memoryOffset = self.memoryOffset
        return try body(&cStruct)
    }
}

struct BindBufferMemoryDeviceGroupInfo: CStructConvertible {
    typealias CStruct = VkBindBufferMemoryDeviceGroupInfo

    let deviceIndexCount: UInt32
    let pDeviceIndices: UnsafePointer<UInt32>

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkBindBufferMemoryDeviceGroupInfo>) throws -> R) rethrows -> R {
        var cStruct = VkBindBufferMemoryDeviceGroupInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_BIND_BUFFER_MEMORY_DEVICE_GROUP_INFO
        cStruct.pNext = nil
        cStruct.deviceIndexCount = self.deviceIndexCount
        cStruct.pDeviceIndices = self.pDeviceIndices
        return try body(&cStruct)
    }
}

struct BindImageMemoryInfo: CStructConvertible {
    typealias CStruct = VkBindImageMemoryInfo

    let image: VkImage
    let memory: VkDeviceMemory
    let memoryOffset: VkDeviceSize

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkBindImageMemoryInfo>) throws -> R) rethrows -> R {
        var cStruct = VkBindImageMemoryInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_BIND_IMAGE_MEMORY_INFO
        cStruct.pNext = nil
        cStruct.image = self.image
        cStruct.memory = self.memory
        cStruct.memoryOffset = self.memoryOffset
        return try body(&cStruct)
    }
}

struct BindImageMemoryDeviceGroupInfo: CStructConvertible {
    typealias CStruct = VkBindImageMemoryDeviceGroupInfo

    let deviceIndexCount: UInt32
    let pDeviceIndices: UnsafePointer<UInt32>
    let splitInstanceBindRegionCount: UInt32
    let pSplitInstanceBindRegions: UnsafePointer<VkRect2D>

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkBindImageMemoryDeviceGroupInfo>) throws -> R) rethrows -> R {
        var cStruct = VkBindImageMemoryDeviceGroupInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_BIND_IMAGE_MEMORY_DEVICE_GROUP_INFO
        cStruct.pNext = nil
        cStruct.deviceIndexCount = self.deviceIndexCount
        cStruct.pDeviceIndices = self.pDeviceIndices
        cStruct.splitInstanceBindRegionCount = self.splitInstanceBindRegionCount
        cStruct.pSplitInstanceBindRegions = self.pSplitInstanceBindRegions
        return try body(&cStruct)
    }
}

struct DeviceGroupRenderPassBeginInfo: CStructConvertible {
    typealias CStruct = VkDeviceGroupRenderPassBeginInfo

    let deviceMask: UInt32
    let deviceRenderAreaCount: UInt32
    let pDeviceRenderAreas: UnsafePointer<VkRect2D>

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkDeviceGroupRenderPassBeginInfo>) throws -> R) rethrows -> R {
        var cStruct = VkDeviceGroupRenderPassBeginInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_DEVICE_GROUP_RENDER_PASS_BEGIN_INFO
        cStruct.pNext = nil
        cStruct.deviceMask = self.deviceMask
        cStruct.deviceRenderAreaCount = self.deviceRenderAreaCount
        cStruct.pDeviceRenderAreas = self.pDeviceRenderAreas
        return try body(&cStruct)
    }
}

struct DeviceGroupCommandBufferBeginInfo: CStructConvertible {
    typealias CStruct = VkDeviceGroupCommandBufferBeginInfo

    let deviceMask: UInt32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkDeviceGroupCommandBufferBeginInfo>) throws -> R) rethrows -> R {
        var cStruct = VkDeviceGroupCommandBufferBeginInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_DEVICE_GROUP_COMMAND_BUFFER_BEGIN_INFO
        cStruct.pNext = nil
        cStruct.deviceMask = self.deviceMask
        return try body(&cStruct)
    }
}

struct DeviceGroupSubmitInfo: CStructConvertible {
    typealias CStruct = VkDeviceGroupSubmitInfo

    let waitSemaphoreCount: UInt32
    let pWaitSemaphoreDeviceIndices: UnsafePointer<UInt32>
    let commandBufferCount: UInt32
    let pCommandBufferDeviceMasks: UnsafePointer<UInt32>
    let signalSemaphoreCount: UInt32
    let pSignalSemaphoreDeviceIndices: UnsafePointer<UInt32>

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkDeviceGroupSubmitInfo>) throws -> R) rethrows -> R {
        var cStruct = VkDeviceGroupSubmitInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_DEVICE_GROUP_SUBMIT_INFO
        cStruct.pNext = nil
        cStruct.waitSemaphoreCount = self.waitSemaphoreCount
        cStruct.pWaitSemaphoreDeviceIndices = self.pWaitSemaphoreDeviceIndices
        cStruct.commandBufferCount = self.commandBufferCount
        cStruct.pCommandBufferDeviceMasks = self.pCommandBufferDeviceMasks
        cStruct.signalSemaphoreCount = self.signalSemaphoreCount
        cStruct.pSignalSemaphoreDeviceIndices = self.pSignalSemaphoreDeviceIndices
        return try body(&cStruct)
    }
}

struct DeviceGroupBindSparseInfo: CStructConvertible {
    typealias CStruct = VkDeviceGroupBindSparseInfo

    let resourceDeviceIndex: UInt32
    let memoryDeviceIndex: UInt32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkDeviceGroupBindSparseInfo>) throws -> R) rethrows -> R {
        var cStruct = VkDeviceGroupBindSparseInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_DEVICE_GROUP_BIND_SPARSE_INFO
        cStruct.pNext = nil
        cStruct.resourceDeviceIndex = self.resourceDeviceIndex
        cStruct.memoryDeviceIndex = self.memoryDeviceIndex
        return try body(&cStruct)
    }
}

struct DeviceGroupPresentCapabilitiesKHR: CStructConvertible {
    typealias CStruct = VkDeviceGroupPresentCapabilitiesKHR

    let presentMask: (UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32)
    let modes: VkDeviceGroupPresentModeFlagsKHR

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkDeviceGroupPresentCapabilitiesKHR>) throws -> R) rethrows -> R {
        var cStruct = VkDeviceGroupPresentCapabilitiesKHR()
        cStruct.sType = VK_STRUCTURE_TYPE_DEVICE_GROUP_PRESENT_CAPABILITIES_KHR
        cStruct.pNext = nil
        cStruct.presentMask = self.presentMask
        cStruct.modes = self.modes
        return try body(&cStruct)
    }
}

struct ImageSwapchainCreateInfoKHR: CStructConvertible {
    typealias CStruct = VkImageSwapchainCreateInfoKHR

    let swapchain: VkSwapchainKHR

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkImageSwapchainCreateInfoKHR>) throws -> R) rethrows -> R {
        var cStruct = VkImageSwapchainCreateInfoKHR()
        cStruct.sType = VK_STRUCTURE_TYPE_IMAGE_SWAPCHAIN_CREATE_INFO_KHR
        cStruct.pNext = nil
        cStruct.swapchain = self.swapchain
        return try body(&cStruct)
    }
}

struct BindImageMemorySwapchainInfoKHR: CStructConvertible {
    typealias CStruct = VkBindImageMemorySwapchainInfoKHR

    let swapchain: VkSwapchainKHR
    let imageIndex: UInt32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkBindImageMemorySwapchainInfoKHR>) throws -> R) rethrows -> R {
        var cStruct = VkBindImageMemorySwapchainInfoKHR()
        cStruct.sType = VK_STRUCTURE_TYPE_BIND_IMAGE_MEMORY_SWAPCHAIN_INFO_KHR
        cStruct.pNext = nil
        cStruct.swapchain = self.swapchain
        cStruct.imageIndex = self.imageIndex
        return try body(&cStruct)
    }
}

struct AcquireNextImageInfoKHR: CStructConvertible {
    typealias CStruct = VkAcquireNextImageInfoKHR

    let swapchain: VkSwapchainKHR
    let timeout: UInt64
    let semaphore: VkSemaphore
    let fence: VkFence
    let deviceMask: UInt32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkAcquireNextImageInfoKHR>) throws -> R) rethrows -> R {
        var cStruct = VkAcquireNextImageInfoKHR()
        cStruct.sType = VK_STRUCTURE_TYPE_ACQUIRE_NEXT_IMAGE_INFO_KHR
        cStruct.pNext = nil
        cStruct.swapchain = self.swapchain
        cStruct.timeout = self.timeout
        cStruct.semaphore = self.semaphore
        cStruct.fence = self.fence
        cStruct.deviceMask = self.deviceMask
        return try body(&cStruct)
    }
}

struct DeviceGroupPresentInfoKHR: CStructConvertible {
    typealias CStruct = VkDeviceGroupPresentInfoKHR

    let swapchainCount: UInt32
    let pDeviceMasks: UnsafePointer<UInt32>
    let mode: VkDeviceGroupPresentModeFlagBitsKHR

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkDeviceGroupPresentInfoKHR>) throws -> R) rethrows -> R {
        var cStruct = VkDeviceGroupPresentInfoKHR()
        cStruct.sType = VK_STRUCTURE_TYPE_DEVICE_GROUP_PRESENT_INFO_KHR
        cStruct.pNext = nil
        cStruct.swapchainCount = self.swapchainCount
        cStruct.pDeviceMasks = self.pDeviceMasks
        cStruct.mode = self.mode
        return try body(&cStruct)
    }
}

struct DeviceGroupDeviceCreateInfo: CStructConvertible {
    typealias CStruct = VkDeviceGroupDeviceCreateInfo

    let physicalDeviceCount: UInt32
    let pPhysicalDevices: UnsafePointer<VkPhysicalDevice?>

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkDeviceGroupDeviceCreateInfo>) throws -> R) rethrows -> R {
        var cStruct = VkDeviceGroupDeviceCreateInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_DEVICE_GROUP_DEVICE_CREATE_INFO
        cStruct.pNext = nil
        cStruct.physicalDeviceCount = self.physicalDeviceCount
        cStruct.pPhysicalDevices = self.pPhysicalDevices
        return try body(&cStruct)
    }
}

struct DeviceGroupSwapchainCreateInfoKHR: CStructConvertible {
    typealias CStruct = VkDeviceGroupSwapchainCreateInfoKHR

    let modes: VkDeviceGroupPresentModeFlagsKHR

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkDeviceGroupSwapchainCreateInfoKHR>) throws -> R) rethrows -> R {
        var cStruct = VkDeviceGroupSwapchainCreateInfoKHR()
        cStruct.sType = VK_STRUCTURE_TYPE_DEVICE_GROUP_SWAPCHAIN_CREATE_INFO_KHR
        cStruct.pNext = nil
        cStruct.modes = self.modes
        return try body(&cStruct)
    }
}

struct DescriptorUpdateTemplateEntry: CStructConvertible {
    typealias CStruct = VkDescriptorUpdateTemplateEntry

    let dstBinding: UInt32
    let dstArrayElement: UInt32
    let descriptorCount: UInt32
    let descriptorType: VkDescriptorType
    let offset: Int
    let stride: Int

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkDescriptorUpdateTemplateEntry>) throws -> R) rethrows -> R {
        var cStruct = VkDescriptorUpdateTemplateEntry()
        cStruct.dstBinding = self.dstBinding
        cStruct.dstArrayElement = self.dstArrayElement
        cStruct.descriptorCount = self.descriptorCount
        cStruct.descriptorType = self.descriptorType
        cStruct.offset = self.offset
        cStruct.stride = self.stride
        return try body(&cStruct)
    }
}

struct DescriptorUpdateTemplateCreateInfo: CStructConvertible {
    typealias CStruct = VkDescriptorUpdateTemplateCreateInfo

    let flags: VkDescriptorUpdateTemplateCreateFlags
    let descriptorUpdateEntryCount: UInt32
    let pDescriptorUpdateEntries: UnsafePointer<VkDescriptorUpdateTemplateEntry>
    let templateType: VkDescriptorUpdateTemplateType
    let descriptorSetLayout: VkDescriptorSetLayout
    let pipelineBindPoint: VkPipelineBindPoint
    let pipelineLayout: VkPipelineLayout
    let set: UInt32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkDescriptorUpdateTemplateCreateInfo>) throws -> R) rethrows -> R {
        var cStruct = VkDescriptorUpdateTemplateCreateInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_DESCRIPTOR_UPDATE_TEMPLATE_CREATE_INFO
        cStruct.pNext = nil
        cStruct.flags = self.flags
        cStruct.descriptorUpdateEntryCount = self.descriptorUpdateEntryCount
        cStruct.pDescriptorUpdateEntries = self.pDescriptorUpdateEntries
        cStruct.templateType = self.templateType
        cStruct.descriptorSetLayout = self.descriptorSetLayout
        cStruct.pipelineBindPoint = self.pipelineBindPoint
        cStruct.pipelineLayout = self.pipelineLayout
        cStruct.set = self.set
        return try body(&cStruct)
    }
}

struct XYColorEXT: CStructConvertible {
    typealias CStruct = VkXYColorEXT

    let x: Float
    let y: Float

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkXYColorEXT>) throws -> R) rethrows -> R {
        var cStruct = VkXYColorEXT()
        cStruct.x = self.x
        cStruct.y = self.y
        return try body(&cStruct)
    }
}

struct HdrMetadataEXT: CStructConvertible {
    typealias CStruct = VkHdrMetadataEXT

    let displayPrimaryRed: VkXYColorEXT
    let displayPrimaryGreen: VkXYColorEXT
    let displayPrimaryBlue: VkXYColorEXT
    let whitePoint: VkXYColorEXT
    let maxLuminance: Float
    let minLuminance: Float
    let maxContentLightLevel: Float
    let maxFrameAverageLightLevel: Float

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkHdrMetadataEXT>) throws -> R) rethrows -> R {
        var cStruct = VkHdrMetadataEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_HDR_METADATA_EXT
        cStruct.pNext = nil
        cStruct.displayPrimaryRed = self.displayPrimaryRed
        cStruct.displayPrimaryGreen = self.displayPrimaryGreen
        cStruct.displayPrimaryBlue = self.displayPrimaryBlue
        cStruct.whitePoint = self.whitePoint
        cStruct.maxLuminance = self.maxLuminance
        cStruct.minLuminance = self.minLuminance
        cStruct.maxContentLightLevel = self.maxContentLightLevel
        cStruct.maxFrameAverageLightLevel = self.maxFrameAverageLightLevel
        return try body(&cStruct)
    }
}

struct DisplayNativeHdrSurfaceCapabilitiesAMD: CStructConvertible {
    typealias CStruct = VkDisplayNativeHdrSurfaceCapabilitiesAMD

    let localDimmingSupport: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkDisplayNativeHdrSurfaceCapabilitiesAMD>) throws -> R) rethrows -> R {
        var cStruct = VkDisplayNativeHdrSurfaceCapabilitiesAMD()
        cStruct.sType = VK_STRUCTURE_TYPE_DISPLAY_NATIVE_HDR_SURFACE_CAPABILITIES_AMD
        cStruct.pNext = nil
        cStruct.localDimmingSupport = self.localDimmingSupport
        return try body(&cStruct)
    }
}

struct SwapchainDisplayNativeHdrCreateInfoAMD: CStructConvertible {
    typealias CStruct = VkSwapchainDisplayNativeHdrCreateInfoAMD

    let localDimmingEnable: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkSwapchainDisplayNativeHdrCreateInfoAMD>) throws -> R) rethrows -> R {
        var cStruct = VkSwapchainDisplayNativeHdrCreateInfoAMD()
        cStruct.sType = VK_STRUCTURE_TYPE_SWAPCHAIN_DISPLAY_NATIVE_HDR_CREATE_INFO_AMD
        cStruct.pNext = nil
        cStruct.localDimmingEnable = self.localDimmingEnable
        return try body(&cStruct)
    }
}

struct RefreshCycleDurationGOOGLE: CStructConvertible {
    typealias CStruct = VkRefreshCycleDurationGOOGLE

    let refreshDuration: UInt64

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkRefreshCycleDurationGOOGLE>) throws -> R) rethrows -> R {
        var cStruct = VkRefreshCycleDurationGOOGLE()
        cStruct.refreshDuration = self.refreshDuration
        return try body(&cStruct)
    }
}

struct PastPresentationTimingGOOGLE: CStructConvertible {
    typealias CStruct = VkPastPresentationTimingGOOGLE

    let presentID: UInt32
    let desiredPresentTime: UInt64
    let actualPresentTime: UInt64
    let earliestPresentTime: UInt64
    let presentMargin: UInt64

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPastPresentationTimingGOOGLE>) throws -> R) rethrows -> R {
        var cStruct = VkPastPresentationTimingGOOGLE()
        cStruct.presentID = self.presentID
        cStruct.desiredPresentTime = self.desiredPresentTime
        cStruct.actualPresentTime = self.actualPresentTime
        cStruct.earliestPresentTime = self.earliestPresentTime
        cStruct.presentMargin = self.presentMargin
        return try body(&cStruct)
    }
}

struct PresentTimesInfoGOOGLE: CStructConvertible {
    typealias CStruct = VkPresentTimesInfoGOOGLE

    let swapchainCount: UInt32
    let pTimes: UnsafePointer<VkPresentTimeGOOGLE>

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPresentTimesInfoGOOGLE>) throws -> R) rethrows -> R {
        var cStruct = VkPresentTimesInfoGOOGLE()
        cStruct.sType = VK_STRUCTURE_TYPE_PRESENT_TIMES_INFO_GOOGLE
        cStruct.pNext = nil
        cStruct.swapchainCount = self.swapchainCount
        cStruct.pTimes = self.pTimes
        return try body(&cStruct)
    }
}

struct PresentTimeGOOGLE: CStructConvertible {
    typealias CStruct = VkPresentTimeGOOGLE

    let presentID: UInt32
    let desiredPresentTime: UInt64

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPresentTimeGOOGLE>) throws -> R) rethrows -> R {
        var cStruct = VkPresentTimeGOOGLE()
        cStruct.presentID = self.presentID
        cStruct.desiredPresentTime = self.desiredPresentTime
        return try body(&cStruct)
    }
}

struct ViewportWScalingNV: CStructConvertible {
    typealias CStruct = VkViewportWScalingNV

    let xcoeff: Float
    let ycoeff: Float

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkViewportWScalingNV>) throws -> R) rethrows -> R {
        var cStruct = VkViewportWScalingNV()
        cStruct.xcoeff = self.xcoeff
        cStruct.ycoeff = self.ycoeff
        return try body(&cStruct)
    }
}

struct PipelineViewportWScalingStateCreateInfoNV: CStructConvertible {
    typealias CStruct = VkPipelineViewportWScalingStateCreateInfoNV

    let viewportWScalingEnable: VkBool32
    let viewportCount: UInt32
    let pViewportWScalings: UnsafePointer<VkViewportWScalingNV>

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPipelineViewportWScalingStateCreateInfoNV>) throws -> R) rethrows -> R {
        var cStruct = VkPipelineViewportWScalingStateCreateInfoNV()
        cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_W_SCALING_STATE_CREATE_INFO_NV
        cStruct.pNext = nil
        cStruct.viewportWScalingEnable = self.viewportWScalingEnable
        cStruct.viewportCount = self.viewportCount
        cStruct.pViewportWScalings = self.pViewportWScalings
        return try body(&cStruct)
    }
}

struct ViewportSwizzleNV: CStructConvertible {
    typealias CStruct = VkViewportSwizzleNV

    let x: VkViewportCoordinateSwizzleNV
    let y: VkViewportCoordinateSwizzleNV
    let z: VkViewportCoordinateSwizzleNV
    let w: VkViewportCoordinateSwizzleNV

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkViewportSwizzleNV>) throws -> R) rethrows -> R {
        var cStruct = VkViewportSwizzleNV()
        cStruct.x = self.x
        cStruct.y = self.y
        cStruct.z = self.z
        cStruct.w = self.w
        return try body(&cStruct)
    }
}

struct PipelineViewportSwizzleStateCreateInfoNV: CStructConvertible {
    typealias CStruct = VkPipelineViewportSwizzleStateCreateInfoNV

    let flags: VkPipelineViewportSwizzleStateCreateFlagsNV
    let viewportCount: UInt32
    let pViewportSwizzles: UnsafePointer<VkViewportSwizzleNV>

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPipelineViewportSwizzleStateCreateInfoNV>) throws -> R) rethrows -> R {
        var cStruct = VkPipelineViewportSwizzleStateCreateInfoNV()
        cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_SWIZZLE_STATE_CREATE_INFO_NV
        cStruct.pNext = nil
        cStruct.flags = self.flags
        cStruct.viewportCount = self.viewportCount
        cStruct.pViewportSwizzles = self.pViewportSwizzles
        return try body(&cStruct)
    }
}

struct PhysicalDeviceDiscardRectanglePropertiesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceDiscardRectanglePropertiesEXT

    let maxDiscardRectangles: UInt32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceDiscardRectanglePropertiesEXT>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceDiscardRectanglePropertiesEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DISCARD_RECTANGLE_PROPERTIES_EXT
        cStruct.pNext = nil
        cStruct.maxDiscardRectangles = self.maxDiscardRectangles
        return try body(&cStruct)
    }
}

struct PipelineDiscardRectangleStateCreateInfoEXT: CStructConvertible {
    typealias CStruct = VkPipelineDiscardRectangleStateCreateInfoEXT

    let flags: VkPipelineDiscardRectangleStateCreateFlagsEXT
    let discardRectangleMode: VkDiscardRectangleModeEXT
    let discardRectangleCount: UInt32
    let pDiscardRectangles: UnsafePointer<VkRect2D>

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPipelineDiscardRectangleStateCreateInfoEXT>) throws -> R) rethrows -> R {
        var cStruct = VkPipelineDiscardRectangleStateCreateInfoEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_DISCARD_RECTANGLE_STATE_CREATE_INFO_EXT
        cStruct.pNext = nil
        cStruct.flags = self.flags
        cStruct.discardRectangleMode = self.discardRectangleMode
        cStruct.discardRectangleCount = self.discardRectangleCount
        cStruct.pDiscardRectangles = self.pDiscardRectangles
        return try body(&cStruct)
    }
}

struct PhysicalDeviceMultiviewPerViewAttributesPropertiesNVX: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceMultiviewPerViewAttributesPropertiesNVX

    let perViewPositionAllComponents: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceMultiviewPerViewAttributesPropertiesNVX>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceMultiviewPerViewAttributesPropertiesNVX()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MULTIVIEW_PER_VIEW_ATTRIBUTES_PROPERTIES_NVX
        cStruct.pNext = nil
        cStruct.perViewPositionAllComponents = self.perViewPositionAllComponents
        return try body(&cStruct)
    }
}

struct InputAttachmentAspectReference: CStructConvertible {
    typealias CStruct = VkInputAttachmentAspectReference

    let subpass: UInt32
    let inputAttachmentIndex: UInt32
    let aspectMask: VkImageAspectFlags

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkInputAttachmentAspectReference>) throws -> R) rethrows -> R {
        var cStruct = VkInputAttachmentAspectReference()
        cStruct.subpass = self.subpass
        cStruct.inputAttachmentIndex = self.inputAttachmentIndex
        cStruct.aspectMask = self.aspectMask
        return try body(&cStruct)
    }
}

struct RenderPassInputAttachmentAspectCreateInfo: CStructConvertible {
    typealias CStruct = VkRenderPassInputAttachmentAspectCreateInfo

    let aspectReferenceCount: UInt32
    let pAspectReferences: UnsafePointer<VkInputAttachmentAspectReference>

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkRenderPassInputAttachmentAspectCreateInfo>) throws -> R) rethrows -> R {
        var cStruct = VkRenderPassInputAttachmentAspectCreateInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_RENDER_PASS_INPUT_ATTACHMENT_ASPECT_CREATE_INFO
        cStruct.pNext = nil
        cStruct.aspectReferenceCount = self.aspectReferenceCount
        cStruct.pAspectReferences = self.pAspectReferences
        return try body(&cStruct)
    }
}

struct PhysicalDeviceSurfaceInfo2KHR: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceSurfaceInfo2KHR

    let surface: VkSurfaceKHR

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceSurfaceInfo2KHR>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceSurfaceInfo2KHR()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SURFACE_INFO_2_KHR
        cStruct.pNext = nil
        cStruct.surface = self.surface
        return try body(&cStruct)
    }
}

struct SurfaceCapabilities2KHR: CStructConvertible {
    typealias CStruct = VkSurfaceCapabilities2KHR

    let surfaceCapabilities: VkSurfaceCapabilitiesKHR

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkSurfaceCapabilities2KHR>) throws -> R) rethrows -> R {
        var cStruct = VkSurfaceCapabilities2KHR()
        cStruct.sType = VK_STRUCTURE_TYPE_SURFACE_CAPABILITIES_2_KHR
        cStruct.pNext = nil
        cStruct.surfaceCapabilities = self.surfaceCapabilities
        return try body(&cStruct)
    }
}

struct SurfaceFormat2KHR: CStructConvertible {
    typealias CStruct = VkSurfaceFormat2KHR

    let surfaceFormat: VkSurfaceFormatKHR

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkSurfaceFormat2KHR>) throws -> R) rethrows -> R {
        var cStruct = VkSurfaceFormat2KHR()
        cStruct.sType = VK_STRUCTURE_TYPE_SURFACE_FORMAT_2_KHR
        cStruct.pNext = nil
        cStruct.surfaceFormat = self.surfaceFormat
        return try body(&cStruct)
    }
}

struct DisplayProperties2KHR: CStructConvertible {
    typealias CStruct = VkDisplayProperties2KHR

    let displayProperties: VkDisplayPropertiesKHR

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkDisplayProperties2KHR>) throws -> R) rethrows -> R {
        var cStruct = VkDisplayProperties2KHR()
        cStruct.sType = VK_STRUCTURE_TYPE_DISPLAY_PROPERTIES_2_KHR
        cStruct.pNext = nil
        cStruct.displayProperties = self.displayProperties
        return try body(&cStruct)
    }
}

struct DisplayPlaneProperties2KHR: CStructConvertible {
    typealias CStruct = VkDisplayPlaneProperties2KHR

    let displayPlaneProperties: VkDisplayPlanePropertiesKHR

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkDisplayPlaneProperties2KHR>) throws -> R) rethrows -> R {
        var cStruct = VkDisplayPlaneProperties2KHR()
        cStruct.sType = VK_STRUCTURE_TYPE_DISPLAY_PLANE_PROPERTIES_2_KHR
        cStruct.pNext = nil
        cStruct.displayPlaneProperties = self.displayPlaneProperties
        return try body(&cStruct)
    }
}

struct DisplayModeProperties2KHR: CStructConvertible {
    typealias CStruct = VkDisplayModeProperties2KHR

    let displayModeProperties: VkDisplayModePropertiesKHR

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkDisplayModeProperties2KHR>) throws -> R) rethrows -> R {
        var cStruct = VkDisplayModeProperties2KHR()
        cStruct.sType = VK_STRUCTURE_TYPE_DISPLAY_MODE_PROPERTIES_2_KHR
        cStruct.pNext = nil
        cStruct.displayModeProperties = self.displayModeProperties
        return try body(&cStruct)
    }
}

struct DisplayPlaneInfo2KHR: CStructConvertible {
    typealias CStruct = VkDisplayPlaneInfo2KHR

    let mode: VkDisplayModeKHR
    let planeIndex: UInt32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkDisplayPlaneInfo2KHR>) throws -> R) rethrows -> R {
        var cStruct = VkDisplayPlaneInfo2KHR()
        cStruct.sType = VK_STRUCTURE_TYPE_DISPLAY_PLANE_INFO_2_KHR
        cStruct.pNext = nil
        cStruct.mode = self.mode
        cStruct.planeIndex = self.planeIndex
        return try body(&cStruct)
    }
}

struct DisplayPlaneCapabilities2KHR: CStructConvertible {
    typealias CStruct = VkDisplayPlaneCapabilities2KHR

    let capabilities: VkDisplayPlaneCapabilitiesKHR

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkDisplayPlaneCapabilities2KHR>) throws -> R) rethrows -> R {
        var cStruct = VkDisplayPlaneCapabilities2KHR()
        cStruct.sType = VK_STRUCTURE_TYPE_DISPLAY_PLANE_CAPABILITIES_2_KHR
        cStruct.pNext = nil
        cStruct.capabilities = self.capabilities
        return try body(&cStruct)
    }
}

struct SharedPresentSurfaceCapabilitiesKHR: CStructConvertible {
    typealias CStruct = VkSharedPresentSurfaceCapabilitiesKHR

    let sharedPresentSupportedUsageFlags: VkImageUsageFlags

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkSharedPresentSurfaceCapabilitiesKHR>) throws -> R) rethrows -> R {
        var cStruct = VkSharedPresentSurfaceCapabilitiesKHR()
        cStruct.sType = VK_STRUCTURE_TYPE_SHARED_PRESENT_SURFACE_CAPABILITIES_KHR
        cStruct.pNext = nil
        cStruct.sharedPresentSupportedUsageFlags = self.sharedPresentSupportedUsageFlags
        return try body(&cStruct)
    }
}

struct PhysicalDevice16BitStorageFeatures: CStructConvertible {
    typealias CStruct = VkPhysicalDevice16BitStorageFeatures

    let storageBuffer16BitAccess: VkBool32
    let uniformAndStorageBuffer16BitAccess: VkBool32
    let storagePushConstant16: VkBool32
    let storageInputOutput16: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDevice16BitStorageFeatures>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDevice16BitStorageFeatures()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_16BIT_STORAGE_FEATURES
        cStruct.pNext = nil
        cStruct.storageBuffer16BitAccess = self.storageBuffer16BitAccess
        cStruct.uniformAndStorageBuffer16BitAccess = self.uniformAndStorageBuffer16BitAccess
        cStruct.storagePushConstant16 = self.storagePushConstant16
        cStruct.storageInputOutput16 = self.storageInputOutput16
        return try body(&cStruct)
    }
}

struct PhysicalDeviceSubgroupProperties: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceSubgroupProperties

    let subgroupSize: UInt32
    let supportedStages: VkShaderStageFlags
    let supportedOperations: VkSubgroupFeatureFlags
    let quadOperationsInAllStages: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceSubgroupProperties>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceSubgroupProperties()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SUBGROUP_PROPERTIES
        cStruct.pNext = nil
        cStruct.subgroupSize = self.subgroupSize
        cStruct.supportedStages = self.supportedStages
        cStruct.supportedOperations = self.supportedOperations
        cStruct.quadOperationsInAllStages = self.quadOperationsInAllStages
        return try body(&cStruct)
    }
}

struct PhysicalDeviceShaderSubgroupExtendedTypesFeatures: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceShaderSubgroupExtendedTypesFeatures

    let shaderSubgroupExtendedTypes: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceShaderSubgroupExtendedTypesFeatures>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceShaderSubgroupExtendedTypesFeatures()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_SUBGROUP_EXTENDED_TYPES_FEATURES
        cStruct.pNext = nil
        cStruct.shaderSubgroupExtendedTypes = self.shaderSubgroupExtendedTypes
        return try body(&cStruct)
    }
}

struct BufferMemoryRequirementsInfo2: CStructConvertible {
    typealias CStruct = VkBufferMemoryRequirementsInfo2

    let buffer: VkBuffer

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkBufferMemoryRequirementsInfo2>) throws -> R) rethrows -> R {
        var cStruct = VkBufferMemoryRequirementsInfo2()
        cStruct.sType = VK_STRUCTURE_TYPE_BUFFER_MEMORY_REQUIREMENTS_INFO_2
        cStruct.pNext = nil
        cStruct.buffer = self.buffer
        return try body(&cStruct)
    }
}

struct ImageMemoryRequirementsInfo2: CStructConvertible {
    typealias CStruct = VkImageMemoryRequirementsInfo2

    let image: VkImage

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkImageMemoryRequirementsInfo2>) throws -> R) rethrows -> R {
        var cStruct = VkImageMemoryRequirementsInfo2()
        cStruct.sType = VK_STRUCTURE_TYPE_IMAGE_MEMORY_REQUIREMENTS_INFO_2
        cStruct.pNext = nil
        cStruct.image = self.image
        return try body(&cStruct)
    }
}

struct ImageSparseMemoryRequirementsInfo2: CStructConvertible {
    typealias CStruct = VkImageSparseMemoryRequirementsInfo2

    let image: VkImage

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkImageSparseMemoryRequirementsInfo2>) throws -> R) rethrows -> R {
        var cStruct = VkImageSparseMemoryRequirementsInfo2()
        cStruct.sType = VK_STRUCTURE_TYPE_IMAGE_SPARSE_MEMORY_REQUIREMENTS_INFO_2
        cStruct.pNext = nil
        cStruct.image = self.image
        return try body(&cStruct)
    }
}

struct MemoryRequirements2: CStructConvertible {
    typealias CStruct = VkMemoryRequirements2

    let memoryRequirements: VkMemoryRequirements

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkMemoryRequirements2>) throws -> R) rethrows -> R {
        var cStruct = VkMemoryRequirements2()
        cStruct.sType = VK_STRUCTURE_TYPE_MEMORY_REQUIREMENTS_2
        cStruct.pNext = nil
        cStruct.memoryRequirements = self.memoryRequirements
        return try body(&cStruct)
    }
}

struct SparseImageMemoryRequirements2: CStructConvertible {
    typealias CStruct = VkSparseImageMemoryRequirements2

    let memoryRequirements: VkSparseImageMemoryRequirements

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkSparseImageMemoryRequirements2>) throws -> R) rethrows -> R {
        var cStruct = VkSparseImageMemoryRequirements2()
        cStruct.sType = VK_STRUCTURE_TYPE_SPARSE_IMAGE_MEMORY_REQUIREMENTS_2
        cStruct.pNext = nil
        cStruct.memoryRequirements = self.memoryRequirements
        return try body(&cStruct)
    }
}

struct PhysicalDevicePointClippingProperties: CStructConvertible {
    typealias CStruct = VkPhysicalDevicePointClippingProperties

    let pointClippingBehavior: VkPointClippingBehavior

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDevicePointClippingProperties>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDevicePointClippingProperties()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_POINT_CLIPPING_PROPERTIES
        cStruct.pNext = nil
        cStruct.pointClippingBehavior = self.pointClippingBehavior
        return try body(&cStruct)
    }
}

struct MemoryDedicatedRequirements: CStructConvertible {
    typealias CStruct = VkMemoryDedicatedRequirements

    let prefersDedicatedAllocation: VkBool32
    let requiresDedicatedAllocation: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkMemoryDedicatedRequirements>) throws -> R) rethrows -> R {
        var cStruct = VkMemoryDedicatedRequirements()
        cStruct.sType = VK_STRUCTURE_TYPE_MEMORY_DEDICATED_REQUIREMENTS
        cStruct.pNext = nil
        cStruct.prefersDedicatedAllocation = self.prefersDedicatedAllocation
        cStruct.requiresDedicatedAllocation = self.requiresDedicatedAllocation
        return try body(&cStruct)
    }
}

struct MemoryDedicatedAllocateInfo: CStructConvertible {
    typealias CStruct = VkMemoryDedicatedAllocateInfo

    let image: VkImage
    let buffer: VkBuffer

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkMemoryDedicatedAllocateInfo>) throws -> R) rethrows -> R {
        var cStruct = VkMemoryDedicatedAllocateInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_MEMORY_DEDICATED_ALLOCATE_INFO
        cStruct.pNext = nil
        cStruct.image = self.image
        cStruct.buffer = self.buffer
        return try body(&cStruct)
    }
}

struct ImageViewUsageCreateInfo: CStructConvertible {
    typealias CStruct = VkImageViewUsageCreateInfo

    let usage: VkImageUsageFlags

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkImageViewUsageCreateInfo>) throws -> R) rethrows -> R {
        var cStruct = VkImageViewUsageCreateInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_IMAGE_VIEW_USAGE_CREATE_INFO
        cStruct.pNext = nil
        cStruct.usage = self.usage
        return try body(&cStruct)
    }
}

struct PipelineTessellationDomainOriginStateCreateInfo: CStructConvertible {
    typealias CStruct = VkPipelineTessellationDomainOriginStateCreateInfo

    let domainOrigin: VkTessellationDomainOrigin

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPipelineTessellationDomainOriginStateCreateInfo>) throws -> R) rethrows -> R {
        var cStruct = VkPipelineTessellationDomainOriginStateCreateInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_TESSELLATION_DOMAIN_ORIGIN_STATE_CREATE_INFO
        cStruct.pNext = nil
        cStruct.domainOrigin = self.domainOrigin
        return try body(&cStruct)
    }
}

struct SamplerYcbcrConversionInfo: CStructConvertible {
    typealias CStruct = VkSamplerYcbcrConversionInfo

    let conversion: VkSamplerYcbcrConversion

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkSamplerYcbcrConversionInfo>) throws -> R) rethrows -> R {
        var cStruct = VkSamplerYcbcrConversionInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_SAMPLER_YCBCR_CONVERSION_INFO
        cStruct.pNext = nil
        cStruct.conversion = self.conversion
        return try body(&cStruct)
    }
}

struct SamplerYcbcrConversionCreateInfo: CStructConvertible {
    typealias CStruct = VkSamplerYcbcrConversionCreateInfo

    let format: VkFormat
    let ycbcrModel: VkSamplerYcbcrModelConversion
    let ycbcrRange: VkSamplerYcbcrRange
    let components: VkComponentMapping
    let xChromaOffset: VkChromaLocation
    let yChromaOffset: VkChromaLocation
    let chromaFilter: VkFilter
    let forceExplicitReconstruction: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkSamplerYcbcrConversionCreateInfo>) throws -> R) rethrows -> R {
        var cStruct = VkSamplerYcbcrConversionCreateInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_SAMPLER_YCBCR_CONVERSION_CREATE_INFO
        cStruct.pNext = nil
        cStruct.format = self.format
        cStruct.ycbcrModel = self.ycbcrModel
        cStruct.ycbcrRange = self.ycbcrRange
        cStruct.components = self.components
        cStruct.xChromaOffset = self.xChromaOffset
        cStruct.yChromaOffset = self.yChromaOffset
        cStruct.chromaFilter = self.chromaFilter
        cStruct.forceExplicitReconstruction = self.forceExplicitReconstruction
        return try body(&cStruct)
    }
}

struct BindImagePlaneMemoryInfo: CStructConvertible {
    typealias CStruct = VkBindImagePlaneMemoryInfo

    let planeAspect: VkImageAspectFlagBits

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkBindImagePlaneMemoryInfo>) throws -> R) rethrows -> R {
        var cStruct = VkBindImagePlaneMemoryInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_BIND_IMAGE_PLANE_MEMORY_INFO
        cStruct.pNext = nil
        cStruct.planeAspect = self.planeAspect
        return try body(&cStruct)
    }
}

struct ImagePlaneMemoryRequirementsInfo: CStructConvertible {
    typealias CStruct = VkImagePlaneMemoryRequirementsInfo

    let planeAspect: VkImageAspectFlagBits

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkImagePlaneMemoryRequirementsInfo>) throws -> R) rethrows -> R {
        var cStruct = VkImagePlaneMemoryRequirementsInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_IMAGE_PLANE_MEMORY_REQUIREMENTS_INFO
        cStruct.pNext = nil
        cStruct.planeAspect = self.planeAspect
        return try body(&cStruct)
    }
}

struct PhysicalDeviceSamplerYcbcrConversionFeatures: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceSamplerYcbcrConversionFeatures

    let samplerYcbcrConversion: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceSamplerYcbcrConversionFeatures>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceSamplerYcbcrConversionFeatures()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SAMPLER_YCBCR_CONVERSION_FEATURES
        cStruct.pNext = nil
        cStruct.samplerYcbcrConversion = self.samplerYcbcrConversion
        return try body(&cStruct)
    }
}

struct SamplerYcbcrConversionImageFormatProperties: CStructConvertible {
    typealias CStruct = VkSamplerYcbcrConversionImageFormatProperties

    let combinedImageSamplerDescriptorCount: UInt32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkSamplerYcbcrConversionImageFormatProperties>) throws -> R) rethrows -> R {
        var cStruct = VkSamplerYcbcrConversionImageFormatProperties()
        cStruct.sType = VK_STRUCTURE_TYPE_SAMPLER_YCBCR_CONVERSION_IMAGE_FORMAT_PROPERTIES
        cStruct.pNext = nil
        cStruct.combinedImageSamplerDescriptorCount = self.combinedImageSamplerDescriptorCount
        return try body(&cStruct)
    }
}

struct TextureLODGatherFormatPropertiesAMD: CStructConvertible {
    typealias CStruct = VkTextureLODGatherFormatPropertiesAMD

    let supportsTextureGatherLODBiasAMD: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkTextureLODGatherFormatPropertiesAMD>) throws -> R) rethrows -> R {
        var cStruct = VkTextureLODGatherFormatPropertiesAMD()
        cStruct.sType = VK_STRUCTURE_TYPE_TEXTURE_LOD_GATHER_FORMAT_PROPERTIES_AMD
        cStruct.pNext = nil
        cStruct.supportsTextureGatherLODBiasAMD = self.supportsTextureGatherLODBiasAMD
        return try body(&cStruct)
    }
}

struct ConditionalRenderingBeginInfoEXT: CStructConvertible {
    typealias CStruct = VkConditionalRenderingBeginInfoEXT

    let buffer: VkBuffer
    let offset: VkDeviceSize
    let flags: VkConditionalRenderingFlagsEXT

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkConditionalRenderingBeginInfoEXT>) throws -> R) rethrows -> R {
        var cStruct = VkConditionalRenderingBeginInfoEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_CONDITIONAL_RENDERING_BEGIN_INFO_EXT
        cStruct.pNext = nil
        cStruct.buffer = self.buffer
        cStruct.offset = self.offset
        cStruct.flags = self.flags
        return try body(&cStruct)
    }
}

struct ProtectedSubmitInfo: CStructConvertible {
    typealias CStruct = VkProtectedSubmitInfo

    let protectedSubmit: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkProtectedSubmitInfo>) throws -> R) rethrows -> R {
        var cStruct = VkProtectedSubmitInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_PROTECTED_SUBMIT_INFO
        cStruct.pNext = nil
        cStruct.protectedSubmit = self.protectedSubmit
        return try body(&cStruct)
    }
}

struct PhysicalDeviceProtectedMemoryFeatures: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceProtectedMemoryFeatures

    let protectedMemory: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceProtectedMemoryFeatures>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceProtectedMemoryFeatures()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PROTECTED_MEMORY_FEATURES
        cStruct.pNext = nil
        cStruct.protectedMemory = self.protectedMemory
        return try body(&cStruct)
    }
}

struct PhysicalDeviceProtectedMemoryProperties: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceProtectedMemoryProperties

    let protectedNoFault: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceProtectedMemoryProperties>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceProtectedMemoryProperties()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PROTECTED_MEMORY_PROPERTIES
        cStruct.pNext = nil
        cStruct.protectedNoFault = self.protectedNoFault
        return try body(&cStruct)
    }
}

struct DeviceQueueInfo2: CStructConvertible {
    typealias CStruct = VkDeviceQueueInfo2

    let flags: VkDeviceQueueCreateFlags
    let queueFamilyIndex: UInt32
    let queueIndex: UInt32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkDeviceQueueInfo2>) throws -> R) rethrows -> R {
        var cStruct = VkDeviceQueueInfo2()
        cStruct.sType = VK_STRUCTURE_TYPE_DEVICE_QUEUE_INFO_2
        cStruct.pNext = nil
        cStruct.flags = self.flags
        cStruct.queueFamilyIndex = self.queueFamilyIndex
        cStruct.queueIndex = self.queueIndex
        return try body(&cStruct)
    }
}

struct PipelineCoverageToColorStateCreateInfoNV: CStructConvertible {
    typealias CStruct = VkPipelineCoverageToColorStateCreateInfoNV

    let flags: VkPipelineCoverageToColorStateCreateFlagsNV
    let coverageToColorEnable: VkBool32
    let coverageToColorLocation: UInt32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPipelineCoverageToColorStateCreateInfoNV>) throws -> R) rethrows -> R {
        var cStruct = VkPipelineCoverageToColorStateCreateInfoNV()
        cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_COVERAGE_TO_COLOR_STATE_CREATE_INFO_NV
        cStruct.pNext = nil
        cStruct.flags = self.flags
        cStruct.coverageToColorEnable = self.coverageToColorEnable
        cStruct.coverageToColorLocation = self.coverageToColorLocation
        return try body(&cStruct)
    }
}

struct PhysicalDeviceSamplerFilterMinmaxProperties: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceSamplerFilterMinmaxProperties

    let filterMinmaxSingleComponentFormats: VkBool32
    let filterMinmaxImageComponentMapping: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceSamplerFilterMinmaxProperties>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceSamplerFilterMinmaxProperties()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SAMPLER_FILTER_MINMAX_PROPERTIES
        cStruct.pNext = nil
        cStruct.filterMinmaxSingleComponentFormats = self.filterMinmaxSingleComponentFormats
        cStruct.filterMinmaxImageComponentMapping = self.filterMinmaxImageComponentMapping
        return try body(&cStruct)
    }
}

struct SampleLocationEXT: CStructConvertible {
    typealias CStruct = VkSampleLocationEXT

    let x: Float
    let y: Float

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkSampleLocationEXT>) throws -> R) rethrows -> R {
        var cStruct = VkSampleLocationEXT()
        cStruct.x = self.x
        cStruct.y = self.y
        return try body(&cStruct)
    }
}

struct SampleLocationsInfoEXT: CStructConvertible {
    typealias CStruct = VkSampleLocationsInfoEXT

    let sampleLocationsPerPixel: VkSampleCountFlagBits
    let sampleLocationGridSize: VkExtent2D
    let sampleLocationsCount: UInt32
    let pSampleLocations: UnsafePointer<VkSampleLocationEXT>

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkSampleLocationsInfoEXT>) throws -> R) rethrows -> R {
        var cStruct = VkSampleLocationsInfoEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_SAMPLE_LOCATIONS_INFO_EXT
        cStruct.pNext = nil
        cStruct.sampleLocationsPerPixel = self.sampleLocationsPerPixel
        cStruct.sampleLocationGridSize = self.sampleLocationGridSize
        cStruct.sampleLocationsCount = self.sampleLocationsCount
        cStruct.pSampleLocations = self.pSampleLocations
        return try body(&cStruct)
    }
}

struct AttachmentSampleLocationsEXT: CStructConvertible {
    typealias CStruct = VkAttachmentSampleLocationsEXT

    let attachmentIndex: UInt32
    let sampleLocationsInfo: VkSampleLocationsInfoEXT

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkAttachmentSampleLocationsEXT>) throws -> R) rethrows -> R {
        var cStruct = VkAttachmentSampleLocationsEXT()
        cStruct.attachmentIndex = self.attachmentIndex
        cStruct.sampleLocationsInfo = self.sampleLocationsInfo
        return try body(&cStruct)
    }
}

struct SubpassSampleLocationsEXT: CStructConvertible {
    typealias CStruct = VkSubpassSampleLocationsEXT

    let subpassIndex: UInt32
    let sampleLocationsInfo: VkSampleLocationsInfoEXT

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkSubpassSampleLocationsEXT>) throws -> R) rethrows -> R {
        var cStruct = VkSubpassSampleLocationsEXT()
        cStruct.subpassIndex = self.subpassIndex
        cStruct.sampleLocationsInfo = self.sampleLocationsInfo
        return try body(&cStruct)
    }
}

struct RenderPassSampleLocationsBeginInfoEXT: CStructConvertible {
    typealias CStruct = VkRenderPassSampleLocationsBeginInfoEXT

    let attachmentInitialSampleLocationsCount: UInt32
    let pAttachmentInitialSampleLocations: UnsafePointer<VkAttachmentSampleLocationsEXT>
    let postSubpassSampleLocationsCount: UInt32
    let pPostSubpassSampleLocations: UnsafePointer<VkSubpassSampleLocationsEXT>

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkRenderPassSampleLocationsBeginInfoEXT>) throws -> R) rethrows -> R {
        var cStruct = VkRenderPassSampleLocationsBeginInfoEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_RENDER_PASS_SAMPLE_LOCATIONS_BEGIN_INFO_EXT
        cStruct.pNext = nil
        cStruct.attachmentInitialSampleLocationsCount = self.attachmentInitialSampleLocationsCount
        cStruct.pAttachmentInitialSampleLocations = self.pAttachmentInitialSampleLocations
        cStruct.postSubpassSampleLocationsCount = self.postSubpassSampleLocationsCount
        cStruct.pPostSubpassSampleLocations = self.pPostSubpassSampleLocations
        return try body(&cStruct)
    }
}

struct PipelineSampleLocationsStateCreateInfoEXT: CStructConvertible {
    typealias CStruct = VkPipelineSampleLocationsStateCreateInfoEXT

    let sampleLocationsEnable: VkBool32
    let sampleLocationsInfo: VkSampleLocationsInfoEXT

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPipelineSampleLocationsStateCreateInfoEXT>) throws -> R) rethrows -> R {
        var cStruct = VkPipelineSampleLocationsStateCreateInfoEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_SAMPLE_LOCATIONS_STATE_CREATE_INFO_EXT
        cStruct.pNext = nil
        cStruct.sampleLocationsEnable = self.sampleLocationsEnable
        cStruct.sampleLocationsInfo = self.sampleLocationsInfo
        return try body(&cStruct)
    }
}

struct PhysicalDeviceSampleLocationsPropertiesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceSampleLocationsPropertiesEXT

    let sampleLocationSampleCounts: VkSampleCountFlags
    let maxSampleLocationGridSize: VkExtent2D
    let sampleLocationCoordinateRange: (Float, Float)
    let sampleLocationSubPixelBits: UInt32
    let variableSampleLocations: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceSampleLocationsPropertiesEXT>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceSampleLocationsPropertiesEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SAMPLE_LOCATIONS_PROPERTIES_EXT
        cStruct.pNext = nil
        cStruct.sampleLocationSampleCounts = self.sampleLocationSampleCounts
        cStruct.maxSampleLocationGridSize = self.maxSampleLocationGridSize
        cStruct.sampleLocationCoordinateRange = self.sampleLocationCoordinateRange
        cStruct.sampleLocationSubPixelBits = self.sampleLocationSubPixelBits
        cStruct.variableSampleLocations = self.variableSampleLocations
        return try body(&cStruct)
    }
}

struct MultisamplePropertiesEXT: CStructConvertible {
    typealias CStruct = VkMultisamplePropertiesEXT

    let maxSampleLocationGridSize: VkExtent2D

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkMultisamplePropertiesEXT>) throws -> R) rethrows -> R {
        var cStruct = VkMultisamplePropertiesEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_MULTISAMPLE_PROPERTIES_EXT
        cStruct.pNext = nil
        cStruct.maxSampleLocationGridSize = self.maxSampleLocationGridSize
        return try body(&cStruct)
    }
}

struct SamplerReductionModeCreateInfo: CStructConvertible {
    typealias CStruct = VkSamplerReductionModeCreateInfo

    let reductionMode: VkSamplerReductionMode

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkSamplerReductionModeCreateInfo>) throws -> R) rethrows -> R {
        var cStruct = VkSamplerReductionModeCreateInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_SAMPLER_REDUCTION_MODE_CREATE_INFO
        cStruct.pNext = nil
        cStruct.reductionMode = self.reductionMode
        return try body(&cStruct)
    }
}

struct PhysicalDeviceBlendOperationAdvancedFeaturesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceBlendOperationAdvancedFeaturesEXT

    let advancedBlendCoherentOperations: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceBlendOperationAdvancedFeaturesEXT>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceBlendOperationAdvancedFeaturesEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_BLEND_OPERATION_ADVANCED_FEATURES_EXT
        cStruct.pNext = nil
        cStruct.advancedBlendCoherentOperations = self.advancedBlendCoherentOperations
        return try body(&cStruct)
    }
}

struct PhysicalDeviceBlendOperationAdvancedPropertiesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceBlendOperationAdvancedPropertiesEXT

    let advancedBlendMaxColorAttachments: UInt32
    let advancedBlendIndependentBlend: VkBool32
    let advancedBlendNonPremultipliedSrcColor: VkBool32
    let advancedBlendNonPremultipliedDstColor: VkBool32
    let advancedBlendCorrelatedOverlap: VkBool32
    let advancedBlendAllOperations: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceBlendOperationAdvancedPropertiesEXT>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceBlendOperationAdvancedPropertiesEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_BLEND_OPERATION_ADVANCED_PROPERTIES_EXT
        cStruct.pNext = nil
        cStruct.advancedBlendMaxColorAttachments = self.advancedBlendMaxColorAttachments
        cStruct.advancedBlendIndependentBlend = self.advancedBlendIndependentBlend
        cStruct.advancedBlendNonPremultipliedSrcColor = self.advancedBlendNonPremultipliedSrcColor
        cStruct.advancedBlendNonPremultipliedDstColor = self.advancedBlendNonPremultipliedDstColor
        cStruct.advancedBlendCorrelatedOverlap = self.advancedBlendCorrelatedOverlap
        cStruct.advancedBlendAllOperations = self.advancedBlendAllOperations
        return try body(&cStruct)
    }
}

struct PipelineColorBlendAdvancedStateCreateInfoEXT: CStructConvertible {
    typealias CStruct = VkPipelineColorBlendAdvancedStateCreateInfoEXT

    let srcPremultiplied: VkBool32
    let dstPremultiplied: VkBool32
    let blendOverlap: VkBlendOverlapEXT

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPipelineColorBlendAdvancedStateCreateInfoEXT>) throws -> R) rethrows -> R {
        var cStruct = VkPipelineColorBlendAdvancedStateCreateInfoEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_COLOR_BLEND_ADVANCED_STATE_CREATE_INFO_EXT
        cStruct.pNext = nil
        cStruct.srcPremultiplied = self.srcPremultiplied
        cStruct.dstPremultiplied = self.dstPremultiplied
        cStruct.blendOverlap = self.blendOverlap
        return try body(&cStruct)
    }
}

struct PhysicalDeviceInlineUniformBlockFeaturesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceInlineUniformBlockFeaturesEXT

    let inlineUniformBlock: VkBool32
    let descriptorBindingInlineUniformBlockUpdateAfterBind: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceInlineUniformBlockFeaturesEXT>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceInlineUniformBlockFeaturesEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_INLINE_UNIFORM_BLOCK_FEATURES_EXT
        cStruct.pNext = nil
        cStruct.inlineUniformBlock = self.inlineUniformBlock
        cStruct.descriptorBindingInlineUniformBlockUpdateAfterBind = self.descriptorBindingInlineUniformBlockUpdateAfterBind
        return try body(&cStruct)
    }
}

struct PhysicalDeviceInlineUniformBlockPropertiesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceInlineUniformBlockPropertiesEXT

    let maxInlineUniformBlockSize: UInt32
    let maxPerStageDescriptorInlineUniformBlocks: UInt32
    let maxPerStageDescriptorUpdateAfterBindInlineUniformBlocks: UInt32
    let maxDescriptorSetInlineUniformBlocks: UInt32
    let maxDescriptorSetUpdateAfterBindInlineUniformBlocks: UInt32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceInlineUniformBlockPropertiesEXT>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceInlineUniformBlockPropertiesEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_INLINE_UNIFORM_BLOCK_PROPERTIES_EXT
        cStruct.pNext = nil
        cStruct.maxInlineUniformBlockSize = self.maxInlineUniformBlockSize
        cStruct.maxPerStageDescriptorInlineUniformBlocks = self.maxPerStageDescriptorInlineUniformBlocks
        cStruct.maxPerStageDescriptorUpdateAfterBindInlineUniformBlocks = self.maxPerStageDescriptorUpdateAfterBindInlineUniformBlocks
        cStruct.maxDescriptorSetInlineUniformBlocks = self.maxDescriptorSetInlineUniformBlocks
        cStruct.maxDescriptorSetUpdateAfterBindInlineUniformBlocks = self.maxDescriptorSetUpdateAfterBindInlineUniformBlocks
        return try body(&cStruct)
    }
}

struct WriteDescriptorSetInlineUniformBlockEXT: CStructConvertible {
    typealias CStruct = VkWriteDescriptorSetInlineUniformBlockEXT

    let dataSize: UInt32
    let pData: UnsafeRawPointer

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkWriteDescriptorSetInlineUniformBlockEXT>) throws -> R) rethrows -> R {
        var cStruct = VkWriteDescriptorSetInlineUniformBlockEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET_INLINE_UNIFORM_BLOCK_EXT
        cStruct.pNext = nil
        cStruct.dataSize = self.dataSize
        cStruct.pData = self.pData
        return try body(&cStruct)
    }
}

struct DescriptorPoolInlineUniformBlockCreateInfoEXT: CStructConvertible {
    typealias CStruct = VkDescriptorPoolInlineUniformBlockCreateInfoEXT

    let maxInlineUniformBlockBindings: UInt32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkDescriptorPoolInlineUniformBlockCreateInfoEXT>) throws -> R) rethrows -> R {
        var cStruct = VkDescriptorPoolInlineUniformBlockCreateInfoEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_DESCRIPTOR_POOL_INLINE_UNIFORM_BLOCK_CREATE_INFO_EXT
        cStruct.pNext = nil
        cStruct.maxInlineUniformBlockBindings = self.maxInlineUniformBlockBindings
        return try body(&cStruct)
    }
}

struct PipelineCoverageModulationStateCreateInfoNV: CStructConvertible {
    typealias CStruct = VkPipelineCoverageModulationStateCreateInfoNV

    let flags: VkPipelineCoverageModulationStateCreateFlagsNV
    let coverageModulationMode: VkCoverageModulationModeNV
    let coverageModulationTableEnable: VkBool32
    let coverageModulationTableCount: UInt32
    let pCoverageModulationTable: UnsafePointer<Float>

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPipelineCoverageModulationStateCreateInfoNV>) throws -> R) rethrows -> R {
        var cStruct = VkPipelineCoverageModulationStateCreateInfoNV()
        cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_COVERAGE_MODULATION_STATE_CREATE_INFO_NV
        cStruct.pNext = nil
        cStruct.flags = self.flags
        cStruct.coverageModulationMode = self.coverageModulationMode
        cStruct.coverageModulationTableEnable = self.coverageModulationTableEnable
        cStruct.coverageModulationTableCount = self.coverageModulationTableCount
        cStruct.pCoverageModulationTable = self.pCoverageModulationTable
        return try body(&cStruct)
    }
}

struct ImageFormatListCreateInfo: CStructConvertible {
    typealias CStruct = VkImageFormatListCreateInfo

    let viewFormatCount: UInt32
    let pViewFormats: UnsafePointer<VkFormat>

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkImageFormatListCreateInfo>) throws -> R) rethrows -> R {
        var cStruct = VkImageFormatListCreateInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_IMAGE_FORMAT_LIST_CREATE_INFO
        cStruct.pNext = nil
        cStruct.viewFormatCount = self.viewFormatCount
        cStruct.pViewFormats = self.pViewFormats
        return try body(&cStruct)
    }
}

struct ValidationCacheCreateInfoEXT: CStructConvertible {
    typealias CStruct = VkValidationCacheCreateInfoEXT

    let flags: VkValidationCacheCreateFlagsEXT
    let initialDataSize: Int
    let pInitialData: UnsafeRawPointer

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkValidationCacheCreateInfoEXT>) throws -> R) rethrows -> R {
        var cStruct = VkValidationCacheCreateInfoEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_VALIDATION_CACHE_CREATE_INFO_EXT
        cStruct.pNext = nil
        cStruct.flags = self.flags
        cStruct.initialDataSize = self.initialDataSize
        cStruct.pInitialData = self.pInitialData
        return try body(&cStruct)
    }
}

struct ShaderModuleValidationCacheCreateInfoEXT: CStructConvertible {
    typealias CStruct = VkShaderModuleValidationCacheCreateInfoEXT

    let validationCache: VkValidationCacheEXT

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkShaderModuleValidationCacheCreateInfoEXT>) throws -> R) rethrows -> R {
        var cStruct = VkShaderModuleValidationCacheCreateInfoEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_SHADER_MODULE_VALIDATION_CACHE_CREATE_INFO_EXT
        cStruct.pNext = nil
        cStruct.validationCache = self.validationCache
        return try body(&cStruct)
    }
}

struct PhysicalDeviceMaintenance3Properties: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceMaintenance3Properties

    let maxPerSetDescriptors: UInt32
    let maxMemoryAllocationSize: VkDeviceSize

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceMaintenance3Properties>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceMaintenance3Properties()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MAINTENANCE_3_PROPERTIES
        cStruct.pNext = nil
        cStruct.maxPerSetDescriptors = self.maxPerSetDescriptors
        cStruct.maxMemoryAllocationSize = self.maxMemoryAllocationSize
        return try body(&cStruct)
    }
}

struct DescriptorSetLayoutSupport: CStructConvertible {
    typealias CStruct = VkDescriptorSetLayoutSupport

    let supported: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkDescriptorSetLayoutSupport>) throws -> R) rethrows -> R {
        var cStruct = VkDescriptorSetLayoutSupport()
        cStruct.sType = VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_SUPPORT
        cStruct.pNext = nil
        cStruct.supported = self.supported
        return try body(&cStruct)
    }
}

struct PhysicalDeviceShaderDrawParametersFeatures: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceShaderDrawParametersFeatures

    let shaderDrawParameters: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceShaderDrawParametersFeatures>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceShaderDrawParametersFeatures()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_DRAW_PARAMETERS_FEATURES
        cStruct.pNext = nil
        cStruct.shaderDrawParameters = self.shaderDrawParameters
        return try body(&cStruct)
    }
}

struct PhysicalDeviceShaderFloat16Int8Features: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceShaderFloat16Int8Features

    let shaderFloat16: VkBool32
    let shaderInt8: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceShaderFloat16Int8Features>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceShaderFloat16Int8Features()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_FLOAT16_INT8_FEATURES
        cStruct.pNext = nil
        cStruct.shaderFloat16 = self.shaderFloat16
        cStruct.shaderInt8 = self.shaderInt8
        return try body(&cStruct)
    }
}

struct PhysicalDeviceFloatControlsProperties: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceFloatControlsProperties

    let denormBehaviorIndependence: VkShaderFloatControlsIndependence
    let roundingModeIndependence: VkShaderFloatControlsIndependence
    let shaderSignedZeroInfNanPreserveFloat16: VkBool32
    let shaderSignedZeroInfNanPreserveFloat32: VkBool32
    let shaderSignedZeroInfNanPreserveFloat64: VkBool32
    let shaderDenormPreserveFloat16: VkBool32
    let shaderDenormPreserveFloat32: VkBool32
    let shaderDenormPreserveFloat64: VkBool32
    let shaderDenormFlushToZeroFloat16: VkBool32
    let shaderDenormFlushToZeroFloat32: VkBool32
    let shaderDenormFlushToZeroFloat64: VkBool32
    let shaderRoundingModeRTEFloat16: VkBool32
    let shaderRoundingModeRTEFloat32: VkBool32
    let shaderRoundingModeRTEFloat64: VkBool32
    let shaderRoundingModeRTZFloat16: VkBool32
    let shaderRoundingModeRTZFloat32: VkBool32
    let shaderRoundingModeRTZFloat64: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceFloatControlsProperties>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceFloatControlsProperties()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FLOAT_CONTROLS_PROPERTIES
        cStruct.pNext = nil
        cStruct.denormBehaviorIndependence = self.denormBehaviorIndependence
        cStruct.roundingModeIndependence = self.roundingModeIndependence
        cStruct.shaderSignedZeroInfNanPreserveFloat16 = self.shaderSignedZeroInfNanPreserveFloat16
        cStruct.shaderSignedZeroInfNanPreserveFloat32 = self.shaderSignedZeroInfNanPreserveFloat32
        cStruct.shaderSignedZeroInfNanPreserveFloat64 = self.shaderSignedZeroInfNanPreserveFloat64
        cStruct.shaderDenormPreserveFloat16 = self.shaderDenormPreserveFloat16
        cStruct.shaderDenormPreserveFloat32 = self.shaderDenormPreserveFloat32
        cStruct.shaderDenormPreserveFloat64 = self.shaderDenormPreserveFloat64
        cStruct.shaderDenormFlushToZeroFloat16 = self.shaderDenormFlushToZeroFloat16
        cStruct.shaderDenormFlushToZeroFloat32 = self.shaderDenormFlushToZeroFloat32
        cStruct.shaderDenormFlushToZeroFloat64 = self.shaderDenormFlushToZeroFloat64
        cStruct.shaderRoundingModeRTEFloat16 = self.shaderRoundingModeRTEFloat16
        cStruct.shaderRoundingModeRTEFloat32 = self.shaderRoundingModeRTEFloat32
        cStruct.shaderRoundingModeRTEFloat64 = self.shaderRoundingModeRTEFloat64
        cStruct.shaderRoundingModeRTZFloat16 = self.shaderRoundingModeRTZFloat16
        cStruct.shaderRoundingModeRTZFloat32 = self.shaderRoundingModeRTZFloat32
        cStruct.shaderRoundingModeRTZFloat64 = self.shaderRoundingModeRTZFloat64
        return try body(&cStruct)
    }
}

struct PhysicalDeviceHostQueryResetFeatures: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceHostQueryResetFeatures

    let hostQueryReset: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceHostQueryResetFeatures>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceHostQueryResetFeatures()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_HOST_QUERY_RESET_FEATURES
        cStruct.pNext = nil
        cStruct.hostQueryReset = self.hostQueryReset
        return try body(&cStruct)
    }
}

struct ShaderResourceUsageAMD: CStructConvertible {
    typealias CStruct = VkShaderResourceUsageAMD

    let numUsedVgprs: UInt32
    let numUsedSgprs: UInt32
    let ldsSizePerLocalWorkGroup: UInt32
    let ldsUsageSizeInBytes: Int
    let scratchMemUsageInBytes: Int

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkShaderResourceUsageAMD>) throws -> R) rethrows -> R {
        var cStruct = VkShaderResourceUsageAMD()
        cStruct.numUsedVgprs = self.numUsedVgprs
        cStruct.numUsedSgprs = self.numUsedSgprs
        cStruct.ldsSizePerLocalWorkGroup = self.ldsSizePerLocalWorkGroup
        cStruct.ldsUsageSizeInBytes = self.ldsUsageSizeInBytes
        cStruct.scratchMemUsageInBytes = self.scratchMemUsageInBytes
        return try body(&cStruct)
    }
}

struct ShaderStatisticsInfoAMD: CStructConvertible {
    typealias CStruct = VkShaderStatisticsInfoAMD

    let shaderStageMask: VkShaderStageFlags
    let resourceUsage: VkShaderResourceUsageAMD
    let numPhysicalVgprs: UInt32
    let numPhysicalSgprs: UInt32
    let numAvailableVgprs: UInt32
    let numAvailableSgprs: UInt32
    let computeWorkGroupSize: (UInt32, UInt32, UInt32)

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkShaderStatisticsInfoAMD>) throws -> R) rethrows -> R {
        var cStruct = VkShaderStatisticsInfoAMD()
        cStruct.shaderStageMask = self.shaderStageMask
        cStruct.resourceUsage = self.resourceUsage
        cStruct.numPhysicalVgprs = self.numPhysicalVgprs
        cStruct.numPhysicalSgprs = self.numPhysicalSgprs
        cStruct.numAvailableVgprs = self.numAvailableVgprs
        cStruct.numAvailableSgprs = self.numAvailableSgprs
        cStruct.computeWorkGroupSize = self.computeWorkGroupSize
        return try body(&cStruct)
    }
}

struct DeviceQueueGlobalPriorityCreateInfoEXT: CStructConvertible {
    typealias CStruct = VkDeviceQueueGlobalPriorityCreateInfoEXT

    let globalPriority: VkQueueGlobalPriorityEXT

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkDeviceQueueGlobalPriorityCreateInfoEXT>) throws -> R) rethrows -> R {
        var cStruct = VkDeviceQueueGlobalPriorityCreateInfoEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_DEVICE_QUEUE_GLOBAL_PRIORITY_CREATE_INFO_EXT
        cStruct.pNext = nil
        cStruct.globalPriority = self.globalPriority
        return try body(&cStruct)
    }
}

struct DebugUtilsObjectNameInfoEXT: CStructConvertible {
    typealias CStruct = VkDebugUtilsObjectNameInfoEXT

    let objectType: VkObjectType
    let objectHandle: UInt64
    let pObjectName: UnsafePointer<CChar>

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkDebugUtilsObjectNameInfoEXT>) throws -> R) rethrows -> R {
        var cStruct = VkDebugUtilsObjectNameInfoEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_DEBUG_UTILS_OBJECT_NAME_INFO_EXT
        cStruct.pNext = nil
        cStruct.objectType = self.objectType
        cStruct.objectHandle = self.objectHandle
        cStruct.pObjectName = self.pObjectName
        return try body(&cStruct)
    }
}

struct DebugUtilsObjectTagInfoEXT: CStructConvertible {
    typealias CStruct = VkDebugUtilsObjectTagInfoEXT

    let objectType: VkObjectType
    let objectHandle: UInt64
    let tagName: UInt64
    let tagSize: Int
    let pTag: UnsafeRawPointer

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkDebugUtilsObjectTagInfoEXT>) throws -> R) rethrows -> R {
        var cStruct = VkDebugUtilsObjectTagInfoEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_DEBUG_UTILS_OBJECT_TAG_INFO_EXT
        cStruct.pNext = nil
        cStruct.objectType = self.objectType
        cStruct.objectHandle = self.objectHandle
        cStruct.tagName = self.tagName
        cStruct.tagSize = self.tagSize
        cStruct.pTag = self.pTag
        return try body(&cStruct)
    }
}

struct DebugUtilsLabelEXT: CStructConvertible {
    typealias CStruct = VkDebugUtilsLabelEXT

    let pLabelName: UnsafePointer<CChar>
    let color: (Float, Float, Float, Float)

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkDebugUtilsLabelEXT>) throws -> R) rethrows -> R {
        var cStruct = VkDebugUtilsLabelEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_DEBUG_UTILS_LABEL_EXT
        cStruct.pNext = nil
        cStruct.pLabelName = self.pLabelName
        cStruct.color = self.color
        return try body(&cStruct)
    }
}

struct DebugUtilsMessengerCreateInfoEXT: CStructConvertible {
    typealias CStruct = VkDebugUtilsMessengerCreateInfoEXT

    let flags: VkDebugUtilsMessengerCreateFlagsEXT
    let messageSeverity: VkDebugUtilsMessageSeverityFlagsEXT
    let messageType: VkDebugUtilsMessageTypeFlagsEXT
    let pfnUserCallback: PFN_vkDebugUtilsMessengerCallbackEXT
    let pUserData: UnsafeMutableRawPointer

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkDebugUtilsMessengerCreateInfoEXT>) throws -> R) rethrows -> R {
        var cStruct = VkDebugUtilsMessengerCreateInfoEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_DEBUG_UTILS_MESSENGER_CREATE_INFO_EXT
        cStruct.pNext = nil
        cStruct.flags = self.flags
        cStruct.messageSeverity = self.messageSeverity
        cStruct.messageType = self.messageType
        cStruct.pfnUserCallback = self.pfnUserCallback
        cStruct.pUserData = self.pUserData
        return try body(&cStruct)
    }
}

struct DebugUtilsMessengerCallbackDataEXT: CStructConvertible {
    typealias CStruct = VkDebugUtilsMessengerCallbackDataEXT

    let flags: VkDebugUtilsMessengerCallbackDataFlagsEXT
    let pMessageIdName: UnsafePointer<CChar>
    let messageIdNumber: Int32
    let pMessage: UnsafePointer<CChar>
    let queueLabelCount: UInt32
    let pQueueLabels: UnsafePointer<VkDebugUtilsLabelEXT>
    let cmdBufLabelCount: UInt32
    let pCmdBufLabels: UnsafePointer<VkDebugUtilsLabelEXT>
    let objectCount: UInt32
    let pObjects: UnsafePointer<VkDebugUtilsObjectNameInfoEXT>

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkDebugUtilsMessengerCallbackDataEXT>) throws -> R) rethrows -> R {
        var cStruct = VkDebugUtilsMessengerCallbackDataEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_DEBUG_UTILS_MESSENGER_CALLBACK_DATA_EXT
        cStruct.pNext = nil
        cStruct.flags = self.flags
        cStruct.pMessageIdName = self.pMessageIdName
        cStruct.messageIdNumber = self.messageIdNumber
        cStruct.pMessage = self.pMessage
        cStruct.queueLabelCount = self.queueLabelCount
        cStruct.pQueueLabels = self.pQueueLabels
        cStruct.cmdBufLabelCount = self.cmdBufLabelCount
        cStruct.pCmdBufLabels = self.pCmdBufLabels
        cStruct.objectCount = self.objectCount
        cStruct.pObjects = self.pObjects
        return try body(&cStruct)
    }
}

struct ImportMemoryHostPointerInfoEXT: CStructConvertible {
    typealias CStruct = VkImportMemoryHostPointerInfoEXT

    let handleType: VkExternalMemoryHandleTypeFlagBits
    let pHostPointer: UnsafeMutableRawPointer

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkImportMemoryHostPointerInfoEXT>) throws -> R) rethrows -> R {
        var cStruct = VkImportMemoryHostPointerInfoEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_IMPORT_MEMORY_HOST_POINTER_INFO_EXT
        cStruct.pNext = nil
        cStruct.handleType = self.handleType
        cStruct.pHostPointer = self.pHostPointer
        return try body(&cStruct)
    }
}

struct MemoryHostPointerPropertiesEXT: CStructConvertible {
    typealias CStruct = VkMemoryHostPointerPropertiesEXT

    let memoryTypeBits: UInt32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkMemoryHostPointerPropertiesEXT>) throws -> R) rethrows -> R {
        var cStruct = VkMemoryHostPointerPropertiesEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_MEMORY_HOST_POINTER_PROPERTIES_EXT
        cStruct.pNext = nil
        cStruct.memoryTypeBits = self.memoryTypeBits
        return try body(&cStruct)
    }
}

struct PhysicalDeviceExternalMemoryHostPropertiesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceExternalMemoryHostPropertiesEXT

    let minImportedHostPointerAlignment: VkDeviceSize

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceExternalMemoryHostPropertiesEXT>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceExternalMemoryHostPropertiesEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_MEMORY_HOST_PROPERTIES_EXT
        cStruct.pNext = nil
        cStruct.minImportedHostPointerAlignment = self.minImportedHostPointerAlignment
        return try body(&cStruct)
    }
}

struct PhysicalDeviceConservativeRasterizationPropertiesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceConservativeRasterizationPropertiesEXT

    let primitiveOverestimationSize: Float
    let maxExtraPrimitiveOverestimationSize: Float
    let extraPrimitiveOverestimationSizeGranularity: Float
    let primitiveUnderestimation: VkBool32
    let conservativePointAndLineRasterization: VkBool32
    let degenerateTrianglesRasterized: VkBool32
    let degenerateLinesRasterized: VkBool32
    let fullyCoveredFragmentShaderInputVariable: VkBool32
    let conservativeRasterizationPostDepthCoverage: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceConservativeRasterizationPropertiesEXT>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceConservativeRasterizationPropertiesEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_CONSERVATIVE_RASTERIZATION_PROPERTIES_EXT
        cStruct.pNext = nil
        cStruct.primitiveOverestimationSize = self.primitiveOverestimationSize
        cStruct.maxExtraPrimitiveOverestimationSize = self.maxExtraPrimitiveOverestimationSize
        cStruct.extraPrimitiveOverestimationSizeGranularity = self.extraPrimitiveOverestimationSizeGranularity
        cStruct.primitiveUnderestimation = self.primitiveUnderestimation
        cStruct.conservativePointAndLineRasterization = self.conservativePointAndLineRasterization
        cStruct.degenerateTrianglesRasterized = self.degenerateTrianglesRasterized
        cStruct.degenerateLinesRasterized = self.degenerateLinesRasterized
        cStruct.fullyCoveredFragmentShaderInputVariable = self.fullyCoveredFragmentShaderInputVariable
        cStruct.conservativeRasterizationPostDepthCoverage = self.conservativeRasterizationPostDepthCoverage
        return try body(&cStruct)
    }
}

struct CalibratedTimestampInfoEXT: CStructConvertible {
    typealias CStruct = VkCalibratedTimestampInfoEXT

    let timeDomain: VkTimeDomainEXT

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkCalibratedTimestampInfoEXT>) throws -> R) rethrows -> R {
        var cStruct = VkCalibratedTimestampInfoEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_CALIBRATED_TIMESTAMP_INFO_EXT
        cStruct.pNext = nil
        cStruct.timeDomain = self.timeDomain
        return try body(&cStruct)
    }
}

struct PhysicalDeviceShaderCorePropertiesAMD: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceShaderCorePropertiesAMD

    let shaderEngineCount: UInt32
    let shaderArraysPerEngineCount: UInt32
    let computeUnitsPerShaderArray: UInt32
    let simdPerComputeUnit: UInt32
    let wavefrontsPerSimd: UInt32
    let wavefrontSize: UInt32
    let sgprsPerSimd: UInt32
    let minSgprAllocation: UInt32
    let maxSgprAllocation: UInt32
    let sgprAllocationGranularity: UInt32
    let vgprsPerSimd: UInt32
    let minVgprAllocation: UInt32
    let maxVgprAllocation: UInt32
    let vgprAllocationGranularity: UInt32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceShaderCorePropertiesAMD>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceShaderCorePropertiesAMD()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_CORE_PROPERTIES_AMD
        cStruct.pNext = nil
        cStruct.shaderEngineCount = self.shaderEngineCount
        cStruct.shaderArraysPerEngineCount = self.shaderArraysPerEngineCount
        cStruct.computeUnitsPerShaderArray = self.computeUnitsPerShaderArray
        cStruct.simdPerComputeUnit = self.simdPerComputeUnit
        cStruct.wavefrontsPerSimd = self.wavefrontsPerSimd
        cStruct.wavefrontSize = self.wavefrontSize
        cStruct.sgprsPerSimd = self.sgprsPerSimd
        cStruct.minSgprAllocation = self.minSgprAllocation
        cStruct.maxSgprAllocation = self.maxSgprAllocation
        cStruct.sgprAllocationGranularity = self.sgprAllocationGranularity
        cStruct.vgprsPerSimd = self.vgprsPerSimd
        cStruct.minVgprAllocation = self.minVgprAllocation
        cStruct.maxVgprAllocation = self.maxVgprAllocation
        cStruct.vgprAllocationGranularity = self.vgprAllocationGranularity
        return try body(&cStruct)
    }
}

struct PhysicalDeviceShaderCoreProperties2AMD: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceShaderCoreProperties2AMD

    let shaderCoreFeatures: VkShaderCorePropertiesFlagsAMD
    let activeComputeUnitCount: UInt32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceShaderCoreProperties2AMD>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceShaderCoreProperties2AMD()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_CORE_PROPERTIES_2_AMD
        cStruct.pNext = nil
        cStruct.shaderCoreFeatures = self.shaderCoreFeatures
        cStruct.activeComputeUnitCount = self.activeComputeUnitCount
        return try body(&cStruct)
    }
}

struct PipelineRasterizationConservativeStateCreateInfoEXT: CStructConvertible {
    typealias CStruct = VkPipelineRasterizationConservativeStateCreateInfoEXT

    let flags: VkPipelineRasterizationConservativeStateCreateFlagsEXT
    let conservativeRasterizationMode: VkConservativeRasterizationModeEXT
    let extraPrimitiveOverestimationSize: Float

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPipelineRasterizationConservativeStateCreateInfoEXT>) throws -> R) rethrows -> R {
        var cStruct = VkPipelineRasterizationConservativeStateCreateInfoEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_CONSERVATIVE_STATE_CREATE_INFO_EXT
        cStruct.pNext = nil
        cStruct.flags = self.flags
        cStruct.conservativeRasterizationMode = self.conservativeRasterizationMode
        cStruct.extraPrimitiveOverestimationSize = self.extraPrimitiveOverestimationSize
        return try body(&cStruct)
    }
}

struct PhysicalDeviceDescriptorIndexingFeatures: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceDescriptorIndexingFeatures

    let shaderInputAttachmentArrayDynamicIndexing: VkBool32
    let shaderUniformTexelBufferArrayDynamicIndexing: VkBool32
    let shaderStorageTexelBufferArrayDynamicIndexing: VkBool32
    let shaderUniformBufferArrayNonUniformIndexing: VkBool32
    let shaderSampledImageArrayNonUniformIndexing: VkBool32
    let shaderStorageBufferArrayNonUniformIndexing: VkBool32
    let shaderStorageImageArrayNonUniformIndexing: VkBool32
    let shaderInputAttachmentArrayNonUniformIndexing: VkBool32
    let shaderUniformTexelBufferArrayNonUniformIndexing: VkBool32
    let shaderStorageTexelBufferArrayNonUniformIndexing: VkBool32
    let descriptorBindingUniformBufferUpdateAfterBind: VkBool32
    let descriptorBindingSampledImageUpdateAfterBind: VkBool32
    let descriptorBindingStorageImageUpdateAfterBind: VkBool32
    let descriptorBindingStorageBufferUpdateAfterBind: VkBool32
    let descriptorBindingUniformTexelBufferUpdateAfterBind: VkBool32
    let descriptorBindingStorageTexelBufferUpdateAfterBind: VkBool32
    let descriptorBindingUpdateUnusedWhilePending: VkBool32
    let descriptorBindingPartiallyBound: VkBool32
    let descriptorBindingVariableDescriptorCount: VkBool32
    let runtimeDescriptorArray: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceDescriptorIndexingFeatures>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceDescriptorIndexingFeatures()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DESCRIPTOR_INDEXING_FEATURES
        cStruct.pNext = nil
        cStruct.shaderInputAttachmentArrayDynamicIndexing = self.shaderInputAttachmentArrayDynamicIndexing
        cStruct.shaderUniformTexelBufferArrayDynamicIndexing = self.shaderUniformTexelBufferArrayDynamicIndexing
        cStruct.shaderStorageTexelBufferArrayDynamicIndexing = self.shaderStorageTexelBufferArrayDynamicIndexing
        cStruct.shaderUniformBufferArrayNonUniformIndexing = self.shaderUniformBufferArrayNonUniformIndexing
        cStruct.shaderSampledImageArrayNonUniformIndexing = self.shaderSampledImageArrayNonUniformIndexing
        cStruct.shaderStorageBufferArrayNonUniformIndexing = self.shaderStorageBufferArrayNonUniformIndexing
        cStruct.shaderStorageImageArrayNonUniformIndexing = self.shaderStorageImageArrayNonUniformIndexing
        cStruct.shaderInputAttachmentArrayNonUniformIndexing = self.shaderInputAttachmentArrayNonUniformIndexing
        cStruct.shaderUniformTexelBufferArrayNonUniformIndexing = self.shaderUniformTexelBufferArrayNonUniformIndexing
        cStruct.shaderStorageTexelBufferArrayNonUniformIndexing = self.shaderStorageTexelBufferArrayNonUniformIndexing
        cStruct.descriptorBindingUniformBufferUpdateAfterBind = self.descriptorBindingUniformBufferUpdateAfterBind
        cStruct.descriptorBindingSampledImageUpdateAfterBind = self.descriptorBindingSampledImageUpdateAfterBind
        cStruct.descriptorBindingStorageImageUpdateAfterBind = self.descriptorBindingStorageImageUpdateAfterBind
        cStruct.descriptorBindingStorageBufferUpdateAfterBind = self.descriptorBindingStorageBufferUpdateAfterBind
        cStruct.descriptorBindingUniformTexelBufferUpdateAfterBind = self.descriptorBindingUniformTexelBufferUpdateAfterBind
        cStruct.descriptorBindingStorageTexelBufferUpdateAfterBind = self.descriptorBindingStorageTexelBufferUpdateAfterBind
        cStruct.descriptorBindingUpdateUnusedWhilePending = self.descriptorBindingUpdateUnusedWhilePending
        cStruct.descriptorBindingPartiallyBound = self.descriptorBindingPartiallyBound
        cStruct.descriptorBindingVariableDescriptorCount = self.descriptorBindingVariableDescriptorCount
        cStruct.runtimeDescriptorArray = self.runtimeDescriptorArray
        return try body(&cStruct)
    }
}

struct PhysicalDeviceDescriptorIndexingProperties: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceDescriptorIndexingProperties

    let maxUpdateAfterBindDescriptorsInAllPools: UInt32
    let shaderUniformBufferArrayNonUniformIndexingNative: VkBool32
    let shaderSampledImageArrayNonUniformIndexingNative: VkBool32
    let shaderStorageBufferArrayNonUniformIndexingNative: VkBool32
    let shaderStorageImageArrayNonUniformIndexingNative: VkBool32
    let shaderInputAttachmentArrayNonUniformIndexingNative: VkBool32
    let robustBufferAccessUpdateAfterBind: VkBool32
    let quadDivergentImplicitLod: VkBool32
    let maxPerStageDescriptorUpdateAfterBindSamplers: UInt32
    let maxPerStageDescriptorUpdateAfterBindUniformBuffers: UInt32
    let maxPerStageDescriptorUpdateAfterBindStorageBuffers: UInt32
    let maxPerStageDescriptorUpdateAfterBindSampledImages: UInt32
    let maxPerStageDescriptorUpdateAfterBindStorageImages: UInt32
    let maxPerStageDescriptorUpdateAfterBindInputAttachments: UInt32
    let maxPerStageUpdateAfterBindResources: UInt32
    let maxDescriptorSetUpdateAfterBindSamplers: UInt32
    let maxDescriptorSetUpdateAfterBindUniformBuffers: UInt32
    let maxDescriptorSetUpdateAfterBindUniformBuffersDynamic: UInt32
    let maxDescriptorSetUpdateAfterBindStorageBuffers: UInt32
    let maxDescriptorSetUpdateAfterBindStorageBuffersDynamic: UInt32
    let maxDescriptorSetUpdateAfterBindSampledImages: UInt32
    let maxDescriptorSetUpdateAfterBindStorageImages: UInt32
    let maxDescriptorSetUpdateAfterBindInputAttachments: UInt32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceDescriptorIndexingProperties>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceDescriptorIndexingProperties()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DESCRIPTOR_INDEXING_PROPERTIES
        cStruct.pNext = nil
        cStruct.maxUpdateAfterBindDescriptorsInAllPools = self.maxUpdateAfterBindDescriptorsInAllPools
        cStruct.shaderUniformBufferArrayNonUniformIndexingNative = self.shaderUniformBufferArrayNonUniformIndexingNative
        cStruct.shaderSampledImageArrayNonUniformIndexingNative = self.shaderSampledImageArrayNonUniformIndexingNative
        cStruct.shaderStorageBufferArrayNonUniformIndexingNative = self.shaderStorageBufferArrayNonUniformIndexingNative
        cStruct.shaderStorageImageArrayNonUniformIndexingNative = self.shaderStorageImageArrayNonUniformIndexingNative
        cStruct.shaderInputAttachmentArrayNonUniformIndexingNative = self.shaderInputAttachmentArrayNonUniformIndexingNative
        cStruct.robustBufferAccessUpdateAfterBind = self.robustBufferAccessUpdateAfterBind
        cStruct.quadDivergentImplicitLod = self.quadDivergentImplicitLod
        cStruct.maxPerStageDescriptorUpdateAfterBindSamplers = self.maxPerStageDescriptorUpdateAfterBindSamplers
        cStruct.maxPerStageDescriptorUpdateAfterBindUniformBuffers = self.maxPerStageDescriptorUpdateAfterBindUniformBuffers
        cStruct.maxPerStageDescriptorUpdateAfterBindStorageBuffers = self.maxPerStageDescriptorUpdateAfterBindStorageBuffers
        cStruct.maxPerStageDescriptorUpdateAfterBindSampledImages = self.maxPerStageDescriptorUpdateAfterBindSampledImages
        cStruct.maxPerStageDescriptorUpdateAfterBindStorageImages = self.maxPerStageDescriptorUpdateAfterBindStorageImages
        cStruct.maxPerStageDescriptorUpdateAfterBindInputAttachments = self.maxPerStageDescriptorUpdateAfterBindInputAttachments
        cStruct.maxPerStageUpdateAfterBindResources = self.maxPerStageUpdateAfterBindResources
        cStruct.maxDescriptorSetUpdateAfterBindSamplers = self.maxDescriptorSetUpdateAfterBindSamplers
        cStruct.maxDescriptorSetUpdateAfterBindUniformBuffers = self.maxDescriptorSetUpdateAfterBindUniformBuffers
        cStruct.maxDescriptorSetUpdateAfterBindUniformBuffersDynamic = self.maxDescriptorSetUpdateAfterBindUniformBuffersDynamic
        cStruct.maxDescriptorSetUpdateAfterBindStorageBuffers = self.maxDescriptorSetUpdateAfterBindStorageBuffers
        cStruct.maxDescriptorSetUpdateAfterBindStorageBuffersDynamic = self.maxDescriptorSetUpdateAfterBindStorageBuffersDynamic
        cStruct.maxDescriptorSetUpdateAfterBindSampledImages = self.maxDescriptorSetUpdateAfterBindSampledImages
        cStruct.maxDescriptorSetUpdateAfterBindStorageImages = self.maxDescriptorSetUpdateAfterBindStorageImages
        cStruct.maxDescriptorSetUpdateAfterBindInputAttachments = self.maxDescriptorSetUpdateAfterBindInputAttachments
        return try body(&cStruct)
    }
}

struct DescriptorSetLayoutBindingFlagsCreateInfo: CStructConvertible {
    typealias CStruct = VkDescriptorSetLayoutBindingFlagsCreateInfo

    let bindingCount: UInt32
    let pBindingFlags: UnsafePointer<VkDescriptorBindingFlags>

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkDescriptorSetLayoutBindingFlagsCreateInfo>) throws -> R) rethrows -> R {
        var cStruct = VkDescriptorSetLayoutBindingFlagsCreateInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_BINDING_FLAGS_CREATE_INFO
        cStruct.pNext = nil
        cStruct.bindingCount = self.bindingCount
        cStruct.pBindingFlags = self.pBindingFlags
        return try body(&cStruct)
    }
}

struct DescriptorSetVariableDescriptorCountAllocateInfo: CStructConvertible {
    typealias CStruct = VkDescriptorSetVariableDescriptorCountAllocateInfo

    let descriptorSetCount: UInt32
    let pDescriptorCounts: UnsafePointer<UInt32>

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkDescriptorSetVariableDescriptorCountAllocateInfo>) throws -> R) rethrows -> R {
        var cStruct = VkDescriptorSetVariableDescriptorCountAllocateInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_DESCRIPTOR_SET_VARIABLE_DESCRIPTOR_COUNT_ALLOCATE_INFO
        cStruct.pNext = nil
        cStruct.descriptorSetCount = self.descriptorSetCount
        cStruct.pDescriptorCounts = self.pDescriptorCounts
        return try body(&cStruct)
    }
}

struct DescriptorSetVariableDescriptorCountLayoutSupport: CStructConvertible {
    typealias CStruct = VkDescriptorSetVariableDescriptorCountLayoutSupport

    let maxVariableDescriptorCount: UInt32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkDescriptorSetVariableDescriptorCountLayoutSupport>) throws -> R) rethrows -> R {
        var cStruct = VkDescriptorSetVariableDescriptorCountLayoutSupport()
        cStruct.sType = VK_STRUCTURE_TYPE_DESCRIPTOR_SET_VARIABLE_DESCRIPTOR_COUNT_LAYOUT_SUPPORT
        cStruct.pNext = nil
        cStruct.maxVariableDescriptorCount = self.maxVariableDescriptorCount
        return try body(&cStruct)
    }
}

struct AttachmentDescription2: CStructConvertible {
    typealias CStruct = VkAttachmentDescription2

    let flags: VkAttachmentDescriptionFlags
    let format: VkFormat
    let samples: VkSampleCountFlagBits
    let loadOp: VkAttachmentLoadOp
    let storeOp: VkAttachmentStoreOp
    let stencilLoadOp: VkAttachmentLoadOp
    let stencilStoreOp: VkAttachmentStoreOp
    let initialLayout: VkImageLayout
    let finalLayout: VkImageLayout

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkAttachmentDescription2>) throws -> R) rethrows -> R {
        var cStruct = VkAttachmentDescription2()
        cStruct.sType = VK_STRUCTURE_TYPE_ATTACHMENT_DESCRIPTION_2
        cStruct.pNext = nil
        cStruct.flags = self.flags
        cStruct.format = self.format
        cStruct.samples = self.samples
        cStruct.loadOp = self.loadOp
        cStruct.storeOp = self.storeOp
        cStruct.stencilLoadOp = self.stencilLoadOp
        cStruct.stencilStoreOp = self.stencilStoreOp
        cStruct.initialLayout = self.initialLayout
        cStruct.finalLayout = self.finalLayout
        return try body(&cStruct)
    }
}

struct AttachmentReference2: CStructConvertible {
    typealias CStruct = VkAttachmentReference2

    let attachment: UInt32
    let layout: VkImageLayout
    let aspectMask: VkImageAspectFlags

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkAttachmentReference2>) throws -> R) rethrows -> R {
        var cStruct = VkAttachmentReference2()
        cStruct.sType = VK_STRUCTURE_TYPE_ATTACHMENT_REFERENCE_2
        cStruct.pNext = nil
        cStruct.attachment = self.attachment
        cStruct.layout = self.layout
        cStruct.aspectMask = self.aspectMask
        return try body(&cStruct)
    }
}

struct SubpassDescription2: CStructConvertible {
    typealias CStruct = VkSubpassDescription2

    let flags: VkSubpassDescriptionFlags
    let pipelineBindPoint: VkPipelineBindPoint
    let viewMask: UInt32
    let inputAttachmentCount: UInt32
    let pInputAttachments: UnsafePointer<VkAttachmentReference2>
    let colorAttachmentCount: UInt32
    let pColorAttachments: UnsafePointer<VkAttachmentReference2>
    let pResolveAttachments: UnsafePointer<VkAttachmentReference2>
    let pDepthStencilAttachment: UnsafePointer<VkAttachmentReference2>
    let preserveAttachmentCount: UInt32
    let pPreserveAttachments: UnsafePointer<UInt32>

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkSubpassDescription2>) throws -> R) rethrows -> R {
        var cStruct = VkSubpassDescription2()
        cStruct.sType = VK_STRUCTURE_TYPE_SUBPASS_DESCRIPTION_2
        cStruct.pNext = nil
        cStruct.flags = self.flags
        cStruct.pipelineBindPoint = self.pipelineBindPoint
        cStruct.viewMask = self.viewMask
        cStruct.inputAttachmentCount = self.inputAttachmentCount
        cStruct.pInputAttachments = self.pInputAttachments
        cStruct.colorAttachmentCount = self.colorAttachmentCount
        cStruct.pColorAttachments = self.pColorAttachments
        cStruct.pResolveAttachments = self.pResolveAttachments
        cStruct.pDepthStencilAttachment = self.pDepthStencilAttachment
        cStruct.preserveAttachmentCount = self.preserveAttachmentCount
        cStruct.pPreserveAttachments = self.pPreserveAttachments
        return try body(&cStruct)
    }
}

struct SubpassDependency2: CStructConvertible {
    typealias CStruct = VkSubpassDependency2

    let srcSubpass: UInt32
    let dstSubpass: UInt32
    let srcStageMask: VkPipelineStageFlags
    let dstStageMask: VkPipelineStageFlags
    let srcAccessMask: VkAccessFlags
    let dstAccessMask: VkAccessFlags
    let dependencyFlags: VkDependencyFlags
    let viewOffset: Int32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkSubpassDependency2>) throws -> R) rethrows -> R {
        var cStruct = VkSubpassDependency2()
        cStruct.sType = VK_STRUCTURE_TYPE_SUBPASS_DEPENDENCY_2
        cStruct.pNext = nil
        cStruct.srcSubpass = self.srcSubpass
        cStruct.dstSubpass = self.dstSubpass
        cStruct.srcStageMask = self.srcStageMask
        cStruct.dstStageMask = self.dstStageMask
        cStruct.srcAccessMask = self.srcAccessMask
        cStruct.dstAccessMask = self.dstAccessMask
        cStruct.dependencyFlags = self.dependencyFlags
        cStruct.viewOffset = self.viewOffset
        return try body(&cStruct)
    }
}

struct RenderPassCreateInfo2: CStructConvertible {
    typealias CStruct = VkRenderPassCreateInfo2

    let flags: VkRenderPassCreateFlags
    let attachmentCount: UInt32
    let pAttachments: UnsafePointer<VkAttachmentDescription2>
    let subpassCount: UInt32
    let pSubpasses: UnsafePointer<VkSubpassDescription2>
    let dependencyCount: UInt32
    let pDependencies: UnsafePointer<VkSubpassDependency2>
    let correlatedViewMaskCount: UInt32
    let pCorrelatedViewMasks: UnsafePointer<UInt32>

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkRenderPassCreateInfo2>) throws -> R) rethrows -> R {
        var cStruct = VkRenderPassCreateInfo2()
        cStruct.sType = VK_STRUCTURE_TYPE_RENDER_PASS_CREATE_INFO_2
        cStruct.pNext = nil
        cStruct.flags = self.flags
        cStruct.attachmentCount = self.attachmentCount
        cStruct.pAttachments = self.pAttachments
        cStruct.subpassCount = self.subpassCount
        cStruct.pSubpasses = self.pSubpasses
        cStruct.dependencyCount = self.dependencyCount
        cStruct.pDependencies = self.pDependencies
        cStruct.correlatedViewMaskCount = self.correlatedViewMaskCount
        cStruct.pCorrelatedViewMasks = self.pCorrelatedViewMasks
        return try body(&cStruct)
    }
}

struct SubpassBeginInfo: CStructConvertible {
    typealias CStruct = VkSubpassBeginInfo

    let contents: VkSubpassContents

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkSubpassBeginInfo>) throws -> R) rethrows -> R {
        var cStruct = VkSubpassBeginInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_SUBPASS_BEGIN_INFO
        cStruct.pNext = nil
        cStruct.contents = self.contents
        return try body(&cStruct)
    }
}

struct SubpassEndInfo: CStructConvertible {
    typealias CStruct = VkSubpassEndInfo


    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkSubpassEndInfo>) throws -> R) rethrows -> R {
        var cStruct = VkSubpassEndInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_SUBPASS_END_INFO
        cStruct.pNext = nil
        return try body(&cStruct)
    }
}

struct PhysicalDeviceTimelineSemaphoreFeatures: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceTimelineSemaphoreFeatures

    let timelineSemaphore: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceTimelineSemaphoreFeatures>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceTimelineSemaphoreFeatures()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TIMELINE_SEMAPHORE_FEATURES
        cStruct.pNext = nil
        cStruct.timelineSemaphore = self.timelineSemaphore
        return try body(&cStruct)
    }
}

struct PhysicalDeviceTimelineSemaphoreProperties: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceTimelineSemaphoreProperties

    let maxTimelineSemaphoreValueDifference: UInt64

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceTimelineSemaphoreProperties>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceTimelineSemaphoreProperties()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TIMELINE_SEMAPHORE_PROPERTIES
        cStruct.pNext = nil
        cStruct.maxTimelineSemaphoreValueDifference = self.maxTimelineSemaphoreValueDifference
        return try body(&cStruct)
    }
}

struct SemaphoreTypeCreateInfo: CStructConvertible {
    typealias CStruct = VkSemaphoreTypeCreateInfo

    let semaphoreType: VkSemaphoreType
    let initialValue: UInt64

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkSemaphoreTypeCreateInfo>) throws -> R) rethrows -> R {
        var cStruct = VkSemaphoreTypeCreateInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_SEMAPHORE_TYPE_CREATE_INFO
        cStruct.pNext = nil
        cStruct.semaphoreType = self.semaphoreType
        cStruct.initialValue = self.initialValue
        return try body(&cStruct)
    }
}

struct TimelineSemaphoreSubmitInfo: CStructConvertible {
    typealias CStruct = VkTimelineSemaphoreSubmitInfo

    let waitSemaphoreValueCount: UInt32
    let pWaitSemaphoreValues: UnsafePointer<UInt64>
    let signalSemaphoreValueCount: UInt32
    let pSignalSemaphoreValues: UnsafePointer<UInt64>

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkTimelineSemaphoreSubmitInfo>) throws -> R) rethrows -> R {
        var cStruct = VkTimelineSemaphoreSubmitInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_TIMELINE_SEMAPHORE_SUBMIT_INFO
        cStruct.pNext = nil
        cStruct.waitSemaphoreValueCount = self.waitSemaphoreValueCount
        cStruct.pWaitSemaphoreValues = self.pWaitSemaphoreValues
        cStruct.signalSemaphoreValueCount = self.signalSemaphoreValueCount
        cStruct.pSignalSemaphoreValues = self.pSignalSemaphoreValues
        return try body(&cStruct)
    }
}

struct SemaphoreWaitInfo: CStructConvertible {
    typealias CStruct = VkSemaphoreWaitInfo

    let flags: VkSemaphoreWaitFlags
    let semaphoreCount: UInt32
    let pSemaphores: UnsafePointer<VkSemaphore?>
    let pValues: UnsafePointer<UInt64>

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkSemaphoreWaitInfo>) throws -> R) rethrows -> R {
        var cStruct = VkSemaphoreWaitInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_SEMAPHORE_WAIT_INFO
        cStruct.pNext = nil
        cStruct.flags = self.flags
        cStruct.semaphoreCount = self.semaphoreCount
        cStruct.pSemaphores = self.pSemaphores
        cStruct.pValues = self.pValues
        return try body(&cStruct)
    }
}

struct SemaphoreSignalInfo: CStructConvertible {
    typealias CStruct = VkSemaphoreSignalInfo

    let semaphore: VkSemaphore
    let value: UInt64

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkSemaphoreSignalInfo>) throws -> R) rethrows -> R {
        var cStruct = VkSemaphoreSignalInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_SEMAPHORE_SIGNAL_INFO
        cStruct.pNext = nil
        cStruct.semaphore = self.semaphore
        cStruct.value = self.value
        return try body(&cStruct)
    }
}

struct VertexInputBindingDivisorDescriptionEXT: CStructConvertible {
    typealias CStruct = VkVertexInputBindingDivisorDescriptionEXT

    let binding: UInt32
    let divisor: UInt32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkVertexInputBindingDivisorDescriptionEXT>) throws -> R) rethrows -> R {
        var cStruct = VkVertexInputBindingDivisorDescriptionEXT()
        cStruct.binding = self.binding
        cStruct.divisor = self.divisor
        return try body(&cStruct)
    }
}

struct PipelineVertexInputDivisorStateCreateInfoEXT: CStructConvertible {
    typealias CStruct = VkPipelineVertexInputDivisorStateCreateInfoEXT

    let vertexBindingDivisorCount: UInt32
    let pVertexBindingDivisors: UnsafePointer<VkVertexInputBindingDivisorDescriptionEXT>

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPipelineVertexInputDivisorStateCreateInfoEXT>) throws -> R) rethrows -> R {
        var cStruct = VkPipelineVertexInputDivisorStateCreateInfoEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_VERTEX_INPUT_DIVISOR_STATE_CREATE_INFO_EXT
        cStruct.pNext = nil
        cStruct.vertexBindingDivisorCount = self.vertexBindingDivisorCount
        cStruct.pVertexBindingDivisors = self.pVertexBindingDivisors
        return try body(&cStruct)
    }
}

struct PhysicalDeviceVertexAttributeDivisorPropertiesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceVertexAttributeDivisorPropertiesEXT

    let maxVertexAttribDivisor: UInt32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceVertexAttributeDivisorPropertiesEXT>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceVertexAttributeDivisorPropertiesEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VERTEX_ATTRIBUTE_DIVISOR_PROPERTIES_EXT
        cStruct.pNext = nil
        cStruct.maxVertexAttribDivisor = self.maxVertexAttribDivisor
        return try body(&cStruct)
    }
}

struct PhysicalDevicePCIBusInfoPropertiesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDevicePCIBusInfoPropertiesEXT

    let pciDomain: UInt32
    let pciBus: UInt32
    let pciDevice: UInt32
    let pciFunction: UInt32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDevicePCIBusInfoPropertiesEXT>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDevicePCIBusInfoPropertiesEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PCI_BUS_INFO_PROPERTIES_EXT
        cStruct.pNext = nil
        cStruct.pciDomain = self.pciDomain
        cStruct.pciBus = self.pciBus
        cStruct.pciDevice = self.pciDevice
        cStruct.pciFunction = self.pciFunction
        return try body(&cStruct)
    }
}

struct CommandBufferInheritanceConditionalRenderingInfoEXT: CStructConvertible {
    typealias CStruct = VkCommandBufferInheritanceConditionalRenderingInfoEXT

    let conditionalRenderingEnable: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkCommandBufferInheritanceConditionalRenderingInfoEXT>) throws -> R) rethrows -> R {
        var cStruct = VkCommandBufferInheritanceConditionalRenderingInfoEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_COMMAND_BUFFER_INHERITANCE_CONDITIONAL_RENDERING_INFO_EXT
        cStruct.pNext = nil
        cStruct.conditionalRenderingEnable = self.conditionalRenderingEnable
        return try body(&cStruct)
    }
}

struct PhysicalDevice8BitStorageFeatures: CStructConvertible {
    typealias CStruct = VkPhysicalDevice8BitStorageFeatures

    let storageBuffer8BitAccess: VkBool32
    let uniformAndStorageBuffer8BitAccess: VkBool32
    let storagePushConstant8: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDevice8BitStorageFeatures>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDevice8BitStorageFeatures()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_8BIT_STORAGE_FEATURES
        cStruct.pNext = nil
        cStruct.storageBuffer8BitAccess = self.storageBuffer8BitAccess
        cStruct.uniformAndStorageBuffer8BitAccess = self.uniformAndStorageBuffer8BitAccess
        cStruct.storagePushConstant8 = self.storagePushConstant8
        return try body(&cStruct)
    }
}

struct PhysicalDeviceConditionalRenderingFeaturesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceConditionalRenderingFeaturesEXT

    let conditionalRendering: VkBool32
    let inheritedConditionalRendering: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceConditionalRenderingFeaturesEXT>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceConditionalRenderingFeaturesEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_CONDITIONAL_RENDERING_FEATURES_EXT
        cStruct.pNext = nil
        cStruct.conditionalRendering = self.conditionalRendering
        cStruct.inheritedConditionalRendering = self.inheritedConditionalRendering
        return try body(&cStruct)
    }
}

struct PhysicalDeviceVulkanMemoryModelFeatures: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceVulkanMemoryModelFeatures

    let vulkanMemoryModel: VkBool32
    let vulkanMemoryModelDeviceScope: VkBool32
    let vulkanMemoryModelAvailabilityVisibilityChains: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceVulkanMemoryModelFeatures>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceVulkanMemoryModelFeatures()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_MEMORY_MODEL_FEATURES
        cStruct.pNext = nil
        cStruct.vulkanMemoryModel = self.vulkanMemoryModel
        cStruct.vulkanMemoryModelDeviceScope = self.vulkanMemoryModelDeviceScope
        cStruct.vulkanMemoryModelAvailabilityVisibilityChains = self.vulkanMemoryModelAvailabilityVisibilityChains
        return try body(&cStruct)
    }
}

struct PhysicalDeviceShaderAtomicInt64Features: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceShaderAtomicInt64Features

    let shaderBufferInt64Atomics: VkBool32
    let shaderSharedInt64Atomics: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceShaderAtomicInt64Features>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceShaderAtomicInt64Features()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_ATOMIC_INT64_FEATURES
        cStruct.pNext = nil
        cStruct.shaderBufferInt64Atomics = self.shaderBufferInt64Atomics
        cStruct.shaderSharedInt64Atomics = self.shaderSharedInt64Atomics
        return try body(&cStruct)
    }
}

struct PhysicalDeviceVertexAttributeDivisorFeaturesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceVertexAttributeDivisorFeaturesEXT

    let vertexAttributeInstanceRateDivisor: VkBool32
    let vertexAttributeInstanceRateZeroDivisor: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceVertexAttributeDivisorFeaturesEXT>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceVertexAttributeDivisorFeaturesEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VERTEX_ATTRIBUTE_DIVISOR_FEATURES_EXT
        cStruct.pNext = nil
        cStruct.vertexAttributeInstanceRateDivisor = self.vertexAttributeInstanceRateDivisor
        cStruct.vertexAttributeInstanceRateZeroDivisor = self.vertexAttributeInstanceRateZeroDivisor
        return try body(&cStruct)
    }
}

struct QueueFamilyCheckpointPropertiesNV: CStructConvertible {
    typealias CStruct = VkQueueFamilyCheckpointPropertiesNV

    let checkpointExecutionStageMask: VkPipelineStageFlags

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkQueueFamilyCheckpointPropertiesNV>) throws -> R) rethrows -> R {
        var cStruct = VkQueueFamilyCheckpointPropertiesNV()
        cStruct.sType = VK_STRUCTURE_TYPE_QUEUE_FAMILY_CHECKPOINT_PROPERTIES_NV
        cStruct.pNext = nil
        cStruct.checkpointExecutionStageMask = self.checkpointExecutionStageMask
        return try body(&cStruct)
    }
}

struct CheckpointDataNV: CStructConvertible {
    typealias CStruct = VkCheckpointDataNV

    let stage: VkPipelineStageFlagBits
    let pCheckpointMarker: UnsafeMutableRawPointer

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkCheckpointDataNV>) throws -> R) rethrows -> R {
        var cStruct = VkCheckpointDataNV()
        cStruct.sType = VK_STRUCTURE_TYPE_CHECKPOINT_DATA_NV
        cStruct.pNext = nil
        cStruct.stage = self.stage
        cStruct.pCheckpointMarker = self.pCheckpointMarker
        return try body(&cStruct)
    }
}

struct PhysicalDeviceDepthStencilResolveProperties: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceDepthStencilResolveProperties

    let supportedDepthResolveModes: VkResolveModeFlags
    let supportedStencilResolveModes: VkResolveModeFlags
    let independentResolveNone: VkBool32
    let independentResolve: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceDepthStencilResolveProperties>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceDepthStencilResolveProperties()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DEPTH_STENCIL_RESOLVE_PROPERTIES
        cStruct.pNext = nil
        cStruct.supportedDepthResolveModes = self.supportedDepthResolveModes
        cStruct.supportedStencilResolveModes = self.supportedStencilResolveModes
        cStruct.independentResolveNone = self.independentResolveNone
        cStruct.independentResolve = self.independentResolve
        return try body(&cStruct)
    }
}

struct SubpassDescriptionDepthStencilResolve: CStructConvertible {
    typealias CStruct = VkSubpassDescriptionDepthStencilResolve

    let depthResolveMode: VkResolveModeFlagBits
    let stencilResolveMode: VkResolveModeFlagBits
    let pDepthStencilResolveAttachment: UnsafePointer<VkAttachmentReference2>

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkSubpassDescriptionDepthStencilResolve>) throws -> R) rethrows -> R {
        var cStruct = VkSubpassDescriptionDepthStencilResolve()
        cStruct.sType = VK_STRUCTURE_TYPE_SUBPASS_DESCRIPTION_DEPTH_STENCIL_RESOLVE
        cStruct.pNext = nil
        cStruct.depthResolveMode = self.depthResolveMode
        cStruct.stencilResolveMode = self.stencilResolveMode
        cStruct.pDepthStencilResolveAttachment = self.pDepthStencilResolveAttachment
        return try body(&cStruct)
    }
}

struct ImageViewASTCDecodeModeEXT: CStructConvertible {
    typealias CStruct = VkImageViewASTCDecodeModeEXT

    let decodeMode: VkFormat

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkImageViewASTCDecodeModeEXT>) throws -> R) rethrows -> R {
        var cStruct = VkImageViewASTCDecodeModeEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_IMAGE_VIEW_ASTC_DECODE_MODE_EXT
        cStruct.pNext = nil
        cStruct.decodeMode = self.decodeMode
        return try body(&cStruct)
    }
}

struct PhysicalDeviceASTCDecodeFeaturesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceASTCDecodeFeaturesEXT

    let decodeModeSharedExponent: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceASTCDecodeFeaturesEXT>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceASTCDecodeFeaturesEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_ASTC_DECODE_FEATURES_EXT
        cStruct.pNext = nil
        cStruct.decodeModeSharedExponent = self.decodeModeSharedExponent
        return try body(&cStruct)
    }
}

struct PhysicalDeviceTransformFeedbackFeaturesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceTransformFeedbackFeaturesEXT

    let transformFeedback: VkBool32
    let geometryStreams: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceTransformFeedbackFeaturesEXT>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceTransformFeedbackFeaturesEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TRANSFORM_FEEDBACK_FEATURES_EXT
        cStruct.pNext = nil
        cStruct.transformFeedback = self.transformFeedback
        cStruct.geometryStreams = self.geometryStreams
        return try body(&cStruct)
    }
}

struct PhysicalDeviceTransformFeedbackPropertiesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceTransformFeedbackPropertiesEXT

    let maxTransformFeedbackStreams: UInt32
    let maxTransformFeedbackBuffers: UInt32
    let maxTransformFeedbackBufferSize: VkDeviceSize
    let maxTransformFeedbackStreamDataSize: UInt32
    let maxTransformFeedbackBufferDataSize: UInt32
    let maxTransformFeedbackBufferDataStride: UInt32
    let transformFeedbackQueries: VkBool32
    let transformFeedbackStreamsLinesTriangles: VkBool32
    let transformFeedbackRasterizationStreamSelect: VkBool32
    let transformFeedbackDraw: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceTransformFeedbackPropertiesEXT>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceTransformFeedbackPropertiesEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TRANSFORM_FEEDBACK_PROPERTIES_EXT
        cStruct.pNext = nil
        cStruct.maxTransformFeedbackStreams = self.maxTransformFeedbackStreams
        cStruct.maxTransformFeedbackBuffers = self.maxTransformFeedbackBuffers
        cStruct.maxTransformFeedbackBufferSize = self.maxTransformFeedbackBufferSize
        cStruct.maxTransformFeedbackStreamDataSize = self.maxTransformFeedbackStreamDataSize
        cStruct.maxTransformFeedbackBufferDataSize = self.maxTransformFeedbackBufferDataSize
        cStruct.maxTransformFeedbackBufferDataStride = self.maxTransformFeedbackBufferDataStride
        cStruct.transformFeedbackQueries = self.transformFeedbackQueries
        cStruct.transformFeedbackStreamsLinesTriangles = self.transformFeedbackStreamsLinesTriangles
        cStruct.transformFeedbackRasterizationStreamSelect = self.transformFeedbackRasterizationStreamSelect
        cStruct.transformFeedbackDraw = self.transformFeedbackDraw
        return try body(&cStruct)
    }
}

struct PipelineRasterizationStateStreamCreateInfoEXT: CStructConvertible {
    typealias CStruct = VkPipelineRasterizationStateStreamCreateInfoEXT

    let flags: VkPipelineRasterizationStateStreamCreateFlagsEXT
    let rasterizationStream: UInt32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPipelineRasterizationStateStreamCreateInfoEXT>) throws -> R) rethrows -> R {
        var cStruct = VkPipelineRasterizationStateStreamCreateInfoEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_STATE_STREAM_CREATE_INFO_EXT
        cStruct.pNext = nil
        cStruct.flags = self.flags
        cStruct.rasterizationStream = self.rasterizationStream
        return try body(&cStruct)
    }
}

struct PhysicalDeviceRepresentativeFragmentTestFeaturesNV: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceRepresentativeFragmentTestFeaturesNV

    let representativeFragmentTest: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceRepresentativeFragmentTestFeaturesNV>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceRepresentativeFragmentTestFeaturesNV()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_REPRESENTATIVE_FRAGMENT_TEST_FEATURES_NV
        cStruct.pNext = nil
        cStruct.representativeFragmentTest = self.representativeFragmentTest
        return try body(&cStruct)
    }
}

struct PipelineRepresentativeFragmentTestStateCreateInfoNV: CStructConvertible {
    typealias CStruct = VkPipelineRepresentativeFragmentTestStateCreateInfoNV

    let representativeFragmentTestEnable: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPipelineRepresentativeFragmentTestStateCreateInfoNV>) throws -> R) rethrows -> R {
        var cStruct = VkPipelineRepresentativeFragmentTestStateCreateInfoNV()
        cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_REPRESENTATIVE_FRAGMENT_TEST_STATE_CREATE_INFO_NV
        cStruct.pNext = nil
        cStruct.representativeFragmentTestEnable = self.representativeFragmentTestEnable
        return try body(&cStruct)
    }
}

struct PhysicalDeviceExclusiveScissorFeaturesNV: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceExclusiveScissorFeaturesNV

    let exclusiveScissor: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceExclusiveScissorFeaturesNV>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceExclusiveScissorFeaturesNV()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXCLUSIVE_SCISSOR_FEATURES_NV
        cStruct.pNext = nil
        cStruct.exclusiveScissor = self.exclusiveScissor
        return try body(&cStruct)
    }
}

struct PipelineViewportExclusiveScissorStateCreateInfoNV: CStructConvertible {
    typealias CStruct = VkPipelineViewportExclusiveScissorStateCreateInfoNV

    let exclusiveScissorCount: UInt32
    let pExclusiveScissors: UnsafePointer<VkRect2D>

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPipelineViewportExclusiveScissorStateCreateInfoNV>) throws -> R) rethrows -> R {
        var cStruct = VkPipelineViewportExclusiveScissorStateCreateInfoNV()
        cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_EXCLUSIVE_SCISSOR_STATE_CREATE_INFO_NV
        cStruct.pNext = nil
        cStruct.exclusiveScissorCount = self.exclusiveScissorCount
        cStruct.pExclusiveScissors = self.pExclusiveScissors
        return try body(&cStruct)
    }
}

struct PhysicalDeviceCornerSampledImageFeaturesNV: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceCornerSampledImageFeaturesNV

    let cornerSampledImage: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceCornerSampledImageFeaturesNV>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceCornerSampledImageFeaturesNV()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_CORNER_SAMPLED_IMAGE_FEATURES_NV
        cStruct.pNext = nil
        cStruct.cornerSampledImage = self.cornerSampledImage
        return try body(&cStruct)
    }
}

struct PhysicalDeviceComputeShaderDerivativesFeaturesNV: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceComputeShaderDerivativesFeaturesNV

    let computeDerivativeGroupQuads: VkBool32
    let computeDerivativeGroupLinear: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceComputeShaderDerivativesFeaturesNV>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceComputeShaderDerivativesFeaturesNV()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_COMPUTE_SHADER_DERIVATIVES_FEATURES_NV
        cStruct.pNext = nil
        cStruct.computeDerivativeGroupQuads = self.computeDerivativeGroupQuads
        cStruct.computeDerivativeGroupLinear = self.computeDerivativeGroupLinear
        return try body(&cStruct)
    }
}

struct PhysicalDeviceFragmentShaderBarycentricFeaturesNV: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceFragmentShaderBarycentricFeaturesNV

    let fragmentShaderBarycentric: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceFragmentShaderBarycentricFeaturesNV>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceFragmentShaderBarycentricFeaturesNV()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_SHADER_BARYCENTRIC_FEATURES_NV
        cStruct.pNext = nil
        cStruct.fragmentShaderBarycentric = self.fragmentShaderBarycentric
        return try body(&cStruct)
    }
}

struct PhysicalDeviceShaderImageFootprintFeaturesNV: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceShaderImageFootprintFeaturesNV

    let imageFootprint: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceShaderImageFootprintFeaturesNV>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceShaderImageFootprintFeaturesNV()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_IMAGE_FOOTPRINT_FEATURES_NV
        cStruct.pNext = nil
        cStruct.imageFootprint = self.imageFootprint
        return try body(&cStruct)
    }
}

struct PhysicalDeviceDedicatedAllocationImageAliasingFeaturesNV: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceDedicatedAllocationImageAliasingFeaturesNV

    let dedicatedAllocationImageAliasing: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceDedicatedAllocationImageAliasingFeaturesNV>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceDedicatedAllocationImageAliasingFeaturesNV()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DEDICATED_ALLOCATION_IMAGE_ALIASING_FEATURES_NV
        cStruct.pNext = nil
        cStruct.dedicatedAllocationImageAliasing = self.dedicatedAllocationImageAliasing
        return try body(&cStruct)
    }
}

struct ShadingRatePaletteNV: CStructConvertible {
    typealias CStruct = VkShadingRatePaletteNV

    let shadingRatePaletteEntryCount: UInt32
    let pShadingRatePaletteEntries: UnsafePointer<VkShadingRatePaletteEntryNV>

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkShadingRatePaletteNV>) throws -> R) rethrows -> R {
        var cStruct = VkShadingRatePaletteNV()
        cStruct.shadingRatePaletteEntryCount = self.shadingRatePaletteEntryCount
        cStruct.pShadingRatePaletteEntries = self.pShadingRatePaletteEntries
        return try body(&cStruct)
    }
}

struct PipelineViewportShadingRateImageStateCreateInfoNV: CStructConvertible {
    typealias CStruct = VkPipelineViewportShadingRateImageStateCreateInfoNV

    let shadingRateImageEnable: VkBool32
    let viewportCount: UInt32
    let pShadingRatePalettes: UnsafePointer<VkShadingRatePaletteNV>

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPipelineViewportShadingRateImageStateCreateInfoNV>) throws -> R) rethrows -> R {
        var cStruct = VkPipelineViewportShadingRateImageStateCreateInfoNV()
        cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_SHADING_RATE_IMAGE_STATE_CREATE_INFO_NV
        cStruct.pNext = nil
        cStruct.shadingRateImageEnable = self.shadingRateImageEnable
        cStruct.viewportCount = self.viewportCount
        cStruct.pShadingRatePalettes = self.pShadingRatePalettes
        return try body(&cStruct)
    }
}

struct PhysicalDeviceShadingRateImageFeaturesNV: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceShadingRateImageFeaturesNV

    let shadingRateImage: VkBool32
    let shadingRateCoarseSampleOrder: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceShadingRateImageFeaturesNV>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceShadingRateImageFeaturesNV()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADING_RATE_IMAGE_FEATURES_NV
        cStruct.pNext = nil
        cStruct.shadingRateImage = self.shadingRateImage
        cStruct.shadingRateCoarseSampleOrder = self.shadingRateCoarseSampleOrder
        return try body(&cStruct)
    }
}

struct PhysicalDeviceShadingRateImagePropertiesNV: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceShadingRateImagePropertiesNV

    let shadingRateTexelSize: VkExtent2D
    let shadingRatePaletteSize: UInt32
    let shadingRateMaxCoarseSamples: UInt32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceShadingRateImagePropertiesNV>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceShadingRateImagePropertiesNV()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADING_RATE_IMAGE_PROPERTIES_NV
        cStruct.pNext = nil
        cStruct.shadingRateTexelSize = self.shadingRateTexelSize
        cStruct.shadingRatePaletteSize = self.shadingRatePaletteSize
        cStruct.shadingRateMaxCoarseSamples = self.shadingRateMaxCoarseSamples
        return try body(&cStruct)
    }
}

struct CoarseSampleLocationNV: CStructConvertible {
    typealias CStruct = VkCoarseSampleLocationNV

    let pixelX: UInt32
    let pixelY: UInt32
    let sample: UInt32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkCoarseSampleLocationNV>) throws -> R) rethrows -> R {
        var cStruct = VkCoarseSampleLocationNV()
        cStruct.pixelX = self.pixelX
        cStruct.pixelY = self.pixelY
        cStruct.sample = self.sample
        return try body(&cStruct)
    }
}

struct CoarseSampleOrderCustomNV: CStructConvertible {
    typealias CStruct = VkCoarseSampleOrderCustomNV

    let shadingRate: VkShadingRatePaletteEntryNV
    let sampleCount: UInt32
    let sampleLocationCount: UInt32
    let pSampleLocations: UnsafePointer<VkCoarseSampleLocationNV>

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkCoarseSampleOrderCustomNV>) throws -> R) rethrows -> R {
        var cStruct = VkCoarseSampleOrderCustomNV()
        cStruct.shadingRate = self.shadingRate
        cStruct.sampleCount = self.sampleCount
        cStruct.sampleLocationCount = self.sampleLocationCount
        cStruct.pSampleLocations = self.pSampleLocations
        return try body(&cStruct)
    }
}

struct PipelineViewportCoarseSampleOrderStateCreateInfoNV: CStructConvertible {
    typealias CStruct = VkPipelineViewportCoarseSampleOrderStateCreateInfoNV

    let sampleOrderType: VkCoarseSampleOrderTypeNV
    let customSampleOrderCount: UInt32
    let pCustomSampleOrders: UnsafePointer<VkCoarseSampleOrderCustomNV>

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPipelineViewportCoarseSampleOrderStateCreateInfoNV>) throws -> R) rethrows -> R {
        var cStruct = VkPipelineViewportCoarseSampleOrderStateCreateInfoNV()
        cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_COARSE_SAMPLE_ORDER_STATE_CREATE_INFO_NV
        cStruct.pNext = nil
        cStruct.sampleOrderType = self.sampleOrderType
        cStruct.customSampleOrderCount = self.customSampleOrderCount
        cStruct.pCustomSampleOrders = self.pCustomSampleOrders
        return try body(&cStruct)
    }
}

struct PhysicalDeviceMeshShaderFeaturesNV: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceMeshShaderFeaturesNV

    let taskShader: VkBool32
    let meshShader: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceMeshShaderFeaturesNV>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceMeshShaderFeaturesNV()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MESH_SHADER_FEATURES_NV
        cStruct.pNext = nil
        cStruct.taskShader = self.taskShader
        cStruct.meshShader = self.meshShader
        return try body(&cStruct)
    }
}

struct PhysicalDeviceMeshShaderPropertiesNV: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceMeshShaderPropertiesNV

    let maxDrawMeshTasksCount: UInt32
    let maxTaskWorkGroupInvocations: UInt32
    let maxTaskWorkGroupSize: (UInt32, UInt32, UInt32)
    let maxTaskTotalMemorySize: UInt32
    let maxTaskOutputCount: UInt32
    let maxMeshWorkGroupInvocations: UInt32
    let maxMeshWorkGroupSize: (UInt32, UInt32, UInt32)
    let maxMeshTotalMemorySize: UInt32
    let maxMeshOutputVertices: UInt32
    let maxMeshOutputPrimitives: UInt32
    let maxMeshMultiviewViewCount: UInt32
    let meshOutputPerVertexGranularity: UInt32
    let meshOutputPerPrimitiveGranularity: UInt32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceMeshShaderPropertiesNV>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceMeshShaderPropertiesNV()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MESH_SHADER_PROPERTIES_NV
        cStruct.pNext = nil
        cStruct.maxDrawMeshTasksCount = self.maxDrawMeshTasksCount
        cStruct.maxTaskWorkGroupInvocations = self.maxTaskWorkGroupInvocations
        cStruct.maxTaskWorkGroupSize = self.maxTaskWorkGroupSize
        cStruct.maxTaskTotalMemorySize = self.maxTaskTotalMemorySize
        cStruct.maxTaskOutputCount = self.maxTaskOutputCount
        cStruct.maxMeshWorkGroupInvocations = self.maxMeshWorkGroupInvocations
        cStruct.maxMeshWorkGroupSize = self.maxMeshWorkGroupSize
        cStruct.maxMeshTotalMemorySize = self.maxMeshTotalMemorySize
        cStruct.maxMeshOutputVertices = self.maxMeshOutputVertices
        cStruct.maxMeshOutputPrimitives = self.maxMeshOutputPrimitives
        cStruct.maxMeshMultiviewViewCount = self.maxMeshMultiviewViewCount
        cStruct.meshOutputPerVertexGranularity = self.meshOutputPerVertexGranularity
        cStruct.meshOutputPerPrimitiveGranularity = self.meshOutputPerPrimitiveGranularity
        return try body(&cStruct)
    }
}

struct DrawMeshTasksIndirectCommandNV: CStructConvertible {
    typealias CStruct = VkDrawMeshTasksIndirectCommandNV

    let taskCount: UInt32
    let firstTask: UInt32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkDrawMeshTasksIndirectCommandNV>) throws -> R) rethrows -> R {
        var cStruct = VkDrawMeshTasksIndirectCommandNV()
        cStruct.taskCount = self.taskCount
        cStruct.firstTask = self.firstTask
        return try body(&cStruct)
    }
}

struct RayTracingShaderGroupCreateInfoNV: CStructConvertible {
    typealias CStruct = VkRayTracingShaderGroupCreateInfoNV

    let type: VkRayTracingShaderGroupTypeKHR
    let generalShader: UInt32
    let closestHitShader: UInt32
    let anyHitShader: UInt32
    let intersectionShader: UInt32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkRayTracingShaderGroupCreateInfoNV>) throws -> R) rethrows -> R {
        var cStruct = VkRayTracingShaderGroupCreateInfoNV()
        cStruct.sType = VK_STRUCTURE_TYPE_RAY_TRACING_SHADER_GROUP_CREATE_INFO_NV
        cStruct.pNext = nil
        cStruct.type = self.type
        cStruct.generalShader = self.generalShader
        cStruct.closestHitShader = self.closestHitShader
        cStruct.anyHitShader = self.anyHitShader
        cStruct.intersectionShader = self.intersectionShader
        return try body(&cStruct)
    }
}

struct RayTracingPipelineCreateInfoNV: CStructConvertible {
    typealias CStruct = VkRayTracingPipelineCreateInfoNV

    let flags: VkPipelineCreateFlags
    let stageCount: UInt32
    let pStages: UnsafePointer<VkPipelineShaderStageCreateInfo>
    let groupCount: UInt32
    let pGroups: UnsafePointer<VkRayTracingShaderGroupCreateInfoNV>
    let maxRecursionDepth: UInt32
    let layout: VkPipelineLayout
    let basePipelineHandle: VkPipeline
    let basePipelineIndex: Int32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkRayTracingPipelineCreateInfoNV>) throws -> R) rethrows -> R {
        var cStruct = VkRayTracingPipelineCreateInfoNV()
        cStruct.sType = VK_STRUCTURE_TYPE_RAY_TRACING_PIPELINE_CREATE_INFO_NV
        cStruct.pNext = nil
        cStruct.flags = self.flags
        cStruct.stageCount = self.stageCount
        cStruct.pStages = self.pStages
        cStruct.groupCount = self.groupCount
        cStruct.pGroups = self.pGroups
        cStruct.maxRecursionDepth = self.maxRecursionDepth
        cStruct.layout = self.layout
        cStruct.basePipelineHandle = self.basePipelineHandle
        cStruct.basePipelineIndex = self.basePipelineIndex
        return try body(&cStruct)
    }
}

struct GeometryTrianglesNV: CStructConvertible {
    typealias CStruct = VkGeometryTrianglesNV

    let vertexData: VkBuffer
    let vertexOffset: VkDeviceSize
    let vertexCount: UInt32
    let vertexStride: VkDeviceSize
    let vertexFormat: VkFormat
    let indexData: VkBuffer
    let indexOffset: VkDeviceSize
    let indexCount: UInt32
    let indexType: VkIndexType
    let transformData: VkBuffer
    let transformOffset: VkDeviceSize

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkGeometryTrianglesNV>) throws -> R) rethrows -> R {
        var cStruct = VkGeometryTrianglesNV()
        cStruct.sType = VK_STRUCTURE_TYPE_GEOMETRY_TRIANGLES_NV
        cStruct.pNext = nil
        cStruct.vertexData = self.vertexData
        cStruct.vertexOffset = self.vertexOffset
        cStruct.vertexCount = self.vertexCount
        cStruct.vertexStride = self.vertexStride
        cStruct.vertexFormat = self.vertexFormat
        cStruct.indexData = self.indexData
        cStruct.indexOffset = self.indexOffset
        cStruct.indexCount = self.indexCount
        cStruct.indexType = self.indexType
        cStruct.transformData = self.transformData
        cStruct.transformOffset = self.transformOffset
        return try body(&cStruct)
    }
}

struct GeometryAABBNV: CStructConvertible {
    typealias CStruct = VkGeometryAABBNV

    let aabbData: VkBuffer
    let numAABBs: UInt32
    let stride: UInt32
    let offset: VkDeviceSize

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkGeometryAABBNV>) throws -> R) rethrows -> R {
        var cStruct = VkGeometryAABBNV()
        cStruct.sType = VK_STRUCTURE_TYPE_GEOMETRY_AABB_NV
        cStruct.pNext = nil
        cStruct.aabbData = self.aabbData
        cStruct.numAABBs = self.numAABBs
        cStruct.stride = self.stride
        cStruct.offset = self.offset
        return try body(&cStruct)
    }
}

struct GeometryDataNV: CStructConvertible {
    typealias CStruct = VkGeometryDataNV

    let triangles: VkGeometryTrianglesNV
    let aabbs: VkGeometryAABBNV

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkGeometryDataNV>) throws -> R) rethrows -> R {
        var cStruct = VkGeometryDataNV()
        cStruct.triangles = self.triangles
        cStruct.aabbs = self.aabbs
        return try body(&cStruct)
    }
}

struct GeometryNV: CStructConvertible {
    typealias CStruct = VkGeometryNV

    let geometryType: VkGeometryTypeKHR
    let geometry: VkGeometryDataNV
    let flags: VkGeometryFlagsKHR

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkGeometryNV>) throws -> R) rethrows -> R {
        var cStruct = VkGeometryNV()
        cStruct.sType = VK_STRUCTURE_TYPE_GEOMETRY_NV
        cStruct.pNext = nil
        cStruct.geometryType = self.geometryType
        cStruct.geometry = self.geometry
        cStruct.flags = self.flags
        return try body(&cStruct)
    }
}

struct AccelerationStructureInfoNV: CStructConvertible {
    typealias CStruct = VkAccelerationStructureInfoNV

    let type: VkAccelerationStructureTypeNV
    let flags: VkBuildAccelerationStructureFlagsNV
    let instanceCount: UInt32
    let geometryCount: UInt32
    let pGeometries: UnsafePointer<VkGeometryNV>

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkAccelerationStructureInfoNV>) throws -> R) rethrows -> R {
        var cStruct = VkAccelerationStructureInfoNV()
        cStruct.sType = VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_INFO_NV
        cStruct.pNext = nil
        cStruct.type = self.type
        cStruct.flags = self.flags
        cStruct.instanceCount = self.instanceCount
        cStruct.geometryCount = self.geometryCount
        cStruct.pGeometries = self.pGeometries
        return try body(&cStruct)
    }
}

struct AccelerationStructureCreateInfoNV: CStructConvertible {
    typealias CStruct = VkAccelerationStructureCreateInfoNV

    let compactedSize: VkDeviceSize
    let info: VkAccelerationStructureInfoNV

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkAccelerationStructureCreateInfoNV>) throws -> R) rethrows -> R {
        var cStruct = VkAccelerationStructureCreateInfoNV()
        cStruct.sType = VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_CREATE_INFO_NV
        cStruct.pNext = nil
        cStruct.compactedSize = self.compactedSize
        cStruct.info = self.info
        return try body(&cStruct)
    }
}

struct AccelerationStructureMemoryRequirementsInfoNV: CStructConvertible {
    typealias CStruct = VkAccelerationStructureMemoryRequirementsInfoNV

    let type: VkAccelerationStructureMemoryRequirementsTypeNV
    let accelerationStructure: VkAccelerationStructureNV

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkAccelerationStructureMemoryRequirementsInfoNV>) throws -> R) rethrows -> R {
        var cStruct = VkAccelerationStructureMemoryRequirementsInfoNV()
        cStruct.sType = VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_MEMORY_REQUIREMENTS_INFO_NV
        cStruct.pNext = nil
        cStruct.type = self.type
        cStruct.accelerationStructure = self.accelerationStructure
        return try body(&cStruct)
    }
}

struct PhysicalDeviceRayTracingPropertiesNV: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceRayTracingPropertiesNV

    let shaderGroupHandleSize: UInt32
    let maxRecursionDepth: UInt32
    let maxShaderGroupStride: UInt32
    let shaderGroupBaseAlignment: UInt32
    let maxGeometryCount: UInt64
    let maxInstanceCount: UInt64
    let maxTriangleCount: UInt64
    let maxDescriptorSetAccelerationStructures: UInt32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceRayTracingPropertiesNV>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceRayTracingPropertiesNV()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_RAY_TRACING_PROPERTIES_NV
        cStruct.pNext = nil
        cStruct.shaderGroupHandleSize = self.shaderGroupHandleSize
        cStruct.maxRecursionDepth = self.maxRecursionDepth
        cStruct.maxShaderGroupStride = self.maxShaderGroupStride
        cStruct.shaderGroupBaseAlignment = self.shaderGroupBaseAlignment
        cStruct.maxGeometryCount = self.maxGeometryCount
        cStruct.maxInstanceCount = self.maxInstanceCount
        cStruct.maxTriangleCount = self.maxTriangleCount
        cStruct.maxDescriptorSetAccelerationStructures = self.maxDescriptorSetAccelerationStructures
        return try body(&cStruct)
    }
}

struct DrmFormatModifierPropertiesListEXT: CStructConvertible {
    typealias CStruct = VkDrmFormatModifierPropertiesListEXT

    let drmFormatModifierCount: UInt32
    let pDrmFormatModifierProperties: UnsafeMutablePointer<VkDrmFormatModifierPropertiesEXT>

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkDrmFormatModifierPropertiesListEXT>) throws -> R) rethrows -> R {
        var cStruct = VkDrmFormatModifierPropertiesListEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_DRM_FORMAT_MODIFIER_PROPERTIES_LIST_EXT
        cStruct.pNext = nil
        cStruct.drmFormatModifierCount = self.drmFormatModifierCount
        cStruct.pDrmFormatModifierProperties = self.pDrmFormatModifierProperties
        return try body(&cStruct)
    }
}

struct DrmFormatModifierPropertiesEXT: CStructConvertible {
    typealias CStruct = VkDrmFormatModifierPropertiesEXT

    let drmFormatModifier: UInt64
    let drmFormatModifierPlaneCount: UInt32
    let drmFormatModifierTilingFeatures: VkFormatFeatureFlags

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkDrmFormatModifierPropertiesEXT>) throws -> R) rethrows -> R {
        var cStruct = VkDrmFormatModifierPropertiesEXT()
        cStruct.drmFormatModifier = self.drmFormatModifier
        cStruct.drmFormatModifierPlaneCount = self.drmFormatModifierPlaneCount
        cStruct.drmFormatModifierTilingFeatures = self.drmFormatModifierTilingFeatures
        return try body(&cStruct)
    }
}

struct PhysicalDeviceImageDrmFormatModifierInfoEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceImageDrmFormatModifierInfoEXT

    let drmFormatModifier: UInt64
    let sharingMode: VkSharingMode
    let queueFamilyIndexCount: UInt32
    let pQueueFamilyIndices: UnsafePointer<UInt32>

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceImageDrmFormatModifierInfoEXT>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceImageDrmFormatModifierInfoEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_DRM_FORMAT_MODIFIER_INFO_EXT
        cStruct.pNext = nil
        cStruct.drmFormatModifier = self.drmFormatModifier
        cStruct.sharingMode = self.sharingMode
        cStruct.queueFamilyIndexCount = self.queueFamilyIndexCount
        cStruct.pQueueFamilyIndices = self.pQueueFamilyIndices
        return try body(&cStruct)
    }
}

struct ImageDrmFormatModifierListCreateInfoEXT: CStructConvertible {
    typealias CStruct = VkImageDrmFormatModifierListCreateInfoEXT

    let drmFormatModifierCount: UInt32
    let pDrmFormatModifiers: UnsafePointer<UInt64>

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkImageDrmFormatModifierListCreateInfoEXT>) throws -> R) rethrows -> R {
        var cStruct = VkImageDrmFormatModifierListCreateInfoEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_IMAGE_DRM_FORMAT_MODIFIER_LIST_CREATE_INFO_EXT
        cStruct.pNext = nil
        cStruct.drmFormatModifierCount = self.drmFormatModifierCount
        cStruct.pDrmFormatModifiers = self.pDrmFormatModifiers
        return try body(&cStruct)
    }
}

struct ImageDrmFormatModifierExplicitCreateInfoEXT: CStructConvertible {
    typealias CStruct = VkImageDrmFormatModifierExplicitCreateInfoEXT

    let drmFormatModifier: UInt64
    let drmFormatModifierPlaneCount: UInt32
    let pPlaneLayouts: UnsafePointer<VkSubresourceLayout>

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkImageDrmFormatModifierExplicitCreateInfoEXT>) throws -> R) rethrows -> R {
        var cStruct = VkImageDrmFormatModifierExplicitCreateInfoEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_IMAGE_DRM_FORMAT_MODIFIER_EXPLICIT_CREATE_INFO_EXT
        cStruct.pNext = nil
        cStruct.drmFormatModifier = self.drmFormatModifier
        cStruct.drmFormatModifierPlaneCount = self.drmFormatModifierPlaneCount
        cStruct.pPlaneLayouts = self.pPlaneLayouts
        return try body(&cStruct)
    }
}

struct ImageDrmFormatModifierPropertiesEXT: CStructConvertible {
    typealias CStruct = VkImageDrmFormatModifierPropertiesEXT

    let drmFormatModifier: UInt64

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkImageDrmFormatModifierPropertiesEXT>) throws -> R) rethrows -> R {
        var cStruct = VkImageDrmFormatModifierPropertiesEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_IMAGE_DRM_FORMAT_MODIFIER_PROPERTIES_EXT
        cStruct.pNext = nil
        cStruct.drmFormatModifier = self.drmFormatModifier
        return try body(&cStruct)
    }
}

struct ImageStencilUsageCreateInfo: CStructConvertible {
    typealias CStruct = VkImageStencilUsageCreateInfo

    let stencilUsage: VkImageUsageFlags

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkImageStencilUsageCreateInfo>) throws -> R) rethrows -> R {
        var cStruct = VkImageStencilUsageCreateInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_IMAGE_STENCIL_USAGE_CREATE_INFO
        cStruct.pNext = nil
        cStruct.stencilUsage = self.stencilUsage
        return try body(&cStruct)
    }
}

struct DeviceMemoryOverallocationCreateInfoAMD: CStructConvertible {
    typealias CStruct = VkDeviceMemoryOverallocationCreateInfoAMD

    let overallocationBehavior: VkMemoryOverallocationBehaviorAMD

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkDeviceMemoryOverallocationCreateInfoAMD>) throws -> R) rethrows -> R {
        var cStruct = VkDeviceMemoryOverallocationCreateInfoAMD()
        cStruct.sType = VK_STRUCTURE_TYPE_DEVICE_MEMORY_OVERALLOCATION_CREATE_INFO_AMD
        cStruct.pNext = nil
        cStruct.overallocationBehavior = self.overallocationBehavior
        return try body(&cStruct)
    }
}

struct PhysicalDeviceFragmentDensityMapFeaturesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceFragmentDensityMapFeaturesEXT

    let fragmentDensityMap: VkBool32
    let fragmentDensityMapDynamic: VkBool32
    let fragmentDensityMapNonSubsampledImages: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceFragmentDensityMapFeaturesEXT>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceFragmentDensityMapFeaturesEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_DENSITY_MAP_FEATURES_EXT
        cStruct.pNext = nil
        cStruct.fragmentDensityMap = self.fragmentDensityMap
        cStruct.fragmentDensityMapDynamic = self.fragmentDensityMapDynamic
        cStruct.fragmentDensityMapNonSubsampledImages = self.fragmentDensityMapNonSubsampledImages
        return try body(&cStruct)
    }
}

struct PhysicalDeviceFragmentDensityMapPropertiesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceFragmentDensityMapPropertiesEXT

    let minFragmentDensityTexelSize: VkExtent2D
    let maxFragmentDensityTexelSize: VkExtent2D
    let fragmentDensityInvocations: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceFragmentDensityMapPropertiesEXT>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceFragmentDensityMapPropertiesEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_DENSITY_MAP_PROPERTIES_EXT
        cStruct.pNext = nil
        cStruct.minFragmentDensityTexelSize = self.minFragmentDensityTexelSize
        cStruct.maxFragmentDensityTexelSize = self.maxFragmentDensityTexelSize
        cStruct.fragmentDensityInvocations = self.fragmentDensityInvocations
        return try body(&cStruct)
    }
}

struct RenderPassFragmentDensityMapCreateInfoEXT: CStructConvertible {
    typealias CStruct = VkRenderPassFragmentDensityMapCreateInfoEXT

    let fragmentDensityMapAttachment: VkAttachmentReference

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkRenderPassFragmentDensityMapCreateInfoEXT>) throws -> R) rethrows -> R {
        var cStruct = VkRenderPassFragmentDensityMapCreateInfoEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_RENDER_PASS_FRAGMENT_DENSITY_MAP_CREATE_INFO_EXT
        cStruct.pNext = nil
        cStruct.fragmentDensityMapAttachment = self.fragmentDensityMapAttachment
        return try body(&cStruct)
    }
}

struct PhysicalDeviceScalarBlockLayoutFeatures: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceScalarBlockLayoutFeatures

    let scalarBlockLayout: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceScalarBlockLayoutFeatures>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceScalarBlockLayoutFeatures()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SCALAR_BLOCK_LAYOUT_FEATURES
        cStruct.pNext = nil
        cStruct.scalarBlockLayout = self.scalarBlockLayout
        return try body(&cStruct)
    }
}

struct SurfaceProtectedCapabilitiesKHR: CStructConvertible {
    typealias CStruct = VkSurfaceProtectedCapabilitiesKHR

    let supportsProtected: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkSurfaceProtectedCapabilitiesKHR>) throws -> R) rethrows -> R {
        var cStruct = VkSurfaceProtectedCapabilitiesKHR()
        cStruct.sType = VK_STRUCTURE_TYPE_SURFACE_PROTECTED_CAPABILITIES_KHR
        cStruct.pNext = nil
        cStruct.supportsProtected = self.supportsProtected
        return try body(&cStruct)
    }
}

struct PhysicalDeviceUniformBufferStandardLayoutFeatures: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceUniformBufferStandardLayoutFeatures

    let uniformBufferStandardLayout: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceUniformBufferStandardLayoutFeatures>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceUniformBufferStandardLayoutFeatures()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_UNIFORM_BUFFER_STANDARD_LAYOUT_FEATURES
        cStruct.pNext = nil
        cStruct.uniformBufferStandardLayout = self.uniformBufferStandardLayout
        return try body(&cStruct)
    }
}

struct PhysicalDeviceDepthClipEnableFeaturesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceDepthClipEnableFeaturesEXT

    let depthClipEnable: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceDepthClipEnableFeaturesEXT>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceDepthClipEnableFeaturesEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DEPTH_CLIP_ENABLE_FEATURES_EXT
        cStruct.pNext = nil
        cStruct.depthClipEnable = self.depthClipEnable
        return try body(&cStruct)
    }
}

struct PipelineRasterizationDepthClipStateCreateInfoEXT: CStructConvertible {
    typealias CStruct = VkPipelineRasterizationDepthClipStateCreateInfoEXT

    let flags: VkPipelineRasterizationDepthClipStateCreateFlagsEXT
    let depthClipEnable: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPipelineRasterizationDepthClipStateCreateInfoEXT>) throws -> R) rethrows -> R {
        var cStruct = VkPipelineRasterizationDepthClipStateCreateInfoEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_DEPTH_CLIP_STATE_CREATE_INFO_EXT
        cStruct.pNext = nil
        cStruct.flags = self.flags
        cStruct.depthClipEnable = self.depthClipEnable
        return try body(&cStruct)
    }
}

struct PhysicalDeviceMemoryBudgetPropertiesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceMemoryBudgetPropertiesEXT

    let heapBudget: (VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize)
    let heapUsage: (VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize)

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceMemoryBudgetPropertiesEXT>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceMemoryBudgetPropertiesEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MEMORY_BUDGET_PROPERTIES_EXT
        cStruct.pNext = nil
        cStruct.heapBudget = self.heapBudget
        cStruct.heapUsage = self.heapUsage
        return try body(&cStruct)
    }
}

struct PhysicalDeviceMemoryPriorityFeaturesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceMemoryPriorityFeaturesEXT

    let memoryPriority: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceMemoryPriorityFeaturesEXT>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceMemoryPriorityFeaturesEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MEMORY_PRIORITY_FEATURES_EXT
        cStruct.pNext = nil
        cStruct.memoryPriority = self.memoryPriority
        return try body(&cStruct)
    }
}

struct MemoryPriorityAllocateInfoEXT: CStructConvertible {
    typealias CStruct = VkMemoryPriorityAllocateInfoEXT

    let priority: Float

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkMemoryPriorityAllocateInfoEXT>) throws -> R) rethrows -> R {
        var cStruct = VkMemoryPriorityAllocateInfoEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_MEMORY_PRIORITY_ALLOCATE_INFO_EXT
        cStruct.pNext = nil
        cStruct.priority = self.priority
        return try body(&cStruct)
    }
}

struct PhysicalDeviceBufferDeviceAddressFeatures: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceBufferDeviceAddressFeatures

    let bufferDeviceAddress: VkBool32
    let bufferDeviceAddressCaptureReplay: VkBool32
    let bufferDeviceAddressMultiDevice: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceBufferDeviceAddressFeatures>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceBufferDeviceAddressFeatures()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_BUFFER_DEVICE_ADDRESS_FEATURES
        cStruct.pNext = nil
        cStruct.bufferDeviceAddress = self.bufferDeviceAddress
        cStruct.bufferDeviceAddressCaptureReplay = self.bufferDeviceAddressCaptureReplay
        cStruct.bufferDeviceAddressMultiDevice = self.bufferDeviceAddressMultiDevice
        return try body(&cStruct)
    }
}

struct PhysicalDeviceBufferDeviceAddressFeaturesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceBufferDeviceAddressFeaturesEXT

    let bufferDeviceAddress: VkBool32
    let bufferDeviceAddressCaptureReplay: VkBool32
    let bufferDeviceAddressMultiDevice: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceBufferDeviceAddressFeaturesEXT>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceBufferDeviceAddressFeaturesEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_BUFFER_DEVICE_ADDRESS_FEATURES_EXT
        cStruct.pNext = nil
        cStruct.bufferDeviceAddress = self.bufferDeviceAddress
        cStruct.bufferDeviceAddressCaptureReplay = self.bufferDeviceAddressCaptureReplay
        cStruct.bufferDeviceAddressMultiDevice = self.bufferDeviceAddressMultiDevice
        return try body(&cStruct)
    }
}

struct BufferDeviceAddressInfo: CStructConvertible {
    typealias CStruct = VkBufferDeviceAddressInfo

    let buffer: VkBuffer

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkBufferDeviceAddressInfo>) throws -> R) rethrows -> R {
        var cStruct = VkBufferDeviceAddressInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_BUFFER_DEVICE_ADDRESS_INFO
        cStruct.pNext = nil
        cStruct.buffer = self.buffer
        return try body(&cStruct)
    }
}

struct BufferOpaqueCaptureAddressCreateInfo: CStructConvertible {
    typealias CStruct = VkBufferOpaqueCaptureAddressCreateInfo

    let opaqueCaptureAddress: UInt64

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkBufferOpaqueCaptureAddressCreateInfo>) throws -> R) rethrows -> R {
        var cStruct = VkBufferOpaqueCaptureAddressCreateInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_BUFFER_OPAQUE_CAPTURE_ADDRESS_CREATE_INFO
        cStruct.pNext = nil
        cStruct.opaqueCaptureAddress = self.opaqueCaptureAddress
        return try body(&cStruct)
    }
}

struct BufferDeviceAddressCreateInfoEXT: CStructConvertible {
    typealias CStruct = VkBufferDeviceAddressCreateInfoEXT

    let deviceAddress: VkDeviceAddress

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkBufferDeviceAddressCreateInfoEXT>) throws -> R) rethrows -> R {
        var cStruct = VkBufferDeviceAddressCreateInfoEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_BUFFER_DEVICE_ADDRESS_CREATE_INFO_EXT
        cStruct.pNext = nil
        cStruct.deviceAddress = self.deviceAddress
        return try body(&cStruct)
    }
}

struct PhysicalDeviceImageViewImageFormatInfoEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceImageViewImageFormatInfoEXT

    let imageViewType: VkImageViewType

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceImageViewImageFormatInfoEXT>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceImageViewImageFormatInfoEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_VIEW_IMAGE_FORMAT_INFO_EXT
        cStruct.pNext = nil
        cStruct.imageViewType = self.imageViewType
        return try body(&cStruct)
    }
}

struct FilterCubicImageViewImageFormatPropertiesEXT: CStructConvertible {
    typealias CStruct = VkFilterCubicImageViewImageFormatPropertiesEXT

    let filterCubic: VkBool32
    let filterCubicMinmax: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkFilterCubicImageViewImageFormatPropertiesEXT>) throws -> R) rethrows -> R {
        var cStruct = VkFilterCubicImageViewImageFormatPropertiesEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_FILTER_CUBIC_IMAGE_VIEW_IMAGE_FORMAT_PROPERTIES_EXT
        cStruct.pNext = nil
        cStruct.filterCubic = self.filterCubic
        cStruct.filterCubicMinmax = self.filterCubicMinmax
        return try body(&cStruct)
    }
}

struct PhysicalDeviceImagelessFramebufferFeatures: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceImagelessFramebufferFeatures

    let imagelessFramebuffer: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceImagelessFramebufferFeatures>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceImagelessFramebufferFeatures()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGELESS_FRAMEBUFFER_FEATURES
        cStruct.pNext = nil
        cStruct.imagelessFramebuffer = self.imagelessFramebuffer
        return try body(&cStruct)
    }
}

struct FramebufferAttachmentsCreateInfo: CStructConvertible {
    typealias CStruct = VkFramebufferAttachmentsCreateInfo

    let attachmentImageInfoCount: UInt32
    let pAttachmentImageInfos: UnsafePointer<VkFramebufferAttachmentImageInfo>

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkFramebufferAttachmentsCreateInfo>) throws -> R) rethrows -> R {
        var cStruct = VkFramebufferAttachmentsCreateInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_FRAMEBUFFER_ATTACHMENTS_CREATE_INFO
        cStruct.pNext = nil
        cStruct.attachmentImageInfoCount = self.attachmentImageInfoCount
        cStruct.pAttachmentImageInfos = self.pAttachmentImageInfos
        return try body(&cStruct)
    }
}

struct FramebufferAttachmentImageInfo: CStructConvertible {
    typealias CStruct = VkFramebufferAttachmentImageInfo

    let flags: VkImageCreateFlags
    let usage: VkImageUsageFlags
    let width: UInt32
    let height: UInt32
    let layerCount: UInt32
    let viewFormatCount: UInt32
    let pViewFormats: UnsafePointer<VkFormat>

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkFramebufferAttachmentImageInfo>) throws -> R) rethrows -> R {
        var cStruct = VkFramebufferAttachmentImageInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_FRAMEBUFFER_ATTACHMENT_IMAGE_INFO
        cStruct.pNext = nil
        cStruct.flags = self.flags
        cStruct.usage = self.usage
        cStruct.width = self.width
        cStruct.height = self.height
        cStruct.layerCount = self.layerCount
        cStruct.viewFormatCount = self.viewFormatCount
        cStruct.pViewFormats = self.pViewFormats
        return try body(&cStruct)
    }
}

struct RenderPassAttachmentBeginInfo: CStructConvertible {
    typealias CStruct = VkRenderPassAttachmentBeginInfo

    let attachmentCount: UInt32
    let pAttachments: UnsafePointer<VkImageView?>

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkRenderPassAttachmentBeginInfo>) throws -> R) rethrows -> R {
        var cStruct = VkRenderPassAttachmentBeginInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_RENDER_PASS_ATTACHMENT_BEGIN_INFO
        cStruct.pNext = nil
        cStruct.attachmentCount = self.attachmentCount
        cStruct.pAttachments = self.pAttachments
        return try body(&cStruct)
    }
}

struct PhysicalDeviceTextureCompressionASTCHDRFeaturesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceTextureCompressionASTCHDRFeaturesEXT

    let textureCompressionASTC_HDR: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceTextureCompressionASTCHDRFeaturesEXT>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceTextureCompressionASTCHDRFeaturesEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TEXTURE_COMPRESSION_ASTC_HDR_FEATURES_EXT
        cStruct.pNext = nil
        cStruct.textureCompressionASTC_HDR = self.textureCompressionASTC_HDR
        return try body(&cStruct)
    }
}

struct PhysicalDeviceCooperativeMatrixFeaturesNV: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceCooperativeMatrixFeaturesNV

    let cooperativeMatrix: VkBool32
    let cooperativeMatrixRobustBufferAccess: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceCooperativeMatrixFeaturesNV>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceCooperativeMatrixFeaturesNV()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_COOPERATIVE_MATRIX_FEATURES_NV
        cStruct.pNext = nil
        cStruct.cooperativeMatrix = self.cooperativeMatrix
        cStruct.cooperativeMatrixRobustBufferAccess = self.cooperativeMatrixRobustBufferAccess
        return try body(&cStruct)
    }
}

struct PhysicalDeviceCooperativeMatrixPropertiesNV: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceCooperativeMatrixPropertiesNV

    let cooperativeMatrixSupportedStages: VkShaderStageFlags

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceCooperativeMatrixPropertiesNV>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceCooperativeMatrixPropertiesNV()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_COOPERATIVE_MATRIX_PROPERTIES_NV
        cStruct.pNext = nil
        cStruct.cooperativeMatrixSupportedStages = self.cooperativeMatrixSupportedStages
        return try body(&cStruct)
    }
}

struct CooperativeMatrixPropertiesNV: CStructConvertible {
    typealias CStruct = VkCooperativeMatrixPropertiesNV

    let MSize: UInt32
    let NSize: UInt32
    let KSize: UInt32
    let AType: VkComponentTypeNV
    let BType: VkComponentTypeNV
    let CType: VkComponentTypeNV
    let DType: VkComponentTypeNV
    let scope: VkScopeNV

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkCooperativeMatrixPropertiesNV>) throws -> R) rethrows -> R {
        var cStruct = VkCooperativeMatrixPropertiesNV()
        cStruct.sType = VK_STRUCTURE_TYPE_COOPERATIVE_MATRIX_PROPERTIES_NV
        cStruct.pNext = nil
        cStruct.MSize = self.MSize
        cStruct.NSize = self.NSize
        cStruct.KSize = self.KSize
        cStruct.AType = self.AType
        cStruct.BType = self.BType
        cStruct.CType = self.CType
        cStruct.DType = self.DType
        cStruct.scope = self.scope
        return try body(&cStruct)
    }
}

struct PhysicalDeviceYcbcrImageArraysFeaturesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceYcbcrImageArraysFeaturesEXT

    let ycbcrImageArrays: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceYcbcrImageArraysFeaturesEXT>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceYcbcrImageArraysFeaturesEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_YCBCR_IMAGE_ARRAYS_FEATURES_EXT
        cStruct.pNext = nil
        cStruct.ycbcrImageArrays = self.ycbcrImageArrays
        return try body(&cStruct)
    }
}

struct ImageViewHandleInfoNVX: CStructConvertible {
    typealias CStruct = VkImageViewHandleInfoNVX

    let imageView: VkImageView
    let descriptorType: VkDescriptorType
    let sampler: VkSampler

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkImageViewHandleInfoNVX>) throws -> R) rethrows -> R {
        var cStruct = VkImageViewHandleInfoNVX()
        cStruct.sType = VK_STRUCTURE_TYPE_IMAGE_VIEW_HANDLE_INFO_NVX
        cStruct.pNext = nil
        cStruct.imageView = self.imageView
        cStruct.descriptorType = self.descriptorType
        cStruct.sampler = self.sampler
        return try body(&cStruct)
    }
}

struct PipelineCreationFeedbackEXT: CStructConvertible {
    typealias CStruct = VkPipelineCreationFeedbackEXT

    let flags: VkPipelineCreationFeedbackFlagsEXT
    let duration: UInt64

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPipelineCreationFeedbackEXT>) throws -> R) rethrows -> R {
        var cStruct = VkPipelineCreationFeedbackEXT()
        cStruct.flags = self.flags
        cStruct.duration = self.duration
        return try body(&cStruct)
    }
}

struct PipelineCreationFeedbackCreateInfoEXT: CStructConvertible {
    typealias CStruct = VkPipelineCreationFeedbackCreateInfoEXT

    let pPipelineCreationFeedback: UnsafeMutablePointer<VkPipelineCreationFeedbackEXT>
    let pipelineStageCreationFeedbackCount: UInt32
    let pPipelineStageCreationFeedbacks: UnsafeMutablePointer<VkPipelineCreationFeedbackEXT>

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPipelineCreationFeedbackCreateInfoEXT>) throws -> R) rethrows -> R {
        var cStruct = VkPipelineCreationFeedbackCreateInfoEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_CREATION_FEEDBACK_CREATE_INFO_EXT
        cStruct.pNext = nil
        cStruct.pPipelineCreationFeedback = self.pPipelineCreationFeedback
        cStruct.pipelineStageCreationFeedbackCount = self.pipelineStageCreationFeedbackCount
        cStruct.pPipelineStageCreationFeedbacks = self.pPipelineStageCreationFeedbacks
        return try body(&cStruct)
    }
}

struct PhysicalDevicePerformanceQueryFeaturesKHR: CStructConvertible {
    typealias CStruct = VkPhysicalDevicePerformanceQueryFeaturesKHR

    let performanceCounterQueryPools: VkBool32
    let performanceCounterMultipleQueryPools: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDevicePerformanceQueryFeaturesKHR>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDevicePerformanceQueryFeaturesKHR()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PERFORMANCE_QUERY_FEATURES_KHR
        cStruct.pNext = nil
        cStruct.performanceCounterQueryPools = self.performanceCounterQueryPools
        cStruct.performanceCounterMultipleQueryPools = self.performanceCounterMultipleQueryPools
        return try body(&cStruct)
    }
}

struct PhysicalDevicePerformanceQueryPropertiesKHR: CStructConvertible {
    typealias CStruct = VkPhysicalDevicePerformanceQueryPropertiesKHR

    let allowCommandBufferQueryCopies: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDevicePerformanceQueryPropertiesKHR>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDevicePerformanceQueryPropertiesKHR()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PERFORMANCE_QUERY_PROPERTIES_KHR
        cStruct.pNext = nil
        cStruct.allowCommandBufferQueryCopies = self.allowCommandBufferQueryCopies
        return try body(&cStruct)
    }
}

struct PerformanceCounterKHR: CStructConvertible {
    typealias CStruct = VkPerformanceCounterKHR

    let unit: VkPerformanceCounterUnitKHR
    let scope: VkPerformanceCounterScopeKHR
    let storage: VkPerformanceCounterStorageKHR
    let uuid: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPerformanceCounterKHR>) throws -> R) rethrows -> R {
        var cStruct = VkPerformanceCounterKHR()
        cStruct.sType = VK_STRUCTURE_TYPE_PERFORMANCE_COUNTER_KHR
        cStruct.pNext = nil
        cStruct.unit = self.unit
        cStruct.scope = self.scope
        cStruct.storage = self.storage
        cStruct.uuid = self.uuid
        return try body(&cStruct)
    }
}

struct PerformanceCounterDescriptionKHR: CStructConvertible {
    typealias CStruct = VkPerformanceCounterDescriptionKHR

    let flags: VkPerformanceCounterDescriptionFlagsKHR
    let name: (CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar)
    let category: (CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar)
    let description: (CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar)

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPerformanceCounterDescriptionKHR>) throws -> R) rethrows -> R {
        var cStruct = VkPerformanceCounterDescriptionKHR()
        cStruct.sType = VK_STRUCTURE_TYPE_PERFORMANCE_COUNTER_DESCRIPTION_KHR
        cStruct.pNext = nil
        cStruct.flags = self.flags
        cStruct.name = self.name
        cStruct.category = self.category
        cStruct.description = self.description
        return try body(&cStruct)
    }
}

struct QueryPoolPerformanceCreateInfoKHR: CStructConvertible {
    typealias CStruct = VkQueryPoolPerformanceCreateInfoKHR

    let queueFamilyIndex: UInt32
    let counterIndexCount: UInt32
    let pCounterIndices: UnsafePointer<UInt32>

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkQueryPoolPerformanceCreateInfoKHR>) throws -> R) rethrows -> R {
        var cStruct = VkQueryPoolPerformanceCreateInfoKHR()
        cStruct.sType = VK_STRUCTURE_TYPE_QUERY_POOL_PERFORMANCE_CREATE_INFO_KHR
        cStruct.pNext = nil
        cStruct.queueFamilyIndex = self.queueFamilyIndex
        cStruct.counterIndexCount = self.counterIndexCount
        cStruct.pCounterIndices = self.pCounterIndices
        return try body(&cStruct)
    }
}

struct AcquireProfilingLockInfoKHR: CStructConvertible {
    typealias CStruct = VkAcquireProfilingLockInfoKHR

    let flags: VkAcquireProfilingLockFlagsKHR
    let timeout: UInt64

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkAcquireProfilingLockInfoKHR>) throws -> R) rethrows -> R {
        var cStruct = VkAcquireProfilingLockInfoKHR()
        cStruct.sType = VK_STRUCTURE_TYPE_ACQUIRE_PROFILING_LOCK_INFO_KHR
        cStruct.pNext = nil
        cStruct.flags = self.flags
        cStruct.timeout = self.timeout
        return try body(&cStruct)
    }
}

struct PerformanceQuerySubmitInfoKHR: CStructConvertible {
    typealias CStruct = VkPerformanceQuerySubmitInfoKHR

    let counterPassIndex: UInt32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPerformanceQuerySubmitInfoKHR>) throws -> R) rethrows -> R {
        var cStruct = VkPerformanceQuerySubmitInfoKHR()
        cStruct.sType = VK_STRUCTURE_TYPE_PERFORMANCE_QUERY_SUBMIT_INFO_KHR
        cStruct.pNext = nil
        cStruct.counterPassIndex = self.counterPassIndex
        return try body(&cStruct)
    }
}

struct HeadlessSurfaceCreateInfoEXT: CStructConvertible {
    typealias CStruct = VkHeadlessSurfaceCreateInfoEXT

    let flags: VkHeadlessSurfaceCreateFlagsEXT

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkHeadlessSurfaceCreateInfoEXT>) throws -> R) rethrows -> R {
        var cStruct = VkHeadlessSurfaceCreateInfoEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_HEADLESS_SURFACE_CREATE_INFO_EXT
        cStruct.pNext = nil
        cStruct.flags = self.flags
        return try body(&cStruct)
    }
}

struct PhysicalDeviceCoverageReductionModeFeaturesNV: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceCoverageReductionModeFeaturesNV

    let coverageReductionMode: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceCoverageReductionModeFeaturesNV>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceCoverageReductionModeFeaturesNV()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_COVERAGE_REDUCTION_MODE_FEATURES_NV
        cStruct.pNext = nil
        cStruct.coverageReductionMode = self.coverageReductionMode
        return try body(&cStruct)
    }
}

struct PipelineCoverageReductionStateCreateInfoNV: CStructConvertible {
    typealias CStruct = VkPipelineCoverageReductionStateCreateInfoNV

    let flags: VkPipelineCoverageReductionStateCreateFlagsNV
    let coverageReductionMode: VkCoverageReductionModeNV

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPipelineCoverageReductionStateCreateInfoNV>) throws -> R) rethrows -> R {
        var cStruct = VkPipelineCoverageReductionStateCreateInfoNV()
        cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_COVERAGE_REDUCTION_STATE_CREATE_INFO_NV
        cStruct.pNext = nil
        cStruct.flags = self.flags
        cStruct.coverageReductionMode = self.coverageReductionMode
        return try body(&cStruct)
    }
}

struct FramebufferMixedSamplesCombinationNV: CStructConvertible {
    typealias CStruct = VkFramebufferMixedSamplesCombinationNV

    let coverageReductionMode: VkCoverageReductionModeNV
    let rasterizationSamples: VkSampleCountFlagBits
    let depthStencilSamples: VkSampleCountFlags
    let colorSamples: VkSampleCountFlags

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkFramebufferMixedSamplesCombinationNV>) throws -> R) rethrows -> R {
        var cStruct = VkFramebufferMixedSamplesCombinationNV()
        cStruct.sType = VK_STRUCTURE_TYPE_FRAMEBUFFER_MIXED_SAMPLES_COMBINATION_NV
        cStruct.pNext = nil
        cStruct.coverageReductionMode = self.coverageReductionMode
        cStruct.rasterizationSamples = self.rasterizationSamples
        cStruct.depthStencilSamples = self.depthStencilSamples
        cStruct.colorSamples = self.colorSamples
        return try body(&cStruct)
    }
}

struct PhysicalDeviceShaderIntegerFunctions2FeaturesINTEL: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceShaderIntegerFunctions2FeaturesINTEL

    let shaderIntegerFunctions2: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceShaderIntegerFunctions2FeaturesINTEL>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceShaderIntegerFunctions2FeaturesINTEL()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_INTEGER_FUNCTIONS_2_FEATURES_INTEL
        cStruct.pNext = nil
        cStruct.shaderIntegerFunctions2 = self.shaderIntegerFunctions2
        return try body(&cStruct)
    }
}

struct PerformanceValueINTEL: CStructConvertible {
    typealias CStruct = VkPerformanceValueINTEL

    let type: VkPerformanceValueTypeINTEL
    let data: VkPerformanceValueDataINTEL

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPerformanceValueINTEL>) throws -> R) rethrows -> R {
        var cStruct = VkPerformanceValueINTEL()
        cStruct.type = self.type
        cStruct.data = self.data
        return try body(&cStruct)
    }
}

struct InitializePerformanceApiInfoINTEL: CStructConvertible {
    typealias CStruct = VkInitializePerformanceApiInfoINTEL

    let pUserData: UnsafeMutableRawPointer

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkInitializePerformanceApiInfoINTEL>) throws -> R) rethrows -> R {
        var cStruct = VkInitializePerformanceApiInfoINTEL()
        cStruct.sType = VK_STRUCTURE_TYPE_INITIALIZE_PERFORMANCE_API_INFO_INTEL
        cStruct.pNext = nil
        cStruct.pUserData = self.pUserData
        return try body(&cStruct)
    }
}

struct QueryPoolPerformanceQueryCreateInfoINTEL: CStructConvertible {
    typealias CStruct = VkQueryPoolPerformanceQueryCreateInfoINTEL

    let performanceCountersSampling: VkQueryPoolSamplingModeINTEL

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkQueryPoolPerformanceQueryCreateInfoINTEL>) throws -> R) rethrows -> R {
        var cStruct = VkQueryPoolPerformanceQueryCreateInfoINTEL()
        cStruct.sType = VK_STRUCTURE_TYPE_QUERY_POOL_CREATE_INFO_INTEL
        cStruct.pNext = nil
        cStruct.performanceCountersSampling = self.performanceCountersSampling
        return try body(&cStruct)
    }
}

struct PerformanceMarkerInfoINTEL: CStructConvertible {
    typealias CStruct = VkPerformanceMarkerInfoINTEL

    let marker: UInt64

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPerformanceMarkerInfoINTEL>) throws -> R) rethrows -> R {
        var cStruct = VkPerformanceMarkerInfoINTEL()
        cStruct.sType = VK_STRUCTURE_TYPE_PERFORMANCE_MARKER_INFO_INTEL
        cStruct.pNext = nil
        cStruct.marker = self.marker
        return try body(&cStruct)
    }
}

struct PerformanceStreamMarkerInfoINTEL: CStructConvertible {
    typealias CStruct = VkPerformanceStreamMarkerInfoINTEL

    let marker: UInt32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPerformanceStreamMarkerInfoINTEL>) throws -> R) rethrows -> R {
        var cStruct = VkPerformanceStreamMarkerInfoINTEL()
        cStruct.sType = VK_STRUCTURE_TYPE_PERFORMANCE_STREAM_MARKER_INFO_INTEL
        cStruct.pNext = nil
        cStruct.marker = self.marker
        return try body(&cStruct)
    }
}

struct PerformanceOverrideInfoINTEL: CStructConvertible {
    typealias CStruct = VkPerformanceOverrideInfoINTEL

    let type: VkPerformanceOverrideTypeINTEL
    let enable: VkBool32
    let parameter: UInt64

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPerformanceOverrideInfoINTEL>) throws -> R) rethrows -> R {
        var cStruct = VkPerformanceOverrideInfoINTEL()
        cStruct.sType = VK_STRUCTURE_TYPE_PERFORMANCE_OVERRIDE_INFO_INTEL
        cStruct.pNext = nil
        cStruct.type = self.type
        cStruct.enable = self.enable
        cStruct.parameter = self.parameter
        return try body(&cStruct)
    }
}

struct PerformanceConfigurationAcquireInfoINTEL: CStructConvertible {
    typealias CStruct = VkPerformanceConfigurationAcquireInfoINTEL

    let type: VkPerformanceConfigurationTypeINTEL

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPerformanceConfigurationAcquireInfoINTEL>) throws -> R) rethrows -> R {
        var cStruct = VkPerformanceConfigurationAcquireInfoINTEL()
        cStruct.sType = VK_STRUCTURE_TYPE_PERFORMANCE_CONFIGURATION_ACQUIRE_INFO_INTEL
        cStruct.pNext = nil
        cStruct.type = self.type
        return try body(&cStruct)
    }
}

struct PhysicalDeviceShaderClockFeaturesKHR: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceShaderClockFeaturesKHR

    let shaderSubgroupClock: VkBool32
    let shaderDeviceClock: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceShaderClockFeaturesKHR>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceShaderClockFeaturesKHR()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_CLOCK_FEATURES_KHR
        cStruct.pNext = nil
        cStruct.shaderSubgroupClock = self.shaderSubgroupClock
        cStruct.shaderDeviceClock = self.shaderDeviceClock
        return try body(&cStruct)
    }
}

struct PhysicalDeviceIndexTypeUint8FeaturesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceIndexTypeUint8FeaturesEXT

    let indexTypeUint8: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceIndexTypeUint8FeaturesEXT>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceIndexTypeUint8FeaturesEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_INDEX_TYPE_UINT8_FEATURES_EXT
        cStruct.pNext = nil
        cStruct.indexTypeUint8 = self.indexTypeUint8
        return try body(&cStruct)
    }
}

struct PhysicalDeviceShaderSMBuiltinsPropertiesNV: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceShaderSMBuiltinsPropertiesNV

    let shaderSMCount: UInt32
    let shaderWarpsPerSM: UInt32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceShaderSMBuiltinsPropertiesNV>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceShaderSMBuiltinsPropertiesNV()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_SM_BUILTINS_PROPERTIES_NV
        cStruct.pNext = nil
        cStruct.shaderSMCount = self.shaderSMCount
        cStruct.shaderWarpsPerSM = self.shaderWarpsPerSM
        return try body(&cStruct)
    }
}

struct PhysicalDeviceShaderSMBuiltinsFeaturesNV: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceShaderSMBuiltinsFeaturesNV

    let shaderSMBuiltins: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceShaderSMBuiltinsFeaturesNV>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceShaderSMBuiltinsFeaturesNV()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_SM_BUILTINS_FEATURES_NV
        cStruct.pNext = nil
        cStruct.shaderSMBuiltins = self.shaderSMBuiltins
        return try body(&cStruct)
    }
}

struct PhysicalDeviceFragmentShaderInterlockFeaturesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceFragmentShaderInterlockFeaturesEXT

    let fragmentShaderSampleInterlock: VkBool32
    let fragmentShaderPixelInterlock: VkBool32
    let fragmentShaderShadingRateInterlock: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceFragmentShaderInterlockFeaturesEXT>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceFragmentShaderInterlockFeaturesEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_SHADER_INTERLOCK_FEATURES_EXT
        cStruct.pNext = nil
        cStruct.fragmentShaderSampleInterlock = self.fragmentShaderSampleInterlock
        cStruct.fragmentShaderPixelInterlock = self.fragmentShaderPixelInterlock
        cStruct.fragmentShaderShadingRateInterlock = self.fragmentShaderShadingRateInterlock
        return try body(&cStruct)
    }
}

struct PhysicalDeviceSeparateDepthStencilLayoutsFeatures: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceSeparateDepthStencilLayoutsFeatures

    let separateDepthStencilLayouts: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceSeparateDepthStencilLayoutsFeatures>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceSeparateDepthStencilLayoutsFeatures()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SEPARATE_DEPTH_STENCIL_LAYOUTS_FEATURES
        cStruct.pNext = nil
        cStruct.separateDepthStencilLayouts = self.separateDepthStencilLayouts
        return try body(&cStruct)
    }
}

struct AttachmentReferenceStencilLayout: CStructConvertible {
    typealias CStruct = VkAttachmentReferenceStencilLayout

    let stencilLayout: VkImageLayout

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkAttachmentReferenceStencilLayout>) throws -> R) rethrows -> R {
        var cStruct = VkAttachmentReferenceStencilLayout()
        cStruct.sType = VK_STRUCTURE_TYPE_ATTACHMENT_REFERENCE_STENCIL_LAYOUT
        cStruct.pNext = nil
        cStruct.stencilLayout = self.stencilLayout
        return try body(&cStruct)
    }
}

struct AttachmentDescriptionStencilLayout: CStructConvertible {
    typealias CStruct = VkAttachmentDescriptionStencilLayout

    let stencilInitialLayout: VkImageLayout
    let stencilFinalLayout: VkImageLayout

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkAttachmentDescriptionStencilLayout>) throws -> R) rethrows -> R {
        var cStruct = VkAttachmentDescriptionStencilLayout()
        cStruct.sType = VK_STRUCTURE_TYPE_ATTACHMENT_DESCRIPTION_STENCIL_LAYOUT
        cStruct.pNext = nil
        cStruct.stencilInitialLayout = self.stencilInitialLayout
        cStruct.stencilFinalLayout = self.stencilFinalLayout
        return try body(&cStruct)
    }
}

struct PhysicalDevicePipelineExecutablePropertiesFeaturesKHR: CStructConvertible {
    typealias CStruct = VkPhysicalDevicePipelineExecutablePropertiesFeaturesKHR

    let pipelineExecutableInfo: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDevicePipelineExecutablePropertiesFeaturesKHR>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDevicePipelineExecutablePropertiesFeaturesKHR()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PIPELINE_EXECUTABLE_PROPERTIES_FEATURES_KHR
        cStruct.pNext = nil
        cStruct.pipelineExecutableInfo = self.pipelineExecutableInfo
        return try body(&cStruct)
    }
}

struct PipelineInfoKHR: CStructConvertible {
    typealias CStruct = VkPipelineInfoKHR

    let pipeline: VkPipeline

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPipelineInfoKHR>) throws -> R) rethrows -> R {
        var cStruct = VkPipelineInfoKHR()
        cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_INFO_KHR
        cStruct.pNext = nil
        cStruct.pipeline = self.pipeline
        return try body(&cStruct)
    }
}

struct PipelineExecutablePropertiesKHR: CStructConvertible {
    typealias CStruct = VkPipelineExecutablePropertiesKHR

    let stages: VkShaderStageFlags
    let name: (CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar)
    let description: (CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar)
    let subgroupSize: UInt32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPipelineExecutablePropertiesKHR>) throws -> R) rethrows -> R {
        var cStruct = VkPipelineExecutablePropertiesKHR()
        cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_EXECUTABLE_PROPERTIES_KHR
        cStruct.pNext = nil
        cStruct.stages = self.stages
        cStruct.name = self.name
        cStruct.description = self.description
        cStruct.subgroupSize = self.subgroupSize
        return try body(&cStruct)
    }
}

struct PipelineExecutableInfoKHR: CStructConvertible {
    typealias CStruct = VkPipelineExecutableInfoKHR

    let pipeline: VkPipeline
    let executableIndex: UInt32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPipelineExecutableInfoKHR>) throws -> R) rethrows -> R {
        var cStruct = VkPipelineExecutableInfoKHR()
        cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_EXECUTABLE_INFO_KHR
        cStruct.pNext = nil
        cStruct.pipeline = self.pipeline
        cStruct.executableIndex = self.executableIndex
        return try body(&cStruct)
    }
}

struct PipelineExecutableStatisticKHR: CStructConvertible {
    typealias CStruct = VkPipelineExecutableStatisticKHR

    let name: (CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar)
    let description: (CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar)
    let format: VkPipelineExecutableStatisticFormatKHR
    let value: VkPipelineExecutableStatisticValueKHR

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPipelineExecutableStatisticKHR>) throws -> R) rethrows -> R {
        var cStruct = VkPipelineExecutableStatisticKHR()
        cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_EXECUTABLE_STATISTIC_KHR
        cStruct.pNext = nil
        cStruct.name = self.name
        cStruct.description = self.description
        cStruct.format = self.format
        cStruct.value = self.value
        return try body(&cStruct)
    }
}

struct PipelineExecutableInternalRepresentationKHR: CStructConvertible {
    typealias CStruct = VkPipelineExecutableInternalRepresentationKHR

    let name: (CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar)
    let description: (CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar)
    let isText: VkBool32
    let dataSize: Int
    let pData: UnsafeMutableRawPointer

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPipelineExecutableInternalRepresentationKHR>) throws -> R) rethrows -> R {
        var cStruct = VkPipelineExecutableInternalRepresentationKHR()
        cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_EXECUTABLE_INTERNAL_REPRESENTATION_KHR
        cStruct.pNext = nil
        cStruct.name = self.name
        cStruct.description = self.description
        cStruct.isText = self.isText
        cStruct.dataSize = self.dataSize
        cStruct.pData = self.pData
        return try body(&cStruct)
    }
}

struct PhysicalDeviceShaderDemoteToHelperInvocationFeaturesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceShaderDemoteToHelperInvocationFeaturesEXT

    let shaderDemoteToHelperInvocation: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceShaderDemoteToHelperInvocationFeaturesEXT>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceShaderDemoteToHelperInvocationFeaturesEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_DEMOTE_TO_HELPER_INVOCATION_FEATURES_EXT
        cStruct.pNext = nil
        cStruct.shaderDemoteToHelperInvocation = self.shaderDemoteToHelperInvocation
        return try body(&cStruct)
    }
}

struct PhysicalDeviceTexelBufferAlignmentFeaturesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceTexelBufferAlignmentFeaturesEXT

    let texelBufferAlignment: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceTexelBufferAlignmentFeaturesEXT>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceTexelBufferAlignmentFeaturesEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TEXEL_BUFFER_ALIGNMENT_FEATURES_EXT
        cStruct.pNext = nil
        cStruct.texelBufferAlignment = self.texelBufferAlignment
        return try body(&cStruct)
    }
}

struct PhysicalDeviceTexelBufferAlignmentPropertiesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceTexelBufferAlignmentPropertiesEXT

    let storageTexelBufferOffsetAlignmentBytes: VkDeviceSize
    let storageTexelBufferOffsetSingleTexelAlignment: VkBool32
    let uniformTexelBufferOffsetAlignmentBytes: VkDeviceSize
    let uniformTexelBufferOffsetSingleTexelAlignment: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceTexelBufferAlignmentPropertiesEXT>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceTexelBufferAlignmentPropertiesEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TEXEL_BUFFER_ALIGNMENT_PROPERTIES_EXT
        cStruct.pNext = nil
        cStruct.storageTexelBufferOffsetAlignmentBytes = self.storageTexelBufferOffsetAlignmentBytes
        cStruct.storageTexelBufferOffsetSingleTexelAlignment = self.storageTexelBufferOffsetSingleTexelAlignment
        cStruct.uniformTexelBufferOffsetAlignmentBytes = self.uniformTexelBufferOffsetAlignmentBytes
        cStruct.uniformTexelBufferOffsetSingleTexelAlignment = self.uniformTexelBufferOffsetSingleTexelAlignment
        return try body(&cStruct)
    }
}

struct PhysicalDeviceSubgroupSizeControlFeaturesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceSubgroupSizeControlFeaturesEXT

    let subgroupSizeControl: VkBool32
    let computeFullSubgroups: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceSubgroupSizeControlFeaturesEXT>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceSubgroupSizeControlFeaturesEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SUBGROUP_SIZE_CONTROL_FEATURES_EXT
        cStruct.pNext = nil
        cStruct.subgroupSizeControl = self.subgroupSizeControl
        cStruct.computeFullSubgroups = self.computeFullSubgroups
        return try body(&cStruct)
    }
}

struct PhysicalDeviceSubgroupSizeControlPropertiesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceSubgroupSizeControlPropertiesEXT

    let minSubgroupSize: UInt32
    let maxSubgroupSize: UInt32
    let maxComputeWorkgroupSubgroups: UInt32
    let requiredSubgroupSizeStages: VkShaderStageFlags

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceSubgroupSizeControlPropertiesEXT>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceSubgroupSizeControlPropertiesEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SUBGROUP_SIZE_CONTROL_PROPERTIES_EXT
        cStruct.pNext = nil
        cStruct.minSubgroupSize = self.minSubgroupSize
        cStruct.maxSubgroupSize = self.maxSubgroupSize
        cStruct.maxComputeWorkgroupSubgroups = self.maxComputeWorkgroupSubgroups
        cStruct.requiredSubgroupSizeStages = self.requiredSubgroupSizeStages
        return try body(&cStruct)
    }
}

struct PipelineShaderStageRequiredSubgroupSizeCreateInfoEXT: CStructConvertible {
    typealias CStruct = VkPipelineShaderStageRequiredSubgroupSizeCreateInfoEXT

    let requiredSubgroupSize: UInt32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPipelineShaderStageRequiredSubgroupSizeCreateInfoEXT>) throws -> R) rethrows -> R {
        var cStruct = VkPipelineShaderStageRequiredSubgroupSizeCreateInfoEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_REQUIRED_SUBGROUP_SIZE_CREATE_INFO_EXT
        cStruct.pNext = nil
        cStruct.requiredSubgroupSize = self.requiredSubgroupSize
        return try body(&cStruct)
    }
}

struct MemoryOpaqueCaptureAddressAllocateInfo: CStructConvertible {
    typealias CStruct = VkMemoryOpaqueCaptureAddressAllocateInfo

    let opaqueCaptureAddress: UInt64

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkMemoryOpaqueCaptureAddressAllocateInfo>) throws -> R) rethrows -> R {
        var cStruct = VkMemoryOpaqueCaptureAddressAllocateInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_MEMORY_OPAQUE_CAPTURE_ADDRESS_ALLOCATE_INFO
        cStruct.pNext = nil
        cStruct.opaqueCaptureAddress = self.opaqueCaptureAddress
        return try body(&cStruct)
    }
}

struct DeviceMemoryOpaqueCaptureAddressInfo: CStructConvertible {
    typealias CStruct = VkDeviceMemoryOpaqueCaptureAddressInfo

    let memory: VkDeviceMemory

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkDeviceMemoryOpaqueCaptureAddressInfo>) throws -> R) rethrows -> R {
        var cStruct = VkDeviceMemoryOpaqueCaptureAddressInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_DEVICE_MEMORY_OPAQUE_CAPTURE_ADDRESS_INFO
        cStruct.pNext = nil
        cStruct.memory = self.memory
        return try body(&cStruct)
    }
}

struct PhysicalDeviceLineRasterizationFeaturesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceLineRasterizationFeaturesEXT

    let rectangularLines: VkBool32
    let bresenhamLines: VkBool32
    let smoothLines: VkBool32
    let stippledRectangularLines: VkBool32
    let stippledBresenhamLines: VkBool32
    let stippledSmoothLines: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceLineRasterizationFeaturesEXT>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceLineRasterizationFeaturesEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_LINE_RASTERIZATION_FEATURES_EXT
        cStruct.pNext = nil
        cStruct.rectangularLines = self.rectangularLines
        cStruct.bresenhamLines = self.bresenhamLines
        cStruct.smoothLines = self.smoothLines
        cStruct.stippledRectangularLines = self.stippledRectangularLines
        cStruct.stippledBresenhamLines = self.stippledBresenhamLines
        cStruct.stippledSmoothLines = self.stippledSmoothLines
        return try body(&cStruct)
    }
}

struct PhysicalDeviceLineRasterizationPropertiesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceLineRasterizationPropertiesEXT

    let lineSubPixelPrecisionBits: UInt32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceLineRasterizationPropertiesEXT>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceLineRasterizationPropertiesEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_LINE_RASTERIZATION_PROPERTIES_EXT
        cStruct.pNext = nil
        cStruct.lineSubPixelPrecisionBits = self.lineSubPixelPrecisionBits
        return try body(&cStruct)
    }
}

struct PipelineRasterizationLineStateCreateInfoEXT: CStructConvertible {
    typealias CStruct = VkPipelineRasterizationLineStateCreateInfoEXT

    let lineRasterizationMode: VkLineRasterizationModeEXT
    let stippledLineEnable: VkBool32
    let lineStippleFactor: UInt32
    let lineStipplePattern: UInt16

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPipelineRasterizationLineStateCreateInfoEXT>) throws -> R) rethrows -> R {
        var cStruct = VkPipelineRasterizationLineStateCreateInfoEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_LINE_STATE_CREATE_INFO_EXT
        cStruct.pNext = nil
        cStruct.lineRasterizationMode = self.lineRasterizationMode
        cStruct.stippledLineEnable = self.stippledLineEnable
        cStruct.lineStippleFactor = self.lineStippleFactor
        cStruct.lineStipplePattern = self.lineStipplePattern
        return try body(&cStruct)
    }
}

struct PhysicalDevicePipelineCreationCacheControlFeaturesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDevicePipelineCreationCacheControlFeaturesEXT

    let pipelineCreationCacheControl: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDevicePipelineCreationCacheControlFeaturesEXT>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDevicePipelineCreationCacheControlFeaturesEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PIPELINE_CREATION_CACHE_CONTROL_FEATURES_EXT
        cStruct.pNext = nil
        cStruct.pipelineCreationCacheControl = self.pipelineCreationCacheControl
        return try body(&cStruct)
    }
}

struct PhysicalDeviceVulkan11Features: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceVulkan11Features

    let storageBuffer16BitAccess: VkBool32
    let uniformAndStorageBuffer16BitAccess: VkBool32
    let storagePushConstant16: VkBool32
    let storageInputOutput16: VkBool32
    let multiview: VkBool32
    let multiviewGeometryShader: VkBool32
    let multiviewTessellationShader: VkBool32
    let variablePointersStorageBuffer: VkBool32
    let variablePointers: VkBool32
    let protectedMemory: VkBool32
    let samplerYcbcrConversion: VkBool32
    let shaderDrawParameters: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceVulkan11Features>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceVulkan11Features()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_1_1_FEATURES
        cStruct.pNext = nil
        cStruct.storageBuffer16BitAccess = self.storageBuffer16BitAccess
        cStruct.uniformAndStorageBuffer16BitAccess = self.uniformAndStorageBuffer16BitAccess
        cStruct.storagePushConstant16 = self.storagePushConstant16
        cStruct.storageInputOutput16 = self.storageInputOutput16
        cStruct.multiview = self.multiview
        cStruct.multiviewGeometryShader = self.multiviewGeometryShader
        cStruct.multiviewTessellationShader = self.multiviewTessellationShader
        cStruct.variablePointersStorageBuffer = self.variablePointersStorageBuffer
        cStruct.variablePointers = self.variablePointers
        cStruct.protectedMemory = self.protectedMemory
        cStruct.samplerYcbcrConversion = self.samplerYcbcrConversion
        cStruct.shaderDrawParameters = self.shaderDrawParameters
        return try body(&cStruct)
    }
}

struct PhysicalDeviceVulkan11Properties: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceVulkan11Properties

    let deviceUUID: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
    let driverUUID: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
    let deviceLUID: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
    let deviceNodeMask: UInt32
    let deviceLUIDValid: VkBool32
    let subgroupSize: UInt32
    let subgroupSupportedStages: VkShaderStageFlags
    let subgroupSupportedOperations: VkSubgroupFeatureFlags
    let subgroupQuadOperationsInAllStages: VkBool32
    let pointClippingBehavior: VkPointClippingBehavior
    let maxMultiviewViewCount: UInt32
    let maxMultiviewInstanceIndex: UInt32
    let protectedNoFault: VkBool32
    let maxPerSetDescriptors: UInt32
    let maxMemoryAllocationSize: VkDeviceSize

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceVulkan11Properties>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceVulkan11Properties()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_1_1_PROPERTIES
        cStruct.pNext = nil
        cStruct.deviceUUID = self.deviceUUID
        cStruct.driverUUID = self.driverUUID
        cStruct.deviceLUID = self.deviceLUID
        cStruct.deviceNodeMask = self.deviceNodeMask
        cStruct.deviceLUIDValid = self.deviceLUIDValid
        cStruct.subgroupSize = self.subgroupSize
        cStruct.subgroupSupportedStages = self.subgroupSupportedStages
        cStruct.subgroupSupportedOperations = self.subgroupSupportedOperations
        cStruct.subgroupQuadOperationsInAllStages = self.subgroupQuadOperationsInAllStages
        cStruct.pointClippingBehavior = self.pointClippingBehavior
        cStruct.maxMultiviewViewCount = self.maxMultiviewViewCount
        cStruct.maxMultiviewInstanceIndex = self.maxMultiviewInstanceIndex
        cStruct.protectedNoFault = self.protectedNoFault
        cStruct.maxPerSetDescriptors = self.maxPerSetDescriptors
        cStruct.maxMemoryAllocationSize = self.maxMemoryAllocationSize
        return try body(&cStruct)
    }
}

struct PhysicalDeviceVulkan12Features: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceVulkan12Features

    let samplerMirrorClampToEdge: VkBool32
    let drawIndirectCount: VkBool32
    let storageBuffer8BitAccess: VkBool32
    let uniformAndStorageBuffer8BitAccess: VkBool32
    let storagePushConstant8: VkBool32
    let shaderBufferInt64Atomics: VkBool32
    let shaderSharedInt64Atomics: VkBool32
    let shaderFloat16: VkBool32
    let shaderInt8: VkBool32
    let descriptorIndexing: VkBool32
    let shaderInputAttachmentArrayDynamicIndexing: VkBool32
    let shaderUniformTexelBufferArrayDynamicIndexing: VkBool32
    let shaderStorageTexelBufferArrayDynamicIndexing: VkBool32
    let shaderUniformBufferArrayNonUniformIndexing: VkBool32
    let shaderSampledImageArrayNonUniformIndexing: VkBool32
    let shaderStorageBufferArrayNonUniformIndexing: VkBool32
    let shaderStorageImageArrayNonUniformIndexing: VkBool32
    let shaderInputAttachmentArrayNonUniformIndexing: VkBool32
    let shaderUniformTexelBufferArrayNonUniformIndexing: VkBool32
    let shaderStorageTexelBufferArrayNonUniformIndexing: VkBool32
    let descriptorBindingUniformBufferUpdateAfterBind: VkBool32
    let descriptorBindingSampledImageUpdateAfterBind: VkBool32
    let descriptorBindingStorageImageUpdateAfterBind: VkBool32
    let descriptorBindingStorageBufferUpdateAfterBind: VkBool32
    let descriptorBindingUniformTexelBufferUpdateAfterBind: VkBool32
    let descriptorBindingStorageTexelBufferUpdateAfterBind: VkBool32
    let descriptorBindingUpdateUnusedWhilePending: VkBool32
    let descriptorBindingPartiallyBound: VkBool32
    let descriptorBindingVariableDescriptorCount: VkBool32
    let runtimeDescriptorArray: VkBool32
    let samplerFilterMinmax: VkBool32
    let scalarBlockLayout: VkBool32
    let imagelessFramebuffer: VkBool32
    let uniformBufferStandardLayout: VkBool32
    let shaderSubgroupExtendedTypes: VkBool32
    let separateDepthStencilLayouts: VkBool32
    let hostQueryReset: VkBool32
    let timelineSemaphore: VkBool32
    let bufferDeviceAddress: VkBool32
    let bufferDeviceAddressCaptureReplay: VkBool32
    let bufferDeviceAddressMultiDevice: VkBool32
    let vulkanMemoryModel: VkBool32
    let vulkanMemoryModelDeviceScope: VkBool32
    let vulkanMemoryModelAvailabilityVisibilityChains: VkBool32
    let shaderOutputViewportIndex: VkBool32
    let shaderOutputLayer: VkBool32
    let subgroupBroadcastDynamicId: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceVulkan12Features>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceVulkan12Features()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_1_2_FEATURES
        cStruct.pNext = nil
        cStruct.samplerMirrorClampToEdge = self.samplerMirrorClampToEdge
        cStruct.drawIndirectCount = self.drawIndirectCount
        cStruct.storageBuffer8BitAccess = self.storageBuffer8BitAccess
        cStruct.uniformAndStorageBuffer8BitAccess = self.uniformAndStorageBuffer8BitAccess
        cStruct.storagePushConstant8 = self.storagePushConstant8
        cStruct.shaderBufferInt64Atomics = self.shaderBufferInt64Atomics
        cStruct.shaderSharedInt64Atomics = self.shaderSharedInt64Atomics
        cStruct.shaderFloat16 = self.shaderFloat16
        cStruct.shaderInt8 = self.shaderInt8
        cStruct.descriptorIndexing = self.descriptorIndexing
        cStruct.shaderInputAttachmentArrayDynamicIndexing = self.shaderInputAttachmentArrayDynamicIndexing
        cStruct.shaderUniformTexelBufferArrayDynamicIndexing = self.shaderUniformTexelBufferArrayDynamicIndexing
        cStruct.shaderStorageTexelBufferArrayDynamicIndexing = self.shaderStorageTexelBufferArrayDynamicIndexing
        cStruct.shaderUniformBufferArrayNonUniformIndexing = self.shaderUniformBufferArrayNonUniformIndexing
        cStruct.shaderSampledImageArrayNonUniformIndexing = self.shaderSampledImageArrayNonUniformIndexing
        cStruct.shaderStorageBufferArrayNonUniformIndexing = self.shaderStorageBufferArrayNonUniformIndexing
        cStruct.shaderStorageImageArrayNonUniformIndexing = self.shaderStorageImageArrayNonUniformIndexing
        cStruct.shaderInputAttachmentArrayNonUniformIndexing = self.shaderInputAttachmentArrayNonUniformIndexing
        cStruct.shaderUniformTexelBufferArrayNonUniformIndexing = self.shaderUniformTexelBufferArrayNonUniformIndexing
        cStruct.shaderStorageTexelBufferArrayNonUniformIndexing = self.shaderStorageTexelBufferArrayNonUniformIndexing
        cStruct.descriptorBindingUniformBufferUpdateAfterBind = self.descriptorBindingUniformBufferUpdateAfterBind
        cStruct.descriptorBindingSampledImageUpdateAfterBind = self.descriptorBindingSampledImageUpdateAfterBind
        cStruct.descriptorBindingStorageImageUpdateAfterBind = self.descriptorBindingStorageImageUpdateAfterBind
        cStruct.descriptorBindingStorageBufferUpdateAfterBind = self.descriptorBindingStorageBufferUpdateAfterBind
        cStruct.descriptorBindingUniformTexelBufferUpdateAfterBind = self.descriptorBindingUniformTexelBufferUpdateAfterBind
        cStruct.descriptorBindingStorageTexelBufferUpdateAfterBind = self.descriptorBindingStorageTexelBufferUpdateAfterBind
        cStruct.descriptorBindingUpdateUnusedWhilePending = self.descriptorBindingUpdateUnusedWhilePending
        cStruct.descriptorBindingPartiallyBound = self.descriptorBindingPartiallyBound
        cStruct.descriptorBindingVariableDescriptorCount = self.descriptorBindingVariableDescriptorCount
        cStruct.runtimeDescriptorArray = self.runtimeDescriptorArray
        cStruct.samplerFilterMinmax = self.samplerFilterMinmax
        cStruct.scalarBlockLayout = self.scalarBlockLayout
        cStruct.imagelessFramebuffer = self.imagelessFramebuffer
        cStruct.uniformBufferStandardLayout = self.uniformBufferStandardLayout
        cStruct.shaderSubgroupExtendedTypes = self.shaderSubgroupExtendedTypes
        cStruct.separateDepthStencilLayouts = self.separateDepthStencilLayouts
        cStruct.hostQueryReset = self.hostQueryReset
        cStruct.timelineSemaphore = self.timelineSemaphore
        cStruct.bufferDeviceAddress = self.bufferDeviceAddress
        cStruct.bufferDeviceAddressCaptureReplay = self.bufferDeviceAddressCaptureReplay
        cStruct.bufferDeviceAddressMultiDevice = self.bufferDeviceAddressMultiDevice
        cStruct.vulkanMemoryModel = self.vulkanMemoryModel
        cStruct.vulkanMemoryModelDeviceScope = self.vulkanMemoryModelDeviceScope
        cStruct.vulkanMemoryModelAvailabilityVisibilityChains = self.vulkanMemoryModelAvailabilityVisibilityChains
        cStruct.shaderOutputViewportIndex = self.shaderOutputViewportIndex
        cStruct.shaderOutputLayer = self.shaderOutputLayer
        cStruct.subgroupBroadcastDynamicId = self.subgroupBroadcastDynamicId
        return try body(&cStruct)
    }
}

struct PhysicalDeviceVulkan12Properties: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceVulkan12Properties

    let driverID: VkDriverId
    let driverName: (CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar)
    let driverInfo: (CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar)
    let conformanceVersion: VkConformanceVersion
    let denormBehaviorIndependence: VkShaderFloatControlsIndependence
    let roundingModeIndependence: VkShaderFloatControlsIndependence
    let shaderSignedZeroInfNanPreserveFloat16: VkBool32
    let shaderSignedZeroInfNanPreserveFloat32: VkBool32
    let shaderSignedZeroInfNanPreserveFloat64: VkBool32
    let shaderDenormPreserveFloat16: VkBool32
    let shaderDenormPreserveFloat32: VkBool32
    let shaderDenormPreserveFloat64: VkBool32
    let shaderDenormFlushToZeroFloat16: VkBool32
    let shaderDenormFlushToZeroFloat32: VkBool32
    let shaderDenormFlushToZeroFloat64: VkBool32
    let shaderRoundingModeRTEFloat16: VkBool32
    let shaderRoundingModeRTEFloat32: VkBool32
    let shaderRoundingModeRTEFloat64: VkBool32
    let shaderRoundingModeRTZFloat16: VkBool32
    let shaderRoundingModeRTZFloat32: VkBool32
    let shaderRoundingModeRTZFloat64: VkBool32
    let maxUpdateAfterBindDescriptorsInAllPools: UInt32
    let shaderUniformBufferArrayNonUniformIndexingNative: VkBool32
    let shaderSampledImageArrayNonUniformIndexingNative: VkBool32
    let shaderStorageBufferArrayNonUniformIndexingNative: VkBool32
    let shaderStorageImageArrayNonUniformIndexingNative: VkBool32
    let shaderInputAttachmentArrayNonUniformIndexingNative: VkBool32
    let robustBufferAccessUpdateAfterBind: VkBool32
    let quadDivergentImplicitLod: VkBool32
    let maxPerStageDescriptorUpdateAfterBindSamplers: UInt32
    let maxPerStageDescriptorUpdateAfterBindUniformBuffers: UInt32
    let maxPerStageDescriptorUpdateAfterBindStorageBuffers: UInt32
    let maxPerStageDescriptorUpdateAfterBindSampledImages: UInt32
    let maxPerStageDescriptorUpdateAfterBindStorageImages: UInt32
    let maxPerStageDescriptorUpdateAfterBindInputAttachments: UInt32
    let maxPerStageUpdateAfterBindResources: UInt32
    let maxDescriptorSetUpdateAfterBindSamplers: UInt32
    let maxDescriptorSetUpdateAfterBindUniformBuffers: UInt32
    let maxDescriptorSetUpdateAfterBindUniformBuffersDynamic: UInt32
    let maxDescriptorSetUpdateAfterBindStorageBuffers: UInt32
    let maxDescriptorSetUpdateAfterBindStorageBuffersDynamic: UInt32
    let maxDescriptorSetUpdateAfterBindSampledImages: UInt32
    let maxDescriptorSetUpdateAfterBindStorageImages: UInt32
    let maxDescriptorSetUpdateAfterBindInputAttachments: UInt32
    let supportedDepthResolveModes: VkResolveModeFlags
    let supportedStencilResolveModes: VkResolveModeFlags
    let independentResolveNone: VkBool32
    let independentResolve: VkBool32
    let filterMinmaxSingleComponentFormats: VkBool32
    let filterMinmaxImageComponentMapping: VkBool32
    let maxTimelineSemaphoreValueDifference: UInt64
    let framebufferIntegerColorSampleCounts: VkSampleCountFlags

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceVulkan12Properties>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceVulkan12Properties()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_1_2_PROPERTIES
        cStruct.pNext = nil
        cStruct.driverID = self.driverID
        cStruct.driverName = self.driverName
        cStruct.driverInfo = self.driverInfo
        cStruct.conformanceVersion = self.conformanceVersion
        cStruct.denormBehaviorIndependence = self.denormBehaviorIndependence
        cStruct.roundingModeIndependence = self.roundingModeIndependence
        cStruct.shaderSignedZeroInfNanPreserveFloat16 = self.shaderSignedZeroInfNanPreserveFloat16
        cStruct.shaderSignedZeroInfNanPreserveFloat32 = self.shaderSignedZeroInfNanPreserveFloat32
        cStruct.shaderSignedZeroInfNanPreserveFloat64 = self.shaderSignedZeroInfNanPreserveFloat64
        cStruct.shaderDenormPreserveFloat16 = self.shaderDenormPreserveFloat16
        cStruct.shaderDenormPreserveFloat32 = self.shaderDenormPreserveFloat32
        cStruct.shaderDenormPreserveFloat64 = self.shaderDenormPreserveFloat64
        cStruct.shaderDenormFlushToZeroFloat16 = self.shaderDenormFlushToZeroFloat16
        cStruct.shaderDenormFlushToZeroFloat32 = self.shaderDenormFlushToZeroFloat32
        cStruct.shaderDenormFlushToZeroFloat64 = self.shaderDenormFlushToZeroFloat64
        cStruct.shaderRoundingModeRTEFloat16 = self.shaderRoundingModeRTEFloat16
        cStruct.shaderRoundingModeRTEFloat32 = self.shaderRoundingModeRTEFloat32
        cStruct.shaderRoundingModeRTEFloat64 = self.shaderRoundingModeRTEFloat64
        cStruct.shaderRoundingModeRTZFloat16 = self.shaderRoundingModeRTZFloat16
        cStruct.shaderRoundingModeRTZFloat32 = self.shaderRoundingModeRTZFloat32
        cStruct.shaderRoundingModeRTZFloat64 = self.shaderRoundingModeRTZFloat64
        cStruct.maxUpdateAfterBindDescriptorsInAllPools = self.maxUpdateAfterBindDescriptorsInAllPools
        cStruct.shaderUniformBufferArrayNonUniformIndexingNative = self.shaderUniformBufferArrayNonUniformIndexingNative
        cStruct.shaderSampledImageArrayNonUniformIndexingNative = self.shaderSampledImageArrayNonUniformIndexingNative
        cStruct.shaderStorageBufferArrayNonUniformIndexingNative = self.shaderStorageBufferArrayNonUniformIndexingNative
        cStruct.shaderStorageImageArrayNonUniformIndexingNative = self.shaderStorageImageArrayNonUniformIndexingNative
        cStruct.shaderInputAttachmentArrayNonUniformIndexingNative = self.shaderInputAttachmentArrayNonUniformIndexingNative
        cStruct.robustBufferAccessUpdateAfterBind = self.robustBufferAccessUpdateAfterBind
        cStruct.quadDivergentImplicitLod = self.quadDivergentImplicitLod
        cStruct.maxPerStageDescriptorUpdateAfterBindSamplers = self.maxPerStageDescriptorUpdateAfterBindSamplers
        cStruct.maxPerStageDescriptorUpdateAfterBindUniformBuffers = self.maxPerStageDescriptorUpdateAfterBindUniformBuffers
        cStruct.maxPerStageDescriptorUpdateAfterBindStorageBuffers = self.maxPerStageDescriptorUpdateAfterBindStorageBuffers
        cStruct.maxPerStageDescriptorUpdateAfterBindSampledImages = self.maxPerStageDescriptorUpdateAfterBindSampledImages
        cStruct.maxPerStageDescriptorUpdateAfterBindStorageImages = self.maxPerStageDescriptorUpdateAfterBindStorageImages
        cStruct.maxPerStageDescriptorUpdateAfterBindInputAttachments = self.maxPerStageDescriptorUpdateAfterBindInputAttachments
        cStruct.maxPerStageUpdateAfterBindResources = self.maxPerStageUpdateAfterBindResources
        cStruct.maxDescriptorSetUpdateAfterBindSamplers = self.maxDescriptorSetUpdateAfterBindSamplers
        cStruct.maxDescriptorSetUpdateAfterBindUniformBuffers = self.maxDescriptorSetUpdateAfterBindUniformBuffers
        cStruct.maxDescriptorSetUpdateAfterBindUniformBuffersDynamic = self.maxDescriptorSetUpdateAfterBindUniformBuffersDynamic
        cStruct.maxDescriptorSetUpdateAfterBindStorageBuffers = self.maxDescriptorSetUpdateAfterBindStorageBuffers
        cStruct.maxDescriptorSetUpdateAfterBindStorageBuffersDynamic = self.maxDescriptorSetUpdateAfterBindStorageBuffersDynamic
        cStruct.maxDescriptorSetUpdateAfterBindSampledImages = self.maxDescriptorSetUpdateAfterBindSampledImages
        cStruct.maxDescriptorSetUpdateAfterBindStorageImages = self.maxDescriptorSetUpdateAfterBindStorageImages
        cStruct.maxDescriptorSetUpdateAfterBindInputAttachments = self.maxDescriptorSetUpdateAfterBindInputAttachments
        cStruct.supportedDepthResolveModes = self.supportedDepthResolveModes
        cStruct.supportedStencilResolveModes = self.supportedStencilResolveModes
        cStruct.independentResolveNone = self.independentResolveNone
        cStruct.independentResolve = self.independentResolve
        cStruct.filterMinmaxSingleComponentFormats = self.filterMinmaxSingleComponentFormats
        cStruct.filterMinmaxImageComponentMapping = self.filterMinmaxImageComponentMapping
        cStruct.maxTimelineSemaphoreValueDifference = self.maxTimelineSemaphoreValueDifference
        cStruct.framebufferIntegerColorSampleCounts = self.framebufferIntegerColorSampleCounts
        return try body(&cStruct)
    }
}

struct PipelineCompilerControlCreateInfoAMD: CStructConvertible {
    typealias CStruct = VkPipelineCompilerControlCreateInfoAMD

    let compilerControlFlags: VkPipelineCompilerControlFlagsAMD

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPipelineCompilerControlCreateInfoAMD>) throws -> R) rethrows -> R {
        var cStruct = VkPipelineCompilerControlCreateInfoAMD()
        cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_COMPILER_CONTROL_CREATE_INFO_AMD
        cStruct.pNext = nil
        cStruct.compilerControlFlags = self.compilerControlFlags
        return try body(&cStruct)
    }
}

struct PhysicalDeviceCoherentMemoryFeaturesAMD: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceCoherentMemoryFeaturesAMD

    let deviceCoherentMemory: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceCoherentMemoryFeaturesAMD>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceCoherentMemoryFeaturesAMD()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_COHERENT_MEMORY_FEATURES_AMD
        cStruct.pNext = nil
        cStruct.deviceCoherentMemory = self.deviceCoherentMemory
        return try body(&cStruct)
    }
}

struct PhysicalDeviceToolPropertiesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceToolPropertiesEXT

    let name: (CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar)
    let version: (CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar)
    let purposes: VkToolPurposeFlagsEXT
    let description: (CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar)
    let layer: (CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar)

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceToolPropertiesEXT>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceToolPropertiesEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TOOL_PROPERTIES_EXT
        cStruct.pNext = nil
        cStruct.name = self.name
        cStruct.version = self.version
        cStruct.purposes = self.purposes
        cStruct.description = self.description
        cStruct.layer = self.layer
        return try body(&cStruct)
    }
}

struct RenderPassTransformBeginInfoQCOM: CStructConvertible {
    typealias CStruct = VkRenderPassTransformBeginInfoQCOM

    let transform: VkSurfaceTransformFlagBitsKHR

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkRenderPassTransformBeginInfoQCOM>) throws -> R) rethrows -> R {
        var cStruct = VkRenderPassTransformBeginInfoQCOM()
        cStruct.sType = VK_STRUCTURE_TYPE_RENDER_PASS_TRANSFORM_BEGIN_INFO_QCOM
        cStruct.pNext = nil
        cStruct.transform = self.transform
        return try body(&cStruct)
    }
}

struct CommandBufferInheritanceRenderPassTransformInfoQCOM: CStructConvertible {
    typealias CStruct = VkCommandBufferInheritanceRenderPassTransformInfoQCOM

    let transform: VkSurfaceTransformFlagBitsKHR
    let renderArea: VkRect2D

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkCommandBufferInheritanceRenderPassTransformInfoQCOM>) throws -> R) rethrows -> R {
        var cStruct = VkCommandBufferInheritanceRenderPassTransformInfoQCOM()
        cStruct.sType = VK_STRUCTURE_TYPE_COMMAND_BUFFER_INHERITANCE_RENDER_PASS_TRANSFORM_INFO_QCOM
        cStruct.pNext = nil
        cStruct.transform = self.transform
        cStruct.renderArea = self.renderArea
        return try body(&cStruct)
    }
}

struct PhysicalDeviceDiagnosticsConfigFeaturesNV: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceDiagnosticsConfigFeaturesNV

    let diagnosticsConfig: VkBool32

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkPhysicalDeviceDiagnosticsConfigFeaturesNV>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceDiagnosticsConfigFeaturesNV()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DIAGNOSTICS_CONFIG_FEATURES_NV
        cStruct.pNext = nil
        cStruct.diagnosticsConfig = self.diagnosticsConfig
        return try body(&cStruct)
    }
}

struct DeviceDiagnosticsConfigCreateInfoNV: CStructConvertible {
    typealias CStruct = VkDeviceDiagnosticsConfigCreateInfoNV

    let flags: VkDeviceDiagnosticsConfigFlagsNV

    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<VkDeviceDiagnosticsConfigCreateInfoNV>) throws -> R) rethrows -> R {
        var cStruct = VkDeviceDiagnosticsConfigCreateInfoNV()
        cStruct.sType = VK_STRUCTURE_TYPE_DEVICE_DIAGNOSTICS_CONFIG_CREATE_INFO_NV
        cStruct.pNext = nil
        cStruct.flags = self.flags
        return try body(&cStruct)
    }
}

