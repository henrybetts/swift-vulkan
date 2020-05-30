import CVulkan

struct BaseOutStructure: CStructConvertible {
    typealias CStruct = VkBaseOutStructure

    let sType: StructureType

    init(cStruct: VkBaseOutStructure) {
        self.sType = StructureType(rawValue: cStruct.sType.rawValue)!
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkBaseOutStructure>) throws -> R) rethrows -> R {
        var cStruct = VkBaseOutStructure()
        cStruct.sType = VkStructureType(rawValue: self.sType.rawValue)
        cStruct.pNext = nil
        return try body(&cStruct)
    }
}

struct BaseInStructure: CStructConvertible {
    typealias CStruct = VkBaseInStructure

    let sType: StructureType

    init(cStruct: VkBaseInStructure) {
        self.sType = StructureType(rawValue: cStruct.sType.rawValue)!
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkBaseInStructure>) throws -> R) rethrows -> R {
        var cStruct = VkBaseInStructure()
        cStruct.sType = VkStructureType(rawValue: self.sType.rawValue)
        cStruct.pNext = nil
        return try body(&cStruct)
    }
}

struct Offset2D: CStructConvertible {
    typealias CStruct = VkOffset2D

    let x: Int32
    let y: Int32

    init(cStruct: VkOffset2D) {
        self.x = cStruct.x
        self.y = cStruct.y
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkOffset2D>) throws -> R) rethrows -> R {
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

    init(cStruct: VkOffset3D) {
        self.x = cStruct.x
        self.y = cStruct.y
        self.z = cStruct.z
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkOffset3D>) throws -> R) rethrows -> R {
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

    init(cStruct: VkExtent2D) {
        self.width = cStruct.width
        self.height = cStruct.height
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkExtent2D>) throws -> R) rethrows -> R {
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

    init(cStruct: VkExtent3D) {
        self.width = cStruct.width
        self.height = cStruct.height
        self.depth = cStruct.depth
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkExtent3D>) throws -> R) rethrows -> R {
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

    init(cStruct: VkViewport) {
        self.x = cStruct.x
        self.y = cStruct.y
        self.width = cStruct.width
        self.height = cStruct.height
        self.minDepth = cStruct.minDepth
        self.maxDepth = cStruct.maxDepth
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkViewport>) throws -> R) rethrows -> R {
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

    let offset: Offset2D
    let extent: Extent2D

    init(cStruct: VkRect2D) {
        self.offset = Offset2D(cStruct: cStruct.offset)
        self.extent = Extent2D(cStruct: cStruct.extent)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkRect2D>) throws -> R) rethrows -> R {
        try self.offset.withCStruct { ptr_offset in
            try self.extent.withCStruct { ptr_extent in
                var cStruct = VkRect2D()
                cStruct.offset = ptr_offset.pointee
                cStruct.extent = ptr_extent.pointee
                return try body(&cStruct)
            }
        }
    }
}

struct ClearRect: CStructConvertible {
    typealias CStruct = VkClearRect

    let rect: Rect2D
    let baseArrayLayer: UInt32
    let layerCount: UInt32

    init(cStruct: VkClearRect) {
        self.rect = Rect2D(cStruct: cStruct.rect)
        self.baseArrayLayer = cStruct.baseArrayLayer
        self.layerCount = cStruct.layerCount
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkClearRect>) throws -> R) rethrows -> R {
        try self.rect.withCStruct { ptr_rect in
            var cStruct = VkClearRect()
            cStruct.rect = ptr_rect.pointee
            cStruct.baseArrayLayer = self.baseArrayLayer
            cStruct.layerCount = self.layerCount
            return try body(&cStruct)
        }
    }
}

struct ComponentMapping: CStructConvertible {
    typealias CStruct = VkComponentMapping

    let r: ComponentSwizzle
    let g: ComponentSwizzle
    let b: ComponentSwizzle
    let a: ComponentSwizzle

    init(cStruct: VkComponentMapping) {
        self.r = ComponentSwizzle(rawValue: cStruct.r.rawValue)!
        self.g = ComponentSwizzle(rawValue: cStruct.g.rawValue)!
        self.b = ComponentSwizzle(rawValue: cStruct.b.rawValue)!
        self.a = ComponentSwizzle(rawValue: cStruct.a.rawValue)!
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkComponentMapping>) throws -> R) rethrows -> R {
        var cStruct = VkComponentMapping()
        cStruct.r = VkComponentSwizzle(rawValue: self.r.rawValue)
        cStruct.g = VkComponentSwizzle(rawValue: self.g.rawValue)
        cStruct.b = VkComponentSwizzle(rawValue: self.b.rawValue)
        cStruct.a = VkComponentSwizzle(rawValue: self.a.rawValue)
        return try body(&cStruct)
    }
}

struct PhysicalDeviceProperties: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceProperties

    let apiVersion: UInt32
    let driverVersion: UInt32
    let vendorID: UInt32
    let deviceID: UInt32
    let deviceType: PhysicalDeviceType
    let deviceName: String
    let pipelineCacheUUID: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
    let limits: PhysicalDeviceLimits
    let sparseProperties: PhysicalDeviceSparseProperties

    init(cStruct: VkPhysicalDeviceProperties) {
        self.apiVersion = cStruct.apiVersion
        self.driverVersion = cStruct.driverVersion
        self.vendorID = cStruct.vendorID
        self.deviceID = cStruct.deviceID
        self.deviceType = PhysicalDeviceType(rawValue: cStruct.deviceType.rawValue)!
        self.deviceName = String(unsafeBytesOf: cStruct.deviceName)
        self.pipelineCacheUUID = cStruct.pipelineCacheUUID
        self.limits = PhysicalDeviceLimits(cStruct: cStruct.limits)
        self.sparseProperties = PhysicalDeviceSparseProperties(cStruct: cStruct.sparseProperties)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceProperties>) throws -> R) rethrows -> R {
        try self.limits.withCStruct { ptr_limits in
            try self.sparseProperties.withCStruct { ptr_sparseProperties in
                var cStruct = VkPhysicalDeviceProperties()
                cStruct.apiVersion = self.apiVersion
                cStruct.driverVersion = self.driverVersion
                cStruct.vendorID = self.vendorID
                cStruct.deviceID = self.deviceID
                cStruct.deviceType = VkPhysicalDeviceType(rawValue: self.deviceType.rawValue)
                cStruct.deviceName = self.deviceName.unsafeBytesCopy()
                cStruct.pipelineCacheUUID = self.pipelineCacheUUID
                cStruct.limits = ptr_limits.pointee
                cStruct.sparseProperties = ptr_sparseProperties.pointee
                return try body(&cStruct)
            }
        }
    }
}

struct ExtensionProperties: CStructConvertible {
    typealias CStruct = VkExtensionProperties

    let extensionName: String
    let specVersion: UInt32

    init(cStruct: VkExtensionProperties) {
        self.extensionName = String(unsafeBytesOf: cStruct.extensionName)
        self.specVersion = cStruct.specVersion
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkExtensionProperties>) throws -> R) rethrows -> R {
        var cStruct = VkExtensionProperties()
        cStruct.extensionName = self.extensionName.unsafeBytesCopy()
        cStruct.specVersion = self.specVersion
        return try body(&cStruct)
    }
}

struct LayerProperties: CStructConvertible {
    typealias CStruct = VkLayerProperties

    let layerName: String
    let specVersion: UInt32
    let implementationVersion: UInt32
    let description: String

    init(cStruct: VkLayerProperties) {
        self.layerName = String(unsafeBytesOf: cStruct.layerName)
        self.specVersion = cStruct.specVersion
        self.implementationVersion = cStruct.implementationVersion
        self.description = String(unsafeBytesOf: cStruct.description)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkLayerProperties>) throws -> R) rethrows -> R {
        var cStruct = VkLayerProperties()
        cStruct.layerName = self.layerName.unsafeBytesCopy()
        cStruct.specVersion = self.specVersion
        cStruct.implementationVersion = self.implementationVersion
        cStruct.description = self.description.unsafeBytesCopy()
        return try body(&cStruct)
    }
}

struct ApplicationInfo: CStructConvertible {
    typealias CStruct = VkApplicationInfo

    let pApplicationName: String?
    let applicationVersion: UInt32
    let pEngineName: String?
    let engineVersion: UInt32
    let apiVersion: UInt32

    init(cStruct: VkApplicationInfo) {
        self.pApplicationName = (cStruct.pApplicationName != nil) ? String(cString: cStruct.pApplicationName) : nil
        self.applicationVersion = cStruct.applicationVersion
        self.pEngineName = (cStruct.pEngineName != nil) ? String(cString: cStruct.pEngineName) : nil
        self.engineVersion = cStruct.engineVersion
        self.apiVersion = cStruct.apiVersion
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkApplicationInfo>) throws -> R) rethrows -> R {
        try self.pApplicationName.withOptionalCString { cString_pApplicationName in
            try self.pEngineName.withOptionalCString { cString_pEngineName in
                var cStruct = VkApplicationInfo()
                cStruct.sType = VK_STRUCTURE_TYPE_APPLICATION_INFO
                cStruct.pNext = nil
                cStruct.pApplicationName = cString_pApplicationName
                cStruct.applicationVersion = self.applicationVersion
                cStruct.pEngineName = cString_pEngineName
                cStruct.engineVersion = self.engineVersion
                cStruct.apiVersion = self.apiVersion
                return try body(&cStruct)
            }
        }
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

    init(cStruct: VkAllocationCallbacks) {
        self.pUserData = cStruct.pUserData
        self.pfnAllocation = cStruct.pfnAllocation
        self.pfnReallocation = cStruct.pfnReallocation
        self.pfnFree = cStruct.pfnFree
        self.pfnInternalAllocation = cStruct.pfnInternalAllocation
        self.pfnInternalFree = cStruct.pfnInternalFree
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkAllocationCallbacks>) throws -> R) rethrows -> R {
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

    let flags: DeviceQueueCreateFlags
    let queueFamilyIndex: UInt32
    let pQueuePriorities: Array<Float>

    init(cStruct: VkDeviceQueueCreateInfo) {
        self.flags = DeviceQueueCreateFlags(rawValue: cStruct.flags)
        self.queueFamilyIndex = cStruct.queueFamilyIndex
        self.pQueuePriorities = Array(UnsafeBufferPointer(start: cStruct.pQueuePriorities, count: Int(cStruct.queueCount)))
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkDeviceQueueCreateInfo>) throws -> R) rethrows -> R {
        try self.pQueuePriorities.withUnsafeBufferPointer { ptr_pQueuePriorities in
            var cStruct = VkDeviceQueueCreateInfo()
            cStruct.sType = VK_STRUCTURE_TYPE_DEVICE_QUEUE_CREATE_INFO
            cStruct.pNext = nil
            cStruct.flags = self.flags.rawValue
            cStruct.queueFamilyIndex = self.queueFamilyIndex
            cStruct.queueCount = UInt32(ptr_pQueuePriorities.count)
            cStruct.pQueuePriorities = ptr_pQueuePriorities.baseAddress
            return try body(&cStruct)
        }
    }
}

struct DeviceCreateInfo: CStructConvertible {
    typealias CStruct = VkDeviceCreateInfo

    let flags: DeviceCreateFlags
    let pQueueCreateInfos: Array<DeviceQueueCreateInfo>
    let ppEnabledLayerNames: Array<String>
    let ppEnabledExtensionNames: Array<String>
    let pEnabledFeatures: PhysicalDeviceFeatures?

    init(cStruct: VkDeviceCreateInfo) {
        self.flags = DeviceCreateFlags(rawValue: cStruct.flags)
        self.pQueueCreateInfos = UnsafeBufferPointer(start: cStruct.pQueueCreateInfos, count: Int(cStruct.queueCreateInfoCount)).map{ DeviceQueueCreateInfo(cStruct: $0) }
        self.ppEnabledLayerNames = UnsafeBufferPointer(start: cStruct.ppEnabledLayerNames, count: Int(cStruct.enabledLayerCount)).map{ String(cString: $0!) }
        self.ppEnabledExtensionNames = UnsafeBufferPointer(start: cStruct.ppEnabledExtensionNames, count: Int(cStruct.enabledExtensionCount)).map{ String(cString: $0!) }
        self.pEnabledFeatures = (cStruct.pEnabledFeatures != nil) ? PhysicalDeviceFeatures(cStruct: cStruct.pEnabledFeatures.pointee) : nil
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkDeviceCreateInfo>) throws -> R) rethrows -> R {
        try self.pQueueCreateInfos.withCStructBufferPointer { ptr_pQueueCreateInfos in
            try self.ppEnabledLayerNames.withCStringBufferPointer { ptr_ppEnabledLayerNames in
                try self.ppEnabledExtensionNames.withCStringBufferPointer { ptr_ppEnabledExtensionNames in
                    try self.pEnabledFeatures.withOptionalCStruct { ptr_pEnabledFeatures in
                        var cStruct = VkDeviceCreateInfo()
                        cStruct.sType = VK_STRUCTURE_TYPE_DEVICE_CREATE_INFO
                        cStruct.pNext = nil
                        cStruct.flags = self.flags.rawValue
                        cStruct.queueCreateInfoCount = UInt32(ptr_pQueueCreateInfos.count)
                        cStruct.pQueueCreateInfos = ptr_pQueueCreateInfos.baseAddress
                        cStruct.enabledLayerCount = UInt32(ptr_ppEnabledLayerNames.count)
                        cStruct.ppEnabledLayerNames = ptr_ppEnabledLayerNames.baseAddress
                        cStruct.enabledExtensionCount = UInt32(ptr_ppEnabledExtensionNames.count)
                        cStruct.ppEnabledExtensionNames = ptr_ppEnabledExtensionNames.baseAddress
                        cStruct.pEnabledFeatures = ptr_pEnabledFeatures
                        return try body(&cStruct)
                    }
                }
            }
        }
    }
}

struct InstanceCreateInfo: CStructConvertible {
    typealias CStruct = VkInstanceCreateInfo

    let flags: InstanceCreateFlags
    let pApplicationInfo: ApplicationInfo?
    let ppEnabledLayerNames: Array<String>
    let ppEnabledExtensionNames: Array<String>

    init(cStruct: VkInstanceCreateInfo) {
        self.flags = InstanceCreateFlags(rawValue: cStruct.flags)
        self.pApplicationInfo = (cStruct.pApplicationInfo != nil) ? ApplicationInfo(cStruct: cStruct.pApplicationInfo.pointee) : nil
        self.ppEnabledLayerNames = UnsafeBufferPointer(start: cStruct.ppEnabledLayerNames, count: Int(cStruct.enabledLayerCount)).map{ String(cString: $0!) }
        self.ppEnabledExtensionNames = UnsafeBufferPointer(start: cStruct.ppEnabledExtensionNames, count: Int(cStruct.enabledExtensionCount)).map{ String(cString: $0!) }
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkInstanceCreateInfo>) throws -> R) rethrows -> R {
        try self.pApplicationInfo.withOptionalCStruct { ptr_pApplicationInfo in
            try self.ppEnabledLayerNames.withCStringBufferPointer { ptr_ppEnabledLayerNames in
                try self.ppEnabledExtensionNames.withCStringBufferPointer { ptr_ppEnabledExtensionNames in
                    var cStruct = VkInstanceCreateInfo()
                    cStruct.sType = VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO
                    cStruct.pNext = nil
                    cStruct.flags = self.flags.rawValue
                    cStruct.pApplicationInfo = ptr_pApplicationInfo
                    cStruct.enabledLayerCount = UInt32(ptr_ppEnabledLayerNames.count)
                    cStruct.ppEnabledLayerNames = ptr_ppEnabledLayerNames.baseAddress
                    cStruct.enabledExtensionCount = UInt32(ptr_ppEnabledExtensionNames.count)
                    cStruct.ppEnabledExtensionNames = ptr_ppEnabledExtensionNames.baseAddress
                    return try body(&cStruct)
                }
            }
        }
    }
}

struct QueueFamilyProperties: CStructConvertible {
    typealias CStruct = VkQueueFamilyProperties

    let queueFlags: QueueFlags
    let queueCount: UInt32
    let timestampValidBits: UInt32
    let minImageTransferGranularity: Extent3D

    init(cStruct: VkQueueFamilyProperties) {
        self.queueFlags = QueueFlags(rawValue: cStruct.queueFlags)
        self.queueCount = cStruct.queueCount
        self.timestampValidBits = cStruct.timestampValidBits
        self.minImageTransferGranularity = Extent3D(cStruct: cStruct.minImageTransferGranularity)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkQueueFamilyProperties>) throws -> R) rethrows -> R {
        try self.minImageTransferGranularity.withCStruct { ptr_minImageTransferGranularity in
            var cStruct = VkQueueFamilyProperties()
            cStruct.queueFlags = self.queueFlags.rawValue
            cStruct.queueCount = self.queueCount
            cStruct.timestampValidBits = self.timestampValidBits
            cStruct.minImageTransferGranularity = ptr_minImageTransferGranularity.pointee
            return try body(&cStruct)
        }
    }
}

struct PhysicalDeviceMemoryProperties: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceMemoryProperties

    let memoryTypeCount: UInt32
    let memoryTypes: (VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType)
    let memoryHeapCount: UInt32
    let memoryHeaps: (VkMemoryHeap, VkMemoryHeap, VkMemoryHeap, VkMemoryHeap, VkMemoryHeap, VkMemoryHeap, VkMemoryHeap, VkMemoryHeap, VkMemoryHeap, VkMemoryHeap, VkMemoryHeap, VkMemoryHeap, VkMemoryHeap, VkMemoryHeap, VkMemoryHeap, VkMemoryHeap)

    init(cStruct: VkPhysicalDeviceMemoryProperties) {
        self.memoryTypeCount = cStruct.memoryTypeCount
        self.memoryTypes = cStruct.memoryTypes
        self.memoryHeapCount = cStruct.memoryHeapCount
        self.memoryHeaps = cStruct.memoryHeaps
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceMemoryProperties>) throws -> R) rethrows -> R {
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

    init(cStruct: VkMemoryAllocateInfo) {
        self.allocationSize = cStruct.allocationSize
        self.memoryTypeIndex = cStruct.memoryTypeIndex
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkMemoryAllocateInfo>) throws -> R) rethrows -> R {
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

    init(cStruct: VkMemoryRequirements) {
        self.size = cStruct.size
        self.alignment = cStruct.alignment
        self.memoryTypeBits = cStruct.memoryTypeBits
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkMemoryRequirements>) throws -> R) rethrows -> R {
        var cStruct = VkMemoryRequirements()
        cStruct.size = self.size
        cStruct.alignment = self.alignment
        cStruct.memoryTypeBits = self.memoryTypeBits
        return try body(&cStruct)
    }
}

struct SparseImageFormatProperties: CStructConvertible {
    typealias CStruct = VkSparseImageFormatProperties

    let aspectMask: ImageAspectFlags
    let imageGranularity: Extent3D
    let flags: SparseImageFormatFlags

    init(cStruct: VkSparseImageFormatProperties) {
        self.aspectMask = ImageAspectFlags(rawValue: cStruct.aspectMask)
        self.imageGranularity = Extent3D(cStruct: cStruct.imageGranularity)
        self.flags = SparseImageFormatFlags(rawValue: cStruct.flags)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkSparseImageFormatProperties>) throws -> R) rethrows -> R {
        try self.imageGranularity.withCStruct { ptr_imageGranularity in
            var cStruct = VkSparseImageFormatProperties()
            cStruct.aspectMask = self.aspectMask.rawValue
            cStruct.imageGranularity = ptr_imageGranularity.pointee
            cStruct.flags = self.flags.rawValue
            return try body(&cStruct)
        }
    }
}

struct SparseImageMemoryRequirements: CStructConvertible {
    typealias CStruct = VkSparseImageMemoryRequirements

    let formatProperties: SparseImageFormatProperties
    let imageMipTailFirstLod: UInt32
    let imageMipTailSize: VkDeviceSize
    let imageMipTailOffset: VkDeviceSize
    let imageMipTailStride: VkDeviceSize

    init(cStruct: VkSparseImageMemoryRequirements) {
        self.formatProperties = SparseImageFormatProperties(cStruct: cStruct.formatProperties)
        self.imageMipTailFirstLod = cStruct.imageMipTailFirstLod
        self.imageMipTailSize = cStruct.imageMipTailSize
        self.imageMipTailOffset = cStruct.imageMipTailOffset
        self.imageMipTailStride = cStruct.imageMipTailStride
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkSparseImageMemoryRequirements>) throws -> R) rethrows -> R {
        try self.formatProperties.withCStruct { ptr_formatProperties in
            var cStruct = VkSparseImageMemoryRequirements()
            cStruct.formatProperties = ptr_formatProperties.pointee
            cStruct.imageMipTailFirstLod = self.imageMipTailFirstLod
            cStruct.imageMipTailSize = self.imageMipTailSize
            cStruct.imageMipTailOffset = self.imageMipTailOffset
            cStruct.imageMipTailStride = self.imageMipTailStride
            return try body(&cStruct)
        }
    }
}

struct MemoryType: CStructConvertible {
    typealias CStruct = VkMemoryType

    let propertyFlags: MemoryPropertyFlags
    let heapIndex: UInt32

    init(cStruct: VkMemoryType) {
        self.propertyFlags = MemoryPropertyFlags(rawValue: cStruct.propertyFlags)
        self.heapIndex = cStruct.heapIndex
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkMemoryType>) throws -> R) rethrows -> R {
        var cStruct = VkMemoryType()
        cStruct.propertyFlags = self.propertyFlags.rawValue
        cStruct.heapIndex = self.heapIndex
        return try body(&cStruct)
    }
}

struct MemoryHeap: CStructConvertible {
    typealias CStruct = VkMemoryHeap

    let size: VkDeviceSize
    let flags: MemoryHeapFlags

    init(cStruct: VkMemoryHeap) {
        self.size = cStruct.size
        self.flags = MemoryHeapFlags(rawValue: cStruct.flags)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkMemoryHeap>) throws -> R) rethrows -> R {
        var cStruct = VkMemoryHeap()
        cStruct.size = self.size
        cStruct.flags = self.flags.rawValue
        return try body(&cStruct)
    }
}

struct MappedMemoryRange: CStructConvertible {
    typealias CStruct = VkMappedMemoryRange

    let memory: DeviceMemory
    let offset: VkDeviceSize
    let size: VkDeviceSize

    init(cStruct: VkMappedMemoryRange) {
        fatalError("This initializer should be removed.")
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkMappedMemoryRange>) throws -> R) rethrows -> R {
        var cStruct = VkMappedMemoryRange()
        cStruct.sType = VK_STRUCTURE_TYPE_MAPPED_MEMORY_RANGE
        cStruct.pNext = nil
        cStruct.memory = self.memory.handle
        cStruct.offset = self.offset
        cStruct.size = self.size
        return try body(&cStruct)
    }
}

struct FormatProperties: CStructConvertible {
    typealias CStruct = VkFormatProperties

    let linearTilingFeatures: FormatFeatureFlags
    let optimalTilingFeatures: FormatFeatureFlags
    let bufferFeatures: FormatFeatureFlags

    init(cStruct: VkFormatProperties) {
        self.linearTilingFeatures = FormatFeatureFlags(rawValue: cStruct.linearTilingFeatures)
        self.optimalTilingFeatures = FormatFeatureFlags(rawValue: cStruct.optimalTilingFeatures)
        self.bufferFeatures = FormatFeatureFlags(rawValue: cStruct.bufferFeatures)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkFormatProperties>) throws -> R) rethrows -> R {
        var cStruct = VkFormatProperties()
        cStruct.linearTilingFeatures = self.linearTilingFeatures.rawValue
        cStruct.optimalTilingFeatures = self.optimalTilingFeatures.rawValue
        cStruct.bufferFeatures = self.bufferFeatures.rawValue
        return try body(&cStruct)
    }
}

struct ImageFormatProperties: CStructConvertible {
    typealias CStruct = VkImageFormatProperties

    let maxExtent: Extent3D
    let maxMipLevels: UInt32
    let maxArrayLayers: UInt32
    let sampleCounts: SampleCountFlags
    let maxResourceSize: VkDeviceSize

    init(cStruct: VkImageFormatProperties) {
        self.maxExtent = Extent3D(cStruct: cStruct.maxExtent)
        self.maxMipLevels = cStruct.maxMipLevels
        self.maxArrayLayers = cStruct.maxArrayLayers
        self.sampleCounts = SampleCountFlags(rawValue: cStruct.sampleCounts)
        self.maxResourceSize = cStruct.maxResourceSize
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkImageFormatProperties>) throws -> R) rethrows -> R {
        try self.maxExtent.withCStruct { ptr_maxExtent in
            var cStruct = VkImageFormatProperties()
            cStruct.maxExtent = ptr_maxExtent.pointee
            cStruct.maxMipLevels = self.maxMipLevels
            cStruct.maxArrayLayers = self.maxArrayLayers
            cStruct.sampleCounts = self.sampleCounts.rawValue
            cStruct.maxResourceSize = self.maxResourceSize
            return try body(&cStruct)
        }
    }
}

struct DescriptorBufferInfo: CStructConvertible {
    typealias CStruct = VkDescriptorBufferInfo

    let buffer: Buffer
    let offset: VkDeviceSize
    let range: VkDeviceSize

    init(cStruct: VkDescriptorBufferInfo) {
        fatalError("This initializer should be removed.")
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkDescriptorBufferInfo>) throws -> R) rethrows -> R {
        var cStruct = VkDescriptorBufferInfo()
        cStruct.buffer = self.buffer.handle
        cStruct.offset = self.offset
        cStruct.range = self.range
        return try body(&cStruct)
    }
}

struct DescriptorImageInfo: CStructConvertible {
    typealias CStruct = VkDescriptorImageInfo

    let sampler: Sampler
    let imageView: ImageView
    let imageLayout: ImageLayout

    init(cStruct: VkDescriptorImageInfo) {
        fatalError("This initializer should be removed.")
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkDescriptorImageInfo>) throws -> R) rethrows -> R {
        var cStruct = VkDescriptorImageInfo()
        cStruct.sampler = self.sampler.handle
        cStruct.imageView = self.imageView.handle
        cStruct.imageLayout = VkImageLayout(rawValue: self.imageLayout.rawValue)
        return try body(&cStruct)
    }
}

struct WriteDescriptorSet: CStructConvertible {
    typealias CStruct = VkWriteDescriptorSet

    let dstSet: DescriptorSet
    let dstBinding: UInt32
    let dstArrayElement: UInt32
    let descriptorType: DescriptorType
    let pImageInfo: Array<DescriptorImageInfo>
    let pBufferInfo: Array<DescriptorBufferInfo>
    let pTexelBufferView: Array<BufferView>

    init(cStruct: VkWriteDescriptorSet) {
        fatalError("This initializer should be removed.")
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkWriteDescriptorSet>) throws -> R) rethrows -> R {
        try self.pImageInfo.withCStructBufferPointer { ptr_pImageInfo in
            try self.pBufferInfo.withCStructBufferPointer { ptr_pBufferInfo in
                try self.pTexelBufferView.map{ $0.handle }.withUnsafeBufferPointer { ptr_pTexelBufferView in
                    var cStruct = VkWriteDescriptorSet()
                    cStruct.sType = VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET
                    cStruct.pNext = nil
                    cStruct.dstSet = self.dstSet.handle
                    cStruct.dstBinding = self.dstBinding
                    cStruct.dstArrayElement = self.dstArrayElement
                    cStruct.descriptorCount = UInt32(ptr_pImageInfo.count)
                    cStruct.descriptorType = VkDescriptorType(rawValue: self.descriptorType.rawValue)
                    cStruct.pImageInfo = ptr_pImageInfo.baseAddress
                    cStruct.pBufferInfo = ptr_pBufferInfo.baseAddress
                    cStruct.pTexelBufferView = ptr_pTexelBufferView.baseAddress
                    return try body(&cStruct)
                }
            }
        }
    }
}

struct CopyDescriptorSet: CStructConvertible {
    typealias CStruct = VkCopyDescriptorSet

    let srcSet: DescriptorSet
    let srcBinding: UInt32
    let srcArrayElement: UInt32
    let dstSet: DescriptorSet
    let dstBinding: UInt32
    let dstArrayElement: UInt32
    let descriptorCount: UInt32

    init(cStruct: VkCopyDescriptorSet) {
        fatalError("This initializer should be removed.")
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkCopyDescriptorSet>) throws -> R) rethrows -> R {
        var cStruct = VkCopyDescriptorSet()
        cStruct.sType = VK_STRUCTURE_TYPE_COPY_DESCRIPTOR_SET
        cStruct.pNext = nil
        cStruct.srcSet = self.srcSet.handle
        cStruct.srcBinding = self.srcBinding
        cStruct.srcArrayElement = self.srcArrayElement
        cStruct.dstSet = self.dstSet.handle
        cStruct.dstBinding = self.dstBinding
        cStruct.dstArrayElement = self.dstArrayElement
        cStruct.descriptorCount = self.descriptorCount
        return try body(&cStruct)
    }
}

struct BufferCreateInfo: CStructConvertible {
    typealias CStruct = VkBufferCreateInfo

    let flags: BufferCreateFlags
    let size: VkDeviceSize
    let usage: BufferUsageFlags
    let sharingMode: SharingMode
    let pQueueFamilyIndices: Array<UInt32>

    init(cStruct: VkBufferCreateInfo) {
        self.flags = BufferCreateFlags(rawValue: cStruct.flags)
        self.size = cStruct.size
        self.usage = BufferUsageFlags(rawValue: cStruct.usage)
        self.sharingMode = SharingMode(rawValue: cStruct.sharingMode.rawValue)!
        self.pQueueFamilyIndices = Array(UnsafeBufferPointer(start: cStruct.pQueueFamilyIndices, count: Int(cStruct.queueFamilyIndexCount)))
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkBufferCreateInfo>) throws -> R) rethrows -> R {
        try self.pQueueFamilyIndices.withUnsafeBufferPointer { ptr_pQueueFamilyIndices in
            var cStruct = VkBufferCreateInfo()
            cStruct.sType = VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO
            cStruct.pNext = nil
            cStruct.flags = self.flags.rawValue
            cStruct.size = self.size
            cStruct.usage = self.usage.rawValue
            cStruct.sharingMode = VkSharingMode(rawValue: self.sharingMode.rawValue)
            cStruct.queueFamilyIndexCount = UInt32(ptr_pQueueFamilyIndices.count)
            cStruct.pQueueFamilyIndices = ptr_pQueueFamilyIndices.baseAddress
            return try body(&cStruct)
        }
    }
}

struct BufferViewCreateInfo: CStructConvertible {
    typealias CStruct = VkBufferViewCreateInfo

    let flags: BufferViewCreateFlags
    let buffer: Buffer
    let format: Format
    let offset: VkDeviceSize
    let range: VkDeviceSize

    init(cStruct: VkBufferViewCreateInfo) {
        fatalError("This initializer should be removed.")
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkBufferViewCreateInfo>) throws -> R) rethrows -> R {
        var cStruct = VkBufferViewCreateInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_BUFFER_VIEW_CREATE_INFO
        cStruct.pNext = nil
        cStruct.flags = self.flags.rawValue
        cStruct.buffer = self.buffer.handle
        cStruct.format = VkFormat(rawValue: self.format.rawValue)
        cStruct.offset = self.offset
        cStruct.range = self.range
        return try body(&cStruct)
    }
}

struct ImageSubresource: CStructConvertible {
    typealias CStruct = VkImageSubresource

    let aspectMask: ImageAspectFlags
    let mipLevel: UInt32
    let arrayLayer: UInt32

    init(cStruct: VkImageSubresource) {
        self.aspectMask = ImageAspectFlags(rawValue: cStruct.aspectMask)
        self.mipLevel = cStruct.mipLevel
        self.arrayLayer = cStruct.arrayLayer
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkImageSubresource>) throws -> R) rethrows -> R {
        var cStruct = VkImageSubresource()
        cStruct.aspectMask = self.aspectMask.rawValue
        cStruct.mipLevel = self.mipLevel
        cStruct.arrayLayer = self.arrayLayer
        return try body(&cStruct)
    }
}

struct ImageSubresourceLayers: CStructConvertible {
    typealias CStruct = VkImageSubresourceLayers

    let aspectMask: ImageAspectFlags
    let mipLevel: UInt32
    let baseArrayLayer: UInt32
    let layerCount: UInt32

    init(cStruct: VkImageSubresourceLayers) {
        self.aspectMask = ImageAspectFlags(rawValue: cStruct.aspectMask)
        self.mipLevel = cStruct.mipLevel
        self.baseArrayLayer = cStruct.baseArrayLayer
        self.layerCount = cStruct.layerCount
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkImageSubresourceLayers>) throws -> R) rethrows -> R {
        var cStruct = VkImageSubresourceLayers()
        cStruct.aspectMask = self.aspectMask.rawValue
        cStruct.mipLevel = self.mipLevel
        cStruct.baseArrayLayer = self.baseArrayLayer
        cStruct.layerCount = self.layerCount
        return try body(&cStruct)
    }
}

struct ImageSubresourceRange: CStructConvertible {
    typealias CStruct = VkImageSubresourceRange

    let aspectMask: ImageAspectFlags
    let baseMipLevel: UInt32
    let levelCount: UInt32
    let baseArrayLayer: UInt32
    let layerCount: UInt32

    init(cStruct: VkImageSubresourceRange) {
        self.aspectMask = ImageAspectFlags(rawValue: cStruct.aspectMask)
        self.baseMipLevel = cStruct.baseMipLevel
        self.levelCount = cStruct.levelCount
        self.baseArrayLayer = cStruct.baseArrayLayer
        self.layerCount = cStruct.layerCount
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkImageSubresourceRange>) throws -> R) rethrows -> R {
        var cStruct = VkImageSubresourceRange()
        cStruct.aspectMask = self.aspectMask.rawValue
        cStruct.baseMipLevel = self.baseMipLevel
        cStruct.levelCount = self.levelCount
        cStruct.baseArrayLayer = self.baseArrayLayer
        cStruct.layerCount = self.layerCount
        return try body(&cStruct)
    }
}

struct MemoryBarrier: CStructConvertible {
    typealias CStruct = VkMemoryBarrier

    let srcAccessMask: AccessFlags
    let dstAccessMask: AccessFlags

    init(cStruct: VkMemoryBarrier) {
        self.srcAccessMask = AccessFlags(rawValue: cStruct.srcAccessMask)
        self.dstAccessMask = AccessFlags(rawValue: cStruct.dstAccessMask)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkMemoryBarrier>) throws -> R) rethrows -> R {
        var cStruct = VkMemoryBarrier()
        cStruct.sType = VK_STRUCTURE_TYPE_MEMORY_BARRIER
        cStruct.pNext = nil
        cStruct.srcAccessMask = self.srcAccessMask.rawValue
        cStruct.dstAccessMask = self.dstAccessMask.rawValue
        return try body(&cStruct)
    }
}

struct BufferMemoryBarrier: CStructConvertible {
    typealias CStruct = VkBufferMemoryBarrier

    let srcAccessMask: AccessFlags
    let dstAccessMask: AccessFlags
    let srcQueueFamilyIndex: UInt32
    let dstQueueFamilyIndex: UInt32
    let buffer: Buffer
    let offset: VkDeviceSize
    let size: VkDeviceSize

    init(cStruct: VkBufferMemoryBarrier) {
        fatalError("This initializer should be removed.")
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkBufferMemoryBarrier>) throws -> R) rethrows -> R {
        var cStruct = VkBufferMemoryBarrier()
        cStruct.sType = VK_STRUCTURE_TYPE_BUFFER_MEMORY_BARRIER
        cStruct.pNext = nil
        cStruct.srcAccessMask = self.srcAccessMask.rawValue
        cStruct.dstAccessMask = self.dstAccessMask.rawValue
        cStruct.srcQueueFamilyIndex = self.srcQueueFamilyIndex
        cStruct.dstQueueFamilyIndex = self.dstQueueFamilyIndex
        cStruct.buffer = self.buffer.handle
        cStruct.offset = self.offset
        cStruct.size = self.size
        return try body(&cStruct)
    }
}

struct ImageMemoryBarrier: CStructConvertible {
    typealias CStruct = VkImageMemoryBarrier

    let srcAccessMask: AccessFlags
    let dstAccessMask: AccessFlags
    let oldLayout: ImageLayout
    let newLayout: ImageLayout
    let srcQueueFamilyIndex: UInt32
    let dstQueueFamilyIndex: UInt32
    let image: Image
    let subresourceRange: ImageSubresourceRange

    init(cStruct: VkImageMemoryBarrier) {
        fatalError("This initializer should be removed.")
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkImageMemoryBarrier>) throws -> R) rethrows -> R {
        try self.subresourceRange.withCStruct { ptr_subresourceRange in
            var cStruct = VkImageMemoryBarrier()
            cStruct.sType = VK_STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER
            cStruct.pNext = nil
            cStruct.srcAccessMask = self.srcAccessMask.rawValue
            cStruct.dstAccessMask = self.dstAccessMask.rawValue
            cStruct.oldLayout = VkImageLayout(rawValue: self.oldLayout.rawValue)
            cStruct.newLayout = VkImageLayout(rawValue: self.newLayout.rawValue)
            cStruct.srcQueueFamilyIndex = self.srcQueueFamilyIndex
            cStruct.dstQueueFamilyIndex = self.dstQueueFamilyIndex
            cStruct.image = self.image.handle
            cStruct.subresourceRange = ptr_subresourceRange.pointee
            return try body(&cStruct)
        }
    }
}

struct ImageCreateInfo: CStructConvertible {
    typealias CStruct = VkImageCreateInfo

    let flags: ImageCreateFlags
    let imageType: ImageType
    let format: Format
    let extent: Extent3D
    let mipLevels: UInt32
    let arrayLayers: UInt32
    let samples: SampleCountFlags
    let tiling: ImageTiling
    let usage: ImageUsageFlags
    let sharingMode: SharingMode
    let pQueueFamilyIndices: Array<UInt32>
    let initialLayout: ImageLayout

    init(cStruct: VkImageCreateInfo) {
        self.flags = ImageCreateFlags(rawValue: cStruct.flags)
        self.imageType = ImageType(rawValue: cStruct.imageType.rawValue)!
        self.format = Format(rawValue: cStruct.format.rawValue)!
        self.extent = Extent3D(cStruct: cStruct.extent)
        self.mipLevels = cStruct.mipLevels
        self.arrayLayers = cStruct.arrayLayers
        self.samples = SampleCountFlags(rawValue: cStruct.samples.rawValue)
        self.tiling = ImageTiling(rawValue: cStruct.tiling.rawValue)!
        self.usage = ImageUsageFlags(rawValue: cStruct.usage)
        self.sharingMode = SharingMode(rawValue: cStruct.sharingMode.rawValue)!
        self.pQueueFamilyIndices = Array(UnsafeBufferPointer(start: cStruct.pQueueFamilyIndices, count: Int(cStruct.queueFamilyIndexCount)))
        self.initialLayout = ImageLayout(rawValue: cStruct.initialLayout.rawValue)!
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkImageCreateInfo>) throws -> R) rethrows -> R {
        try self.extent.withCStruct { ptr_extent in
            try self.pQueueFamilyIndices.withUnsafeBufferPointer { ptr_pQueueFamilyIndices in
                var cStruct = VkImageCreateInfo()
                cStruct.sType = VK_STRUCTURE_TYPE_IMAGE_CREATE_INFO
                cStruct.pNext = nil
                cStruct.flags = self.flags.rawValue
                cStruct.imageType = VkImageType(rawValue: self.imageType.rawValue)
                cStruct.format = VkFormat(rawValue: self.format.rawValue)
                cStruct.extent = ptr_extent.pointee
                cStruct.mipLevels = self.mipLevels
                cStruct.arrayLayers = self.arrayLayers
                cStruct.samples = VkSampleCountFlagBits(rawValue: self.samples.rawValue)
                cStruct.tiling = VkImageTiling(rawValue: self.tiling.rawValue)
                cStruct.usage = self.usage.rawValue
                cStruct.sharingMode = VkSharingMode(rawValue: self.sharingMode.rawValue)
                cStruct.queueFamilyIndexCount = UInt32(ptr_pQueueFamilyIndices.count)
                cStruct.pQueueFamilyIndices = ptr_pQueueFamilyIndices.baseAddress
                cStruct.initialLayout = VkImageLayout(rawValue: self.initialLayout.rawValue)
                return try body(&cStruct)
            }
        }
    }
}

struct SubresourceLayout: CStructConvertible {
    typealias CStruct = VkSubresourceLayout

    let offset: VkDeviceSize
    let size: VkDeviceSize
    let rowPitch: VkDeviceSize
    let arrayPitch: VkDeviceSize
    let depthPitch: VkDeviceSize

    init(cStruct: VkSubresourceLayout) {
        self.offset = cStruct.offset
        self.size = cStruct.size
        self.rowPitch = cStruct.rowPitch
        self.arrayPitch = cStruct.arrayPitch
        self.depthPitch = cStruct.depthPitch
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkSubresourceLayout>) throws -> R) rethrows -> R {
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

    let flags: ImageViewCreateFlags
    let image: Image
    let viewType: ImageViewType
    let format: Format
    let components: ComponentMapping
    let subresourceRange: ImageSubresourceRange

    init(cStruct: VkImageViewCreateInfo) {
        fatalError("This initializer should be removed.")
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkImageViewCreateInfo>) throws -> R) rethrows -> R {
        try self.components.withCStruct { ptr_components in
            try self.subresourceRange.withCStruct { ptr_subresourceRange in
                var cStruct = VkImageViewCreateInfo()
                cStruct.sType = VK_STRUCTURE_TYPE_IMAGE_VIEW_CREATE_INFO
                cStruct.pNext = nil
                cStruct.flags = self.flags.rawValue
                cStruct.image = self.image.handle
                cStruct.viewType = VkImageViewType(rawValue: self.viewType.rawValue)
                cStruct.format = VkFormat(rawValue: self.format.rawValue)
                cStruct.components = ptr_components.pointee
                cStruct.subresourceRange = ptr_subresourceRange.pointee
                return try body(&cStruct)
            }
        }
    }
}

struct BufferCopy: CStructConvertible {
    typealias CStruct = VkBufferCopy

    let srcOffset: VkDeviceSize
    let dstOffset: VkDeviceSize
    let size: VkDeviceSize

    init(cStruct: VkBufferCopy) {
        self.srcOffset = cStruct.srcOffset
        self.dstOffset = cStruct.dstOffset
        self.size = cStruct.size
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkBufferCopy>) throws -> R) rethrows -> R {
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
    let memory: DeviceMemory?
    let memoryOffset: VkDeviceSize
    let flags: SparseMemoryBindFlags

    init(cStruct: VkSparseMemoryBind) {
        fatalError("This initializer should be removed.")
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkSparseMemoryBind>) throws -> R) rethrows -> R {
        var cStruct = VkSparseMemoryBind()
        cStruct.resourceOffset = self.resourceOffset
        cStruct.size = self.size
        cStruct.memory = self.memory?.handle
        cStruct.memoryOffset = self.memoryOffset
        cStruct.flags = self.flags.rawValue
        return try body(&cStruct)
    }
}

struct SparseImageMemoryBind: CStructConvertible {
    typealias CStruct = VkSparseImageMemoryBind

    let subresource: ImageSubresource
    let offset: Offset3D
    let extent: Extent3D
    let memory: DeviceMemory?
    let memoryOffset: VkDeviceSize
    let flags: SparseMemoryBindFlags

    init(cStruct: VkSparseImageMemoryBind) {
        fatalError("This initializer should be removed.")
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkSparseImageMemoryBind>) throws -> R) rethrows -> R {
        try self.subresource.withCStruct { ptr_subresource in
            try self.offset.withCStruct { ptr_offset in
                try self.extent.withCStruct { ptr_extent in
                    var cStruct = VkSparseImageMemoryBind()
                    cStruct.subresource = ptr_subresource.pointee
                    cStruct.offset = ptr_offset.pointee
                    cStruct.extent = ptr_extent.pointee
                    cStruct.memory = self.memory?.handle
                    cStruct.memoryOffset = self.memoryOffset
                    cStruct.flags = self.flags.rawValue
                    return try body(&cStruct)
                }
            }
        }
    }
}

struct SparseBufferMemoryBindInfo: CStructConvertible {
    typealias CStruct = VkSparseBufferMemoryBindInfo

    let buffer: Buffer
    let pBinds: Array<SparseMemoryBind>

    init(cStruct: VkSparseBufferMemoryBindInfo) {
        fatalError("This initializer should be removed.")
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkSparseBufferMemoryBindInfo>) throws -> R) rethrows -> R {
        try self.pBinds.withCStructBufferPointer { ptr_pBinds in
            var cStruct = VkSparseBufferMemoryBindInfo()
            cStruct.buffer = self.buffer.handle
            cStruct.bindCount = UInt32(ptr_pBinds.count)
            cStruct.pBinds = ptr_pBinds.baseAddress
            return try body(&cStruct)
        }
    }
}

struct SparseImageOpaqueMemoryBindInfo: CStructConvertible {
    typealias CStruct = VkSparseImageOpaqueMemoryBindInfo

    let image: Image
    let pBinds: Array<SparseMemoryBind>

    init(cStruct: VkSparseImageOpaqueMemoryBindInfo) {
        fatalError("This initializer should be removed.")
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkSparseImageOpaqueMemoryBindInfo>) throws -> R) rethrows -> R {
        try self.pBinds.withCStructBufferPointer { ptr_pBinds in
            var cStruct = VkSparseImageOpaqueMemoryBindInfo()
            cStruct.image = self.image.handle
            cStruct.bindCount = UInt32(ptr_pBinds.count)
            cStruct.pBinds = ptr_pBinds.baseAddress
            return try body(&cStruct)
        }
    }
}

struct SparseImageMemoryBindInfo: CStructConvertible {
    typealias CStruct = VkSparseImageMemoryBindInfo

    let image: Image
    let pBinds: Array<SparseImageMemoryBind>

    init(cStruct: VkSparseImageMemoryBindInfo) {
        fatalError("This initializer should be removed.")
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkSparseImageMemoryBindInfo>) throws -> R) rethrows -> R {
        try self.pBinds.withCStructBufferPointer { ptr_pBinds in
            var cStruct = VkSparseImageMemoryBindInfo()
            cStruct.image = self.image.handle
            cStruct.bindCount = UInt32(ptr_pBinds.count)
            cStruct.pBinds = ptr_pBinds.baseAddress
            return try body(&cStruct)
        }
    }
}

struct BindSparseInfo: CStructConvertible {
    typealias CStruct = VkBindSparseInfo

    let pWaitSemaphores: Array<Semaphore>
    let pBufferBinds: Array<SparseBufferMemoryBindInfo>
    let pImageOpaqueBinds: Array<SparseImageOpaqueMemoryBindInfo>
    let pImageBinds: Array<SparseImageMemoryBindInfo>
    let pSignalSemaphores: Array<Semaphore>

    init(cStruct: VkBindSparseInfo) {
        fatalError("This initializer should be removed.")
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkBindSparseInfo>) throws -> R) rethrows -> R {
        try self.pWaitSemaphores.map{ $0.handle }.withUnsafeBufferPointer { ptr_pWaitSemaphores in
            try self.pBufferBinds.withCStructBufferPointer { ptr_pBufferBinds in
                try self.pImageOpaqueBinds.withCStructBufferPointer { ptr_pImageOpaqueBinds in
                    try self.pImageBinds.withCStructBufferPointer { ptr_pImageBinds in
                        try self.pSignalSemaphores.map{ $0.handle }.withUnsafeBufferPointer { ptr_pSignalSemaphores in
                            var cStruct = VkBindSparseInfo()
                            cStruct.sType = VK_STRUCTURE_TYPE_BIND_SPARSE_INFO
                            cStruct.pNext = nil
                            cStruct.waitSemaphoreCount = UInt32(ptr_pWaitSemaphores.count)
                            cStruct.pWaitSemaphores = ptr_pWaitSemaphores.baseAddress
                            cStruct.bufferBindCount = UInt32(ptr_pBufferBinds.count)
                            cStruct.pBufferBinds = ptr_pBufferBinds.baseAddress
                            cStruct.imageOpaqueBindCount = UInt32(ptr_pImageOpaqueBinds.count)
                            cStruct.pImageOpaqueBinds = ptr_pImageOpaqueBinds.baseAddress
                            cStruct.imageBindCount = UInt32(ptr_pImageBinds.count)
                            cStruct.pImageBinds = ptr_pImageBinds.baseAddress
                            cStruct.signalSemaphoreCount = UInt32(ptr_pSignalSemaphores.count)
                            cStruct.pSignalSemaphores = ptr_pSignalSemaphores.baseAddress
                            return try body(&cStruct)
                        }
                    }
                }
            }
        }
    }
}

struct ImageCopy: CStructConvertible {
    typealias CStruct = VkImageCopy

    let srcSubresource: ImageSubresourceLayers
    let srcOffset: Offset3D
    let dstSubresource: ImageSubresourceLayers
    let dstOffset: Offset3D
    let extent: Extent3D

    init(cStruct: VkImageCopy) {
        self.srcSubresource = ImageSubresourceLayers(cStruct: cStruct.srcSubresource)
        self.srcOffset = Offset3D(cStruct: cStruct.srcOffset)
        self.dstSubresource = ImageSubresourceLayers(cStruct: cStruct.dstSubresource)
        self.dstOffset = Offset3D(cStruct: cStruct.dstOffset)
        self.extent = Extent3D(cStruct: cStruct.extent)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkImageCopy>) throws -> R) rethrows -> R {
        try self.srcSubresource.withCStruct { ptr_srcSubresource in
            try self.srcOffset.withCStruct { ptr_srcOffset in
                try self.dstSubresource.withCStruct { ptr_dstSubresource in
                    try self.dstOffset.withCStruct { ptr_dstOffset in
                        try self.extent.withCStruct { ptr_extent in
                            var cStruct = VkImageCopy()
                            cStruct.srcSubresource = ptr_srcSubresource.pointee
                            cStruct.srcOffset = ptr_srcOffset.pointee
                            cStruct.dstSubresource = ptr_dstSubresource.pointee
                            cStruct.dstOffset = ptr_dstOffset.pointee
                            cStruct.extent = ptr_extent.pointee
                            return try body(&cStruct)
                        }
                    }
                }
            }
        }
    }
}

struct ImageBlit: CStructConvertible {
    typealias CStruct = VkImageBlit

    let srcSubresource: ImageSubresourceLayers
    let srcOffsets: (VkOffset3D, VkOffset3D)
    let dstSubresource: ImageSubresourceLayers
    let dstOffsets: (VkOffset3D, VkOffset3D)

    init(cStruct: VkImageBlit) {
        self.srcSubresource = ImageSubresourceLayers(cStruct: cStruct.srcSubresource)
        self.srcOffsets = cStruct.srcOffsets
        self.dstSubresource = ImageSubresourceLayers(cStruct: cStruct.dstSubresource)
        self.dstOffsets = cStruct.dstOffsets
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkImageBlit>) throws -> R) rethrows -> R {
        try self.srcSubresource.withCStruct { ptr_srcSubresource in
            try self.dstSubresource.withCStruct { ptr_dstSubresource in
                var cStruct = VkImageBlit()
                cStruct.srcSubresource = ptr_srcSubresource.pointee
                cStruct.srcOffsets = self.srcOffsets
                cStruct.dstSubresource = ptr_dstSubresource.pointee
                cStruct.dstOffsets = self.dstOffsets
                return try body(&cStruct)
            }
        }
    }
}

struct BufferImageCopy: CStructConvertible {
    typealias CStruct = VkBufferImageCopy

    let bufferOffset: VkDeviceSize
    let bufferRowLength: UInt32
    let bufferImageHeight: UInt32
    let imageSubresource: ImageSubresourceLayers
    let imageOffset: Offset3D
    let imageExtent: Extent3D

    init(cStruct: VkBufferImageCopy) {
        self.bufferOffset = cStruct.bufferOffset
        self.bufferRowLength = cStruct.bufferRowLength
        self.bufferImageHeight = cStruct.bufferImageHeight
        self.imageSubresource = ImageSubresourceLayers(cStruct: cStruct.imageSubresource)
        self.imageOffset = Offset3D(cStruct: cStruct.imageOffset)
        self.imageExtent = Extent3D(cStruct: cStruct.imageExtent)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkBufferImageCopy>) throws -> R) rethrows -> R {
        try self.imageSubresource.withCStruct { ptr_imageSubresource in
            try self.imageOffset.withCStruct { ptr_imageOffset in
                try self.imageExtent.withCStruct { ptr_imageExtent in
                    var cStruct = VkBufferImageCopy()
                    cStruct.bufferOffset = self.bufferOffset
                    cStruct.bufferRowLength = self.bufferRowLength
                    cStruct.bufferImageHeight = self.bufferImageHeight
                    cStruct.imageSubresource = ptr_imageSubresource.pointee
                    cStruct.imageOffset = ptr_imageOffset.pointee
                    cStruct.imageExtent = ptr_imageExtent.pointee
                    return try body(&cStruct)
                }
            }
        }
    }
}

struct ImageResolve: CStructConvertible {
    typealias CStruct = VkImageResolve

    let srcSubresource: ImageSubresourceLayers
    let srcOffset: Offset3D
    let dstSubresource: ImageSubresourceLayers
    let dstOffset: Offset3D
    let extent: Extent3D

    init(cStruct: VkImageResolve) {
        self.srcSubresource = ImageSubresourceLayers(cStruct: cStruct.srcSubresource)
        self.srcOffset = Offset3D(cStruct: cStruct.srcOffset)
        self.dstSubresource = ImageSubresourceLayers(cStruct: cStruct.dstSubresource)
        self.dstOffset = Offset3D(cStruct: cStruct.dstOffset)
        self.extent = Extent3D(cStruct: cStruct.extent)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkImageResolve>) throws -> R) rethrows -> R {
        try self.srcSubresource.withCStruct { ptr_srcSubresource in
            try self.srcOffset.withCStruct { ptr_srcOffset in
                try self.dstSubresource.withCStruct { ptr_dstSubresource in
                    try self.dstOffset.withCStruct { ptr_dstOffset in
                        try self.extent.withCStruct { ptr_extent in
                            var cStruct = VkImageResolve()
                            cStruct.srcSubresource = ptr_srcSubresource.pointee
                            cStruct.srcOffset = ptr_srcOffset.pointee
                            cStruct.dstSubresource = ptr_dstSubresource.pointee
                            cStruct.dstOffset = ptr_dstOffset.pointee
                            cStruct.extent = ptr_extent.pointee
                            return try body(&cStruct)
                        }
                    }
                }
            }
        }
    }
}

struct ShaderModuleCreateInfo: CStructConvertible {
    typealias CStruct = VkShaderModuleCreateInfo

    let flags: ShaderModuleCreateFlags
    let codeSize: Int
    let pCode: UnsafePointer<UInt32>

    init(cStruct: VkShaderModuleCreateInfo) {
        self.flags = ShaderModuleCreateFlags(rawValue: cStruct.flags)
        self.codeSize = cStruct.codeSize
        self.pCode = cStruct.pCode
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkShaderModuleCreateInfo>) throws -> R) rethrows -> R {
        var cStruct = VkShaderModuleCreateInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_SHADER_MODULE_CREATE_INFO
        cStruct.pNext = nil
        cStruct.flags = self.flags.rawValue
        cStruct.codeSize = self.codeSize
        cStruct.pCode = self.pCode
        return try body(&cStruct)
    }
}

struct DescriptorSetLayoutBinding: CStructConvertible {
    typealias CStruct = VkDescriptorSetLayoutBinding

    let binding: UInt32
    let descriptorType: DescriptorType
    let stageFlags: ShaderStageFlags
    let pImmutableSamplers: Array<Sampler>?

    init(cStruct: VkDescriptorSetLayoutBinding) {
        fatalError("This initializer should be removed.")
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkDescriptorSetLayoutBinding>) throws -> R) rethrows -> R {
        try (self.pImmutableSamplers?.map{ $0.handle }).withOptionalUnsafeBufferPointer { ptr_pImmutableSamplers in
            var cStruct = VkDescriptorSetLayoutBinding()
            cStruct.binding = self.binding
            cStruct.descriptorType = VkDescriptorType(rawValue: self.descriptorType.rawValue)
            cStruct.descriptorCount = UInt32(ptr_pImmutableSamplers.count)
            cStruct.stageFlags = self.stageFlags.rawValue
            cStruct.pImmutableSamplers = ptr_pImmutableSamplers.baseAddress
            return try body(&cStruct)
        }
    }
}

struct DescriptorSetLayoutCreateInfo: CStructConvertible {
    typealias CStruct = VkDescriptorSetLayoutCreateInfo

    let flags: DescriptorSetLayoutCreateFlags
    let pBindings: Array<DescriptorSetLayoutBinding>

    init(cStruct: VkDescriptorSetLayoutCreateInfo) {
        self.flags = DescriptorSetLayoutCreateFlags(rawValue: cStruct.flags)
        self.pBindings = UnsafeBufferPointer(start: cStruct.pBindings, count: Int(cStruct.bindingCount)).map{ DescriptorSetLayoutBinding(cStruct: $0) }
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkDescriptorSetLayoutCreateInfo>) throws -> R) rethrows -> R {
        try self.pBindings.withCStructBufferPointer { ptr_pBindings in
            var cStruct = VkDescriptorSetLayoutCreateInfo()
            cStruct.sType = VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_CREATE_INFO
            cStruct.pNext = nil
            cStruct.flags = self.flags.rawValue
            cStruct.bindingCount = UInt32(ptr_pBindings.count)
            cStruct.pBindings = ptr_pBindings.baseAddress
            return try body(&cStruct)
        }
    }
}

struct DescriptorPoolSize: CStructConvertible {
    typealias CStruct = VkDescriptorPoolSize

    let type: DescriptorType
    let descriptorCount: UInt32

    init(cStruct: VkDescriptorPoolSize) {
        self.type = DescriptorType(rawValue: cStruct.type.rawValue)!
        self.descriptorCount = cStruct.descriptorCount
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkDescriptorPoolSize>) throws -> R) rethrows -> R {
        var cStruct = VkDescriptorPoolSize()
        cStruct.type = VkDescriptorType(rawValue: self.type.rawValue)
        cStruct.descriptorCount = self.descriptorCount
        return try body(&cStruct)
    }
}

struct DescriptorPoolCreateInfo: CStructConvertible {
    typealias CStruct = VkDescriptorPoolCreateInfo

    let flags: DescriptorPoolCreateFlags
    let maxSets: UInt32
    let pPoolSizes: Array<DescriptorPoolSize>

    init(cStruct: VkDescriptorPoolCreateInfo) {
        self.flags = DescriptorPoolCreateFlags(rawValue: cStruct.flags)
        self.maxSets = cStruct.maxSets
        self.pPoolSizes = UnsafeBufferPointer(start: cStruct.pPoolSizes, count: Int(cStruct.poolSizeCount)).map{ DescriptorPoolSize(cStruct: $0) }
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkDescriptorPoolCreateInfo>) throws -> R) rethrows -> R {
        try self.pPoolSizes.withCStructBufferPointer { ptr_pPoolSizes in
            var cStruct = VkDescriptorPoolCreateInfo()
            cStruct.sType = VK_STRUCTURE_TYPE_DESCRIPTOR_POOL_CREATE_INFO
            cStruct.pNext = nil
            cStruct.flags = self.flags.rawValue
            cStruct.maxSets = self.maxSets
            cStruct.poolSizeCount = UInt32(ptr_pPoolSizes.count)
            cStruct.pPoolSizes = ptr_pPoolSizes.baseAddress
            return try body(&cStruct)
        }
    }
}

struct DescriptorSetAllocateInfo: CStructConvertible {
    typealias CStruct = VkDescriptorSetAllocateInfo

    let descriptorPool: DescriptorPool
    let pSetLayouts: Array<DescriptorSetLayout>

    init(cStruct: VkDescriptorSetAllocateInfo) {
        fatalError("This initializer should be removed.")
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkDescriptorSetAllocateInfo>) throws -> R) rethrows -> R {
        try self.pSetLayouts.map{ $0.handle }.withUnsafeBufferPointer { ptr_pSetLayouts in
            var cStruct = VkDescriptorSetAllocateInfo()
            cStruct.sType = VK_STRUCTURE_TYPE_DESCRIPTOR_SET_ALLOCATE_INFO
            cStruct.pNext = nil
            cStruct.descriptorPool = self.descriptorPool.handle
            cStruct.descriptorSetCount = UInt32(ptr_pSetLayouts.count)
            cStruct.pSetLayouts = ptr_pSetLayouts.baseAddress
            return try body(&cStruct)
        }
    }
}

struct SpecializationMapEntry: CStructConvertible {
    typealias CStruct = VkSpecializationMapEntry

    let constantID: UInt32
    let offset: UInt32
    let size: Int

    init(cStruct: VkSpecializationMapEntry) {
        self.constantID = cStruct.constantID
        self.offset = cStruct.offset
        self.size = cStruct.size
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkSpecializationMapEntry>) throws -> R) rethrows -> R {
        var cStruct = VkSpecializationMapEntry()
        cStruct.constantID = self.constantID
        cStruct.offset = self.offset
        cStruct.size = self.size
        return try body(&cStruct)
    }
}

struct SpecializationInfo: CStructConvertible {
    typealias CStruct = VkSpecializationInfo

    let pMapEntries: Array<SpecializationMapEntry>
    let dataSize: Int
    let pData: UnsafeRawPointer

    init(cStruct: VkSpecializationInfo) {
        self.pMapEntries = UnsafeBufferPointer(start: cStruct.pMapEntries, count: Int(cStruct.mapEntryCount)).map{ SpecializationMapEntry(cStruct: $0) }
        self.dataSize = cStruct.dataSize
        self.pData = cStruct.pData
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkSpecializationInfo>) throws -> R) rethrows -> R {
        try self.pMapEntries.withCStructBufferPointer { ptr_pMapEntries in
            var cStruct = VkSpecializationInfo()
            cStruct.mapEntryCount = UInt32(ptr_pMapEntries.count)
            cStruct.pMapEntries = ptr_pMapEntries.baseAddress
            cStruct.dataSize = self.dataSize
            cStruct.pData = self.pData
            return try body(&cStruct)
        }
    }
}

struct PipelineShaderStageCreateInfo: CStructConvertible {
    typealias CStruct = VkPipelineShaderStageCreateInfo

    let flags: PipelineShaderStageCreateFlags
    let stage: ShaderStageFlags
    let module: ShaderModule
    let pName: String
    let pSpecializationInfo: SpecializationInfo?

    init(cStruct: VkPipelineShaderStageCreateInfo) {
        fatalError("This initializer should be removed.")
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPipelineShaderStageCreateInfo>) throws -> R) rethrows -> R {
        try self.pName.withCString { cString_pName in
            try self.pSpecializationInfo.withOptionalCStruct { ptr_pSpecializationInfo in
                var cStruct = VkPipelineShaderStageCreateInfo()
                cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_CREATE_INFO
                cStruct.pNext = nil
                cStruct.flags = self.flags.rawValue
                cStruct.stage = VkShaderStageFlagBits(rawValue: self.stage.rawValue)
                cStruct.module = self.module.handle
                cStruct.pName = cString_pName
                cStruct.pSpecializationInfo = ptr_pSpecializationInfo
                return try body(&cStruct)
            }
        }
    }
}

struct ComputePipelineCreateInfo: CStructConvertible {
    typealias CStruct = VkComputePipelineCreateInfo

    let flags: PipelineCreateFlags
    let stage: PipelineShaderStageCreateInfo
    let layout: PipelineLayout
    let basePipelineHandle: Pipeline?
    let basePipelineIndex: Int32

    init(cStruct: VkComputePipelineCreateInfo) {
        fatalError("This initializer should be removed.")
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkComputePipelineCreateInfo>) throws -> R) rethrows -> R {
        try self.stage.withCStruct { ptr_stage in
            var cStruct = VkComputePipelineCreateInfo()
            cStruct.sType = VK_STRUCTURE_TYPE_COMPUTE_PIPELINE_CREATE_INFO
            cStruct.pNext = nil
            cStruct.flags = self.flags.rawValue
            cStruct.stage = ptr_stage.pointee
            cStruct.layout = self.layout.handle
            cStruct.basePipelineHandle = self.basePipelineHandle?.handle
            cStruct.basePipelineIndex = self.basePipelineIndex
            return try body(&cStruct)
        }
    }
}

struct VertexInputBindingDescription: CStructConvertible {
    typealias CStruct = VkVertexInputBindingDescription

    let binding: UInt32
    let stride: UInt32
    let inputRate: VertexInputRate

    init(cStruct: VkVertexInputBindingDescription) {
        self.binding = cStruct.binding
        self.stride = cStruct.stride
        self.inputRate = VertexInputRate(rawValue: cStruct.inputRate.rawValue)!
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkVertexInputBindingDescription>) throws -> R) rethrows -> R {
        var cStruct = VkVertexInputBindingDescription()
        cStruct.binding = self.binding
        cStruct.stride = self.stride
        cStruct.inputRate = VkVertexInputRate(rawValue: self.inputRate.rawValue)
        return try body(&cStruct)
    }
}

struct VertexInputAttributeDescription: CStructConvertible {
    typealias CStruct = VkVertexInputAttributeDescription

    let location: UInt32
    let binding: UInt32
    let format: Format
    let offset: UInt32

    init(cStruct: VkVertexInputAttributeDescription) {
        self.location = cStruct.location
        self.binding = cStruct.binding
        self.format = Format(rawValue: cStruct.format.rawValue)!
        self.offset = cStruct.offset
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkVertexInputAttributeDescription>) throws -> R) rethrows -> R {
        var cStruct = VkVertexInputAttributeDescription()
        cStruct.location = self.location
        cStruct.binding = self.binding
        cStruct.format = VkFormat(rawValue: self.format.rawValue)
        cStruct.offset = self.offset
        return try body(&cStruct)
    }
}

struct PipelineVertexInputStateCreateInfo: CStructConvertible {
    typealias CStruct = VkPipelineVertexInputStateCreateInfo

    let flags: PipelineVertexInputStateCreateFlags
    let pVertexBindingDescriptions: Array<VertexInputBindingDescription>
    let pVertexAttributeDescriptions: Array<VertexInputAttributeDescription>

    init(cStruct: VkPipelineVertexInputStateCreateInfo) {
        self.flags = PipelineVertexInputStateCreateFlags(rawValue: cStruct.flags)
        self.pVertexBindingDescriptions = UnsafeBufferPointer(start: cStruct.pVertexBindingDescriptions, count: Int(cStruct.vertexBindingDescriptionCount)).map{ VertexInputBindingDescription(cStruct: $0) }
        self.pVertexAttributeDescriptions = UnsafeBufferPointer(start: cStruct.pVertexAttributeDescriptions, count: Int(cStruct.vertexAttributeDescriptionCount)).map{ VertexInputAttributeDescription(cStruct: $0) }
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPipelineVertexInputStateCreateInfo>) throws -> R) rethrows -> R {
        try self.pVertexBindingDescriptions.withCStructBufferPointer { ptr_pVertexBindingDescriptions in
            try self.pVertexAttributeDescriptions.withCStructBufferPointer { ptr_pVertexAttributeDescriptions in
                var cStruct = VkPipelineVertexInputStateCreateInfo()
                cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_VERTEX_INPUT_STATE_CREATE_INFO
                cStruct.pNext = nil
                cStruct.flags = self.flags.rawValue
                cStruct.vertexBindingDescriptionCount = UInt32(ptr_pVertexBindingDescriptions.count)
                cStruct.pVertexBindingDescriptions = ptr_pVertexBindingDescriptions.baseAddress
                cStruct.vertexAttributeDescriptionCount = UInt32(ptr_pVertexAttributeDescriptions.count)
                cStruct.pVertexAttributeDescriptions = ptr_pVertexAttributeDescriptions.baseAddress
                return try body(&cStruct)
            }
        }
    }
}

struct PipelineInputAssemblyStateCreateInfo: CStructConvertible {
    typealias CStruct = VkPipelineInputAssemblyStateCreateInfo

    let flags: PipelineInputAssemblyStateCreateFlags
    let topology: PrimitiveTopology
    let primitiveRestartEnable: Bool

    init(cStruct: VkPipelineInputAssemblyStateCreateInfo) {
        self.flags = PipelineInputAssemblyStateCreateFlags(rawValue: cStruct.flags)
        self.topology = PrimitiveTopology(rawValue: cStruct.topology.rawValue)!
        self.primitiveRestartEnable = cStruct.primitiveRestartEnable == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPipelineInputAssemblyStateCreateInfo>) throws -> R) rethrows -> R {
        var cStruct = VkPipelineInputAssemblyStateCreateInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_INPUT_ASSEMBLY_STATE_CREATE_INFO
        cStruct.pNext = nil
        cStruct.flags = self.flags.rawValue
        cStruct.topology = VkPrimitiveTopology(rawValue: self.topology.rawValue)
        cStruct.primitiveRestartEnable = VkBool32(self.primitiveRestartEnable ? VK_TRUE : VK_FALSE)
        return try body(&cStruct)
    }
}

struct PipelineTessellationStateCreateInfo: CStructConvertible {
    typealias CStruct = VkPipelineTessellationStateCreateInfo

    let flags: PipelineTessellationStateCreateFlags
    let patchControlPoints: UInt32

    init(cStruct: VkPipelineTessellationStateCreateInfo) {
        self.flags = PipelineTessellationStateCreateFlags(rawValue: cStruct.flags)
        self.patchControlPoints = cStruct.patchControlPoints
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPipelineTessellationStateCreateInfo>) throws -> R) rethrows -> R {
        var cStruct = VkPipelineTessellationStateCreateInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_TESSELLATION_STATE_CREATE_INFO
        cStruct.pNext = nil
        cStruct.flags = self.flags.rawValue
        cStruct.patchControlPoints = self.patchControlPoints
        return try body(&cStruct)
    }
}

struct PipelineViewportStateCreateInfo: CStructConvertible {
    typealias CStruct = VkPipelineViewportStateCreateInfo

    let flags: PipelineViewportStateCreateFlags
    let pViewports: Array<Viewport>?
    let pScissors: Array<Rect2D>?

    init(cStruct: VkPipelineViewportStateCreateInfo) {
        self.flags = PipelineViewportStateCreateFlags(rawValue: cStruct.flags)
        self.pViewports = (cStruct.pViewports != nil) ? UnsafeBufferPointer(start: cStruct.pViewports, count: Int(cStruct.viewportCount)).map{ Viewport(cStruct: $0) } : nil
        self.pScissors = (cStruct.pScissors != nil) ? UnsafeBufferPointer(start: cStruct.pScissors, count: Int(cStruct.scissorCount)).map{ Rect2D(cStruct: $0) } : nil
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPipelineViewportStateCreateInfo>) throws -> R) rethrows -> R {
        try self.pViewports.withOptionalCStructBufferPointer { ptr_pViewports in
            try self.pScissors.withOptionalCStructBufferPointer { ptr_pScissors in
                var cStruct = VkPipelineViewportStateCreateInfo()
                cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_STATE_CREATE_INFO
                cStruct.pNext = nil
                cStruct.flags = self.flags.rawValue
                cStruct.viewportCount = UInt32(ptr_pViewports.count)
                cStruct.pViewports = ptr_pViewports.baseAddress
                cStruct.scissorCount = UInt32(ptr_pScissors.count)
                cStruct.pScissors = ptr_pScissors.baseAddress
                return try body(&cStruct)
            }
        }
    }
}

struct PipelineRasterizationStateCreateInfo: CStructConvertible {
    typealias CStruct = VkPipelineRasterizationStateCreateInfo

    let flags: PipelineRasterizationStateCreateFlags
    let depthClampEnable: Bool
    let rasterizerDiscardEnable: Bool
    let polygonMode: PolygonMode
    let cullMode: CullModeFlags
    let frontFace: FrontFace
    let depthBiasEnable: Bool
    let depthBiasConstantFactor: Float
    let depthBiasClamp: Float
    let depthBiasSlopeFactor: Float
    let lineWidth: Float

    init(cStruct: VkPipelineRasterizationStateCreateInfo) {
        self.flags = PipelineRasterizationStateCreateFlags(rawValue: cStruct.flags)
        self.depthClampEnable = cStruct.depthClampEnable == VK_TRUE
        self.rasterizerDiscardEnable = cStruct.rasterizerDiscardEnable == VK_TRUE
        self.polygonMode = PolygonMode(rawValue: cStruct.polygonMode.rawValue)!
        self.cullMode = CullModeFlags(rawValue: cStruct.cullMode)
        self.frontFace = FrontFace(rawValue: cStruct.frontFace.rawValue)!
        self.depthBiasEnable = cStruct.depthBiasEnable == VK_TRUE
        self.depthBiasConstantFactor = cStruct.depthBiasConstantFactor
        self.depthBiasClamp = cStruct.depthBiasClamp
        self.depthBiasSlopeFactor = cStruct.depthBiasSlopeFactor
        self.lineWidth = cStruct.lineWidth
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPipelineRasterizationStateCreateInfo>) throws -> R) rethrows -> R {
        var cStruct = VkPipelineRasterizationStateCreateInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_STATE_CREATE_INFO
        cStruct.pNext = nil
        cStruct.flags = self.flags.rawValue
        cStruct.depthClampEnable = VkBool32(self.depthClampEnable ? VK_TRUE : VK_FALSE)
        cStruct.rasterizerDiscardEnable = VkBool32(self.rasterizerDiscardEnable ? VK_TRUE : VK_FALSE)
        cStruct.polygonMode = VkPolygonMode(rawValue: self.polygonMode.rawValue)
        cStruct.cullMode = self.cullMode.rawValue
        cStruct.frontFace = VkFrontFace(rawValue: self.frontFace.rawValue)
        cStruct.depthBiasEnable = VkBool32(self.depthBiasEnable ? VK_TRUE : VK_FALSE)
        cStruct.depthBiasConstantFactor = self.depthBiasConstantFactor
        cStruct.depthBiasClamp = self.depthBiasClamp
        cStruct.depthBiasSlopeFactor = self.depthBiasSlopeFactor
        cStruct.lineWidth = self.lineWidth
        return try body(&cStruct)
    }
}

struct PipelineMultisampleStateCreateInfo: CStructConvertible {
    typealias CStruct = VkPipelineMultisampleStateCreateInfo

    let flags: PipelineMultisampleStateCreateFlags
    let rasterizationSamples: SampleCountFlags
    let sampleShadingEnable: Bool
    let minSampleShading: Float
    let pSampleMask: UnsafePointer<VkSampleMask>
    let alphaToCoverageEnable: Bool
    let alphaToOneEnable: Bool

    init(cStruct: VkPipelineMultisampleStateCreateInfo) {
        self.flags = PipelineMultisampleStateCreateFlags(rawValue: cStruct.flags)
        self.rasterizationSamples = SampleCountFlags(rawValue: cStruct.rasterizationSamples.rawValue)
        self.sampleShadingEnable = cStruct.sampleShadingEnable == VK_TRUE
        self.minSampleShading = cStruct.minSampleShading
        self.pSampleMask = cStruct.pSampleMask
        self.alphaToCoverageEnable = cStruct.alphaToCoverageEnable == VK_TRUE
        self.alphaToOneEnable = cStruct.alphaToOneEnable == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPipelineMultisampleStateCreateInfo>) throws -> R) rethrows -> R {
        var cStruct = VkPipelineMultisampleStateCreateInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_MULTISAMPLE_STATE_CREATE_INFO
        cStruct.pNext = nil
        cStruct.flags = self.flags.rawValue
        cStruct.rasterizationSamples = VkSampleCountFlagBits(rawValue: self.rasterizationSamples.rawValue)
        cStruct.sampleShadingEnable = VkBool32(self.sampleShadingEnable ? VK_TRUE : VK_FALSE)
        cStruct.minSampleShading = self.minSampleShading
        cStruct.pSampleMask = self.pSampleMask
        cStruct.alphaToCoverageEnable = VkBool32(self.alphaToCoverageEnable ? VK_TRUE : VK_FALSE)
        cStruct.alphaToOneEnable = VkBool32(self.alphaToOneEnable ? VK_TRUE : VK_FALSE)
        return try body(&cStruct)
    }
}

struct PipelineColorBlendAttachmentState: CStructConvertible {
    typealias CStruct = VkPipelineColorBlendAttachmentState

    let blendEnable: Bool
    let srcColorBlendFactor: BlendFactor
    let dstColorBlendFactor: BlendFactor
    let colorBlendOp: BlendOp
    let srcAlphaBlendFactor: BlendFactor
    let dstAlphaBlendFactor: BlendFactor
    let alphaBlendOp: BlendOp
    let colorWriteMask: ColorComponentFlags

    init(cStruct: VkPipelineColorBlendAttachmentState) {
        self.blendEnable = cStruct.blendEnable == VK_TRUE
        self.srcColorBlendFactor = BlendFactor(rawValue: cStruct.srcColorBlendFactor.rawValue)!
        self.dstColorBlendFactor = BlendFactor(rawValue: cStruct.dstColorBlendFactor.rawValue)!
        self.colorBlendOp = BlendOp(rawValue: cStruct.colorBlendOp.rawValue)!
        self.srcAlphaBlendFactor = BlendFactor(rawValue: cStruct.srcAlphaBlendFactor.rawValue)!
        self.dstAlphaBlendFactor = BlendFactor(rawValue: cStruct.dstAlphaBlendFactor.rawValue)!
        self.alphaBlendOp = BlendOp(rawValue: cStruct.alphaBlendOp.rawValue)!
        self.colorWriteMask = ColorComponentFlags(rawValue: cStruct.colorWriteMask)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPipelineColorBlendAttachmentState>) throws -> R) rethrows -> R {
        var cStruct = VkPipelineColorBlendAttachmentState()
        cStruct.blendEnable = VkBool32(self.blendEnable ? VK_TRUE : VK_FALSE)
        cStruct.srcColorBlendFactor = VkBlendFactor(rawValue: self.srcColorBlendFactor.rawValue)
        cStruct.dstColorBlendFactor = VkBlendFactor(rawValue: self.dstColorBlendFactor.rawValue)
        cStruct.colorBlendOp = VkBlendOp(rawValue: self.colorBlendOp.rawValue)
        cStruct.srcAlphaBlendFactor = VkBlendFactor(rawValue: self.srcAlphaBlendFactor.rawValue)
        cStruct.dstAlphaBlendFactor = VkBlendFactor(rawValue: self.dstAlphaBlendFactor.rawValue)
        cStruct.alphaBlendOp = VkBlendOp(rawValue: self.alphaBlendOp.rawValue)
        cStruct.colorWriteMask = self.colorWriteMask.rawValue
        return try body(&cStruct)
    }
}

struct PipelineColorBlendStateCreateInfo: CStructConvertible {
    typealias CStruct = VkPipelineColorBlendStateCreateInfo

    let flags: PipelineColorBlendStateCreateFlags
    let logicOpEnable: Bool
    let logicOp: LogicOp
    let pAttachments: Array<PipelineColorBlendAttachmentState>
    let blendConstants: (Float, Float, Float, Float)

    init(cStruct: VkPipelineColorBlendStateCreateInfo) {
        self.flags = PipelineColorBlendStateCreateFlags(rawValue: cStruct.flags)
        self.logicOpEnable = cStruct.logicOpEnable == VK_TRUE
        self.logicOp = LogicOp(rawValue: cStruct.logicOp.rawValue)!
        self.pAttachments = UnsafeBufferPointer(start: cStruct.pAttachments, count: Int(cStruct.attachmentCount)).map{ PipelineColorBlendAttachmentState(cStruct: $0) }
        self.blendConstants = cStruct.blendConstants
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPipelineColorBlendStateCreateInfo>) throws -> R) rethrows -> R {
        try self.pAttachments.withCStructBufferPointer { ptr_pAttachments in
            var cStruct = VkPipelineColorBlendStateCreateInfo()
            cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_COLOR_BLEND_STATE_CREATE_INFO
            cStruct.pNext = nil
            cStruct.flags = self.flags.rawValue
            cStruct.logicOpEnable = VkBool32(self.logicOpEnable ? VK_TRUE : VK_FALSE)
            cStruct.logicOp = VkLogicOp(rawValue: self.logicOp.rawValue)
            cStruct.attachmentCount = UInt32(ptr_pAttachments.count)
            cStruct.pAttachments = ptr_pAttachments.baseAddress
            cStruct.blendConstants = self.blendConstants
            return try body(&cStruct)
        }
    }
}

struct PipelineDynamicStateCreateInfo: CStructConvertible {
    typealias CStruct = VkPipelineDynamicStateCreateInfo

    let flags: PipelineDynamicStateCreateFlags
    let pDynamicStates: Array<DynamicState>

    init(cStruct: VkPipelineDynamicStateCreateInfo) {
        self.flags = PipelineDynamicStateCreateFlags(rawValue: cStruct.flags)
        self.pDynamicStates = UnsafeBufferPointer(start: cStruct.pDynamicStates, count: Int(cStruct.dynamicStateCount)).map{ DynamicState(rawValue: $0.rawValue)! }
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPipelineDynamicStateCreateInfo>) throws -> R) rethrows -> R {
        try self.pDynamicStates.map{ VkDynamicState(rawValue: $0.rawValue) }.withUnsafeBufferPointer { ptr_pDynamicStates in
            var cStruct = VkPipelineDynamicStateCreateInfo()
            cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_DYNAMIC_STATE_CREATE_INFO
            cStruct.pNext = nil
            cStruct.flags = self.flags.rawValue
            cStruct.dynamicStateCount = UInt32(ptr_pDynamicStates.count)
            cStruct.pDynamicStates = ptr_pDynamicStates.baseAddress
            return try body(&cStruct)
        }
    }
}

struct StencilOpState: CStructConvertible {
    typealias CStruct = VkStencilOpState

    let failOp: StencilOp
    let passOp: StencilOp
    let depthFailOp: StencilOp
    let compareOp: CompareOp
    let compareMask: UInt32
    let writeMask: UInt32
    let reference: UInt32

    init(cStruct: VkStencilOpState) {
        self.failOp = StencilOp(rawValue: cStruct.failOp.rawValue)!
        self.passOp = StencilOp(rawValue: cStruct.passOp.rawValue)!
        self.depthFailOp = StencilOp(rawValue: cStruct.depthFailOp.rawValue)!
        self.compareOp = CompareOp(rawValue: cStruct.compareOp.rawValue)!
        self.compareMask = cStruct.compareMask
        self.writeMask = cStruct.writeMask
        self.reference = cStruct.reference
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkStencilOpState>) throws -> R) rethrows -> R {
        var cStruct = VkStencilOpState()
        cStruct.failOp = VkStencilOp(rawValue: self.failOp.rawValue)
        cStruct.passOp = VkStencilOp(rawValue: self.passOp.rawValue)
        cStruct.depthFailOp = VkStencilOp(rawValue: self.depthFailOp.rawValue)
        cStruct.compareOp = VkCompareOp(rawValue: self.compareOp.rawValue)
        cStruct.compareMask = self.compareMask
        cStruct.writeMask = self.writeMask
        cStruct.reference = self.reference
        return try body(&cStruct)
    }
}

struct PipelineDepthStencilStateCreateInfo: CStructConvertible {
    typealias CStruct = VkPipelineDepthStencilStateCreateInfo

    let flags: PipelineDepthStencilStateCreateFlags
    let depthTestEnable: Bool
    let depthWriteEnable: Bool
    let depthCompareOp: CompareOp
    let depthBoundsTestEnable: Bool
    let stencilTestEnable: Bool
    let front: StencilOpState
    let back: StencilOpState
    let minDepthBounds: Float
    let maxDepthBounds: Float

    init(cStruct: VkPipelineDepthStencilStateCreateInfo) {
        self.flags = PipelineDepthStencilStateCreateFlags(rawValue: cStruct.flags)
        self.depthTestEnable = cStruct.depthTestEnable == VK_TRUE
        self.depthWriteEnable = cStruct.depthWriteEnable == VK_TRUE
        self.depthCompareOp = CompareOp(rawValue: cStruct.depthCompareOp.rawValue)!
        self.depthBoundsTestEnable = cStruct.depthBoundsTestEnable == VK_TRUE
        self.stencilTestEnable = cStruct.stencilTestEnable == VK_TRUE
        self.front = StencilOpState(cStruct: cStruct.front)
        self.back = StencilOpState(cStruct: cStruct.back)
        self.minDepthBounds = cStruct.minDepthBounds
        self.maxDepthBounds = cStruct.maxDepthBounds
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPipelineDepthStencilStateCreateInfo>) throws -> R) rethrows -> R {
        try self.front.withCStruct { ptr_front in
            try self.back.withCStruct { ptr_back in
                var cStruct = VkPipelineDepthStencilStateCreateInfo()
                cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_DEPTH_STENCIL_STATE_CREATE_INFO
                cStruct.pNext = nil
                cStruct.flags = self.flags.rawValue
                cStruct.depthTestEnable = VkBool32(self.depthTestEnable ? VK_TRUE : VK_FALSE)
                cStruct.depthWriteEnable = VkBool32(self.depthWriteEnable ? VK_TRUE : VK_FALSE)
                cStruct.depthCompareOp = VkCompareOp(rawValue: self.depthCompareOp.rawValue)
                cStruct.depthBoundsTestEnable = VkBool32(self.depthBoundsTestEnable ? VK_TRUE : VK_FALSE)
                cStruct.stencilTestEnable = VkBool32(self.stencilTestEnable ? VK_TRUE : VK_FALSE)
                cStruct.front = ptr_front.pointee
                cStruct.back = ptr_back.pointee
                cStruct.minDepthBounds = self.minDepthBounds
                cStruct.maxDepthBounds = self.maxDepthBounds
                return try body(&cStruct)
            }
        }
    }
}

struct GraphicsPipelineCreateInfo: CStructConvertible {
    typealias CStruct = VkGraphicsPipelineCreateInfo

    let flags: PipelineCreateFlags
    let pStages: Array<PipelineShaderStageCreateInfo>
    let pVertexInputState: PipelineVertexInputStateCreateInfo?
    let pInputAssemblyState: PipelineInputAssemblyStateCreateInfo?
    let pTessellationState: PipelineTessellationStateCreateInfo?
    let pViewportState: PipelineViewportStateCreateInfo?
    let pRasterizationState: PipelineRasterizationStateCreateInfo
    let pMultisampleState: PipelineMultisampleStateCreateInfo?
    let pDepthStencilState: PipelineDepthStencilStateCreateInfo?
    let pColorBlendState: PipelineColorBlendStateCreateInfo?
    let pDynamicState: PipelineDynamicStateCreateInfo?
    let layout: PipelineLayout
    let renderPass: RenderPass
    let subpass: UInt32
    let basePipelineHandle: Pipeline?
    let basePipelineIndex: Int32

    init(cStruct: VkGraphicsPipelineCreateInfo) {
        fatalError("This initializer should be removed.")
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkGraphicsPipelineCreateInfo>) throws -> R) rethrows -> R {
        try self.pStages.withCStructBufferPointer { ptr_pStages in
            try self.pVertexInputState.withOptionalCStruct { ptr_pVertexInputState in
                try self.pInputAssemblyState.withOptionalCStruct { ptr_pInputAssemblyState in
                    try self.pTessellationState.withOptionalCStruct { ptr_pTessellationState in
                        try self.pViewportState.withOptionalCStruct { ptr_pViewportState in
                            try self.pRasterizationState.withCStruct { ptr_pRasterizationState in
                                try self.pMultisampleState.withOptionalCStruct { ptr_pMultisampleState in
                                    try self.pDepthStencilState.withOptionalCStruct { ptr_pDepthStencilState in
                                        try self.pColorBlendState.withOptionalCStruct { ptr_pColorBlendState in
                                            try self.pDynamicState.withOptionalCStruct { ptr_pDynamicState in
                                                var cStruct = VkGraphicsPipelineCreateInfo()
                                                cStruct.sType = VK_STRUCTURE_TYPE_GRAPHICS_PIPELINE_CREATE_INFO
                                                cStruct.pNext = nil
                                                cStruct.flags = self.flags.rawValue
                                                cStruct.stageCount = UInt32(ptr_pStages.count)
                                                cStruct.pStages = ptr_pStages.baseAddress
                                                cStruct.pVertexInputState = ptr_pVertexInputState
                                                cStruct.pInputAssemblyState = ptr_pInputAssemblyState
                                                cStruct.pTessellationState = ptr_pTessellationState
                                                cStruct.pViewportState = ptr_pViewportState
                                                cStruct.pRasterizationState = ptr_pRasterizationState
                                                cStruct.pMultisampleState = ptr_pMultisampleState
                                                cStruct.pDepthStencilState = ptr_pDepthStencilState
                                                cStruct.pColorBlendState = ptr_pColorBlendState
                                                cStruct.pDynamicState = ptr_pDynamicState
                                                cStruct.layout = self.layout.handle
                                                cStruct.renderPass = self.renderPass.handle
                                                cStruct.subpass = self.subpass
                                                cStruct.basePipelineHandle = self.basePipelineHandle?.handle
                                                cStruct.basePipelineIndex = self.basePipelineIndex
                                                return try body(&cStruct)
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

struct PipelineCacheCreateInfo: CStructConvertible {
    typealias CStruct = VkPipelineCacheCreateInfo

    let flags: PipelineCacheCreateFlags
    let initialDataSize: Int
    let pInitialData: UnsafeRawPointer

    init(cStruct: VkPipelineCacheCreateInfo) {
        self.flags = PipelineCacheCreateFlags(rawValue: cStruct.flags)
        self.initialDataSize = cStruct.initialDataSize
        self.pInitialData = cStruct.pInitialData
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPipelineCacheCreateInfo>) throws -> R) rethrows -> R {
        var cStruct = VkPipelineCacheCreateInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_CACHE_CREATE_INFO
        cStruct.pNext = nil
        cStruct.flags = self.flags.rawValue
        cStruct.initialDataSize = self.initialDataSize
        cStruct.pInitialData = self.pInitialData
        return try body(&cStruct)
    }
}

struct PushConstantRange: CStructConvertible {
    typealias CStruct = VkPushConstantRange

    let stageFlags: ShaderStageFlags
    let offset: UInt32
    let size: UInt32

    init(cStruct: VkPushConstantRange) {
        self.stageFlags = ShaderStageFlags(rawValue: cStruct.stageFlags)
        self.offset = cStruct.offset
        self.size = cStruct.size
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPushConstantRange>) throws -> R) rethrows -> R {
        var cStruct = VkPushConstantRange()
        cStruct.stageFlags = self.stageFlags.rawValue
        cStruct.offset = self.offset
        cStruct.size = self.size
        return try body(&cStruct)
    }
}

struct PipelineLayoutCreateInfo: CStructConvertible {
    typealias CStruct = VkPipelineLayoutCreateInfo

    let flags: PipelineLayoutCreateFlags
    let pSetLayouts: Array<DescriptorSetLayout>
    let pPushConstantRanges: Array<PushConstantRange>

    init(cStruct: VkPipelineLayoutCreateInfo) {
        fatalError("This initializer should be removed.")
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPipelineLayoutCreateInfo>) throws -> R) rethrows -> R {
        try self.pSetLayouts.map{ $0.handle }.withUnsafeBufferPointer { ptr_pSetLayouts in
            try self.pPushConstantRanges.withCStructBufferPointer { ptr_pPushConstantRanges in
                var cStruct = VkPipelineLayoutCreateInfo()
                cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_LAYOUT_CREATE_INFO
                cStruct.pNext = nil
                cStruct.flags = self.flags.rawValue
                cStruct.setLayoutCount = UInt32(ptr_pSetLayouts.count)
                cStruct.pSetLayouts = ptr_pSetLayouts.baseAddress
                cStruct.pushConstantRangeCount = UInt32(ptr_pPushConstantRanges.count)
                cStruct.pPushConstantRanges = ptr_pPushConstantRanges.baseAddress
                return try body(&cStruct)
            }
        }
    }
}

struct SamplerCreateInfo: CStructConvertible {
    typealias CStruct = VkSamplerCreateInfo

    let flags: SamplerCreateFlags
    let magFilter: Filter
    let minFilter: Filter
    let mipmapMode: SamplerMipmapMode
    let addressModeU: SamplerAddressMode
    let addressModeV: SamplerAddressMode
    let addressModeW: SamplerAddressMode
    let mipLodBias: Float
    let anisotropyEnable: Bool
    let maxAnisotropy: Float
    let compareEnable: Bool
    let compareOp: CompareOp
    let minLod: Float
    let maxLod: Float
    let borderColor: BorderColor
    let unnormalizedCoordinates: Bool

    init(cStruct: VkSamplerCreateInfo) {
        self.flags = SamplerCreateFlags(rawValue: cStruct.flags)
        self.magFilter = Filter(rawValue: cStruct.magFilter.rawValue)!
        self.minFilter = Filter(rawValue: cStruct.minFilter.rawValue)!
        self.mipmapMode = SamplerMipmapMode(rawValue: cStruct.mipmapMode.rawValue)!
        self.addressModeU = SamplerAddressMode(rawValue: cStruct.addressModeU.rawValue)!
        self.addressModeV = SamplerAddressMode(rawValue: cStruct.addressModeV.rawValue)!
        self.addressModeW = SamplerAddressMode(rawValue: cStruct.addressModeW.rawValue)!
        self.mipLodBias = cStruct.mipLodBias
        self.anisotropyEnable = cStruct.anisotropyEnable == VK_TRUE
        self.maxAnisotropy = cStruct.maxAnisotropy
        self.compareEnable = cStruct.compareEnable == VK_TRUE
        self.compareOp = CompareOp(rawValue: cStruct.compareOp.rawValue)!
        self.minLod = cStruct.minLod
        self.maxLod = cStruct.maxLod
        self.borderColor = BorderColor(rawValue: cStruct.borderColor.rawValue)!
        self.unnormalizedCoordinates = cStruct.unnormalizedCoordinates == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkSamplerCreateInfo>) throws -> R) rethrows -> R {
        var cStruct = VkSamplerCreateInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_SAMPLER_CREATE_INFO
        cStruct.pNext = nil
        cStruct.flags = self.flags.rawValue
        cStruct.magFilter = VkFilter(rawValue: self.magFilter.rawValue)
        cStruct.minFilter = VkFilter(rawValue: self.minFilter.rawValue)
        cStruct.mipmapMode = VkSamplerMipmapMode(rawValue: self.mipmapMode.rawValue)
        cStruct.addressModeU = VkSamplerAddressMode(rawValue: self.addressModeU.rawValue)
        cStruct.addressModeV = VkSamplerAddressMode(rawValue: self.addressModeV.rawValue)
        cStruct.addressModeW = VkSamplerAddressMode(rawValue: self.addressModeW.rawValue)
        cStruct.mipLodBias = self.mipLodBias
        cStruct.anisotropyEnable = VkBool32(self.anisotropyEnable ? VK_TRUE : VK_FALSE)
        cStruct.maxAnisotropy = self.maxAnisotropy
        cStruct.compareEnable = VkBool32(self.compareEnable ? VK_TRUE : VK_FALSE)
        cStruct.compareOp = VkCompareOp(rawValue: self.compareOp.rawValue)
        cStruct.minLod = self.minLod
        cStruct.maxLod = self.maxLod
        cStruct.borderColor = VkBorderColor(rawValue: self.borderColor.rawValue)
        cStruct.unnormalizedCoordinates = VkBool32(self.unnormalizedCoordinates ? VK_TRUE : VK_FALSE)
        return try body(&cStruct)
    }
}

struct CommandPoolCreateInfo: CStructConvertible {
    typealias CStruct = VkCommandPoolCreateInfo

    let flags: CommandPoolCreateFlags
    let queueFamilyIndex: UInt32

    init(cStruct: VkCommandPoolCreateInfo) {
        self.flags = CommandPoolCreateFlags(rawValue: cStruct.flags)
        self.queueFamilyIndex = cStruct.queueFamilyIndex
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkCommandPoolCreateInfo>) throws -> R) rethrows -> R {
        var cStruct = VkCommandPoolCreateInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_COMMAND_POOL_CREATE_INFO
        cStruct.pNext = nil
        cStruct.flags = self.flags.rawValue
        cStruct.queueFamilyIndex = self.queueFamilyIndex
        return try body(&cStruct)
    }
}

struct CommandBufferAllocateInfo: CStructConvertible {
    typealias CStruct = VkCommandBufferAllocateInfo

    let commandPool: CommandPool
    let level: CommandBufferLevel
    let commandBufferCount: UInt32

    init(cStruct: VkCommandBufferAllocateInfo) {
        fatalError("This initializer should be removed.")
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkCommandBufferAllocateInfo>) throws -> R) rethrows -> R {
        var cStruct = VkCommandBufferAllocateInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO
        cStruct.pNext = nil
        cStruct.commandPool = self.commandPool.handle
        cStruct.level = VkCommandBufferLevel(rawValue: self.level.rawValue)
        cStruct.commandBufferCount = self.commandBufferCount
        return try body(&cStruct)
    }
}

struct CommandBufferInheritanceInfo: CStructConvertible {
    typealias CStruct = VkCommandBufferInheritanceInfo

    let renderPass: RenderPass?
    let subpass: UInt32
    let framebuffer: Framebuffer?
    let occlusionQueryEnable: Bool
    let queryFlags: QueryControlFlags
    let pipelineStatistics: QueryPipelineStatisticFlags

    init(cStruct: VkCommandBufferInheritanceInfo) {
        fatalError("This initializer should be removed.")
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkCommandBufferInheritanceInfo>) throws -> R) rethrows -> R {
        var cStruct = VkCommandBufferInheritanceInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_COMMAND_BUFFER_INHERITANCE_INFO
        cStruct.pNext = nil
        cStruct.renderPass = self.renderPass?.handle
        cStruct.subpass = self.subpass
        cStruct.framebuffer = self.framebuffer?.handle
        cStruct.occlusionQueryEnable = VkBool32(self.occlusionQueryEnable ? VK_TRUE : VK_FALSE)
        cStruct.queryFlags = self.queryFlags.rawValue
        cStruct.pipelineStatistics = self.pipelineStatistics.rawValue
        return try body(&cStruct)
    }
}

struct CommandBufferBeginInfo: CStructConvertible {
    typealias CStruct = VkCommandBufferBeginInfo

    let flags: CommandBufferUsageFlags
    let pInheritanceInfo: CommandBufferInheritanceInfo?

    init(cStruct: VkCommandBufferBeginInfo) {
        self.flags = CommandBufferUsageFlags(rawValue: cStruct.flags)
        self.pInheritanceInfo = (cStruct.pInheritanceInfo != nil) ? CommandBufferInheritanceInfo(cStruct: cStruct.pInheritanceInfo.pointee) : nil
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkCommandBufferBeginInfo>) throws -> R) rethrows -> R {
        try self.pInheritanceInfo.withOptionalCStruct { ptr_pInheritanceInfo in
            var cStruct = VkCommandBufferBeginInfo()
            cStruct.sType = VK_STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO
            cStruct.pNext = nil
            cStruct.flags = self.flags.rawValue
            cStruct.pInheritanceInfo = ptr_pInheritanceInfo
            return try body(&cStruct)
        }
    }
}

struct RenderPassBeginInfo: CStructConvertible {
    typealias CStruct = VkRenderPassBeginInfo

    let renderPass: RenderPass
    let framebuffer: Framebuffer
    let renderArea: Rect2D
    let pClearValues: Array<VkClearValue>

    init(cStruct: VkRenderPassBeginInfo) {
        fatalError("This initializer should be removed.")
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkRenderPassBeginInfo>) throws -> R) rethrows -> R {
        try self.renderArea.withCStruct { ptr_renderArea in
            try self.pClearValues.withUnsafeBufferPointer { ptr_pClearValues in
                var cStruct = VkRenderPassBeginInfo()
                cStruct.sType = VK_STRUCTURE_TYPE_RENDER_PASS_BEGIN_INFO
                cStruct.pNext = nil
                cStruct.renderPass = self.renderPass.handle
                cStruct.framebuffer = self.framebuffer.handle
                cStruct.renderArea = ptr_renderArea.pointee
                cStruct.clearValueCount = UInt32(ptr_pClearValues.count)
                cStruct.pClearValues = ptr_pClearValues.baseAddress
                return try body(&cStruct)
            }
        }
    }
}

struct ClearDepthStencilValue: CStructConvertible {
    typealias CStruct = VkClearDepthStencilValue

    let depth: Float
    let stencil: UInt32

    init(cStruct: VkClearDepthStencilValue) {
        self.depth = cStruct.depth
        self.stencil = cStruct.stencil
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkClearDepthStencilValue>) throws -> R) rethrows -> R {
        var cStruct = VkClearDepthStencilValue()
        cStruct.depth = self.depth
        cStruct.stencil = self.stencil
        return try body(&cStruct)
    }
}

struct ClearAttachment: CStructConvertible {
    typealias CStruct = VkClearAttachment

    let aspectMask: ImageAspectFlags
    let colorAttachment: UInt32
    let clearValue: VkClearValue

    init(cStruct: VkClearAttachment) {
        self.aspectMask = ImageAspectFlags(rawValue: cStruct.aspectMask)
        self.colorAttachment = cStruct.colorAttachment
        self.clearValue = cStruct.clearValue
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkClearAttachment>) throws -> R) rethrows -> R {
        var cStruct = VkClearAttachment()
        cStruct.aspectMask = self.aspectMask.rawValue
        cStruct.colorAttachment = self.colorAttachment
        cStruct.clearValue = self.clearValue
        return try body(&cStruct)
    }
}

struct AttachmentDescription: CStructConvertible {
    typealias CStruct = VkAttachmentDescription

    let flags: AttachmentDescriptionFlags
    let format: Format
    let samples: SampleCountFlags
    let loadOp: AttachmentLoadOp
    let storeOp: AttachmentStoreOp
    let stencilLoadOp: AttachmentLoadOp
    let stencilStoreOp: AttachmentStoreOp
    let initialLayout: ImageLayout
    let finalLayout: ImageLayout

    init(cStruct: VkAttachmentDescription) {
        self.flags = AttachmentDescriptionFlags(rawValue: cStruct.flags)
        self.format = Format(rawValue: cStruct.format.rawValue)!
        self.samples = SampleCountFlags(rawValue: cStruct.samples.rawValue)
        self.loadOp = AttachmentLoadOp(rawValue: cStruct.loadOp.rawValue)!
        self.storeOp = AttachmentStoreOp(rawValue: cStruct.storeOp.rawValue)!
        self.stencilLoadOp = AttachmentLoadOp(rawValue: cStruct.stencilLoadOp.rawValue)!
        self.stencilStoreOp = AttachmentStoreOp(rawValue: cStruct.stencilStoreOp.rawValue)!
        self.initialLayout = ImageLayout(rawValue: cStruct.initialLayout.rawValue)!
        self.finalLayout = ImageLayout(rawValue: cStruct.finalLayout.rawValue)!
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkAttachmentDescription>) throws -> R) rethrows -> R {
        var cStruct = VkAttachmentDescription()
        cStruct.flags = self.flags.rawValue
        cStruct.format = VkFormat(rawValue: self.format.rawValue)
        cStruct.samples = VkSampleCountFlagBits(rawValue: self.samples.rawValue)
        cStruct.loadOp = VkAttachmentLoadOp(rawValue: self.loadOp.rawValue)
        cStruct.storeOp = VkAttachmentStoreOp(rawValue: self.storeOp.rawValue)
        cStruct.stencilLoadOp = VkAttachmentLoadOp(rawValue: self.stencilLoadOp.rawValue)
        cStruct.stencilStoreOp = VkAttachmentStoreOp(rawValue: self.stencilStoreOp.rawValue)
        cStruct.initialLayout = VkImageLayout(rawValue: self.initialLayout.rawValue)
        cStruct.finalLayout = VkImageLayout(rawValue: self.finalLayout.rawValue)
        return try body(&cStruct)
    }
}

struct AttachmentReference: CStructConvertible {
    typealias CStruct = VkAttachmentReference

    let attachment: UInt32
    let layout: ImageLayout

    init(cStruct: VkAttachmentReference) {
        self.attachment = cStruct.attachment
        self.layout = ImageLayout(rawValue: cStruct.layout.rawValue)!
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkAttachmentReference>) throws -> R) rethrows -> R {
        var cStruct = VkAttachmentReference()
        cStruct.attachment = self.attachment
        cStruct.layout = VkImageLayout(rawValue: self.layout.rawValue)
        return try body(&cStruct)
    }
}

struct SubpassDescription: CStructConvertible {
    typealias CStruct = VkSubpassDescription

    let flags: SubpassDescriptionFlags
    let pipelineBindPoint: PipelineBindPoint
    let pInputAttachments: Array<AttachmentReference>
    let pColorAttachments: Array<AttachmentReference>
    let pResolveAttachments: Array<AttachmentReference>?
    let pDepthStencilAttachment: AttachmentReference?
    let pPreserveAttachments: Array<UInt32>

    init(cStruct: VkSubpassDescription) {
        self.flags = SubpassDescriptionFlags(rawValue: cStruct.flags)
        self.pipelineBindPoint = PipelineBindPoint(rawValue: cStruct.pipelineBindPoint.rawValue)!
        self.pInputAttachments = UnsafeBufferPointer(start: cStruct.pInputAttachments, count: Int(cStruct.inputAttachmentCount)).map{ AttachmentReference(cStruct: $0) }
        self.pColorAttachments = UnsafeBufferPointer(start: cStruct.pColorAttachments, count: Int(cStruct.colorAttachmentCount)).map{ AttachmentReference(cStruct: $0) }
        self.pResolveAttachments = (cStruct.pResolveAttachments != nil) ? UnsafeBufferPointer(start: cStruct.pResolveAttachments, count: Int(cStruct.colorAttachmentCount)).map{ AttachmentReference(cStruct: $0) } : nil
        self.pDepthStencilAttachment = (cStruct.pDepthStencilAttachment != nil) ? AttachmentReference(cStruct: cStruct.pDepthStencilAttachment.pointee) : nil
        self.pPreserveAttachments = Array(UnsafeBufferPointer(start: cStruct.pPreserveAttachments, count: Int(cStruct.preserveAttachmentCount)))
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkSubpassDescription>) throws -> R) rethrows -> R {
        try self.pInputAttachments.withCStructBufferPointer { ptr_pInputAttachments in
            try self.pColorAttachments.withCStructBufferPointer { ptr_pColorAttachments in
                try self.pResolveAttachments.withOptionalCStructBufferPointer { ptr_pResolveAttachments in
                    try self.pDepthStencilAttachment.withOptionalCStruct { ptr_pDepthStencilAttachment in
                        try self.pPreserveAttachments.withUnsafeBufferPointer { ptr_pPreserveAttachments in
                            var cStruct = VkSubpassDescription()
                            cStruct.flags = self.flags.rawValue
                            cStruct.pipelineBindPoint = VkPipelineBindPoint(rawValue: self.pipelineBindPoint.rawValue)
                            cStruct.inputAttachmentCount = UInt32(ptr_pInputAttachments.count)
                            cStruct.pInputAttachments = ptr_pInputAttachments.baseAddress
                            cStruct.colorAttachmentCount = UInt32(ptr_pColorAttachments.count)
                            cStruct.pColorAttachments = ptr_pColorAttachments.baseAddress
                            cStruct.pResolveAttachments = ptr_pResolveAttachments.baseAddress
                            cStruct.pDepthStencilAttachment = ptr_pDepthStencilAttachment
                            cStruct.preserveAttachmentCount = UInt32(ptr_pPreserveAttachments.count)
                            cStruct.pPreserveAttachments = ptr_pPreserveAttachments.baseAddress
                            return try body(&cStruct)
                        }
                    }
                }
            }
        }
    }
}

struct SubpassDependency: CStructConvertible {
    typealias CStruct = VkSubpassDependency

    let srcSubpass: UInt32
    let dstSubpass: UInt32
    let srcStageMask: PipelineStageFlags
    let dstStageMask: PipelineStageFlags
    let srcAccessMask: AccessFlags
    let dstAccessMask: AccessFlags
    let dependencyFlags: DependencyFlags

    init(cStruct: VkSubpassDependency) {
        self.srcSubpass = cStruct.srcSubpass
        self.dstSubpass = cStruct.dstSubpass
        self.srcStageMask = PipelineStageFlags(rawValue: cStruct.srcStageMask)
        self.dstStageMask = PipelineStageFlags(rawValue: cStruct.dstStageMask)
        self.srcAccessMask = AccessFlags(rawValue: cStruct.srcAccessMask)
        self.dstAccessMask = AccessFlags(rawValue: cStruct.dstAccessMask)
        self.dependencyFlags = DependencyFlags(rawValue: cStruct.dependencyFlags)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkSubpassDependency>) throws -> R) rethrows -> R {
        var cStruct = VkSubpassDependency()
        cStruct.srcSubpass = self.srcSubpass
        cStruct.dstSubpass = self.dstSubpass
        cStruct.srcStageMask = self.srcStageMask.rawValue
        cStruct.dstStageMask = self.dstStageMask.rawValue
        cStruct.srcAccessMask = self.srcAccessMask.rawValue
        cStruct.dstAccessMask = self.dstAccessMask.rawValue
        cStruct.dependencyFlags = self.dependencyFlags.rawValue
        return try body(&cStruct)
    }
}

struct RenderPassCreateInfo: CStructConvertible {
    typealias CStruct = VkRenderPassCreateInfo

    let flags: RenderPassCreateFlags
    let pAttachments: Array<AttachmentDescription>
    let pSubpasses: Array<SubpassDescription>
    let pDependencies: Array<SubpassDependency>

    init(cStruct: VkRenderPassCreateInfo) {
        self.flags = RenderPassCreateFlags(rawValue: cStruct.flags)
        self.pAttachments = UnsafeBufferPointer(start: cStruct.pAttachments, count: Int(cStruct.attachmentCount)).map{ AttachmentDescription(cStruct: $0) }
        self.pSubpasses = UnsafeBufferPointer(start: cStruct.pSubpasses, count: Int(cStruct.subpassCount)).map{ SubpassDescription(cStruct: $0) }
        self.pDependencies = UnsafeBufferPointer(start: cStruct.pDependencies, count: Int(cStruct.dependencyCount)).map{ SubpassDependency(cStruct: $0) }
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkRenderPassCreateInfo>) throws -> R) rethrows -> R {
        try self.pAttachments.withCStructBufferPointer { ptr_pAttachments in
            try self.pSubpasses.withCStructBufferPointer { ptr_pSubpasses in
                try self.pDependencies.withCStructBufferPointer { ptr_pDependencies in
                    var cStruct = VkRenderPassCreateInfo()
                    cStruct.sType = VK_STRUCTURE_TYPE_RENDER_PASS_CREATE_INFO
                    cStruct.pNext = nil
                    cStruct.flags = self.flags.rawValue
                    cStruct.attachmentCount = UInt32(ptr_pAttachments.count)
                    cStruct.pAttachments = ptr_pAttachments.baseAddress
                    cStruct.subpassCount = UInt32(ptr_pSubpasses.count)
                    cStruct.pSubpasses = ptr_pSubpasses.baseAddress
                    cStruct.dependencyCount = UInt32(ptr_pDependencies.count)
                    cStruct.pDependencies = ptr_pDependencies.baseAddress
                    return try body(&cStruct)
                }
            }
        }
    }
}

struct EventCreateInfo: CStructConvertible {
    typealias CStruct = VkEventCreateInfo

    let flags: EventCreateFlags

    init(cStruct: VkEventCreateInfo) {
        self.flags = EventCreateFlags(rawValue: cStruct.flags)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkEventCreateInfo>) throws -> R) rethrows -> R {
        var cStruct = VkEventCreateInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_EVENT_CREATE_INFO
        cStruct.pNext = nil
        cStruct.flags = self.flags.rawValue
        return try body(&cStruct)
    }
}

struct FenceCreateInfo: CStructConvertible {
    typealias CStruct = VkFenceCreateInfo

    let flags: FenceCreateFlags

    init(cStruct: VkFenceCreateInfo) {
        self.flags = FenceCreateFlags(rawValue: cStruct.flags)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkFenceCreateInfo>) throws -> R) rethrows -> R {
        var cStruct = VkFenceCreateInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_FENCE_CREATE_INFO
        cStruct.pNext = nil
        cStruct.flags = self.flags.rawValue
        return try body(&cStruct)
    }
}

struct PhysicalDeviceFeatures: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceFeatures

    let robustBufferAccess: Bool
    let fullDrawIndexUint32: Bool
    let imageCubeArray: Bool
    let independentBlend: Bool
    let geometryShader: Bool
    let tessellationShader: Bool
    let sampleRateShading: Bool
    let dualSrcBlend: Bool
    let logicOp: Bool
    let multiDrawIndirect: Bool
    let drawIndirectFirstInstance: Bool
    let depthClamp: Bool
    let depthBiasClamp: Bool
    let fillModeNonSolid: Bool
    let depthBounds: Bool
    let wideLines: Bool
    let largePoints: Bool
    let alphaToOne: Bool
    let multiViewport: Bool
    let samplerAnisotropy: Bool
    let textureCompressionETC2: Bool
    let textureCompressionASTC_LDR: Bool
    let textureCompressionBC: Bool
    let occlusionQueryPrecise: Bool
    let pipelineStatisticsQuery: Bool
    let vertexPipelineStoresAndAtomics: Bool
    let fragmentStoresAndAtomics: Bool
    let shaderTessellationAndGeometryPointSize: Bool
    let shaderImageGatherExtended: Bool
    let shaderStorageImageExtendedFormats: Bool
    let shaderStorageImageMultisample: Bool
    let shaderStorageImageReadWithoutFormat: Bool
    let shaderStorageImageWriteWithoutFormat: Bool
    let shaderUniformBufferArrayDynamicIndexing: Bool
    let shaderSampledImageArrayDynamicIndexing: Bool
    let shaderStorageBufferArrayDynamicIndexing: Bool
    let shaderStorageImageArrayDynamicIndexing: Bool
    let shaderClipDistance: Bool
    let shaderCullDistance: Bool
    let shaderFloat64: Bool
    let shaderInt64: Bool
    let shaderInt16: Bool
    let shaderResourceResidency: Bool
    let shaderResourceMinLod: Bool
    let sparseBinding: Bool
    let sparseResidencyBuffer: Bool
    let sparseResidencyImage2D: Bool
    let sparseResidencyImage3D: Bool
    let sparseResidency2Samples: Bool
    let sparseResidency4Samples: Bool
    let sparseResidency8Samples: Bool
    let sparseResidency16Samples: Bool
    let sparseResidencyAliased: Bool
    let variableMultisampleRate: Bool
    let inheritedQueries: Bool

    init(cStruct: VkPhysicalDeviceFeatures) {
        self.robustBufferAccess = cStruct.robustBufferAccess == VK_TRUE
        self.fullDrawIndexUint32 = cStruct.fullDrawIndexUint32 == VK_TRUE
        self.imageCubeArray = cStruct.imageCubeArray == VK_TRUE
        self.independentBlend = cStruct.independentBlend == VK_TRUE
        self.geometryShader = cStruct.geometryShader == VK_TRUE
        self.tessellationShader = cStruct.tessellationShader == VK_TRUE
        self.sampleRateShading = cStruct.sampleRateShading == VK_TRUE
        self.dualSrcBlend = cStruct.dualSrcBlend == VK_TRUE
        self.logicOp = cStruct.logicOp == VK_TRUE
        self.multiDrawIndirect = cStruct.multiDrawIndirect == VK_TRUE
        self.drawIndirectFirstInstance = cStruct.drawIndirectFirstInstance == VK_TRUE
        self.depthClamp = cStruct.depthClamp == VK_TRUE
        self.depthBiasClamp = cStruct.depthBiasClamp == VK_TRUE
        self.fillModeNonSolid = cStruct.fillModeNonSolid == VK_TRUE
        self.depthBounds = cStruct.depthBounds == VK_TRUE
        self.wideLines = cStruct.wideLines == VK_TRUE
        self.largePoints = cStruct.largePoints == VK_TRUE
        self.alphaToOne = cStruct.alphaToOne == VK_TRUE
        self.multiViewport = cStruct.multiViewport == VK_TRUE
        self.samplerAnisotropy = cStruct.samplerAnisotropy == VK_TRUE
        self.textureCompressionETC2 = cStruct.textureCompressionETC2 == VK_TRUE
        self.textureCompressionASTC_LDR = cStruct.textureCompressionASTC_LDR == VK_TRUE
        self.textureCompressionBC = cStruct.textureCompressionBC == VK_TRUE
        self.occlusionQueryPrecise = cStruct.occlusionQueryPrecise == VK_TRUE
        self.pipelineStatisticsQuery = cStruct.pipelineStatisticsQuery == VK_TRUE
        self.vertexPipelineStoresAndAtomics = cStruct.vertexPipelineStoresAndAtomics == VK_TRUE
        self.fragmentStoresAndAtomics = cStruct.fragmentStoresAndAtomics == VK_TRUE
        self.shaderTessellationAndGeometryPointSize = cStruct.shaderTessellationAndGeometryPointSize == VK_TRUE
        self.shaderImageGatherExtended = cStruct.shaderImageGatherExtended == VK_TRUE
        self.shaderStorageImageExtendedFormats = cStruct.shaderStorageImageExtendedFormats == VK_TRUE
        self.shaderStorageImageMultisample = cStruct.shaderStorageImageMultisample == VK_TRUE
        self.shaderStorageImageReadWithoutFormat = cStruct.shaderStorageImageReadWithoutFormat == VK_TRUE
        self.shaderStorageImageWriteWithoutFormat = cStruct.shaderStorageImageWriteWithoutFormat == VK_TRUE
        self.shaderUniformBufferArrayDynamicIndexing = cStruct.shaderUniformBufferArrayDynamicIndexing == VK_TRUE
        self.shaderSampledImageArrayDynamicIndexing = cStruct.shaderSampledImageArrayDynamicIndexing == VK_TRUE
        self.shaderStorageBufferArrayDynamicIndexing = cStruct.shaderStorageBufferArrayDynamicIndexing == VK_TRUE
        self.shaderStorageImageArrayDynamicIndexing = cStruct.shaderStorageImageArrayDynamicIndexing == VK_TRUE
        self.shaderClipDistance = cStruct.shaderClipDistance == VK_TRUE
        self.shaderCullDistance = cStruct.shaderCullDistance == VK_TRUE
        self.shaderFloat64 = cStruct.shaderFloat64 == VK_TRUE
        self.shaderInt64 = cStruct.shaderInt64 == VK_TRUE
        self.shaderInt16 = cStruct.shaderInt16 == VK_TRUE
        self.shaderResourceResidency = cStruct.shaderResourceResidency == VK_TRUE
        self.shaderResourceMinLod = cStruct.shaderResourceMinLod == VK_TRUE
        self.sparseBinding = cStruct.sparseBinding == VK_TRUE
        self.sparseResidencyBuffer = cStruct.sparseResidencyBuffer == VK_TRUE
        self.sparseResidencyImage2D = cStruct.sparseResidencyImage2D == VK_TRUE
        self.sparseResidencyImage3D = cStruct.sparseResidencyImage3D == VK_TRUE
        self.sparseResidency2Samples = cStruct.sparseResidency2Samples == VK_TRUE
        self.sparseResidency4Samples = cStruct.sparseResidency4Samples == VK_TRUE
        self.sparseResidency8Samples = cStruct.sparseResidency8Samples == VK_TRUE
        self.sparseResidency16Samples = cStruct.sparseResidency16Samples == VK_TRUE
        self.sparseResidencyAliased = cStruct.sparseResidencyAliased == VK_TRUE
        self.variableMultisampleRate = cStruct.variableMultisampleRate == VK_TRUE
        self.inheritedQueries = cStruct.inheritedQueries == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceFeatures>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceFeatures()
        cStruct.robustBufferAccess = VkBool32(self.robustBufferAccess ? VK_TRUE : VK_FALSE)
        cStruct.fullDrawIndexUint32 = VkBool32(self.fullDrawIndexUint32 ? VK_TRUE : VK_FALSE)
        cStruct.imageCubeArray = VkBool32(self.imageCubeArray ? VK_TRUE : VK_FALSE)
        cStruct.independentBlend = VkBool32(self.independentBlend ? VK_TRUE : VK_FALSE)
        cStruct.geometryShader = VkBool32(self.geometryShader ? VK_TRUE : VK_FALSE)
        cStruct.tessellationShader = VkBool32(self.tessellationShader ? VK_TRUE : VK_FALSE)
        cStruct.sampleRateShading = VkBool32(self.sampleRateShading ? VK_TRUE : VK_FALSE)
        cStruct.dualSrcBlend = VkBool32(self.dualSrcBlend ? VK_TRUE : VK_FALSE)
        cStruct.logicOp = VkBool32(self.logicOp ? VK_TRUE : VK_FALSE)
        cStruct.multiDrawIndirect = VkBool32(self.multiDrawIndirect ? VK_TRUE : VK_FALSE)
        cStruct.drawIndirectFirstInstance = VkBool32(self.drawIndirectFirstInstance ? VK_TRUE : VK_FALSE)
        cStruct.depthClamp = VkBool32(self.depthClamp ? VK_TRUE : VK_FALSE)
        cStruct.depthBiasClamp = VkBool32(self.depthBiasClamp ? VK_TRUE : VK_FALSE)
        cStruct.fillModeNonSolid = VkBool32(self.fillModeNonSolid ? VK_TRUE : VK_FALSE)
        cStruct.depthBounds = VkBool32(self.depthBounds ? VK_TRUE : VK_FALSE)
        cStruct.wideLines = VkBool32(self.wideLines ? VK_TRUE : VK_FALSE)
        cStruct.largePoints = VkBool32(self.largePoints ? VK_TRUE : VK_FALSE)
        cStruct.alphaToOne = VkBool32(self.alphaToOne ? VK_TRUE : VK_FALSE)
        cStruct.multiViewport = VkBool32(self.multiViewport ? VK_TRUE : VK_FALSE)
        cStruct.samplerAnisotropy = VkBool32(self.samplerAnisotropy ? VK_TRUE : VK_FALSE)
        cStruct.textureCompressionETC2 = VkBool32(self.textureCompressionETC2 ? VK_TRUE : VK_FALSE)
        cStruct.textureCompressionASTC_LDR = VkBool32(self.textureCompressionASTC_LDR ? VK_TRUE : VK_FALSE)
        cStruct.textureCompressionBC = VkBool32(self.textureCompressionBC ? VK_TRUE : VK_FALSE)
        cStruct.occlusionQueryPrecise = VkBool32(self.occlusionQueryPrecise ? VK_TRUE : VK_FALSE)
        cStruct.pipelineStatisticsQuery = VkBool32(self.pipelineStatisticsQuery ? VK_TRUE : VK_FALSE)
        cStruct.vertexPipelineStoresAndAtomics = VkBool32(self.vertexPipelineStoresAndAtomics ? VK_TRUE : VK_FALSE)
        cStruct.fragmentStoresAndAtomics = VkBool32(self.fragmentStoresAndAtomics ? VK_TRUE : VK_FALSE)
        cStruct.shaderTessellationAndGeometryPointSize = VkBool32(self.shaderTessellationAndGeometryPointSize ? VK_TRUE : VK_FALSE)
        cStruct.shaderImageGatherExtended = VkBool32(self.shaderImageGatherExtended ? VK_TRUE : VK_FALSE)
        cStruct.shaderStorageImageExtendedFormats = VkBool32(self.shaderStorageImageExtendedFormats ? VK_TRUE : VK_FALSE)
        cStruct.shaderStorageImageMultisample = VkBool32(self.shaderStorageImageMultisample ? VK_TRUE : VK_FALSE)
        cStruct.shaderStorageImageReadWithoutFormat = VkBool32(self.shaderStorageImageReadWithoutFormat ? VK_TRUE : VK_FALSE)
        cStruct.shaderStorageImageWriteWithoutFormat = VkBool32(self.shaderStorageImageWriteWithoutFormat ? VK_TRUE : VK_FALSE)
        cStruct.shaderUniformBufferArrayDynamicIndexing = VkBool32(self.shaderUniformBufferArrayDynamicIndexing ? VK_TRUE : VK_FALSE)
        cStruct.shaderSampledImageArrayDynamicIndexing = VkBool32(self.shaderSampledImageArrayDynamicIndexing ? VK_TRUE : VK_FALSE)
        cStruct.shaderStorageBufferArrayDynamicIndexing = VkBool32(self.shaderStorageBufferArrayDynamicIndexing ? VK_TRUE : VK_FALSE)
        cStruct.shaderStorageImageArrayDynamicIndexing = VkBool32(self.shaderStorageImageArrayDynamicIndexing ? VK_TRUE : VK_FALSE)
        cStruct.shaderClipDistance = VkBool32(self.shaderClipDistance ? VK_TRUE : VK_FALSE)
        cStruct.shaderCullDistance = VkBool32(self.shaderCullDistance ? VK_TRUE : VK_FALSE)
        cStruct.shaderFloat64 = VkBool32(self.shaderFloat64 ? VK_TRUE : VK_FALSE)
        cStruct.shaderInt64 = VkBool32(self.shaderInt64 ? VK_TRUE : VK_FALSE)
        cStruct.shaderInt16 = VkBool32(self.shaderInt16 ? VK_TRUE : VK_FALSE)
        cStruct.shaderResourceResidency = VkBool32(self.shaderResourceResidency ? VK_TRUE : VK_FALSE)
        cStruct.shaderResourceMinLod = VkBool32(self.shaderResourceMinLod ? VK_TRUE : VK_FALSE)
        cStruct.sparseBinding = VkBool32(self.sparseBinding ? VK_TRUE : VK_FALSE)
        cStruct.sparseResidencyBuffer = VkBool32(self.sparseResidencyBuffer ? VK_TRUE : VK_FALSE)
        cStruct.sparseResidencyImage2D = VkBool32(self.sparseResidencyImage2D ? VK_TRUE : VK_FALSE)
        cStruct.sparseResidencyImage3D = VkBool32(self.sparseResidencyImage3D ? VK_TRUE : VK_FALSE)
        cStruct.sparseResidency2Samples = VkBool32(self.sparseResidency2Samples ? VK_TRUE : VK_FALSE)
        cStruct.sparseResidency4Samples = VkBool32(self.sparseResidency4Samples ? VK_TRUE : VK_FALSE)
        cStruct.sparseResidency8Samples = VkBool32(self.sparseResidency8Samples ? VK_TRUE : VK_FALSE)
        cStruct.sparseResidency16Samples = VkBool32(self.sparseResidency16Samples ? VK_TRUE : VK_FALSE)
        cStruct.sparseResidencyAliased = VkBool32(self.sparseResidencyAliased ? VK_TRUE : VK_FALSE)
        cStruct.variableMultisampleRate = VkBool32(self.variableMultisampleRate ? VK_TRUE : VK_FALSE)
        cStruct.inheritedQueries = VkBool32(self.inheritedQueries ? VK_TRUE : VK_FALSE)
        return try body(&cStruct)
    }
}

struct PhysicalDeviceSparseProperties: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceSparseProperties

    let residencyStandard2DBlockShape: Bool
    let residencyStandard2DMultisampleBlockShape: Bool
    let residencyStandard3DBlockShape: Bool
    let residencyAlignedMipSize: Bool
    let residencyNonResidentStrict: Bool

    init(cStruct: VkPhysicalDeviceSparseProperties) {
        self.residencyStandard2DBlockShape = cStruct.residencyStandard2DBlockShape == VK_TRUE
        self.residencyStandard2DMultisampleBlockShape = cStruct.residencyStandard2DMultisampleBlockShape == VK_TRUE
        self.residencyStandard3DBlockShape = cStruct.residencyStandard3DBlockShape == VK_TRUE
        self.residencyAlignedMipSize = cStruct.residencyAlignedMipSize == VK_TRUE
        self.residencyNonResidentStrict = cStruct.residencyNonResidentStrict == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceSparseProperties>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceSparseProperties()
        cStruct.residencyStandard2DBlockShape = VkBool32(self.residencyStandard2DBlockShape ? VK_TRUE : VK_FALSE)
        cStruct.residencyStandard2DMultisampleBlockShape = VkBool32(self.residencyStandard2DMultisampleBlockShape ? VK_TRUE : VK_FALSE)
        cStruct.residencyStandard3DBlockShape = VkBool32(self.residencyStandard3DBlockShape ? VK_TRUE : VK_FALSE)
        cStruct.residencyAlignedMipSize = VkBool32(self.residencyAlignedMipSize ? VK_TRUE : VK_FALSE)
        cStruct.residencyNonResidentStrict = VkBool32(self.residencyNonResidentStrict ? VK_TRUE : VK_FALSE)
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
    let framebufferColorSampleCounts: SampleCountFlags
    let framebufferDepthSampleCounts: SampleCountFlags
    let framebufferStencilSampleCounts: SampleCountFlags
    let framebufferNoAttachmentsSampleCounts: SampleCountFlags
    let maxColorAttachments: UInt32
    let sampledImageColorSampleCounts: SampleCountFlags
    let sampledImageIntegerSampleCounts: SampleCountFlags
    let sampledImageDepthSampleCounts: SampleCountFlags
    let sampledImageStencilSampleCounts: SampleCountFlags
    let storageImageSampleCounts: SampleCountFlags
    let maxSampleMaskWords: UInt32
    let timestampComputeAndGraphics: Bool
    let timestampPeriod: Float
    let maxClipDistances: UInt32
    let maxCullDistances: UInt32
    let maxCombinedClipAndCullDistances: UInt32
    let discreteQueuePriorities: UInt32
    let pointSizeRange: (Float, Float)
    let lineWidthRange: (Float, Float)
    let pointSizeGranularity: Float
    let lineWidthGranularity: Float
    let strictLines: Bool
    let standardSampleLocations: Bool
    let optimalBufferCopyOffsetAlignment: VkDeviceSize
    let optimalBufferCopyRowPitchAlignment: VkDeviceSize
    let nonCoherentAtomSize: VkDeviceSize

    init(cStruct: VkPhysicalDeviceLimits) {
        self.maxImageDimension1D = cStruct.maxImageDimension1D
        self.maxImageDimension2D = cStruct.maxImageDimension2D
        self.maxImageDimension3D = cStruct.maxImageDimension3D
        self.maxImageDimensionCube = cStruct.maxImageDimensionCube
        self.maxImageArrayLayers = cStruct.maxImageArrayLayers
        self.maxTexelBufferElements = cStruct.maxTexelBufferElements
        self.maxUniformBufferRange = cStruct.maxUniformBufferRange
        self.maxStorageBufferRange = cStruct.maxStorageBufferRange
        self.maxPushConstantsSize = cStruct.maxPushConstantsSize
        self.maxMemoryAllocationCount = cStruct.maxMemoryAllocationCount
        self.maxSamplerAllocationCount = cStruct.maxSamplerAllocationCount
        self.bufferImageGranularity = cStruct.bufferImageGranularity
        self.sparseAddressSpaceSize = cStruct.sparseAddressSpaceSize
        self.maxBoundDescriptorSets = cStruct.maxBoundDescriptorSets
        self.maxPerStageDescriptorSamplers = cStruct.maxPerStageDescriptorSamplers
        self.maxPerStageDescriptorUniformBuffers = cStruct.maxPerStageDescriptorUniformBuffers
        self.maxPerStageDescriptorStorageBuffers = cStruct.maxPerStageDescriptorStorageBuffers
        self.maxPerStageDescriptorSampledImages = cStruct.maxPerStageDescriptorSampledImages
        self.maxPerStageDescriptorStorageImages = cStruct.maxPerStageDescriptorStorageImages
        self.maxPerStageDescriptorInputAttachments = cStruct.maxPerStageDescriptorInputAttachments
        self.maxPerStageResources = cStruct.maxPerStageResources
        self.maxDescriptorSetSamplers = cStruct.maxDescriptorSetSamplers
        self.maxDescriptorSetUniformBuffers = cStruct.maxDescriptorSetUniformBuffers
        self.maxDescriptorSetUniformBuffersDynamic = cStruct.maxDescriptorSetUniformBuffersDynamic
        self.maxDescriptorSetStorageBuffers = cStruct.maxDescriptorSetStorageBuffers
        self.maxDescriptorSetStorageBuffersDynamic = cStruct.maxDescriptorSetStorageBuffersDynamic
        self.maxDescriptorSetSampledImages = cStruct.maxDescriptorSetSampledImages
        self.maxDescriptorSetStorageImages = cStruct.maxDescriptorSetStorageImages
        self.maxDescriptorSetInputAttachments = cStruct.maxDescriptorSetInputAttachments
        self.maxVertexInputAttributes = cStruct.maxVertexInputAttributes
        self.maxVertexInputBindings = cStruct.maxVertexInputBindings
        self.maxVertexInputAttributeOffset = cStruct.maxVertexInputAttributeOffset
        self.maxVertexInputBindingStride = cStruct.maxVertexInputBindingStride
        self.maxVertexOutputComponents = cStruct.maxVertexOutputComponents
        self.maxTessellationGenerationLevel = cStruct.maxTessellationGenerationLevel
        self.maxTessellationPatchSize = cStruct.maxTessellationPatchSize
        self.maxTessellationControlPerVertexInputComponents = cStruct.maxTessellationControlPerVertexInputComponents
        self.maxTessellationControlPerVertexOutputComponents = cStruct.maxTessellationControlPerVertexOutputComponents
        self.maxTessellationControlPerPatchOutputComponents = cStruct.maxTessellationControlPerPatchOutputComponents
        self.maxTessellationControlTotalOutputComponents = cStruct.maxTessellationControlTotalOutputComponents
        self.maxTessellationEvaluationInputComponents = cStruct.maxTessellationEvaluationInputComponents
        self.maxTessellationEvaluationOutputComponents = cStruct.maxTessellationEvaluationOutputComponents
        self.maxGeometryShaderInvocations = cStruct.maxGeometryShaderInvocations
        self.maxGeometryInputComponents = cStruct.maxGeometryInputComponents
        self.maxGeometryOutputComponents = cStruct.maxGeometryOutputComponents
        self.maxGeometryOutputVertices = cStruct.maxGeometryOutputVertices
        self.maxGeometryTotalOutputComponents = cStruct.maxGeometryTotalOutputComponents
        self.maxFragmentInputComponents = cStruct.maxFragmentInputComponents
        self.maxFragmentOutputAttachments = cStruct.maxFragmentOutputAttachments
        self.maxFragmentDualSrcAttachments = cStruct.maxFragmentDualSrcAttachments
        self.maxFragmentCombinedOutputResources = cStruct.maxFragmentCombinedOutputResources
        self.maxComputeSharedMemorySize = cStruct.maxComputeSharedMemorySize
        self.maxComputeWorkGroupCount = cStruct.maxComputeWorkGroupCount
        self.maxComputeWorkGroupInvocations = cStruct.maxComputeWorkGroupInvocations
        self.maxComputeWorkGroupSize = cStruct.maxComputeWorkGroupSize
        self.subPixelPrecisionBits = cStruct.subPixelPrecisionBits
        self.subTexelPrecisionBits = cStruct.subTexelPrecisionBits
        self.mipmapPrecisionBits = cStruct.mipmapPrecisionBits
        self.maxDrawIndexedIndexValue = cStruct.maxDrawIndexedIndexValue
        self.maxDrawIndirectCount = cStruct.maxDrawIndirectCount
        self.maxSamplerLodBias = cStruct.maxSamplerLodBias
        self.maxSamplerAnisotropy = cStruct.maxSamplerAnisotropy
        self.maxViewports = cStruct.maxViewports
        self.maxViewportDimensions = cStruct.maxViewportDimensions
        self.viewportBoundsRange = cStruct.viewportBoundsRange
        self.viewportSubPixelBits = cStruct.viewportSubPixelBits
        self.minMemoryMapAlignment = cStruct.minMemoryMapAlignment
        self.minTexelBufferOffsetAlignment = cStruct.minTexelBufferOffsetAlignment
        self.minUniformBufferOffsetAlignment = cStruct.minUniformBufferOffsetAlignment
        self.minStorageBufferOffsetAlignment = cStruct.minStorageBufferOffsetAlignment
        self.minTexelOffset = cStruct.minTexelOffset
        self.maxTexelOffset = cStruct.maxTexelOffset
        self.minTexelGatherOffset = cStruct.minTexelGatherOffset
        self.maxTexelGatherOffset = cStruct.maxTexelGatherOffset
        self.minInterpolationOffset = cStruct.minInterpolationOffset
        self.maxInterpolationOffset = cStruct.maxInterpolationOffset
        self.subPixelInterpolationOffsetBits = cStruct.subPixelInterpolationOffsetBits
        self.maxFramebufferWidth = cStruct.maxFramebufferWidth
        self.maxFramebufferHeight = cStruct.maxFramebufferHeight
        self.maxFramebufferLayers = cStruct.maxFramebufferLayers
        self.framebufferColorSampleCounts = SampleCountFlags(rawValue: cStruct.framebufferColorSampleCounts)
        self.framebufferDepthSampleCounts = SampleCountFlags(rawValue: cStruct.framebufferDepthSampleCounts)
        self.framebufferStencilSampleCounts = SampleCountFlags(rawValue: cStruct.framebufferStencilSampleCounts)
        self.framebufferNoAttachmentsSampleCounts = SampleCountFlags(rawValue: cStruct.framebufferNoAttachmentsSampleCounts)
        self.maxColorAttachments = cStruct.maxColorAttachments
        self.sampledImageColorSampleCounts = SampleCountFlags(rawValue: cStruct.sampledImageColorSampleCounts)
        self.sampledImageIntegerSampleCounts = SampleCountFlags(rawValue: cStruct.sampledImageIntegerSampleCounts)
        self.sampledImageDepthSampleCounts = SampleCountFlags(rawValue: cStruct.sampledImageDepthSampleCounts)
        self.sampledImageStencilSampleCounts = SampleCountFlags(rawValue: cStruct.sampledImageStencilSampleCounts)
        self.storageImageSampleCounts = SampleCountFlags(rawValue: cStruct.storageImageSampleCounts)
        self.maxSampleMaskWords = cStruct.maxSampleMaskWords
        self.timestampComputeAndGraphics = cStruct.timestampComputeAndGraphics == VK_TRUE
        self.timestampPeriod = cStruct.timestampPeriod
        self.maxClipDistances = cStruct.maxClipDistances
        self.maxCullDistances = cStruct.maxCullDistances
        self.maxCombinedClipAndCullDistances = cStruct.maxCombinedClipAndCullDistances
        self.discreteQueuePriorities = cStruct.discreteQueuePriorities
        self.pointSizeRange = cStruct.pointSizeRange
        self.lineWidthRange = cStruct.lineWidthRange
        self.pointSizeGranularity = cStruct.pointSizeGranularity
        self.lineWidthGranularity = cStruct.lineWidthGranularity
        self.strictLines = cStruct.strictLines == VK_TRUE
        self.standardSampleLocations = cStruct.standardSampleLocations == VK_TRUE
        self.optimalBufferCopyOffsetAlignment = cStruct.optimalBufferCopyOffsetAlignment
        self.optimalBufferCopyRowPitchAlignment = cStruct.optimalBufferCopyRowPitchAlignment
        self.nonCoherentAtomSize = cStruct.nonCoherentAtomSize
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceLimits>) throws -> R) rethrows -> R {
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
        cStruct.framebufferColorSampleCounts = self.framebufferColorSampleCounts.rawValue
        cStruct.framebufferDepthSampleCounts = self.framebufferDepthSampleCounts.rawValue
        cStruct.framebufferStencilSampleCounts = self.framebufferStencilSampleCounts.rawValue
        cStruct.framebufferNoAttachmentsSampleCounts = self.framebufferNoAttachmentsSampleCounts.rawValue
        cStruct.maxColorAttachments = self.maxColorAttachments
        cStruct.sampledImageColorSampleCounts = self.sampledImageColorSampleCounts.rawValue
        cStruct.sampledImageIntegerSampleCounts = self.sampledImageIntegerSampleCounts.rawValue
        cStruct.sampledImageDepthSampleCounts = self.sampledImageDepthSampleCounts.rawValue
        cStruct.sampledImageStencilSampleCounts = self.sampledImageStencilSampleCounts.rawValue
        cStruct.storageImageSampleCounts = self.storageImageSampleCounts.rawValue
        cStruct.maxSampleMaskWords = self.maxSampleMaskWords
        cStruct.timestampComputeAndGraphics = VkBool32(self.timestampComputeAndGraphics ? VK_TRUE : VK_FALSE)
        cStruct.timestampPeriod = self.timestampPeriod
        cStruct.maxClipDistances = self.maxClipDistances
        cStruct.maxCullDistances = self.maxCullDistances
        cStruct.maxCombinedClipAndCullDistances = self.maxCombinedClipAndCullDistances
        cStruct.discreteQueuePriorities = self.discreteQueuePriorities
        cStruct.pointSizeRange = self.pointSizeRange
        cStruct.lineWidthRange = self.lineWidthRange
        cStruct.pointSizeGranularity = self.pointSizeGranularity
        cStruct.lineWidthGranularity = self.lineWidthGranularity
        cStruct.strictLines = VkBool32(self.strictLines ? VK_TRUE : VK_FALSE)
        cStruct.standardSampleLocations = VkBool32(self.standardSampleLocations ? VK_TRUE : VK_FALSE)
        cStruct.optimalBufferCopyOffsetAlignment = self.optimalBufferCopyOffsetAlignment
        cStruct.optimalBufferCopyRowPitchAlignment = self.optimalBufferCopyRowPitchAlignment
        cStruct.nonCoherentAtomSize = self.nonCoherentAtomSize
        return try body(&cStruct)
    }
}

struct SemaphoreCreateInfo: CStructConvertible {
    typealias CStruct = VkSemaphoreCreateInfo

    let flags: SemaphoreCreateFlags

    init(cStruct: VkSemaphoreCreateInfo) {
        self.flags = SemaphoreCreateFlags(rawValue: cStruct.flags)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkSemaphoreCreateInfo>) throws -> R) rethrows -> R {
        var cStruct = VkSemaphoreCreateInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_SEMAPHORE_CREATE_INFO
        cStruct.pNext = nil
        cStruct.flags = self.flags.rawValue
        return try body(&cStruct)
    }
}

struct QueryPoolCreateInfo: CStructConvertible {
    typealias CStruct = VkQueryPoolCreateInfo

    let flags: QueryPoolCreateFlags
    let queryType: QueryType
    let queryCount: UInt32
    let pipelineStatistics: QueryPipelineStatisticFlags

    init(cStruct: VkQueryPoolCreateInfo) {
        self.flags = QueryPoolCreateFlags(rawValue: cStruct.flags)
        self.queryType = QueryType(rawValue: cStruct.queryType.rawValue)!
        self.queryCount = cStruct.queryCount
        self.pipelineStatistics = QueryPipelineStatisticFlags(rawValue: cStruct.pipelineStatistics)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkQueryPoolCreateInfo>) throws -> R) rethrows -> R {
        var cStruct = VkQueryPoolCreateInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_QUERY_POOL_CREATE_INFO
        cStruct.pNext = nil
        cStruct.flags = self.flags.rawValue
        cStruct.queryType = VkQueryType(rawValue: self.queryType.rawValue)
        cStruct.queryCount = self.queryCount
        cStruct.pipelineStatistics = self.pipelineStatistics.rawValue
        return try body(&cStruct)
    }
}

struct FramebufferCreateInfo: CStructConvertible {
    typealias CStruct = VkFramebufferCreateInfo

    let flags: FramebufferCreateFlags
    let renderPass: RenderPass
    let pAttachments: Array<ImageView>
    let width: UInt32
    let height: UInt32
    let layers: UInt32

    init(cStruct: VkFramebufferCreateInfo) {
        fatalError("This initializer should be removed.")
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkFramebufferCreateInfo>) throws -> R) rethrows -> R {
        try self.pAttachments.map{ $0.handle }.withUnsafeBufferPointer { ptr_pAttachments in
            var cStruct = VkFramebufferCreateInfo()
            cStruct.sType = VK_STRUCTURE_TYPE_FRAMEBUFFER_CREATE_INFO
            cStruct.pNext = nil
            cStruct.flags = self.flags.rawValue
            cStruct.renderPass = self.renderPass.handle
            cStruct.attachmentCount = UInt32(ptr_pAttachments.count)
            cStruct.pAttachments = ptr_pAttachments.baseAddress
            cStruct.width = self.width
            cStruct.height = self.height
            cStruct.layers = self.layers
            return try body(&cStruct)
        }
    }
}

struct DrawIndirectCommand: CStructConvertible {
    typealias CStruct = VkDrawIndirectCommand

    let vertexCount: UInt32
    let instanceCount: UInt32
    let firstVertex: UInt32
    let firstInstance: UInt32

    init(cStruct: VkDrawIndirectCommand) {
        self.vertexCount = cStruct.vertexCount
        self.instanceCount = cStruct.instanceCount
        self.firstVertex = cStruct.firstVertex
        self.firstInstance = cStruct.firstInstance
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkDrawIndirectCommand>) throws -> R) rethrows -> R {
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

    init(cStruct: VkDrawIndexedIndirectCommand) {
        self.indexCount = cStruct.indexCount
        self.instanceCount = cStruct.instanceCount
        self.firstIndex = cStruct.firstIndex
        self.vertexOffset = cStruct.vertexOffset
        self.firstInstance = cStruct.firstInstance
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkDrawIndexedIndirectCommand>) throws -> R) rethrows -> R {
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

    init(cStruct: VkDispatchIndirectCommand) {
        self.x = cStruct.x
        self.y = cStruct.y
        self.z = cStruct.z
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkDispatchIndirectCommand>) throws -> R) rethrows -> R {
        var cStruct = VkDispatchIndirectCommand()
        cStruct.x = self.x
        cStruct.y = self.y
        cStruct.z = self.z
        return try body(&cStruct)
    }
}

struct SubmitInfo: CStructConvertible {
    typealias CStruct = VkSubmitInfo

    let pWaitSemaphores: Array<Semaphore>
    let pWaitDstStageMask: Array<PipelineStageFlags>
    let pCommandBuffers: Array<CommandBuffer>
    let pSignalSemaphores: Array<Semaphore>

    init(cStruct: VkSubmitInfo) {
        fatalError("This initializer should be removed.")
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkSubmitInfo>) throws -> R) rethrows -> R {
        try self.pWaitSemaphores.map{ $0.handle }.withUnsafeBufferPointer { ptr_pWaitSemaphores in
            try self.pWaitDstStageMask.map{ $0.rawValue }.withUnsafeBufferPointer { ptr_pWaitDstStageMask in
                try self.pCommandBuffers.map{ $0.handle }.withUnsafeBufferPointer { ptr_pCommandBuffers in
                    try self.pSignalSemaphores.map{ $0.handle }.withUnsafeBufferPointer { ptr_pSignalSemaphores in
                        var cStruct = VkSubmitInfo()
                        cStruct.sType = VK_STRUCTURE_TYPE_SUBMIT_INFO
                        cStruct.pNext = nil
                        cStruct.waitSemaphoreCount = UInt32(ptr_pWaitSemaphores.count)
                        cStruct.pWaitSemaphores = ptr_pWaitSemaphores.baseAddress
                        cStruct.pWaitDstStageMask = ptr_pWaitDstStageMask.baseAddress
                        cStruct.commandBufferCount = UInt32(ptr_pCommandBuffers.count)
                        cStruct.pCommandBuffers = ptr_pCommandBuffers.baseAddress
                        cStruct.signalSemaphoreCount = UInt32(ptr_pSignalSemaphores.count)
                        cStruct.pSignalSemaphores = ptr_pSignalSemaphores.baseAddress
                        return try body(&cStruct)
                    }
                }
            }
        }
    }
}

struct DisplayPropertiesKHR: CStructConvertible {
    typealias CStruct = VkDisplayPropertiesKHR

    let display: DisplayKHR
    let displayName: String
    let physicalDimensions: Extent2D
    let physicalResolution: Extent2D
    let supportedTransforms: SurfaceTransformFlagsKHR
    let planeReorderPossible: Bool
    let persistentContent: Bool

    init(cStruct: VkDisplayPropertiesKHR) {
        fatalError("This initializer should be removed.")
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkDisplayPropertiesKHR>) throws -> R) rethrows -> R {
        try self.displayName.withCString { cString_displayName in
            try self.physicalDimensions.withCStruct { ptr_physicalDimensions in
                try self.physicalResolution.withCStruct { ptr_physicalResolution in
                    var cStruct = VkDisplayPropertiesKHR()
                    cStruct.display = self.display.handle
                    cStruct.displayName = cString_displayName
                    cStruct.physicalDimensions = ptr_physicalDimensions.pointee
                    cStruct.physicalResolution = ptr_physicalResolution.pointee
                    cStruct.supportedTransforms = self.supportedTransforms.rawValue
                    cStruct.planeReorderPossible = VkBool32(self.planeReorderPossible ? VK_TRUE : VK_FALSE)
                    cStruct.persistentContent = VkBool32(self.persistentContent ? VK_TRUE : VK_FALSE)
                    return try body(&cStruct)
                }
            }
        }
    }
}

struct DisplayPlanePropertiesKHR: CStructConvertible {
    typealias CStruct = VkDisplayPlanePropertiesKHR

    let currentDisplay: DisplayKHR
    let currentStackIndex: UInt32

    init(cStruct: VkDisplayPlanePropertiesKHR) {
        fatalError("This initializer should be removed.")
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkDisplayPlanePropertiesKHR>) throws -> R) rethrows -> R {
        var cStruct = VkDisplayPlanePropertiesKHR()
        cStruct.currentDisplay = self.currentDisplay.handle
        cStruct.currentStackIndex = self.currentStackIndex
        return try body(&cStruct)
    }
}

struct DisplayModeParametersKHR: CStructConvertible {
    typealias CStruct = VkDisplayModeParametersKHR

    let visibleRegion: Extent2D
    let refreshRate: UInt32

    init(cStruct: VkDisplayModeParametersKHR) {
        self.visibleRegion = Extent2D(cStruct: cStruct.visibleRegion)
        self.refreshRate = cStruct.refreshRate
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkDisplayModeParametersKHR>) throws -> R) rethrows -> R {
        try self.visibleRegion.withCStruct { ptr_visibleRegion in
            var cStruct = VkDisplayModeParametersKHR()
            cStruct.visibleRegion = ptr_visibleRegion.pointee
            cStruct.refreshRate = self.refreshRate
            return try body(&cStruct)
        }
    }
}

struct DisplayModePropertiesKHR: CStructConvertible {
    typealias CStruct = VkDisplayModePropertiesKHR

    let displayMode: DisplayModeKHR
    let parameters: DisplayModeParametersKHR

    init(cStruct: VkDisplayModePropertiesKHR) {
        fatalError("This initializer should be removed.")
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkDisplayModePropertiesKHR>) throws -> R) rethrows -> R {
        try self.parameters.withCStruct { ptr_parameters in
            var cStruct = VkDisplayModePropertiesKHR()
            cStruct.displayMode = self.displayMode.handle
            cStruct.parameters = ptr_parameters.pointee
            return try body(&cStruct)
        }
    }
}

struct DisplayModeCreateInfoKHR: CStructConvertible {
    typealias CStruct = VkDisplayModeCreateInfoKHR

    let flags: DisplayModeCreateFlagsKHR
    let parameters: DisplayModeParametersKHR

    init(cStruct: VkDisplayModeCreateInfoKHR) {
        self.flags = DisplayModeCreateFlagsKHR(rawValue: cStruct.flags)
        self.parameters = DisplayModeParametersKHR(cStruct: cStruct.parameters)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkDisplayModeCreateInfoKHR>) throws -> R) rethrows -> R {
        try self.parameters.withCStruct { ptr_parameters in
            var cStruct = VkDisplayModeCreateInfoKHR()
            cStruct.sType = VK_STRUCTURE_TYPE_DISPLAY_MODE_CREATE_INFO_KHR
            cStruct.pNext = nil
            cStruct.flags = self.flags.rawValue
            cStruct.parameters = ptr_parameters.pointee
            return try body(&cStruct)
        }
    }
}

struct DisplayPlaneCapabilitiesKHR: CStructConvertible {
    typealias CStruct = VkDisplayPlaneCapabilitiesKHR

    let supportedAlpha: DisplayPlaneAlphaFlagsKHR
    let minSrcPosition: Offset2D
    let maxSrcPosition: Offset2D
    let minSrcExtent: Extent2D
    let maxSrcExtent: Extent2D
    let minDstPosition: Offset2D
    let maxDstPosition: Offset2D
    let minDstExtent: Extent2D
    let maxDstExtent: Extent2D

    init(cStruct: VkDisplayPlaneCapabilitiesKHR) {
        self.supportedAlpha = DisplayPlaneAlphaFlagsKHR(rawValue: cStruct.supportedAlpha)
        self.minSrcPosition = Offset2D(cStruct: cStruct.minSrcPosition)
        self.maxSrcPosition = Offset2D(cStruct: cStruct.maxSrcPosition)
        self.minSrcExtent = Extent2D(cStruct: cStruct.minSrcExtent)
        self.maxSrcExtent = Extent2D(cStruct: cStruct.maxSrcExtent)
        self.minDstPosition = Offset2D(cStruct: cStruct.minDstPosition)
        self.maxDstPosition = Offset2D(cStruct: cStruct.maxDstPosition)
        self.minDstExtent = Extent2D(cStruct: cStruct.minDstExtent)
        self.maxDstExtent = Extent2D(cStruct: cStruct.maxDstExtent)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkDisplayPlaneCapabilitiesKHR>) throws -> R) rethrows -> R {
        try self.minSrcPosition.withCStruct { ptr_minSrcPosition in
            try self.maxSrcPosition.withCStruct { ptr_maxSrcPosition in
                try self.minSrcExtent.withCStruct { ptr_minSrcExtent in
                    try self.maxSrcExtent.withCStruct { ptr_maxSrcExtent in
                        try self.minDstPosition.withCStruct { ptr_minDstPosition in
                            try self.maxDstPosition.withCStruct { ptr_maxDstPosition in
                                try self.minDstExtent.withCStruct { ptr_minDstExtent in
                                    try self.maxDstExtent.withCStruct { ptr_maxDstExtent in
                                        var cStruct = VkDisplayPlaneCapabilitiesKHR()
                                        cStruct.supportedAlpha = self.supportedAlpha.rawValue
                                        cStruct.minSrcPosition = ptr_minSrcPosition.pointee
                                        cStruct.maxSrcPosition = ptr_maxSrcPosition.pointee
                                        cStruct.minSrcExtent = ptr_minSrcExtent.pointee
                                        cStruct.maxSrcExtent = ptr_maxSrcExtent.pointee
                                        cStruct.minDstPosition = ptr_minDstPosition.pointee
                                        cStruct.maxDstPosition = ptr_maxDstPosition.pointee
                                        cStruct.minDstExtent = ptr_minDstExtent.pointee
                                        cStruct.maxDstExtent = ptr_maxDstExtent.pointee
                                        return try body(&cStruct)
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

struct DisplaySurfaceCreateInfoKHR: CStructConvertible {
    typealias CStruct = VkDisplaySurfaceCreateInfoKHR

    let flags: DisplaySurfaceCreateFlagsKHR
    let displayMode: DisplayModeKHR
    let planeIndex: UInt32
    let planeStackIndex: UInt32
    let transform: SurfaceTransformFlagsKHR
    let globalAlpha: Float
    let alphaMode: DisplayPlaneAlphaFlagsKHR
    let imageExtent: Extent2D

    init(cStruct: VkDisplaySurfaceCreateInfoKHR) {
        fatalError("This initializer should be removed.")
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkDisplaySurfaceCreateInfoKHR>) throws -> R) rethrows -> R {
        try self.imageExtent.withCStruct { ptr_imageExtent in
            var cStruct = VkDisplaySurfaceCreateInfoKHR()
            cStruct.sType = VK_STRUCTURE_TYPE_DISPLAY_SURFACE_CREATE_INFO_KHR
            cStruct.pNext = nil
            cStruct.flags = self.flags.rawValue
            cStruct.displayMode = self.displayMode.handle
            cStruct.planeIndex = self.planeIndex
            cStruct.planeStackIndex = self.planeStackIndex
            cStruct.transform = VkSurfaceTransformFlagBitsKHR(rawValue: self.transform.rawValue)
            cStruct.globalAlpha = self.globalAlpha
            cStruct.alphaMode = VkDisplayPlaneAlphaFlagBitsKHR(rawValue: self.alphaMode.rawValue)
            cStruct.imageExtent = ptr_imageExtent.pointee
            return try body(&cStruct)
        }
    }
}

struct DisplayPresentInfoKHR: CStructConvertible {
    typealias CStruct = VkDisplayPresentInfoKHR

    let srcRect: Rect2D
    let dstRect: Rect2D
    let persistent: Bool

    init(cStruct: VkDisplayPresentInfoKHR) {
        self.srcRect = Rect2D(cStruct: cStruct.srcRect)
        self.dstRect = Rect2D(cStruct: cStruct.dstRect)
        self.persistent = cStruct.persistent == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkDisplayPresentInfoKHR>) throws -> R) rethrows -> R {
        try self.srcRect.withCStruct { ptr_srcRect in
            try self.dstRect.withCStruct { ptr_dstRect in
                var cStruct = VkDisplayPresentInfoKHR()
                cStruct.sType = VK_STRUCTURE_TYPE_DISPLAY_PRESENT_INFO_KHR
                cStruct.pNext = nil
                cStruct.srcRect = ptr_srcRect.pointee
                cStruct.dstRect = ptr_dstRect.pointee
                cStruct.persistent = VkBool32(self.persistent ? VK_TRUE : VK_FALSE)
                return try body(&cStruct)
            }
        }
    }
}

struct SurfaceCapabilitiesKHR: CStructConvertible {
    typealias CStruct = VkSurfaceCapabilitiesKHR

    let minImageCount: UInt32
    let maxImageCount: UInt32
    let currentExtent: Extent2D
    let minImageExtent: Extent2D
    let maxImageExtent: Extent2D
    let maxImageArrayLayers: UInt32
    let supportedTransforms: SurfaceTransformFlagsKHR
    let currentTransform: SurfaceTransformFlagsKHR
    let supportedCompositeAlpha: CompositeAlphaFlagsKHR
    let supportedUsageFlags: ImageUsageFlags

    init(cStruct: VkSurfaceCapabilitiesKHR) {
        self.minImageCount = cStruct.minImageCount
        self.maxImageCount = cStruct.maxImageCount
        self.currentExtent = Extent2D(cStruct: cStruct.currentExtent)
        self.minImageExtent = Extent2D(cStruct: cStruct.minImageExtent)
        self.maxImageExtent = Extent2D(cStruct: cStruct.maxImageExtent)
        self.maxImageArrayLayers = cStruct.maxImageArrayLayers
        self.supportedTransforms = SurfaceTransformFlagsKHR(rawValue: cStruct.supportedTransforms)
        self.currentTransform = SurfaceTransformFlagsKHR(rawValue: cStruct.currentTransform.rawValue)
        self.supportedCompositeAlpha = CompositeAlphaFlagsKHR(rawValue: cStruct.supportedCompositeAlpha)
        self.supportedUsageFlags = ImageUsageFlags(rawValue: cStruct.supportedUsageFlags)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkSurfaceCapabilitiesKHR>) throws -> R) rethrows -> R {
        try self.currentExtent.withCStruct { ptr_currentExtent in
            try self.minImageExtent.withCStruct { ptr_minImageExtent in
                try self.maxImageExtent.withCStruct { ptr_maxImageExtent in
                    var cStruct = VkSurfaceCapabilitiesKHR()
                    cStruct.minImageCount = self.minImageCount
                    cStruct.maxImageCount = self.maxImageCount
                    cStruct.currentExtent = ptr_currentExtent.pointee
                    cStruct.minImageExtent = ptr_minImageExtent.pointee
                    cStruct.maxImageExtent = ptr_maxImageExtent.pointee
                    cStruct.maxImageArrayLayers = self.maxImageArrayLayers
                    cStruct.supportedTransforms = self.supportedTransforms.rawValue
                    cStruct.currentTransform = VkSurfaceTransformFlagBitsKHR(rawValue: self.currentTransform.rawValue)
                    cStruct.supportedCompositeAlpha = self.supportedCompositeAlpha.rawValue
                    cStruct.supportedUsageFlags = self.supportedUsageFlags.rawValue
                    return try body(&cStruct)
                }
            }
        }
    }
}

struct SurfaceFormatKHR: CStructConvertible {
    typealias CStruct = VkSurfaceFormatKHR

    let format: Format
    let colorSpace: ColorSpaceKHR

    init(cStruct: VkSurfaceFormatKHR) {
        self.format = Format(rawValue: cStruct.format.rawValue)!
        self.colorSpace = ColorSpaceKHR(rawValue: cStruct.colorSpace.rawValue)!
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkSurfaceFormatKHR>) throws -> R) rethrows -> R {
        var cStruct = VkSurfaceFormatKHR()
        cStruct.format = VkFormat(rawValue: self.format.rawValue)
        cStruct.colorSpace = VkColorSpaceKHR(rawValue: self.colorSpace.rawValue)
        return try body(&cStruct)
    }
}

struct SwapchainCreateInfoKHR: CStructConvertible {
    typealias CStruct = VkSwapchainCreateInfoKHR

    let flags: SwapchainCreateFlagsKHR
    let surface: SurfaceKHR
    let minImageCount: UInt32
    let imageFormat: Format
    let imageColorSpace: ColorSpaceKHR
    let imageExtent: Extent2D
    let imageArrayLayers: UInt32
    let imageUsage: ImageUsageFlags
    let imageSharingMode: SharingMode
    let pQueueFamilyIndices: Array<UInt32>
    let preTransform: SurfaceTransformFlagsKHR
    let compositeAlpha: CompositeAlphaFlagsKHR
    let presentMode: PresentModeKHR
    let clipped: Bool
    let oldSwapchain: SwapchainKHR?

    init(cStruct: VkSwapchainCreateInfoKHR) {
        fatalError("This initializer should be removed.")
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkSwapchainCreateInfoKHR>) throws -> R) rethrows -> R {
        try self.imageExtent.withCStruct { ptr_imageExtent in
            try self.pQueueFamilyIndices.withUnsafeBufferPointer { ptr_pQueueFamilyIndices in
                var cStruct = VkSwapchainCreateInfoKHR()
                cStruct.sType = VK_STRUCTURE_TYPE_SWAPCHAIN_CREATE_INFO_KHR
                cStruct.pNext = nil
                cStruct.flags = self.flags.rawValue
                cStruct.surface = self.surface.handle
                cStruct.minImageCount = self.minImageCount
                cStruct.imageFormat = VkFormat(rawValue: self.imageFormat.rawValue)
                cStruct.imageColorSpace = VkColorSpaceKHR(rawValue: self.imageColorSpace.rawValue)
                cStruct.imageExtent = ptr_imageExtent.pointee
                cStruct.imageArrayLayers = self.imageArrayLayers
                cStruct.imageUsage = self.imageUsage.rawValue
                cStruct.imageSharingMode = VkSharingMode(rawValue: self.imageSharingMode.rawValue)
                cStruct.queueFamilyIndexCount = UInt32(ptr_pQueueFamilyIndices.count)
                cStruct.pQueueFamilyIndices = ptr_pQueueFamilyIndices.baseAddress
                cStruct.preTransform = VkSurfaceTransformFlagBitsKHR(rawValue: self.preTransform.rawValue)
                cStruct.compositeAlpha = VkCompositeAlphaFlagBitsKHR(rawValue: self.compositeAlpha.rawValue)
                cStruct.presentMode = VkPresentModeKHR(rawValue: self.presentMode.rawValue)
                cStruct.clipped = VkBool32(self.clipped ? VK_TRUE : VK_FALSE)
                cStruct.oldSwapchain = self.oldSwapchain?.handle
                return try body(&cStruct)
            }
        }
    }
}

struct PresentInfoKHR: CStructConvertible {
    typealias CStruct = VkPresentInfoKHR

    let pWaitSemaphores: Array<Semaphore>
    let pSwapchains: Array<SwapchainKHR>
    let pImageIndices: Array<UInt32>
    let pResults: UnsafeMutablePointer<VkResult>

    init(cStruct: VkPresentInfoKHR) {
        fatalError("This initializer should be removed.")
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPresentInfoKHR>) throws -> R) rethrows -> R {
        try self.pWaitSemaphores.map{ $0.handle }.withUnsafeBufferPointer { ptr_pWaitSemaphores in
            try self.pSwapchains.map{ $0.handle }.withUnsafeBufferPointer { ptr_pSwapchains in
                try self.pImageIndices.withUnsafeBufferPointer { ptr_pImageIndices in
                    var cStruct = VkPresentInfoKHR()
                    cStruct.sType = VK_STRUCTURE_TYPE_PRESENT_INFO_KHR
                    cStruct.pNext = nil
                    cStruct.waitSemaphoreCount = UInt32(ptr_pWaitSemaphores.count)
                    cStruct.pWaitSemaphores = ptr_pWaitSemaphores.baseAddress
                    cStruct.swapchainCount = UInt32(ptr_pSwapchains.count)
                    cStruct.pSwapchains = ptr_pSwapchains.baseAddress
                    cStruct.pImageIndices = ptr_pImageIndices.baseAddress
                    cStruct.pResults = self.pResults
                    return try body(&cStruct)
                }
            }
        }
    }
}

struct DebugReportCallbackCreateInfoEXT: CStructConvertible {
    typealias CStruct = VkDebugReportCallbackCreateInfoEXT

    let flags: DebugReportFlagsEXT
    let pfnCallback: PFN_vkDebugReportCallbackEXT
    let pUserData: UnsafeMutableRawPointer

    init(cStruct: VkDebugReportCallbackCreateInfoEXT) {
        self.flags = DebugReportFlagsEXT(rawValue: cStruct.flags)
        self.pfnCallback = cStruct.pfnCallback
        self.pUserData = cStruct.pUserData
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkDebugReportCallbackCreateInfoEXT>) throws -> R) rethrows -> R {
        var cStruct = VkDebugReportCallbackCreateInfoEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_DEBUG_REPORT_CALLBACK_CREATE_INFO_EXT
        cStruct.pNext = nil
        cStruct.flags = self.flags.rawValue
        cStruct.pfnCallback = self.pfnCallback
        cStruct.pUserData = self.pUserData
        return try body(&cStruct)
    }
}

struct ValidationFlagsEXT: CStructConvertible {
    typealias CStruct = VkValidationFlagsEXT

    let pDisabledValidationChecks: Array<ValidationCheckEXT>

    init(cStruct: VkValidationFlagsEXT) {
        self.pDisabledValidationChecks = UnsafeBufferPointer(start: cStruct.pDisabledValidationChecks, count: Int(cStruct.disabledValidationCheckCount)).map{ ValidationCheckEXT(rawValue: $0.rawValue)! }
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkValidationFlagsEXT>) throws -> R) rethrows -> R {
        try self.pDisabledValidationChecks.map{ VkValidationCheckEXT(rawValue: $0.rawValue) }.withUnsafeBufferPointer { ptr_pDisabledValidationChecks in
            var cStruct = VkValidationFlagsEXT()
            cStruct.sType = VK_STRUCTURE_TYPE_VALIDATION_FLAGS_EXT
            cStruct.pNext = nil
            cStruct.disabledValidationCheckCount = UInt32(ptr_pDisabledValidationChecks.count)
            cStruct.pDisabledValidationChecks = ptr_pDisabledValidationChecks.baseAddress
            return try body(&cStruct)
        }
    }
}

struct ValidationFeaturesEXT: CStructConvertible {
    typealias CStruct = VkValidationFeaturesEXT

    let pEnabledValidationFeatures: Array<ValidationFeatureEnableEXT>
    let pDisabledValidationFeatures: Array<ValidationFeatureDisableEXT>

    init(cStruct: VkValidationFeaturesEXT) {
        self.pEnabledValidationFeatures = UnsafeBufferPointer(start: cStruct.pEnabledValidationFeatures, count: Int(cStruct.enabledValidationFeatureCount)).map{ ValidationFeatureEnableEXT(rawValue: $0.rawValue)! }
        self.pDisabledValidationFeatures = UnsafeBufferPointer(start: cStruct.pDisabledValidationFeatures, count: Int(cStruct.disabledValidationFeatureCount)).map{ ValidationFeatureDisableEXT(rawValue: $0.rawValue)! }
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkValidationFeaturesEXT>) throws -> R) rethrows -> R {
        try self.pEnabledValidationFeatures.map{ VkValidationFeatureEnableEXT(rawValue: $0.rawValue) }.withUnsafeBufferPointer { ptr_pEnabledValidationFeatures in
            try self.pDisabledValidationFeatures.map{ VkValidationFeatureDisableEXT(rawValue: $0.rawValue) }.withUnsafeBufferPointer { ptr_pDisabledValidationFeatures in
                var cStruct = VkValidationFeaturesEXT()
                cStruct.sType = VK_STRUCTURE_TYPE_VALIDATION_FEATURES_EXT
                cStruct.pNext = nil
                cStruct.enabledValidationFeatureCount = UInt32(ptr_pEnabledValidationFeatures.count)
                cStruct.pEnabledValidationFeatures = ptr_pEnabledValidationFeatures.baseAddress
                cStruct.disabledValidationFeatureCount = UInt32(ptr_pDisabledValidationFeatures.count)
                cStruct.pDisabledValidationFeatures = ptr_pDisabledValidationFeatures.baseAddress
                return try body(&cStruct)
            }
        }
    }
}

struct PipelineRasterizationStateRasterizationOrderAMD: CStructConvertible {
    typealias CStruct = VkPipelineRasterizationStateRasterizationOrderAMD

    let rasterizationOrder: RasterizationOrderAMD

    init(cStruct: VkPipelineRasterizationStateRasterizationOrderAMD) {
        self.rasterizationOrder = RasterizationOrderAMD(rawValue: cStruct.rasterizationOrder.rawValue)!
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPipelineRasterizationStateRasterizationOrderAMD>) throws -> R) rethrows -> R {
        var cStruct = VkPipelineRasterizationStateRasterizationOrderAMD()
        cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_STATE_RASTERIZATION_ORDER_AMD
        cStruct.pNext = nil
        cStruct.rasterizationOrder = VkRasterizationOrderAMD(rawValue: self.rasterizationOrder.rawValue)
        return try body(&cStruct)
    }
}

struct DebugMarkerObjectNameInfoEXT: CStructConvertible {
    typealias CStruct = VkDebugMarkerObjectNameInfoEXT

    let objectType: DebugReportObjectTypeEXT
    let object: UInt64
    let pObjectName: String

    init(cStruct: VkDebugMarkerObjectNameInfoEXT) {
        self.objectType = DebugReportObjectTypeEXT(rawValue: cStruct.objectType.rawValue)!
        self.object = cStruct.object
        self.pObjectName = String(cString: cStruct.pObjectName)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkDebugMarkerObjectNameInfoEXT>) throws -> R) rethrows -> R {
        try self.pObjectName.withCString { cString_pObjectName in
            var cStruct = VkDebugMarkerObjectNameInfoEXT()
            cStruct.sType = VK_STRUCTURE_TYPE_DEBUG_MARKER_OBJECT_NAME_INFO_EXT
            cStruct.pNext = nil
            cStruct.objectType = VkDebugReportObjectTypeEXT(rawValue: self.objectType.rawValue)
            cStruct.object = self.object
            cStruct.pObjectName = cString_pObjectName
            return try body(&cStruct)
        }
    }
}

struct DebugMarkerObjectTagInfoEXT: CStructConvertible {
    typealias CStruct = VkDebugMarkerObjectTagInfoEXT

    let objectType: DebugReportObjectTypeEXT
    let object: UInt64
    let tagName: UInt64
    let tagSize: Int
    let pTag: UnsafeRawPointer

    init(cStruct: VkDebugMarkerObjectTagInfoEXT) {
        self.objectType = DebugReportObjectTypeEXT(rawValue: cStruct.objectType.rawValue)!
        self.object = cStruct.object
        self.tagName = cStruct.tagName
        self.tagSize = cStruct.tagSize
        self.pTag = cStruct.pTag
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkDebugMarkerObjectTagInfoEXT>) throws -> R) rethrows -> R {
        var cStruct = VkDebugMarkerObjectTagInfoEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_DEBUG_MARKER_OBJECT_TAG_INFO_EXT
        cStruct.pNext = nil
        cStruct.objectType = VkDebugReportObjectTypeEXT(rawValue: self.objectType.rawValue)
        cStruct.object = self.object
        cStruct.tagName = self.tagName
        cStruct.tagSize = self.tagSize
        cStruct.pTag = self.pTag
        return try body(&cStruct)
    }
}

struct DebugMarkerMarkerInfoEXT: CStructConvertible {
    typealias CStruct = VkDebugMarkerMarkerInfoEXT

    let pMarkerName: String
    let color: (Float, Float, Float, Float)

    init(cStruct: VkDebugMarkerMarkerInfoEXT) {
        self.pMarkerName = String(cString: cStruct.pMarkerName)
        self.color = cStruct.color
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkDebugMarkerMarkerInfoEXT>) throws -> R) rethrows -> R {
        try self.pMarkerName.withCString { cString_pMarkerName in
            var cStruct = VkDebugMarkerMarkerInfoEXT()
            cStruct.sType = VK_STRUCTURE_TYPE_DEBUG_MARKER_MARKER_INFO_EXT
            cStruct.pNext = nil
            cStruct.pMarkerName = cString_pMarkerName
            cStruct.color = self.color
            return try body(&cStruct)
        }
    }
}

struct DedicatedAllocationImageCreateInfoNV: CStructConvertible {
    typealias CStruct = VkDedicatedAllocationImageCreateInfoNV

    let dedicatedAllocation: Bool

    init(cStruct: VkDedicatedAllocationImageCreateInfoNV) {
        self.dedicatedAllocation = cStruct.dedicatedAllocation == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkDedicatedAllocationImageCreateInfoNV>) throws -> R) rethrows -> R {
        var cStruct = VkDedicatedAllocationImageCreateInfoNV()
        cStruct.sType = VK_STRUCTURE_TYPE_DEDICATED_ALLOCATION_IMAGE_CREATE_INFO_NV
        cStruct.pNext = nil
        cStruct.dedicatedAllocation = VkBool32(self.dedicatedAllocation ? VK_TRUE : VK_FALSE)
        return try body(&cStruct)
    }
}

struct DedicatedAllocationBufferCreateInfoNV: CStructConvertible {
    typealias CStruct = VkDedicatedAllocationBufferCreateInfoNV

    let dedicatedAllocation: Bool

    init(cStruct: VkDedicatedAllocationBufferCreateInfoNV) {
        self.dedicatedAllocation = cStruct.dedicatedAllocation == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkDedicatedAllocationBufferCreateInfoNV>) throws -> R) rethrows -> R {
        var cStruct = VkDedicatedAllocationBufferCreateInfoNV()
        cStruct.sType = VK_STRUCTURE_TYPE_DEDICATED_ALLOCATION_BUFFER_CREATE_INFO_NV
        cStruct.pNext = nil
        cStruct.dedicatedAllocation = VkBool32(self.dedicatedAllocation ? VK_TRUE : VK_FALSE)
        return try body(&cStruct)
    }
}

struct DedicatedAllocationMemoryAllocateInfoNV: CStructConvertible {
    typealias CStruct = VkDedicatedAllocationMemoryAllocateInfoNV

    let image: Image?
    let buffer: Buffer?

    init(cStruct: VkDedicatedAllocationMemoryAllocateInfoNV) {
        fatalError("This initializer should be removed.")
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkDedicatedAllocationMemoryAllocateInfoNV>) throws -> R) rethrows -> R {
        var cStruct = VkDedicatedAllocationMemoryAllocateInfoNV()
        cStruct.sType = VK_STRUCTURE_TYPE_DEDICATED_ALLOCATION_MEMORY_ALLOCATE_INFO_NV
        cStruct.pNext = nil
        cStruct.image = self.image?.handle
        cStruct.buffer = self.buffer?.handle
        return try body(&cStruct)
    }
}

struct ExternalImageFormatPropertiesNV: CStructConvertible {
    typealias CStruct = VkExternalImageFormatPropertiesNV

    let imageFormatProperties: ImageFormatProperties
    let externalMemoryFeatures: ExternalMemoryFeatureFlagsNV
    let exportFromImportedHandleTypes: ExternalMemoryHandleTypeFlagsNV
    let compatibleHandleTypes: ExternalMemoryHandleTypeFlagsNV

    init(cStruct: VkExternalImageFormatPropertiesNV) {
        self.imageFormatProperties = ImageFormatProperties(cStruct: cStruct.imageFormatProperties)
        self.externalMemoryFeatures = ExternalMemoryFeatureFlagsNV(rawValue: cStruct.externalMemoryFeatures)
        self.exportFromImportedHandleTypes = ExternalMemoryHandleTypeFlagsNV(rawValue: cStruct.exportFromImportedHandleTypes)
        self.compatibleHandleTypes = ExternalMemoryHandleTypeFlagsNV(rawValue: cStruct.compatibleHandleTypes)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkExternalImageFormatPropertiesNV>) throws -> R) rethrows -> R {
        try self.imageFormatProperties.withCStruct { ptr_imageFormatProperties in
            var cStruct = VkExternalImageFormatPropertiesNV()
            cStruct.imageFormatProperties = ptr_imageFormatProperties.pointee
            cStruct.externalMemoryFeatures = self.externalMemoryFeatures.rawValue
            cStruct.exportFromImportedHandleTypes = self.exportFromImportedHandleTypes.rawValue
            cStruct.compatibleHandleTypes = self.compatibleHandleTypes.rawValue
            return try body(&cStruct)
        }
    }
}

struct ExternalMemoryImageCreateInfoNV: CStructConvertible {
    typealias CStruct = VkExternalMemoryImageCreateInfoNV

    let handleTypes: ExternalMemoryHandleTypeFlagsNV

    init(cStruct: VkExternalMemoryImageCreateInfoNV) {
        self.handleTypes = ExternalMemoryHandleTypeFlagsNV(rawValue: cStruct.handleTypes)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkExternalMemoryImageCreateInfoNV>) throws -> R) rethrows -> R {
        var cStruct = VkExternalMemoryImageCreateInfoNV()
        cStruct.sType = VK_STRUCTURE_TYPE_EXTERNAL_MEMORY_IMAGE_CREATE_INFO_NV
        cStruct.pNext = nil
        cStruct.handleTypes = self.handleTypes.rawValue
        return try body(&cStruct)
    }
}

struct ExportMemoryAllocateInfoNV: CStructConvertible {
    typealias CStruct = VkExportMemoryAllocateInfoNV

    let handleTypes: ExternalMemoryHandleTypeFlagsNV

    init(cStruct: VkExportMemoryAllocateInfoNV) {
        self.handleTypes = ExternalMemoryHandleTypeFlagsNV(rawValue: cStruct.handleTypes)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkExportMemoryAllocateInfoNV>) throws -> R) rethrows -> R {
        var cStruct = VkExportMemoryAllocateInfoNV()
        cStruct.sType = VK_STRUCTURE_TYPE_EXPORT_MEMORY_ALLOCATE_INFO_NV
        cStruct.pNext = nil
        cStruct.handleTypes = self.handleTypes.rawValue
        return try body(&cStruct)
    }
}

struct PhysicalDeviceDeviceGeneratedCommandsFeaturesNV: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceDeviceGeneratedCommandsFeaturesNV

    let deviceGeneratedCommands: Bool

    init(cStruct: VkPhysicalDeviceDeviceGeneratedCommandsFeaturesNV) {
        self.deviceGeneratedCommands = cStruct.deviceGeneratedCommands == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceDeviceGeneratedCommandsFeaturesNV>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceDeviceGeneratedCommandsFeaturesNV()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DEVICE_GENERATED_COMMANDS_FEATURES_NV
        cStruct.pNext = nil
        cStruct.deviceGeneratedCommands = VkBool32(self.deviceGeneratedCommands ? VK_TRUE : VK_FALSE)
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

    init(cStruct: VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV) {
        self.maxGraphicsShaderGroupCount = cStruct.maxGraphicsShaderGroupCount
        self.maxIndirectSequenceCount = cStruct.maxIndirectSequenceCount
        self.maxIndirectCommandsTokenCount = cStruct.maxIndirectCommandsTokenCount
        self.maxIndirectCommandsStreamCount = cStruct.maxIndirectCommandsStreamCount
        self.maxIndirectCommandsTokenOffset = cStruct.maxIndirectCommandsTokenOffset
        self.maxIndirectCommandsStreamStride = cStruct.maxIndirectCommandsStreamStride
        self.minSequencesCountBufferOffsetAlignment = cStruct.minSequencesCountBufferOffsetAlignment
        self.minSequencesIndexBufferOffsetAlignment = cStruct.minSequencesIndexBufferOffsetAlignment
        self.minIndirectCommandsBufferOffsetAlignment = cStruct.minIndirectCommandsBufferOffsetAlignment
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV>) throws -> R) rethrows -> R {
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

    let pStages: Array<PipelineShaderStageCreateInfo>
    let pVertexInputState: PipelineVertexInputStateCreateInfo?
    let pTessellationState: PipelineTessellationStateCreateInfo?

    init(cStruct: VkGraphicsShaderGroupCreateInfoNV) {
        self.pStages = UnsafeBufferPointer(start: cStruct.pStages, count: Int(cStruct.stageCount)).map{ PipelineShaderStageCreateInfo(cStruct: $0) }
        self.pVertexInputState = (cStruct.pVertexInputState != nil) ? PipelineVertexInputStateCreateInfo(cStruct: cStruct.pVertexInputState.pointee) : nil
        self.pTessellationState = (cStruct.pTessellationState != nil) ? PipelineTessellationStateCreateInfo(cStruct: cStruct.pTessellationState.pointee) : nil
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkGraphicsShaderGroupCreateInfoNV>) throws -> R) rethrows -> R {
        try self.pStages.withCStructBufferPointer { ptr_pStages in
            try self.pVertexInputState.withOptionalCStruct { ptr_pVertexInputState in
                try self.pTessellationState.withOptionalCStruct { ptr_pTessellationState in
                    var cStruct = VkGraphicsShaderGroupCreateInfoNV()
                    cStruct.sType = VK_STRUCTURE_TYPE_GRAPHICS_SHADER_GROUP_CREATE_INFO_NV
                    cStruct.pNext = nil
                    cStruct.stageCount = UInt32(ptr_pStages.count)
                    cStruct.pStages = ptr_pStages.baseAddress
                    cStruct.pVertexInputState = ptr_pVertexInputState
                    cStruct.pTessellationState = ptr_pTessellationState
                    return try body(&cStruct)
                }
            }
        }
    }
}

struct GraphicsPipelineShaderGroupsCreateInfoNV: CStructConvertible {
    typealias CStruct = VkGraphicsPipelineShaderGroupsCreateInfoNV

    let pGroups: Array<GraphicsShaderGroupCreateInfoNV>
    let pPipelines: Array<Pipeline>

    init(cStruct: VkGraphicsPipelineShaderGroupsCreateInfoNV) {
        fatalError("This initializer should be removed.")
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkGraphicsPipelineShaderGroupsCreateInfoNV>) throws -> R) rethrows -> R {
        try self.pGroups.withCStructBufferPointer { ptr_pGroups in
            try self.pPipelines.map{ $0.handle }.withUnsafeBufferPointer { ptr_pPipelines in
                var cStruct = VkGraphicsPipelineShaderGroupsCreateInfoNV()
                cStruct.sType = VK_STRUCTURE_TYPE_GRAPHICS_PIPELINE_SHADER_GROUPS_CREATE_INFO_NV
                cStruct.pNext = nil
                cStruct.groupCount = UInt32(ptr_pGroups.count)
                cStruct.pGroups = ptr_pGroups.baseAddress
                cStruct.pipelineCount = UInt32(ptr_pPipelines.count)
                cStruct.pPipelines = ptr_pPipelines.baseAddress
                return try body(&cStruct)
            }
        }
    }
}

struct BindShaderGroupIndirectCommandNV: CStructConvertible {
    typealias CStruct = VkBindShaderGroupIndirectCommandNV

    let groupIndex: UInt32

    init(cStruct: VkBindShaderGroupIndirectCommandNV) {
        self.groupIndex = cStruct.groupIndex
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkBindShaderGroupIndirectCommandNV>) throws -> R) rethrows -> R {
        var cStruct = VkBindShaderGroupIndirectCommandNV()
        cStruct.groupIndex = self.groupIndex
        return try body(&cStruct)
    }
}

struct BindIndexBufferIndirectCommandNV: CStructConvertible {
    typealias CStruct = VkBindIndexBufferIndirectCommandNV

    let bufferAddress: VkDeviceAddress
    let size: UInt32
    let indexType: IndexType

    init(cStruct: VkBindIndexBufferIndirectCommandNV) {
        self.bufferAddress = cStruct.bufferAddress
        self.size = cStruct.size
        self.indexType = IndexType(rawValue: cStruct.indexType.rawValue)!
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkBindIndexBufferIndirectCommandNV>) throws -> R) rethrows -> R {
        var cStruct = VkBindIndexBufferIndirectCommandNV()
        cStruct.bufferAddress = self.bufferAddress
        cStruct.size = self.size
        cStruct.indexType = VkIndexType(rawValue: self.indexType.rawValue)
        return try body(&cStruct)
    }
}

struct BindVertexBufferIndirectCommandNV: CStructConvertible {
    typealias CStruct = VkBindVertexBufferIndirectCommandNV

    let bufferAddress: VkDeviceAddress
    let size: UInt32
    let stride: UInt32

    init(cStruct: VkBindVertexBufferIndirectCommandNV) {
        self.bufferAddress = cStruct.bufferAddress
        self.size = cStruct.size
        self.stride = cStruct.stride
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkBindVertexBufferIndirectCommandNV>) throws -> R) rethrows -> R {
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

    init(cStruct: VkSetStateFlagsIndirectCommandNV) {
        self.data = cStruct.data
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkSetStateFlagsIndirectCommandNV>) throws -> R) rethrows -> R {
        var cStruct = VkSetStateFlagsIndirectCommandNV()
        cStruct.data = self.data
        return try body(&cStruct)
    }
}

struct IndirectCommandsStreamNV: CStructConvertible {
    typealias CStruct = VkIndirectCommandsStreamNV

    let buffer: Buffer
    let offset: VkDeviceSize

    init(cStruct: VkIndirectCommandsStreamNV) {
        fatalError("This initializer should be removed.")
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkIndirectCommandsStreamNV>) throws -> R) rethrows -> R {
        var cStruct = VkIndirectCommandsStreamNV()
        cStruct.buffer = self.buffer.handle
        cStruct.offset = self.offset
        return try body(&cStruct)
    }
}

struct IndirectCommandsLayoutTokenNV: CStructConvertible {
    typealias CStruct = VkIndirectCommandsLayoutTokenNV

    let tokenType: IndirectCommandsTokenTypeNV
    let stream: UInt32
    let offset: UInt32
    let vertexBindingUnit: UInt32
    let vertexDynamicStride: Bool
    let pushconstantPipelineLayout: PipelineLayout?
    let pushconstantShaderStageFlags: ShaderStageFlags
    let pushconstantOffset: UInt32
    let pushconstantSize: UInt32
    let indirectStateFlags: IndirectStateFlagsNV
    let pIndexTypes: Array<IndexType>
    let pIndexTypeValues: Array<UInt32>

    init(cStruct: VkIndirectCommandsLayoutTokenNV) {
        fatalError("This initializer should be removed.")
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkIndirectCommandsLayoutTokenNV>) throws -> R) rethrows -> R {
        try self.pIndexTypes.map{ VkIndexType(rawValue: $0.rawValue) }.withUnsafeBufferPointer { ptr_pIndexTypes in
            try self.pIndexTypeValues.withUnsafeBufferPointer { ptr_pIndexTypeValues in
                var cStruct = VkIndirectCommandsLayoutTokenNV()
                cStruct.sType = VK_STRUCTURE_TYPE_INDIRECT_COMMANDS_LAYOUT_TOKEN_NV
                cStruct.pNext = nil
                cStruct.tokenType = VkIndirectCommandsTokenTypeNV(rawValue: self.tokenType.rawValue)
                cStruct.stream = self.stream
                cStruct.offset = self.offset
                cStruct.vertexBindingUnit = self.vertexBindingUnit
                cStruct.vertexDynamicStride = VkBool32(self.vertexDynamicStride ? VK_TRUE : VK_FALSE)
                cStruct.pushconstantPipelineLayout = self.pushconstantPipelineLayout?.handle
                cStruct.pushconstantShaderStageFlags = self.pushconstantShaderStageFlags.rawValue
                cStruct.pushconstantOffset = self.pushconstantOffset
                cStruct.pushconstantSize = self.pushconstantSize
                cStruct.indirectStateFlags = self.indirectStateFlags.rawValue
                cStruct.indexTypeCount = UInt32(ptr_pIndexTypes.count)
                cStruct.pIndexTypes = ptr_pIndexTypes.baseAddress
                cStruct.pIndexTypeValues = ptr_pIndexTypeValues.baseAddress
                return try body(&cStruct)
            }
        }
    }
}

struct IndirectCommandsLayoutCreateInfoNV: CStructConvertible {
    typealias CStruct = VkIndirectCommandsLayoutCreateInfoNV

    let flags: IndirectCommandsLayoutUsageFlagsNV
    let pipelineBindPoint: PipelineBindPoint
    let pTokens: Array<IndirectCommandsLayoutTokenNV>
    let pStreamStrides: Array<UInt32>

    init(cStruct: VkIndirectCommandsLayoutCreateInfoNV) {
        self.flags = IndirectCommandsLayoutUsageFlagsNV(rawValue: cStruct.flags)
        self.pipelineBindPoint = PipelineBindPoint(rawValue: cStruct.pipelineBindPoint.rawValue)!
        self.pTokens = UnsafeBufferPointer(start: cStruct.pTokens, count: Int(cStruct.tokenCount)).map{ IndirectCommandsLayoutTokenNV(cStruct: $0) }
        self.pStreamStrides = Array(UnsafeBufferPointer(start: cStruct.pStreamStrides, count: Int(cStruct.streamCount)))
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkIndirectCommandsLayoutCreateInfoNV>) throws -> R) rethrows -> R {
        try self.pTokens.withCStructBufferPointer { ptr_pTokens in
            try self.pStreamStrides.withUnsafeBufferPointer { ptr_pStreamStrides in
                var cStruct = VkIndirectCommandsLayoutCreateInfoNV()
                cStruct.sType = VK_STRUCTURE_TYPE_INDIRECT_COMMANDS_LAYOUT_CREATE_INFO_NV
                cStruct.pNext = nil
                cStruct.flags = self.flags.rawValue
                cStruct.pipelineBindPoint = VkPipelineBindPoint(rawValue: self.pipelineBindPoint.rawValue)
                cStruct.tokenCount = UInt32(ptr_pTokens.count)
                cStruct.pTokens = ptr_pTokens.baseAddress
                cStruct.streamCount = UInt32(ptr_pStreamStrides.count)
                cStruct.pStreamStrides = ptr_pStreamStrides.baseAddress
                return try body(&cStruct)
            }
        }
    }
}

struct GeneratedCommandsInfoNV: CStructConvertible {
    typealias CStruct = VkGeneratedCommandsInfoNV

    let pipelineBindPoint: PipelineBindPoint
    let pipeline: Pipeline
    let indirectCommandsLayout: IndirectCommandsLayoutNV
    let pStreams: Array<IndirectCommandsStreamNV>
    let sequencesCount: UInt32
    let preprocessBuffer: Buffer
    let preprocessOffset: VkDeviceSize
    let preprocessSize: VkDeviceSize
    let sequencesCountBuffer: Buffer?
    let sequencesCountOffset: VkDeviceSize
    let sequencesIndexBuffer: Buffer?
    let sequencesIndexOffset: VkDeviceSize

    init(cStruct: VkGeneratedCommandsInfoNV) {
        fatalError("This initializer should be removed.")
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkGeneratedCommandsInfoNV>) throws -> R) rethrows -> R {
        try self.pStreams.withCStructBufferPointer { ptr_pStreams in
            var cStruct = VkGeneratedCommandsInfoNV()
            cStruct.sType = VK_STRUCTURE_TYPE_GENERATED_COMMANDS_INFO_NV
            cStruct.pNext = nil
            cStruct.pipelineBindPoint = VkPipelineBindPoint(rawValue: self.pipelineBindPoint.rawValue)
            cStruct.pipeline = self.pipeline.handle
            cStruct.indirectCommandsLayout = self.indirectCommandsLayout.handle
            cStruct.streamCount = UInt32(ptr_pStreams.count)
            cStruct.pStreams = ptr_pStreams.baseAddress
            cStruct.sequencesCount = self.sequencesCount
            cStruct.preprocessBuffer = self.preprocessBuffer.handle
            cStruct.preprocessOffset = self.preprocessOffset
            cStruct.preprocessSize = self.preprocessSize
            cStruct.sequencesCountBuffer = self.sequencesCountBuffer?.handle
            cStruct.sequencesCountOffset = self.sequencesCountOffset
            cStruct.sequencesIndexBuffer = self.sequencesIndexBuffer?.handle
            cStruct.sequencesIndexOffset = self.sequencesIndexOffset
            return try body(&cStruct)
        }
    }
}

struct GeneratedCommandsMemoryRequirementsInfoNV: CStructConvertible {
    typealias CStruct = VkGeneratedCommandsMemoryRequirementsInfoNV

    let pipelineBindPoint: PipelineBindPoint
    let pipeline: Pipeline
    let indirectCommandsLayout: IndirectCommandsLayoutNV
    let maxSequencesCount: UInt32

    init(cStruct: VkGeneratedCommandsMemoryRequirementsInfoNV) {
        fatalError("This initializer should be removed.")
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkGeneratedCommandsMemoryRequirementsInfoNV>) throws -> R) rethrows -> R {
        var cStruct = VkGeneratedCommandsMemoryRequirementsInfoNV()
        cStruct.sType = VK_STRUCTURE_TYPE_GENERATED_COMMANDS_MEMORY_REQUIREMENTS_INFO_NV
        cStruct.pNext = nil
        cStruct.pipelineBindPoint = VkPipelineBindPoint(rawValue: self.pipelineBindPoint.rawValue)
        cStruct.pipeline = self.pipeline.handle
        cStruct.indirectCommandsLayout = self.indirectCommandsLayout.handle
        cStruct.maxSequencesCount = self.maxSequencesCount
        return try body(&cStruct)
    }
}

struct PhysicalDeviceFeatures2: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceFeatures2

    let features: PhysicalDeviceFeatures

    init(cStruct: VkPhysicalDeviceFeatures2) {
        self.features = PhysicalDeviceFeatures(cStruct: cStruct.features)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceFeatures2>) throws -> R) rethrows -> R {
        try self.features.withCStruct { ptr_features in
            var cStruct = VkPhysicalDeviceFeatures2()
            cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FEATURES_2
            cStruct.pNext = nil
            cStruct.features = ptr_features.pointee
            return try body(&cStruct)
        }
    }
}

struct PhysicalDeviceProperties2: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceProperties2

    let properties: PhysicalDeviceProperties

    init(cStruct: VkPhysicalDeviceProperties2) {
        self.properties = PhysicalDeviceProperties(cStruct: cStruct.properties)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceProperties2>) throws -> R) rethrows -> R {
        try self.properties.withCStruct { ptr_properties in
            var cStruct = VkPhysicalDeviceProperties2()
            cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PROPERTIES_2
            cStruct.pNext = nil
            cStruct.properties = ptr_properties.pointee
            return try body(&cStruct)
        }
    }
}

struct FormatProperties2: CStructConvertible {
    typealias CStruct = VkFormatProperties2

    let formatProperties: FormatProperties

    init(cStruct: VkFormatProperties2) {
        self.formatProperties = FormatProperties(cStruct: cStruct.formatProperties)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkFormatProperties2>) throws -> R) rethrows -> R {
        try self.formatProperties.withCStruct { ptr_formatProperties in
            var cStruct = VkFormatProperties2()
            cStruct.sType = VK_STRUCTURE_TYPE_FORMAT_PROPERTIES_2
            cStruct.pNext = nil
            cStruct.formatProperties = ptr_formatProperties.pointee
            return try body(&cStruct)
        }
    }
}

struct ImageFormatProperties2: CStructConvertible {
    typealias CStruct = VkImageFormatProperties2

    let imageFormatProperties: ImageFormatProperties

    init(cStruct: VkImageFormatProperties2) {
        self.imageFormatProperties = ImageFormatProperties(cStruct: cStruct.imageFormatProperties)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkImageFormatProperties2>) throws -> R) rethrows -> R {
        try self.imageFormatProperties.withCStruct { ptr_imageFormatProperties in
            var cStruct = VkImageFormatProperties2()
            cStruct.sType = VK_STRUCTURE_TYPE_IMAGE_FORMAT_PROPERTIES_2
            cStruct.pNext = nil
            cStruct.imageFormatProperties = ptr_imageFormatProperties.pointee
            return try body(&cStruct)
        }
    }
}

struct PhysicalDeviceImageFormatInfo2: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceImageFormatInfo2

    let format: Format
    let type: ImageType
    let tiling: ImageTiling
    let usage: ImageUsageFlags
    let flags: ImageCreateFlags

    init(cStruct: VkPhysicalDeviceImageFormatInfo2) {
        self.format = Format(rawValue: cStruct.format.rawValue)!
        self.type = ImageType(rawValue: cStruct.type.rawValue)!
        self.tiling = ImageTiling(rawValue: cStruct.tiling.rawValue)!
        self.usage = ImageUsageFlags(rawValue: cStruct.usage)
        self.flags = ImageCreateFlags(rawValue: cStruct.flags)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceImageFormatInfo2>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceImageFormatInfo2()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_FORMAT_INFO_2
        cStruct.pNext = nil
        cStruct.format = VkFormat(rawValue: self.format.rawValue)
        cStruct.type = VkImageType(rawValue: self.type.rawValue)
        cStruct.tiling = VkImageTiling(rawValue: self.tiling.rawValue)
        cStruct.usage = self.usage.rawValue
        cStruct.flags = self.flags.rawValue
        return try body(&cStruct)
    }
}

struct QueueFamilyProperties2: CStructConvertible {
    typealias CStruct = VkQueueFamilyProperties2

    let queueFamilyProperties: QueueFamilyProperties

    init(cStruct: VkQueueFamilyProperties2) {
        self.queueFamilyProperties = QueueFamilyProperties(cStruct: cStruct.queueFamilyProperties)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkQueueFamilyProperties2>) throws -> R) rethrows -> R {
        try self.queueFamilyProperties.withCStruct { ptr_queueFamilyProperties in
            var cStruct = VkQueueFamilyProperties2()
            cStruct.sType = VK_STRUCTURE_TYPE_QUEUE_FAMILY_PROPERTIES_2
            cStruct.pNext = nil
            cStruct.queueFamilyProperties = ptr_queueFamilyProperties.pointee
            return try body(&cStruct)
        }
    }
}

struct PhysicalDeviceMemoryProperties2: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceMemoryProperties2

    let memoryProperties: PhysicalDeviceMemoryProperties

    init(cStruct: VkPhysicalDeviceMemoryProperties2) {
        self.memoryProperties = PhysicalDeviceMemoryProperties(cStruct: cStruct.memoryProperties)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceMemoryProperties2>) throws -> R) rethrows -> R {
        try self.memoryProperties.withCStruct { ptr_memoryProperties in
            var cStruct = VkPhysicalDeviceMemoryProperties2()
            cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MEMORY_PROPERTIES_2
            cStruct.pNext = nil
            cStruct.memoryProperties = ptr_memoryProperties.pointee
            return try body(&cStruct)
        }
    }
}

struct SparseImageFormatProperties2: CStructConvertible {
    typealias CStruct = VkSparseImageFormatProperties2

    let properties: SparseImageFormatProperties

    init(cStruct: VkSparseImageFormatProperties2) {
        self.properties = SparseImageFormatProperties(cStruct: cStruct.properties)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkSparseImageFormatProperties2>) throws -> R) rethrows -> R {
        try self.properties.withCStruct { ptr_properties in
            var cStruct = VkSparseImageFormatProperties2()
            cStruct.sType = VK_STRUCTURE_TYPE_SPARSE_IMAGE_FORMAT_PROPERTIES_2
            cStruct.pNext = nil
            cStruct.properties = ptr_properties.pointee
            return try body(&cStruct)
        }
    }
}

struct PhysicalDeviceSparseImageFormatInfo2: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceSparseImageFormatInfo2

    let format: Format
    let type: ImageType
    let samples: SampleCountFlags
    let usage: ImageUsageFlags
    let tiling: ImageTiling

    init(cStruct: VkPhysicalDeviceSparseImageFormatInfo2) {
        self.format = Format(rawValue: cStruct.format.rawValue)!
        self.type = ImageType(rawValue: cStruct.type.rawValue)!
        self.samples = SampleCountFlags(rawValue: cStruct.samples.rawValue)
        self.usage = ImageUsageFlags(rawValue: cStruct.usage)
        self.tiling = ImageTiling(rawValue: cStruct.tiling.rawValue)!
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceSparseImageFormatInfo2>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceSparseImageFormatInfo2()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SPARSE_IMAGE_FORMAT_INFO_2
        cStruct.pNext = nil
        cStruct.format = VkFormat(rawValue: self.format.rawValue)
        cStruct.type = VkImageType(rawValue: self.type.rawValue)
        cStruct.samples = VkSampleCountFlagBits(rawValue: self.samples.rawValue)
        cStruct.usage = self.usage.rawValue
        cStruct.tiling = VkImageTiling(rawValue: self.tiling.rawValue)
        return try body(&cStruct)
    }
}

struct PhysicalDevicePushDescriptorPropertiesKHR: CStructConvertible {
    typealias CStruct = VkPhysicalDevicePushDescriptorPropertiesKHR

    let maxPushDescriptors: UInt32

    init(cStruct: VkPhysicalDevicePushDescriptorPropertiesKHR) {
        self.maxPushDescriptors = cStruct.maxPushDescriptors
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDevicePushDescriptorPropertiesKHR>) throws -> R) rethrows -> R {
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

    init(cStruct: VkConformanceVersion) {
        self.major = cStruct.major
        self.minor = cStruct.minor
        self.subminor = cStruct.subminor
        self.patch = cStruct.patch
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkConformanceVersion>) throws -> R) rethrows -> R {
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

    let driverID: DriverId
    let driverName: String
    let driverInfo: String
    let conformanceVersion: ConformanceVersion

    init(cStruct: VkPhysicalDeviceDriverProperties) {
        self.driverID = DriverId(rawValue: cStruct.driverID.rawValue)!
        self.driverName = String(unsafeBytesOf: cStruct.driverName)
        self.driverInfo = String(unsafeBytesOf: cStruct.driverInfo)
        self.conformanceVersion = ConformanceVersion(cStruct: cStruct.conformanceVersion)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceDriverProperties>) throws -> R) rethrows -> R {
        try self.conformanceVersion.withCStruct { ptr_conformanceVersion in
            var cStruct = VkPhysicalDeviceDriverProperties()
            cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DRIVER_PROPERTIES
            cStruct.pNext = nil
            cStruct.driverID = VkDriverId(rawValue: self.driverID.rawValue)
            cStruct.driverName = self.driverName.unsafeBytesCopy()
            cStruct.driverInfo = self.driverInfo.unsafeBytesCopy()
            cStruct.conformanceVersion = ptr_conformanceVersion.pointee
            return try body(&cStruct)
        }
    }
}

struct PresentRegionsKHR: CStructConvertible {
    typealias CStruct = VkPresentRegionsKHR

    let pRegions: Array<PresentRegionKHR>?

    init(cStruct: VkPresentRegionsKHR) {
        self.pRegions = (cStruct.pRegions != nil) ? UnsafeBufferPointer(start: cStruct.pRegions, count: Int(cStruct.swapchainCount)).map{ PresentRegionKHR(cStruct: $0) } : nil
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPresentRegionsKHR>) throws -> R) rethrows -> R {
        try self.pRegions.withOptionalCStructBufferPointer { ptr_pRegions in
            var cStruct = VkPresentRegionsKHR()
            cStruct.sType = VK_STRUCTURE_TYPE_PRESENT_REGIONS_KHR
            cStruct.pNext = nil
            cStruct.swapchainCount = UInt32(ptr_pRegions.count)
            cStruct.pRegions = ptr_pRegions.baseAddress
            return try body(&cStruct)
        }
    }
}

struct PresentRegionKHR: CStructConvertible {
    typealias CStruct = VkPresentRegionKHR

    let pRectangles: Array<RectLayerKHR>?

    init(cStruct: VkPresentRegionKHR) {
        self.pRectangles = (cStruct.pRectangles != nil) ? UnsafeBufferPointer(start: cStruct.pRectangles, count: Int(cStruct.rectangleCount)).map{ RectLayerKHR(cStruct: $0) } : nil
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPresentRegionKHR>) throws -> R) rethrows -> R {
        try self.pRectangles.withOptionalCStructBufferPointer { ptr_pRectangles in
            var cStruct = VkPresentRegionKHR()
            cStruct.rectangleCount = UInt32(ptr_pRectangles.count)
            cStruct.pRectangles = ptr_pRectangles.baseAddress
            return try body(&cStruct)
        }
    }
}

struct RectLayerKHR: CStructConvertible {
    typealias CStruct = VkRectLayerKHR

    let offset: Offset2D
    let extent: Extent2D
    let layer: UInt32

    init(cStruct: VkRectLayerKHR) {
        self.offset = Offset2D(cStruct: cStruct.offset)
        self.extent = Extent2D(cStruct: cStruct.extent)
        self.layer = cStruct.layer
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkRectLayerKHR>) throws -> R) rethrows -> R {
        try self.offset.withCStruct { ptr_offset in
            try self.extent.withCStruct { ptr_extent in
                var cStruct = VkRectLayerKHR()
                cStruct.offset = ptr_offset.pointee
                cStruct.extent = ptr_extent.pointee
                cStruct.layer = self.layer
                return try body(&cStruct)
            }
        }
    }
}

struct PhysicalDeviceVariablePointersFeatures: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceVariablePointersFeatures

    let variablePointersStorageBuffer: Bool
    let variablePointers: Bool

    init(cStruct: VkPhysicalDeviceVariablePointersFeatures) {
        self.variablePointersStorageBuffer = cStruct.variablePointersStorageBuffer == VK_TRUE
        self.variablePointers = cStruct.variablePointers == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceVariablePointersFeatures>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceVariablePointersFeatures()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VARIABLE_POINTERS_FEATURES
        cStruct.pNext = nil
        cStruct.variablePointersStorageBuffer = VkBool32(self.variablePointersStorageBuffer ? VK_TRUE : VK_FALSE)
        cStruct.variablePointers = VkBool32(self.variablePointers ? VK_TRUE : VK_FALSE)
        return try body(&cStruct)
    }
}

struct ExternalMemoryProperties: CStructConvertible {
    typealias CStruct = VkExternalMemoryProperties

    let externalMemoryFeatures: ExternalMemoryFeatureFlags
    let exportFromImportedHandleTypes: ExternalMemoryHandleTypeFlags
    let compatibleHandleTypes: ExternalMemoryHandleTypeFlags

    init(cStruct: VkExternalMemoryProperties) {
        self.externalMemoryFeatures = ExternalMemoryFeatureFlags(rawValue: cStruct.externalMemoryFeatures)
        self.exportFromImportedHandleTypes = ExternalMemoryHandleTypeFlags(rawValue: cStruct.exportFromImportedHandleTypes)
        self.compatibleHandleTypes = ExternalMemoryHandleTypeFlags(rawValue: cStruct.compatibleHandleTypes)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkExternalMemoryProperties>) throws -> R) rethrows -> R {
        var cStruct = VkExternalMemoryProperties()
        cStruct.externalMemoryFeatures = self.externalMemoryFeatures.rawValue
        cStruct.exportFromImportedHandleTypes = self.exportFromImportedHandleTypes.rawValue
        cStruct.compatibleHandleTypes = self.compatibleHandleTypes.rawValue
        return try body(&cStruct)
    }
}

struct PhysicalDeviceExternalImageFormatInfo: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceExternalImageFormatInfo

    let handleType: ExternalMemoryHandleTypeFlags

    init(cStruct: VkPhysicalDeviceExternalImageFormatInfo) {
        self.handleType = ExternalMemoryHandleTypeFlags(rawValue: cStruct.handleType.rawValue)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceExternalImageFormatInfo>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceExternalImageFormatInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_IMAGE_FORMAT_INFO
        cStruct.pNext = nil
        cStruct.handleType = VkExternalMemoryHandleTypeFlagBits(rawValue: self.handleType.rawValue)
        return try body(&cStruct)
    }
}

struct ExternalImageFormatProperties: CStructConvertible {
    typealias CStruct = VkExternalImageFormatProperties

    let externalMemoryProperties: ExternalMemoryProperties

    init(cStruct: VkExternalImageFormatProperties) {
        self.externalMemoryProperties = ExternalMemoryProperties(cStruct: cStruct.externalMemoryProperties)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkExternalImageFormatProperties>) throws -> R) rethrows -> R {
        try self.externalMemoryProperties.withCStruct { ptr_externalMemoryProperties in
            var cStruct = VkExternalImageFormatProperties()
            cStruct.sType = VK_STRUCTURE_TYPE_EXTERNAL_IMAGE_FORMAT_PROPERTIES
            cStruct.pNext = nil
            cStruct.externalMemoryProperties = ptr_externalMemoryProperties.pointee
            return try body(&cStruct)
        }
    }
}

struct PhysicalDeviceExternalBufferInfo: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceExternalBufferInfo

    let flags: BufferCreateFlags
    let usage: BufferUsageFlags
    let handleType: ExternalMemoryHandleTypeFlags

    init(cStruct: VkPhysicalDeviceExternalBufferInfo) {
        self.flags = BufferCreateFlags(rawValue: cStruct.flags)
        self.usage = BufferUsageFlags(rawValue: cStruct.usage)
        self.handleType = ExternalMemoryHandleTypeFlags(rawValue: cStruct.handleType.rawValue)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceExternalBufferInfo>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceExternalBufferInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_BUFFER_INFO
        cStruct.pNext = nil
        cStruct.flags = self.flags.rawValue
        cStruct.usage = self.usage.rawValue
        cStruct.handleType = VkExternalMemoryHandleTypeFlagBits(rawValue: self.handleType.rawValue)
        return try body(&cStruct)
    }
}

struct ExternalBufferProperties: CStructConvertible {
    typealias CStruct = VkExternalBufferProperties

    let externalMemoryProperties: ExternalMemoryProperties

    init(cStruct: VkExternalBufferProperties) {
        self.externalMemoryProperties = ExternalMemoryProperties(cStruct: cStruct.externalMemoryProperties)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkExternalBufferProperties>) throws -> R) rethrows -> R {
        try self.externalMemoryProperties.withCStruct { ptr_externalMemoryProperties in
            var cStruct = VkExternalBufferProperties()
            cStruct.sType = VK_STRUCTURE_TYPE_EXTERNAL_BUFFER_PROPERTIES
            cStruct.pNext = nil
            cStruct.externalMemoryProperties = ptr_externalMemoryProperties.pointee
            return try body(&cStruct)
        }
    }
}

struct PhysicalDeviceIDProperties: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceIDProperties

    let deviceUUID: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
    let driverUUID: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
    let deviceLUID: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
    let deviceNodeMask: UInt32
    let deviceLUIDValid: Bool

    init(cStruct: VkPhysicalDeviceIDProperties) {
        self.deviceUUID = cStruct.deviceUUID
        self.driverUUID = cStruct.driverUUID
        self.deviceLUID = cStruct.deviceLUID
        self.deviceNodeMask = cStruct.deviceNodeMask
        self.deviceLUIDValid = cStruct.deviceLUIDValid == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceIDProperties>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceIDProperties()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_ID_PROPERTIES
        cStruct.pNext = nil
        cStruct.deviceUUID = self.deviceUUID
        cStruct.driverUUID = self.driverUUID
        cStruct.deviceLUID = self.deviceLUID
        cStruct.deviceNodeMask = self.deviceNodeMask
        cStruct.deviceLUIDValid = VkBool32(self.deviceLUIDValid ? VK_TRUE : VK_FALSE)
        return try body(&cStruct)
    }
}

struct ExternalMemoryImageCreateInfo: CStructConvertible {
    typealias CStruct = VkExternalMemoryImageCreateInfo

    let handleTypes: ExternalMemoryHandleTypeFlags

    init(cStruct: VkExternalMemoryImageCreateInfo) {
        self.handleTypes = ExternalMemoryHandleTypeFlags(rawValue: cStruct.handleTypes)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkExternalMemoryImageCreateInfo>) throws -> R) rethrows -> R {
        var cStruct = VkExternalMemoryImageCreateInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_EXTERNAL_MEMORY_IMAGE_CREATE_INFO
        cStruct.pNext = nil
        cStruct.handleTypes = self.handleTypes.rawValue
        return try body(&cStruct)
    }
}

struct ExternalMemoryBufferCreateInfo: CStructConvertible {
    typealias CStruct = VkExternalMemoryBufferCreateInfo

    let handleTypes: ExternalMemoryHandleTypeFlags

    init(cStruct: VkExternalMemoryBufferCreateInfo) {
        self.handleTypes = ExternalMemoryHandleTypeFlags(rawValue: cStruct.handleTypes)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkExternalMemoryBufferCreateInfo>) throws -> R) rethrows -> R {
        var cStruct = VkExternalMemoryBufferCreateInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_EXTERNAL_MEMORY_BUFFER_CREATE_INFO
        cStruct.pNext = nil
        cStruct.handleTypes = self.handleTypes.rawValue
        return try body(&cStruct)
    }
}

struct ExportMemoryAllocateInfo: CStructConvertible {
    typealias CStruct = VkExportMemoryAllocateInfo

    let handleTypes: ExternalMemoryHandleTypeFlags

    init(cStruct: VkExportMemoryAllocateInfo) {
        self.handleTypes = ExternalMemoryHandleTypeFlags(rawValue: cStruct.handleTypes)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkExportMemoryAllocateInfo>) throws -> R) rethrows -> R {
        var cStruct = VkExportMemoryAllocateInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_EXPORT_MEMORY_ALLOCATE_INFO
        cStruct.pNext = nil
        cStruct.handleTypes = self.handleTypes.rawValue
        return try body(&cStruct)
    }
}

struct ImportMemoryFdInfoKHR: CStructConvertible {
    typealias CStruct = VkImportMemoryFdInfoKHR

    let handleType: ExternalMemoryHandleTypeFlags
    let fd: Int32

    init(cStruct: VkImportMemoryFdInfoKHR) {
        self.handleType = ExternalMemoryHandleTypeFlags(rawValue: cStruct.handleType.rawValue)
        self.fd = cStruct.fd
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkImportMemoryFdInfoKHR>) throws -> R) rethrows -> R {
        var cStruct = VkImportMemoryFdInfoKHR()
        cStruct.sType = VK_STRUCTURE_TYPE_IMPORT_MEMORY_FD_INFO_KHR
        cStruct.pNext = nil
        cStruct.handleType = VkExternalMemoryHandleTypeFlagBits(rawValue: self.handleType.rawValue)
        cStruct.fd = self.fd
        return try body(&cStruct)
    }
}

struct MemoryFdPropertiesKHR: CStructConvertible {
    typealias CStruct = VkMemoryFdPropertiesKHR

    let memoryTypeBits: UInt32

    init(cStruct: VkMemoryFdPropertiesKHR) {
        self.memoryTypeBits = cStruct.memoryTypeBits
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkMemoryFdPropertiesKHR>) throws -> R) rethrows -> R {
        var cStruct = VkMemoryFdPropertiesKHR()
        cStruct.sType = VK_STRUCTURE_TYPE_MEMORY_FD_PROPERTIES_KHR
        cStruct.pNext = nil
        cStruct.memoryTypeBits = self.memoryTypeBits
        return try body(&cStruct)
    }
}

struct MemoryGetFdInfoKHR: CStructConvertible {
    typealias CStruct = VkMemoryGetFdInfoKHR

    let memory: DeviceMemory
    let handleType: ExternalMemoryHandleTypeFlags

    init(cStruct: VkMemoryGetFdInfoKHR) {
        fatalError("This initializer should be removed.")
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkMemoryGetFdInfoKHR>) throws -> R) rethrows -> R {
        var cStruct = VkMemoryGetFdInfoKHR()
        cStruct.sType = VK_STRUCTURE_TYPE_MEMORY_GET_FD_INFO_KHR
        cStruct.pNext = nil
        cStruct.memory = self.memory.handle
        cStruct.handleType = VkExternalMemoryHandleTypeFlagBits(rawValue: self.handleType.rawValue)
        return try body(&cStruct)
    }
}

struct PhysicalDeviceExternalSemaphoreInfo: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceExternalSemaphoreInfo

    let handleType: ExternalSemaphoreHandleTypeFlags

    init(cStruct: VkPhysicalDeviceExternalSemaphoreInfo) {
        self.handleType = ExternalSemaphoreHandleTypeFlags(rawValue: cStruct.handleType.rawValue)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceExternalSemaphoreInfo>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceExternalSemaphoreInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_SEMAPHORE_INFO
        cStruct.pNext = nil
        cStruct.handleType = VkExternalSemaphoreHandleTypeFlagBits(rawValue: self.handleType.rawValue)
        return try body(&cStruct)
    }
}

struct ExternalSemaphoreProperties: CStructConvertible {
    typealias CStruct = VkExternalSemaphoreProperties

    let exportFromImportedHandleTypes: ExternalSemaphoreHandleTypeFlags
    let compatibleHandleTypes: ExternalSemaphoreHandleTypeFlags
    let externalSemaphoreFeatures: ExternalSemaphoreFeatureFlags

    init(cStruct: VkExternalSemaphoreProperties) {
        self.exportFromImportedHandleTypes = ExternalSemaphoreHandleTypeFlags(rawValue: cStruct.exportFromImportedHandleTypes)
        self.compatibleHandleTypes = ExternalSemaphoreHandleTypeFlags(rawValue: cStruct.compatibleHandleTypes)
        self.externalSemaphoreFeatures = ExternalSemaphoreFeatureFlags(rawValue: cStruct.externalSemaphoreFeatures)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkExternalSemaphoreProperties>) throws -> R) rethrows -> R {
        var cStruct = VkExternalSemaphoreProperties()
        cStruct.sType = VK_STRUCTURE_TYPE_EXTERNAL_SEMAPHORE_PROPERTIES
        cStruct.pNext = nil
        cStruct.exportFromImportedHandleTypes = self.exportFromImportedHandleTypes.rawValue
        cStruct.compatibleHandleTypes = self.compatibleHandleTypes.rawValue
        cStruct.externalSemaphoreFeatures = self.externalSemaphoreFeatures.rawValue
        return try body(&cStruct)
    }
}

struct ExportSemaphoreCreateInfo: CStructConvertible {
    typealias CStruct = VkExportSemaphoreCreateInfo

    let handleTypes: ExternalSemaphoreHandleTypeFlags

    init(cStruct: VkExportSemaphoreCreateInfo) {
        self.handleTypes = ExternalSemaphoreHandleTypeFlags(rawValue: cStruct.handleTypes)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkExportSemaphoreCreateInfo>) throws -> R) rethrows -> R {
        var cStruct = VkExportSemaphoreCreateInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_EXPORT_SEMAPHORE_CREATE_INFO
        cStruct.pNext = nil
        cStruct.handleTypes = self.handleTypes.rawValue
        return try body(&cStruct)
    }
}

struct ImportSemaphoreFdInfoKHR: CStructConvertible {
    typealias CStruct = VkImportSemaphoreFdInfoKHR

    let semaphore: Semaphore
    let flags: SemaphoreImportFlags
    let handleType: ExternalSemaphoreHandleTypeFlags
    let fd: Int32

    init(cStruct: VkImportSemaphoreFdInfoKHR) {
        fatalError("This initializer should be removed.")
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkImportSemaphoreFdInfoKHR>) throws -> R) rethrows -> R {
        var cStruct = VkImportSemaphoreFdInfoKHR()
        cStruct.sType = VK_STRUCTURE_TYPE_IMPORT_SEMAPHORE_FD_INFO_KHR
        cStruct.pNext = nil
        cStruct.semaphore = self.semaphore.handle
        cStruct.flags = self.flags.rawValue
        cStruct.handleType = VkExternalSemaphoreHandleTypeFlagBits(rawValue: self.handleType.rawValue)
        cStruct.fd = self.fd
        return try body(&cStruct)
    }
}

struct SemaphoreGetFdInfoKHR: CStructConvertible {
    typealias CStruct = VkSemaphoreGetFdInfoKHR

    let semaphore: Semaphore
    let handleType: ExternalSemaphoreHandleTypeFlags

    init(cStruct: VkSemaphoreGetFdInfoKHR) {
        fatalError("This initializer should be removed.")
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkSemaphoreGetFdInfoKHR>) throws -> R) rethrows -> R {
        var cStruct = VkSemaphoreGetFdInfoKHR()
        cStruct.sType = VK_STRUCTURE_TYPE_SEMAPHORE_GET_FD_INFO_KHR
        cStruct.pNext = nil
        cStruct.semaphore = self.semaphore.handle
        cStruct.handleType = VkExternalSemaphoreHandleTypeFlagBits(rawValue: self.handleType.rawValue)
        return try body(&cStruct)
    }
}

struct PhysicalDeviceExternalFenceInfo: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceExternalFenceInfo

    let handleType: ExternalFenceHandleTypeFlags

    init(cStruct: VkPhysicalDeviceExternalFenceInfo) {
        self.handleType = ExternalFenceHandleTypeFlags(rawValue: cStruct.handleType.rawValue)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceExternalFenceInfo>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceExternalFenceInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_FENCE_INFO
        cStruct.pNext = nil
        cStruct.handleType = VkExternalFenceHandleTypeFlagBits(rawValue: self.handleType.rawValue)
        return try body(&cStruct)
    }
}

struct ExternalFenceProperties: CStructConvertible {
    typealias CStruct = VkExternalFenceProperties

    let exportFromImportedHandleTypes: ExternalFenceHandleTypeFlags
    let compatibleHandleTypes: ExternalFenceHandleTypeFlags
    let externalFenceFeatures: ExternalFenceFeatureFlags

    init(cStruct: VkExternalFenceProperties) {
        self.exportFromImportedHandleTypes = ExternalFenceHandleTypeFlags(rawValue: cStruct.exportFromImportedHandleTypes)
        self.compatibleHandleTypes = ExternalFenceHandleTypeFlags(rawValue: cStruct.compatibleHandleTypes)
        self.externalFenceFeatures = ExternalFenceFeatureFlags(rawValue: cStruct.externalFenceFeatures)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkExternalFenceProperties>) throws -> R) rethrows -> R {
        var cStruct = VkExternalFenceProperties()
        cStruct.sType = VK_STRUCTURE_TYPE_EXTERNAL_FENCE_PROPERTIES
        cStruct.pNext = nil
        cStruct.exportFromImportedHandleTypes = self.exportFromImportedHandleTypes.rawValue
        cStruct.compatibleHandleTypes = self.compatibleHandleTypes.rawValue
        cStruct.externalFenceFeatures = self.externalFenceFeatures.rawValue
        return try body(&cStruct)
    }
}

struct ExportFenceCreateInfo: CStructConvertible {
    typealias CStruct = VkExportFenceCreateInfo

    let handleTypes: ExternalFenceHandleTypeFlags

    init(cStruct: VkExportFenceCreateInfo) {
        self.handleTypes = ExternalFenceHandleTypeFlags(rawValue: cStruct.handleTypes)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkExportFenceCreateInfo>) throws -> R) rethrows -> R {
        var cStruct = VkExportFenceCreateInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_EXPORT_FENCE_CREATE_INFO
        cStruct.pNext = nil
        cStruct.handleTypes = self.handleTypes.rawValue
        return try body(&cStruct)
    }
}

struct ImportFenceFdInfoKHR: CStructConvertible {
    typealias CStruct = VkImportFenceFdInfoKHR

    let fence: Fence
    let flags: FenceImportFlags
    let handleType: ExternalFenceHandleTypeFlags
    let fd: Int32

    init(cStruct: VkImportFenceFdInfoKHR) {
        fatalError("This initializer should be removed.")
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkImportFenceFdInfoKHR>) throws -> R) rethrows -> R {
        var cStruct = VkImportFenceFdInfoKHR()
        cStruct.sType = VK_STRUCTURE_TYPE_IMPORT_FENCE_FD_INFO_KHR
        cStruct.pNext = nil
        cStruct.fence = self.fence.handle
        cStruct.flags = self.flags.rawValue
        cStruct.handleType = VkExternalFenceHandleTypeFlagBits(rawValue: self.handleType.rawValue)
        cStruct.fd = self.fd
        return try body(&cStruct)
    }
}

struct FenceGetFdInfoKHR: CStructConvertible {
    typealias CStruct = VkFenceGetFdInfoKHR

    let fence: Fence
    let handleType: ExternalFenceHandleTypeFlags

    init(cStruct: VkFenceGetFdInfoKHR) {
        fatalError("This initializer should be removed.")
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkFenceGetFdInfoKHR>) throws -> R) rethrows -> R {
        var cStruct = VkFenceGetFdInfoKHR()
        cStruct.sType = VK_STRUCTURE_TYPE_FENCE_GET_FD_INFO_KHR
        cStruct.pNext = nil
        cStruct.fence = self.fence.handle
        cStruct.handleType = VkExternalFenceHandleTypeFlagBits(rawValue: self.handleType.rawValue)
        return try body(&cStruct)
    }
}

struct PhysicalDeviceMultiviewFeatures: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceMultiviewFeatures

    let multiview: Bool
    let multiviewGeometryShader: Bool
    let multiviewTessellationShader: Bool

    init(cStruct: VkPhysicalDeviceMultiviewFeatures) {
        self.multiview = cStruct.multiview == VK_TRUE
        self.multiviewGeometryShader = cStruct.multiviewGeometryShader == VK_TRUE
        self.multiviewTessellationShader = cStruct.multiviewTessellationShader == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceMultiviewFeatures>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceMultiviewFeatures()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MULTIVIEW_FEATURES
        cStruct.pNext = nil
        cStruct.multiview = VkBool32(self.multiview ? VK_TRUE : VK_FALSE)
        cStruct.multiviewGeometryShader = VkBool32(self.multiviewGeometryShader ? VK_TRUE : VK_FALSE)
        cStruct.multiviewTessellationShader = VkBool32(self.multiviewTessellationShader ? VK_TRUE : VK_FALSE)
        return try body(&cStruct)
    }
}

struct PhysicalDeviceMultiviewProperties: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceMultiviewProperties

    let maxMultiviewViewCount: UInt32
    let maxMultiviewInstanceIndex: UInt32

    init(cStruct: VkPhysicalDeviceMultiviewProperties) {
        self.maxMultiviewViewCount = cStruct.maxMultiviewViewCount
        self.maxMultiviewInstanceIndex = cStruct.maxMultiviewInstanceIndex
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceMultiviewProperties>) throws -> R) rethrows -> R {
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

    let pViewMasks: Array<UInt32>
    let pViewOffsets: Array<Int32>
    let pCorrelationMasks: Array<UInt32>

    init(cStruct: VkRenderPassMultiviewCreateInfo) {
        self.pViewMasks = Array(UnsafeBufferPointer(start: cStruct.pViewMasks, count: Int(cStruct.subpassCount)))
        self.pViewOffsets = Array(UnsafeBufferPointer(start: cStruct.pViewOffsets, count: Int(cStruct.dependencyCount)))
        self.pCorrelationMasks = Array(UnsafeBufferPointer(start: cStruct.pCorrelationMasks, count: Int(cStruct.correlationMaskCount)))
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkRenderPassMultiviewCreateInfo>) throws -> R) rethrows -> R {
        try self.pViewMasks.withUnsafeBufferPointer { ptr_pViewMasks in
            try self.pViewOffsets.withUnsafeBufferPointer { ptr_pViewOffsets in
                try self.pCorrelationMasks.withUnsafeBufferPointer { ptr_pCorrelationMasks in
                    var cStruct = VkRenderPassMultiviewCreateInfo()
                    cStruct.sType = VK_STRUCTURE_TYPE_RENDER_PASS_MULTIVIEW_CREATE_INFO
                    cStruct.pNext = nil
                    cStruct.subpassCount = UInt32(ptr_pViewMasks.count)
                    cStruct.pViewMasks = ptr_pViewMasks.baseAddress
                    cStruct.dependencyCount = UInt32(ptr_pViewOffsets.count)
                    cStruct.pViewOffsets = ptr_pViewOffsets.baseAddress
                    cStruct.correlationMaskCount = UInt32(ptr_pCorrelationMasks.count)
                    cStruct.pCorrelationMasks = ptr_pCorrelationMasks.baseAddress
                    return try body(&cStruct)
                }
            }
        }
    }
}

struct SurfaceCapabilities2EXT: CStructConvertible {
    typealias CStruct = VkSurfaceCapabilities2EXT

    let minImageCount: UInt32
    let maxImageCount: UInt32
    let currentExtent: Extent2D
    let minImageExtent: Extent2D
    let maxImageExtent: Extent2D
    let maxImageArrayLayers: UInt32
    let supportedTransforms: SurfaceTransformFlagsKHR
    let currentTransform: SurfaceTransformFlagsKHR
    let supportedCompositeAlpha: CompositeAlphaFlagsKHR
    let supportedUsageFlags: ImageUsageFlags
    let supportedSurfaceCounters: SurfaceCounterFlagsEXT

    init(cStruct: VkSurfaceCapabilities2EXT) {
        self.minImageCount = cStruct.minImageCount
        self.maxImageCount = cStruct.maxImageCount
        self.currentExtent = Extent2D(cStruct: cStruct.currentExtent)
        self.minImageExtent = Extent2D(cStruct: cStruct.minImageExtent)
        self.maxImageExtent = Extent2D(cStruct: cStruct.maxImageExtent)
        self.maxImageArrayLayers = cStruct.maxImageArrayLayers
        self.supportedTransforms = SurfaceTransformFlagsKHR(rawValue: cStruct.supportedTransforms)
        self.currentTransform = SurfaceTransformFlagsKHR(rawValue: cStruct.currentTransform.rawValue)
        self.supportedCompositeAlpha = CompositeAlphaFlagsKHR(rawValue: cStruct.supportedCompositeAlpha)
        self.supportedUsageFlags = ImageUsageFlags(rawValue: cStruct.supportedUsageFlags)
        self.supportedSurfaceCounters = SurfaceCounterFlagsEXT(rawValue: cStruct.supportedSurfaceCounters)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkSurfaceCapabilities2EXT>) throws -> R) rethrows -> R {
        try self.currentExtent.withCStruct { ptr_currentExtent in
            try self.minImageExtent.withCStruct { ptr_minImageExtent in
                try self.maxImageExtent.withCStruct { ptr_maxImageExtent in
                    var cStruct = VkSurfaceCapabilities2EXT()
                    cStruct.sType = VK_STRUCTURE_TYPE_SURFACE_CAPABILITIES_2_EXT
                    cStruct.pNext = nil
                    cStruct.minImageCount = self.minImageCount
                    cStruct.maxImageCount = self.maxImageCount
                    cStruct.currentExtent = ptr_currentExtent.pointee
                    cStruct.minImageExtent = ptr_minImageExtent.pointee
                    cStruct.maxImageExtent = ptr_maxImageExtent.pointee
                    cStruct.maxImageArrayLayers = self.maxImageArrayLayers
                    cStruct.supportedTransforms = self.supportedTransforms.rawValue
                    cStruct.currentTransform = VkSurfaceTransformFlagBitsKHR(rawValue: self.currentTransform.rawValue)
                    cStruct.supportedCompositeAlpha = self.supportedCompositeAlpha.rawValue
                    cStruct.supportedUsageFlags = self.supportedUsageFlags.rawValue
                    cStruct.supportedSurfaceCounters = self.supportedSurfaceCounters.rawValue
                    return try body(&cStruct)
                }
            }
        }
    }
}

struct DisplayPowerInfoEXT: CStructConvertible {
    typealias CStruct = VkDisplayPowerInfoEXT

    let powerState: DisplayPowerStateEXT

    init(cStruct: VkDisplayPowerInfoEXT) {
        self.powerState = DisplayPowerStateEXT(rawValue: cStruct.powerState.rawValue)!
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkDisplayPowerInfoEXT>) throws -> R) rethrows -> R {
        var cStruct = VkDisplayPowerInfoEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_DISPLAY_POWER_INFO_EXT
        cStruct.pNext = nil
        cStruct.powerState = VkDisplayPowerStateEXT(rawValue: self.powerState.rawValue)
        return try body(&cStruct)
    }
}

struct DeviceEventInfoEXT: CStructConvertible {
    typealias CStruct = VkDeviceEventInfoEXT

    let deviceEvent: DeviceEventTypeEXT

    init(cStruct: VkDeviceEventInfoEXT) {
        self.deviceEvent = DeviceEventTypeEXT(rawValue: cStruct.deviceEvent.rawValue)!
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkDeviceEventInfoEXT>) throws -> R) rethrows -> R {
        var cStruct = VkDeviceEventInfoEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_DEVICE_EVENT_INFO_EXT
        cStruct.pNext = nil
        cStruct.deviceEvent = VkDeviceEventTypeEXT(rawValue: self.deviceEvent.rawValue)
        return try body(&cStruct)
    }
}

struct DisplayEventInfoEXT: CStructConvertible {
    typealias CStruct = VkDisplayEventInfoEXT

    let displayEvent: DisplayEventTypeEXT

    init(cStruct: VkDisplayEventInfoEXT) {
        self.displayEvent = DisplayEventTypeEXT(rawValue: cStruct.displayEvent.rawValue)!
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkDisplayEventInfoEXT>) throws -> R) rethrows -> R {
        var cStruct = VkDisplayEventInfoEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_DISPLAY_EVENT_INFO_EXT
        cStruct.pNext = nil
        cStruct.displayEvent = VkDisplayEventTypeEXT(rawValue: self.displayEvent.rawValue)
        return try body(&cStruct)
    }
}

struct SwapchainCounterCreateInfoEXT: CStructConvertible {
    typealias CStruct = VkSwapchainCounterCreateInfoEXT

    let surfaceCounters: SurfaceCounterFlagsEXT

    init(cStruct: VkSwapchainCounterCreateInfoEXT) {
        self.surfaceCounters = SurfaceCounterFlagsEXT(rawValue: cStruct.surfaceCounters)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkSwapchainCounterCreateInfoEXT>) throws -> R) rethrows -> R {
        var cStruct = VkSwapchainCounterCreateInfoEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_SWAPCHAIN_COUNTER_CREATE_INFO_EXT
        cStruct.pNext = nil
        cStruct.surfaceCounters = self.surfaceCounters.rawValue
        return try body(&cStruct)
    }
}

struct PhysicalDeviceGroupProperties: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceGroupProperties

    let physicalDeviceCount: UInt32
    let physicalDevices: (VkPhysicalDevice?, VkPhysicalDevice?, VkPhysicalDevice?, VkPhysicalDevice?, VkPhysicalDevice?, VkPhysicalDevice?, VkPhysicalDevice?, VkPhysicalDevice?, VkPhysicalDevice?, VkPhysicalDevice?, VkPhysicalDevice?, VkPhysicalDevice?, VkPhysicalDevice?, VkPhysicalDevice?, VkPhysicalDevice?, VkPhysicalDevice?, VkPhysicalDevice?, VkPhysicalDevice?, VkPhysicalDevice?, VkPhysicalDevice?, VkPhysicalDevice?, VkPhysicalDevice?, VkPhysicalDevice?, VkPhysicalDevice?, VkPhysicalDevice?, VkPhysicalDevice?, VkPhysicalDevice?, VkPhysicalDevice?, VkPhysicalDevice?, VkPhysicalDevice?, VkPhysicalDevice?, VkPhysicalDevice?)
    let subsetAllocation: Bool

    init(cStruct: VkPhysicalDeviceGroupProperties) {
        self.physicalDeviceCount = cStruct.physicalDeviceCount
        self.physicalDevices = cStruct.physicalDevices
        self.subsetAllocation = cStruct.subsetAllocation == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceGroupProperties>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceGroupProperties()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_GROUP_PROPERTIES
        cStruct.pNext = nil
        cStruct.physicalDeviceCount = self.physicalDeviceCount
        cStruct.physicalDevices = self.physicalDevices
        cStruct.subsetAllocation = VkBool32(self.subsetAllocation ? VK_TRUE : VK_FALSE)
        return try body(&cStruct)
    }
}

struct MemoryAllocateFlagsInfo: CStructConvertible {
    typealias CStruct = VkMemoryAllocateFlagsInfo

    let flags: MemoryAllocateFlags
    let deviceMask: UInt32

    init(cStruct: VkMemoryAllocateFlagsInfo) {
        self.flags = MemoryAllocateFlags(rawValue: cStruct.flags)
        self.deviceMask = cStruct.deviceMask
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkMemoryAllocateFlagsInfo>) throws -> R) rethrows -> R {
        var cStruct = VkMemoryAllocateFlagsInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_FLAGS_INFO
        cStruct.pNext = nil
        cStruct.flags = self.flags.rawValue
        cStruct.deviceMask = self.deviceMask
        return try body(&cStruct)
    }
}

struct BindBufferMemoryInfo: CStructConvertible {
    typealias CStruct = VkBindBufferMemoryInfo

    let buffer: Buffer
    let memory: DeviceMemory
    let memoryOffset: VkDeviceSize

    init(cStruct: VkBindBufferMemoryInfo) {
        fatalError("This initializer should be removed.")
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkBindBufferMemoryInfo>) throws -> R) rethrows -> R {
        var cStruct = VkBindBufferMemoryInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_BIND_BUFFER_MEMORY_INFO
        cStruct.pNext = nil
        cStruct.buffer = self.buffer.handle
        cStruct.memory = self.memory.handle
        cStruct.memoryOffset = self.memoryOffset
        return try body(&cStruct)
    }
}

struct BindBufferMemoryDeviceGroupInfo: CStructConvertible {
    typealias CStruct = VkBindBufferMemoryDeviceGroupInfo

    let pDeviceIndices: Array<UInt32>

    init(cStruct: VkBindBufferMemoryDeviceGroupInfo) {
        self.pDeviceIndices = Array(UnsafeBufferPointer(start: cStruct.pDeviceIndices, count: Int(cStruct.deviceIndexCount)))
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkBindBufferMemoryDeviceGroupInfo>) throws -> R) rethrows -> R {
        try self.pDeviceIndices.withUnsafeBufferPointer { ptr_pDeviceIndices in
            var cStruct = VkBindBufferMemoryDeviceGroupInfo()
            cStruct.sType = VK_STRUCTURE_TYPE_BIND_BUFFER_MEMORY_DEVICE_GROUP_INFO
            cStruct.pNext = nil
            cStruct.deviceIndexCount = UInt32(ptr_pDeviceIndices.count)
            cStruct.pDeviceIndices = ptr_pDeviceIndices.baseAddress
            return try body(&cStruct)
        }
    }
}

struct BindImageMemoryInfo: CStructConvertible {
    typealias CStruct = VkBindImageMemoryInfo

    let image: Image
    let memory: DeviceMemory
    let memoryOffset: VkDeviceSize

    init(cStruct: VkBindImageMemoryInfo) {
        fatalError("This initializer should be removed.")
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkBindImageMemoryInfo>) throws -> R) rethrows -> R {
        var cStruct = VkBindImageMemoryInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_BIND_IMAGE_MEMORY_INFO
        cStruct.pNext = nil
        cStruct.image = self.image.handle
        cStruct.memory = self.memory.handle
        cStruct.memoryOffset = self.memoryOffset
        return try body(&cStruct)
    }
}

struct BindImageMemoryDeviceGroupInfo: CStructConvertible {
    typealias CStruct = VkBindImageMemoryDeviceGroupInfo

    let pDeviceIndices: Array<UInt32>
    let pSplitInstanceBindRegions: Array<Rect2D>

    init(cStruct: VkBindImageMemoryDeviceGroupInfo) {
        self.pDeviceIndices = Array(UnsafeBufferPointer(start: cStruct.pDeviceIndices, count: Int(cStruct.deviceIndexCount)))
        self.pSplitInstanceBindRegions = UnsafeBufferPointer(start: cStruct.pSplitInstanceBindRegions, count: Int(cStruct.splitInstanceBindRegionCount)).map{ Rect2D(cStruct: $0) }
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkBindImageMemoryDeviceGroupInfo>) throws -> R) rethrows -> R {
        try self.pDeviceIndices.withUnsafeBufferPointer { ptr_pDeviceIndices in
            try self.pSplitInstanceBindRegions.withCStructBufferPointer { ptr_pSplitInstanceBindRegions in
                var cStruct = VkBindImageMemoryDeviceGroupInfo()
                cStruct.sType = VK_STRUCTURE_TYPE_BIND_IMAGE_MEMORY_DEVICE_GROUP_INFO
                cStruct.pNext = nil
                cStruct.deviceIndexCount = UInt32(ptr_pDeviceIndices.count)
                cStruct.pDeviceIndices = ptr_pDeviceIndices.baseAddress
                cStruct.splitInstanceBindRegionCount = UInt32(ptr_pSplitInstanceBindRegions.count)
                cStruct.pSplitInstanceBindRegions = ptr_pSplitInstanceBindRegions.baseAddress
                return try body(&cStruct)
            }
        }
    }
}

struct DeviceGroupRenderPassBeginInfo: CStructConvertible {
    typealias CStruct = VkDeviceGroupRenderPassBeginInfo

    let deviceMask: UInt32
    let pDeviceRenderAreas: Array<Rect2D>

    init(cStruct: VkDeviceGroupRenderPassBeginInfo) {
        self.deviceMask = cStruct.deviceMask
        self.pDeviceRenderAreas = UnsafeBufferPointer(start: cStruct.pDeviceRenderAreas, count: Int(cStruct.deviceRenderAreaCount)).map{ Rect2D(cStruct: $0) }
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkDeviceGroupRenderPassBeginInfo>) throws -> R) rethrows -> R {
        try self.pDeviceRenderAreas.withCStructBufferPointer { ptr_pDeviceRenderAreas in
            var cStruct = VkDeviceGroupRenderPassBeginInfo()
            cStruct.sType = VK_STRUCTURE_TYPE_DEVICE_GROUP_RENDER_PASS_BEGIN_INFO
            cStruct.pNext = nil
            cStruct.deviceMask = self.deviceMask
            cStruct.deviceRenderAreaCount = UInt32(ptr_pDeviceRenderAreas.count)
            cStruct.pDeviceRenderAreas = ptr_pDeviceRenderAreas.baseAddress
            return try body(&cStruct)
        }
    }
}

struct DeviceGroupCommandBufferBeginInfo: CStructConvertible {
    typealias CStruct = VkDeviceGroupCommandBufferBeginInfo

    let deviceMask: UInt32

    init(cStruct: VkDeviceGroupCommandBufferBeginInfo) {
        self.deviceMask = cStruct.deviceMask
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkDeviceGroupCommandBufferBeginInfo>) throws -> R) rethrows -> R {
        var cStruct = VkDeviceGroupCommandBufferBeginInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_DEVICE_GROUP_COMMAND_BUFFER_BEGIN_INFO
        cStruct.pNext = nil
        cStruct.deviceMask = self.deviceMask
        return try body(&cStruct)
    }
}

struct DeviceGroupSubmitInfo: CStructConvertible {
    typealias CStruct = VkDeviceGroupSubmitInfo

    let pWaitSemaphoreDeviceIndices: Array<UInt32>
    let pCommandBufferDeviceMasks: Array<UInt32>
    let pSignalSemaphoreDeviceIndices: Array<UInt32>

    init(cStruct: VkDeviceGroupSubmitInfo) {
        self.pWaitSemaphoreDeviceIndices = Array(UnsafeBufferPointer(start: cStruct.pWaitSemaphoreDeviceIndices, count: Int(cStruct.waitSemaphoreCount)))
        self.pCommandBufferDeviceMasks = Array(UnsafeBufferPointer(start: cStruct.pCommandBufferDeviceMasks, count: Int(cStruct.commandBufferCount)))
        self.pSignalSemaphoreDeviceIndices = Array(UnsafeBufferPointer(start: cStruct.pSignalSemaphoreDeviceIndices, count: Int(cStruct.signalSemaphoreCount)))
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkDeviceGroupSubmitInfo>) throws -> R) rethrows -> R {
        try self.pWaitSemaphoreDeviceIndices.withUnsafeBufferPointer { ptr_pWaitSemaphoreDeviceIndices in
            try self.pCommandBufferDeviceMasks.withUnsafeBufferPointer { ptr_pCommandBufferDeviceMasks in
                try self.pSignalSemaphoreDeviceIndices.withUnsafeBufferPointer { ptr_pSignalSemaphoreDeviceIndices in
                    var cStruct = VkDeviceGroupSubmitInfo()
                    cStruct.sType = VK_STRUCTURE_TYPE_DEVICE_GROUP_SUBMIT_INFO
                    cStruct.pNext = nil
                    cStruct.waitSemaphoreCount = UInt32(ptr_pWaitSemaphoreDeviceIndices.count)
                    cStruct.pWaitSemaphoreDeviceIndices = ptr_pWaitSemaphoreDeviceIndices.baseAddress
                    cStruct.commandBufferCount = UInt32(ptr_pCommandBufferDeviceMasks.count)
                    cStruct.pCommandBufferDeviceMasks = ptr_pCommandBufferDeviceMasks.baseAddress
                    cStruct.signalSemaphoreCount = UInt32(ptr_pSignalSemaphoreDeviceIndices.count)
                    cStruct.pSignalSemaphoreDeviceIndices = ptr_pSignalSemaphoreDeviceIndices.baseAddress
                    return try body(&cStruct)
                }
            }
        }
    }
}

struct DeviceGroupBindSparseInfo: CStructConvertible {
    typealias CStruct = VkDeviceGroupBindSparseInfo

    let resourceDeviceIndex: UInt32
    let memoryDeviceIndex: UInt32

    init(cStruct: VkDeviceGroupBindSparseInfo) {
        self.resourceDeviceIndex = cStruct.resourceDeviceIndex
        self.memoryDeviceIndex = cStruct.memoryDeviceIndex
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkDeviceGroupBindSparseInfo>) throws -> R) rethrows -> R {
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
    let modes: DeviceGroupPresentModeFlagsKHR

    init(cStruct: VkDeviceGroupPresentCapabilitiesKHR) {
        self.presentMask = cStruct.presentMask
        self.modes = DeviceGroupPresentModeFlagsKHR(rawValue: cStruct.modes)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkDeviceGroupPresentCapabilitiesKHR>) throws -> R) rethrows -> R {
        var cStruct = VkDeviceGroupPresentCapabilitiesKHR()
        cStruct.sType = VK_STRUCTURE_TYPE_DEVICE_GROUP_PRESENT_CAPABILITIES_KHR
        cStruct.pNext = nil
        cStruct.presentMask = self.presentMask
        cStruct.modes = self.modes.rawValue
        return try body(&cStruct)
    }
}

struct ImageSwapchainCreateInfoKHR: CStructConvertible {
    typealias CStruct = VkImageSwapchainCreateInfoKHR

    let swapchain: SwapchainKHR?

    init(cStruct: VkImageSwapchainCreateInfoKHR) {
        fatalError("This initializer should be removed.")
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkImageSwapchainCreateInfoKHR>) throws -> R) rethrows -> R {
        var cStruct = VkImageSwapchainCreateInfoKHR()
        cStruct.sType = VK_STRUCTURE_TYPE_IMAGE_SWAPCHAIN_CREATE_INFO_KHR
        cStruct.pNext = nil
        cStruct.swapchain = self.swapchain?.handle
        return try body(&cStruct)
    }
}

struct BindImageMemorySwapchainInfoKHR: CStructConvertible {
    typealias CStruct = VkBindImageMemorySwapchainInfoKHR

    let swapchain: SwapchainKHR
    let imageIndex: UInt32

    init(cStruct: VkBindImageMemorySwapchainInfoKHR) {
        fatalError("This initializer should be removed.")
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkBindImageMemorySwapchainInfoKHR>) throws -> R) rethrows -> R {
        var cStruct = VkBindImageMemorySwapchainInfoKHR()
        cStruct.sType = VK_STRUCTURE_TYPE_BIND_IMAGE_MEMORY_SWAPCHAIN_INFO_KHR
        cStruct.pNext = nil
        cStruct.swapchain = self.swapchain.handle
        cStruct.imageIndex = self.imageIndex
        return try body(&cStruct)
    }
}

struct AcquireNextImageInfoKHR: CStructConvertible {
    typealias CStruct = VkAcquireNextImageInfoKHR

    let swapchain: SwapchainKHR
    let timeout: UInt64
    let semaphore: Semaphore?
    let fence: Fence?
    let deviceMask: UInt32

    init(cStruct: VkAcquireNextImageInfoKHR) {
        fatalError("This initializer should be removed.")
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkAcquireNextImageInfoKHR>) throws -> R) rethrows -> R {
        var cStruct = VkAcquireNextImageInfoKHR()
        cStruct.sType = VK_STRUCTURE_TYPE_ACQUIRE_NEXT_IMAGE_INFO_KHR
        cStruct.pNext = nil
        cStruct.swapchain = self.swapchain.handle
        cStruct.timeout = self.timeout
        cStruct.semaphore = self.semaphore?.handle
        cStruct.fence = self.fence?.handle
        cStruct.deviceMask = self.deviceMask
        return try body(&cStruct)
    }
}

struct DeviceGroupPresentInfoKHR: CStructConvertible {
    typealias CStruct = VkDeviceGroupPresentInfoKHR

    let pDeviceMasks: Array<UInt32>
    let mode: DeviceGroupPresentModeFlagsKHR

    init(cStruct: VkDeviceGroupPresentInfoKHR) {
        self.pDeviceMasks = Array(UnsafeBufferPointer(start: cStruct.pDeviceMasks, count: Int(cStruct.swapchainCount)))
        self.mode = DeviceGroupPresentModeFlagsKHR(rawValue: cStruct.mode.rawValue)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkDeviceGroupPresentInfoKHR>) throws -> R) rethrows -> R {
        try self.pDeviceMasks.withUnsafeBufferPointer { ptr_pDeviceMasks in
            var cStruct = VkDeviceGroupPresentInfoKHR()
            cStruct.sType = VK_STRUCTURE_TYPE_DEVICE_GROUP_PRESENT_INFO_KHR
            cStruct.pNext = nil
            cStruct.swapchainCount = UInt32(ptr_pDeviceMasks.count)
            cStruct.pDeviceMasks = ptr_pDeviceMasks.baseAddress
            cStruct.mode = VkDeviceGroupPresentModeFlagBitsKHR(rawValue: self.mode.rawValue)
            return try body(&cStruct)
        }
    }
}

struct DeviceGroupDeviceCreateInfo: CStructConvertible {
    typealias CStruct = VkDeviceGroupDeviceCreateInfo

    let pPhysicalDevices: Array<PhysicalDevice>

    init(cStruct: VkDeviceGroupDeviceCreateInfo) {
        fatalError("This initializer should be removed.")
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkDeviceGroupDeviceCreateInfo>) throws -> R) rethrows -> R {
        try self.pPhysicalDevices.map{ $0.handle }.withUnsafeBufferPointer { ptr_pPhysicalDevices in
            var cStruct = VkDeviceGroupDeviceCreateInfo()
            cStruct.sType = VK_STRUCTURE_TYPE_DEVICE_GROUP_DEVICE_CREATE_INFO
            cStruct.pNext = nil
            cStruct.physicalDeviceCount = UInt32(ptr_pPhysicalDevices.count)
            cStruct.pPhysicalDevices = ptr_pPhysicalDevices.baseAddress
            return try body(&cStruct)
        }
    }
}

struct DeviceGroupSwapchainCreateInfoKHR: CStructConvertible {
    typealias CStruct = VkDeviceGroupSwapchainCreateInfoKHR

    let modes: DeviceGroupPresentModeFlagsKHR

    init(cStruct: VkDeviceGroupSwapchainCreateInfoKHR) {
        self.modes = DeviceGroupPresentModeFlagsKHR(rawValue: cStruct.modes)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkDeviceGroupSwapchainCreateInfoKHR>) throws -> R) rethrows -> R {
        var cStruct = VkDeviceGroupSwapchainCreateInfoKHR()
        cStruct.sType = VK_STRUCTURE_TYPE_DEVICE_GROUP_SWAPCHAIN_CREATE_INFO_KHR
        cStruct.pNext = nil
        cStruct.modes = self.modes.rawValue
        return try body(&cStruct)
    }
}

struct DescriptorUpdateTemplateEntry: CStructConvertible {
    typealias CStruct = VkDescriptorUpdateTemplateEntry

    let dstBinding: UInt32
    let dstArrayElement: UInt32
    let descriptorCount: UInt32
    let descriptorType: DescriptorType
    let offset: Int
    let stride: Int

    init(cStruct: VkDescriptorUpdateTemplateEntry) {
        self.dstBinding = cStruct.dstBinding
        self.dstArrayElement = cStruct.dstArrayElement
        self.descriptorCount = cStruct.descriptorCount
        self.descriptorType = DescriptorType(rawValue: cStruct.descriptorType.rawValue)!
        self.offset = cStruct.offset
        self.stride = cStruct.stride
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkDescriptorUpdateTemplateEntry>) throws -> R) rethrows -> R {
        var cStruct = VkDescriptorUpdateTemplateEntry()
        cStruct.dstBinding = self.dstBinding
        cStruct.dstArrayElement = self.dstArrayElement
        cStruct.descriptorCount = self.descriptorCount
        cStruct.descriptorType = VkDescriptorType(rawValue: self.descriptorType.rawValue)
        cStruct.offset = self.offset
        cStruct.stride = self.stride
        return try body(&cStruct)
    }
}

struct DescriptorUpdateTemplateCreateInfo: CStructConvertible {
    typealias CStruct = VkDescriptorUpdateTemplateCreateInfo

    let flags: DescriptorUpdateTemplateCreateFlags
    let pDescriptorUpdateEntries: Array<DescriptorUpdateTemplateEntry>
    let templateType: DescriptorUpdateTemplateType
    let descriptorSetLayout: DescriptorSetLayout
    let pipelineBindPoint: PipelineBindPoint
    let pipelineLayout: PipelineLayout
    let set: UInt32

    init(cStruct: VkDescriptorUpdateTemplateCreateInfo) {
        fatalError("This initializer should be removed.")
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkDescriptorUpdateTemplateCreateInfo>) throws -> R) rethrows -> R {
        try self.pDescriptorUpdateEntries.withCStructBufferPointer { ptr_pDescriptorUpdateEntries in
            var cStruct = VkDescriptorUpdateTemplateCreateInfo()
            cStruct.sType = VK_STRUCTURE_TYPE_DESCRIPTOR_UPDATE_TEMPLATE_CREATE_INFO
            cStruct.pNext = nil
            cStruct.flags = self.flags.rawValue
            cStruct.descriptorUpdateEntryCount = UInt32(ptr_pDescriptorUpdateEntries.count)
            cStruct.pDescriptorUpdateEntries = ptr_pDescriptorUpdateEntries.baseAddress
            cStruct.templateType = VkDescriptorUpdateTemplateType(rawValue: self.templateType.rawValue)
            cStruct.descriptorSetLayout = self.descriptorSetLayout.handle
            cStruct.pipelineBindPoint = VkPipelineBindPoint(rawValue: self.pipelineBindPoint.rawValue)
            cStruct.pipelineLayout = self.pipelineLayout.handle
            cStruct.set = self.set
            return try body(&cStruct)
        }
    }
}

struct XYColorEXT: CStructConvertible {
    typealias CStruct = VkXYColorEXT

    let x: Float
    let y: Float

    init(cStruct: VkXYColorEXT) {
        self.x = cStruct.x
        self.y = cStruct.y
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkXYColorEXT>) throws -> R) rethrows -> R {
        var cStruct = VkXYColorEXT()
        cStruct.x = self.x
        cStruct.y = self.y
        return try body(&cStruct)
    }
}

struct HdrMetadataEXT: CStructConvertible {
    typealias CStruct = VkHdrMetadataEXT

    let displayPrimaryRed: XYColorEXT
    let displayPrimaryGreen: XYColorEXT
    let displayPrimaryBlue: XYColorEXT
    let whitePoint: XYColorEXT
    let maxLuminance: Float
    let minLuminance: Float
    let maxContentLightLevel: Float
    let maxFrameAverageLightLevel: Float

    init(cStruct: VkHdrMetadataEXT) {
        self.displayPrimaryRed = XYColorEXT(cStruct: cStruct.displayPrimaryRed)
        self.displayPrimaryGreen = XYColorEXT(cStruct: cStruct.displayPrimaryGreen)
        self.displayPrimaryBlue = XYColorEXT(cStruct: cStruct.displayPrimaryBlue)
        self.whitePoint = XYColorEXT(cStruct: cStruct.whitePoint)
        self.maxLuminance = cStruct.maxLuminance
        self.minLuminance = cStruct.minLuminance
        self.maxContentLightLevel = cStruct.maxContentLightLevel
        self.maxFrameAverageLightLevel = cStruct.maxFrameAverageLightLevel
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkHdrMetadataEXT>) throws -> R) rethrows -> R {
        try self.displayPrimaryRed.withCStruct { ptr_displayPrimaryRed in
            try self.displayPrimaryGreen.withCStruct { ptr_displayPrimaryGreen in
                try self.displayPrimaryBlue.withCStruct { ptr_displayPrimaryBlue in
                    try self.whitePoint.withCStruct { ptr_whitePoint in
                        var cStruct = VkHdrMetadataEXT()
                        cStruct.sType = VK_STRUCTURE_TYPE_HDR_METADATA_EXT
                        cStruct.pNext = nil
                        cStruct.displayPrimaryRed = ptr_displayPrimaryRed.pointee
                        cStruct.displayPrimaryGreen = ptr_displayPrimaryGreen.pointee
                        cStruct.displayPrimaryBlue = ptr_displayPrimaryBlue.pointee
                        cStruct.whitePoint = ptr_whitePoint.pointee
                        cStruct.maxLuminance = self.maxLuminance
                        cStruct.minLuminance = self.minLuminance
                        cStruct.maxContentLightLevel = self.maxContentLightLevel
                        cStruct.maxFrameAverageLightLevel = self.maxFrameAverageLightLevel
                        return try body(&cStruct)
                    }
                }
            }
        }
    }
}

struct DisplayNativeHdrSurfaceCapabilitiesAMD: CStructConvertible {
    typealias CStruct = VkDisplayNativeHdrSurfaceCapabilitiesAMD

    let localDimmingSupport: Bool

    init(cStruct: VkDisplayNativeHdrSurfaceCapabilitiesAMD) {
        self.localDimmingSupport = cStruct.localDimmingSupport == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkDisplayNativeHdrSurfaceCapabilitiesAMD>) throws -> R) rethrows -> R {
        var cStruct = VkDisplayNativeHdrSurfaceCapabilitiesAMD()
        cStruct.sType = VK_STRUCTURE_TYPE_DISPLAY_NATIVE_HDR_SURFACE_CAPABILITIES_AMD
        cStruct.pNext = nil
        cStruct.localDimmingSupport = VkBool32(self.localDimmingSupport ? VK_TRUE : VK_FALSE)
        return try body(&cStruct)
    }
}

struct SwapchainDisplayNativeHdrCreateInfoAMD: CStructConvertible {
    typealias CStruct = VkSwapchainDisplayNativeHdrCreateInfoAMD

    let localDimmingEnable: Bool

    init(cStruct: VkSwapchainDisplayNativeHdrCreateInfoAMD) {
        self.localDimmingEnable = cStruct.localDimmingEnable == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkSwapchainDisplayNativeHdrCreateInfoAMD>) throws -> R) rethrows -> R {
        var cStruct = VkSwapchainDisplayNativeHdrCreateInfoAMD()
        cStruct.sType = VK_STRUCTURE_TYPE_SWAPCHAIN_DISPLAY_NATIVE_HDR_CREATE_INFO_AMD
        cStruct.pNext = nil
        cStruct.localDimmingEnable = VkBool32(self.localDimmingEnable ? VK_TRUE : VK_FALSE)
        return try body(&cStruct)
    }
}

struct RefreshCycleDurationGOOGLE: CStructConvertible {
    typealias CStruct = VkRefreshCycleDurationGOOGLE

    let refreshDuration: UInt64

    init(cStruct: VkRefreshCycleDurationGOOGLE) {
        self.refreshDuration = cStruct.refreshDuration
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkRefreshCycleDurationGOOGLE>) throws -> R) rethrows -> R {
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

    init(cStruct: VkPastPresentationTimingGOOGLE) {
        self.presentID = cStruct.presentID
        self.desiredPresentTime = cStruct.desiredPresentTime
        self.actualPresentTime = cStruct.actualPresentTime
        self.earliestPresentTime = cStruct.earliestPresentTime
        self.presentMargin = cStruct.presentMargin
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPastPresentationTimingGOOGLE>) throws -> R) rethrows -> R {
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

    let pTimes: Array<PresentTimeGOOGLE>?

    init(cStruct: VkPresentTimesInfoGOOGLE) {
        self.pTimes = (cStruct.pTimes != nil) ? UnsafeBufferPointer(start: cStruct.pTimes, count: Int(cStruct.swapchainCount)).map{ PresentTimeGOOGLE(cStruct: $0) } : nil
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPresentTimesInfoGOOGLE>) throws -> R) rethrows -> R {
        try self.pTimes.withOptionalCStructBufferPointer { ptr_pTimes in
            var cStruct = VkPresentTimesInfoGOOGLE()
            cStruct.sType = VK_STRUCTURE_TYPE_PRESENT_TIMES_INFO_GOOGLE
            cStruct.pNext = nil
            cStruct.swapchainCount = UInt32(ptr_pTimes.count)
            cStruct.pTimes = ptr_pTimes.baseAddress
            return try body(&cStruct)
        }
    }
}

struct PresentTimeGOOGLE: CStructConvertible {
    typealias CStruct = VkPresentTimeGOOGLE

    let presentID: UInt32
    let desiredPresentTime: UInt64

    init(cStruct: VkPresentTimeGOOGLE) {
        self.presentID = cStruct.presentID
        self.desiredPresentTime = cStruct.desiredPresentTime
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPresentTimeGOOGLE>) throws -> R) rethrows -> R {
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

    init(cStruct: VkViewportWScalingNV) {
        self.xcoeff = cStruct.xcoeff
        self.ycoeff = cStruct.ycoeff
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkViewportWScalingNV>) throws -> R) rethrows -> R {
        var cStruct = VkViewportWScalingNV()
        cStruct.xcoeff = self.xcoeff
        cStruct.ycoeff = self.ycoeff
        return try body(&cStruct)
    }
}

struct PipelineViewportWScalingStateCreateInfoNV: CStructConvertible {
    typealias CStruct = VkPipelineViewportWScalingStateCreateInfoNV

    let viewportWScalingEnable: Bool
    let pViewportWScalings: Array<ViewportWScalingNV>?

    init(cStruct: VkPipelineViewportWScalingStateCreateInfoNV) {
        self.viewportWScalingEnable = cStruct.viewportWScalingEnable == VK_TRUE
        self.pViewportWScalings = (cStruct.pViewportWScalings != nil) ? UnsafeBufferPointer(start: cStruct.pViewportWScalings, count: Int(cStruct.viewportCount)).map{ ViewportWScalingNV(cStruct: $0) } : nil
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPipelineViewportWScalingStateCreateInfoNV>) throws -> R) rethrows -> R {
        try self.pViewportWScalings.withOptionalCStructBufferPointer { ptr_pViewportWScalings in
            var cStruct = VkPipelineViewportWScalingStateCreateInfoNV()
            cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_W_SCALING_STATE_CREATE_INFO_NV
            cStruct.pNext = nil
            cStruct.viewportWScalingEnable = VkBool32(self.viewportWScalingEnable ? VK_TRUE : VK_FALSE)
            cStruct.viewportCount = UInt32(ptr_pViewportWScalings.count)
            cStruct.pViewportWScalings = ptr_pViewportWScalings.baseAddress
            return try body(&cStruct)
        }
    }
}

struct ViewportSwizzleNV: CStructConvertible {
    typealias CStruct = VkViewportSwizzleNV

    let x: ViewportCoordinateSwizzleNV
    let y: ViewportCoordinateSwizzleNV
    let z: ViewportCoordinateSwizzleNV
    let w: ViewportCoordinateSwizzleNV

    init(cStruct: VkViewportSwizzleNV) {
        self.x = ViewportCoordinateSwizzleNV(rawValue: cStruct.x.rawValue)!
        self.y = ViewportCoordinateSwizzleNV(rawValue: cStruct.y.rawValue)!
        self.z = ViewportCoordinateSwizzleNV(rawValue: cStruct.z.rawValue)!
        self.w = ViewportCoordinateSwizzleNV(rawValue: cStruct.w.rawValue)!
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkViewportSwizzleNV>) throws -> R) rethrows -> R {
        var cStruct = VkViewportSwizzleNV()
        cStruct.x = VkViewportCoordinateSwizzleNV(rawValue: self.x.rawValue)
        cStruct.y = VkViewportCoordinateSwizzleNV(rawValue: self.y.rawValue)
        cStruct.z = VkViewportCoordinateSwizzleNV(rawValue: self.z.rawValue)
        cStruct.w = VkViewportCoordinateSwizzleNV(rawValue: self.w.rawValue)
        return try body(&cStruct)
    }
}

struct PipelineViewportSwizzleStateCreateInfoNV: CStructConvertible {
    typealias CStruct = VkPipelineViewportSwizzleStateCreateInfoNV

    let flags: PipelineViewportSwizzleStateCreateFlagsNV
    let pViewportSwizzles: Array<ViewportSwizzleNV>

    init(cStruct: VkPipelineViewportSwizzleStateCreateInfoNV) {
        self.flags = PipelineViewportSwizzleStateCreateFlagsNV(rawValue: cStruct.flags)
        self.pViewportSwizzles = UnsafeBufferPointer(start: cStruct.pViewportSwizzles, count: Int(cStruct.viewportCount)).map{ ViewportSwizzleNV(cStruct: $0) }
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPipelineViewportSwizzleStateCreateInfoNV>) throws -> R) rethrows -> R {
        try self.pViewportSwizzles.withCStructBufferPointer { ptr_pViewportSwizzles in
            var cStruct = VkPipelineViewportSwizzleStateCreateInfoNV()
            cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_SWIZZLE_STATE_CREATE_INFO_NV
            cStruct.pNext = nil
            cStruct.flags = self.flags.rawValue
            cStruct.viewportCount = UInt32(ptr_pViewportSwizzles.count)
            cStruct.pViewportSwizzles = ptr_pViewportSwizzles.baseAddress
            return try body(&cStruct)
        }
    }
}

struct PhysicalDeviceDiscardRectanglePropertiesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceDiscardRectanglePropertiesEXT

    let maxDiscardRectangles: UInt32

    init(cStruct: VkPhysicalDeviceDiscardRectanglePropertiesEXT) {
        self.maxDiscardRectangles = cStruct.maxDiscardRectangles
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceDiscardRectanglePropertiesEXT>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceDiscardRectanglePropertiesEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DISCARD_RECTANGLE_PROPERTIES_EXT
        cStruct.pNext = nil
        cStruct.maxDiscardRectangles = self.maxDiscardRectangles
        return try body(&cStruct)
    }
}

struct PipelineDiscardRectangleStateCreateInfoEXT: CStructConvertible {
    typealias CStruct = VkPipelineDiscardRectangleStateCreateInfoEXT

    let flags: PipelineDiscardRectangleStateCreateFlagsEXT
    let discardRectangleMode: DiscardRectangleModeEXT
    let pDiscardRectangles: Array<Rect2D>?

    init(cStruct: VkPipelineDiscardRectangleStateCreateInfoEXT) {
        self.flags = PipelineDiscardRectangleStateCreateFlagsEXT(rawValue: cStruct.flags)
        self.discardRectangleMode = DiscardRectangleModeEXT(rawValue: cStruct.discardRectangleMode.rawValue)!
        self.pDiscardRectangles = (cStruct.pDiscardRectangles != nil) ? UnsafeBufferPointer(start: cStruct.pDiscardRectangles, count: Int(cStruct.discardRectangleCount)).map{ Rect2D(cStruct: $0) } : nil
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPipelineDiscardRectangleStateCreateInfoEXT>) throws -> R) rethrows -> R {
        try self.pDiscardRectangles.withOptionalCStructBufferPointer { ptr_pDiscardRectangles in
            var cStruct = VkPipelineDiscardRectangleStateCreateInfoEXT()
            cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_DISCARD_RECTANGLE_STATE_CREATE_INFO_EXT
            cStruct.pNext = nil
            cStruct.flags = self.flags.rawValue
            cStruct.discardRectangleMode = VkDiscardRectangleModeEXT(rawValue: self.discardRectangleMode.rawValue)
            cStruct.discardRectangleCount = UInt32(ptr_pDiscardRectangles.count)
            cStruct.pDiscardRectangles = ptr_pDiscardRectangles.baseAddress
            return try body(&cStruct)
        }
    }
}

struct PhysicalDeviceMultiviewPerViewAttributesPropertiesNVX: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceMultiviewPerViewAttributesPropertiesNVX

    let perViewPositionAllComponents: Bool

    init(cStruct: VkPhysicalDeviceMultiviewPerViewAttributesPropertiesNVX) {
        self.perViewPositionAllComponents = cStruct.perViewPositionAllComponents == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceMultiviewPerViewAttributesPropertiesNVX>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceMultiviewPerViewAttributesPropertiesNVX()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MULTIVIEW_PER_VIEW_ATTRIBUTES_PROPERTIES_NVX
        cStruct.pNext = nil
        cStruct.perViewPositionAllComponents = VkBool32(self.perViewPositionAllComponents ? VK_TRUE : VK_FALSE)
        return try body(&cStruct)
    }
}

struct InputAttachmentAspectReference: CStructConvertible {
    typealias CStruct = VkInputAttachmentAspectReference

    let subpass: UInt32
    let inputAttachmentIndex: UInt32
    let aspectMask: ImageAspectFlags

    init(cStruct: VkInputAttachmentAspectReference) {
        self.subpass = cStruct.subpass
        self.inputAttachmentIndex = cStruct.inputAttachmentIndex
        self.aspectMask = ImageAspectFlags(rawValue: cStruct.aspectMask)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkInputAttachmentAspectReference>) throws -> R) rethrows -> R {
        var cStruct = VkInputAttachmentAspectReference()
        cStruct.subpass = self.subpass
        cStruct.inputAttachmentIndex = self.inputAttachmentIndex
        cStruct.aspectMask = self.aspectMask.rawValue
        return try body(&cStruct)
    }
}

struct RenderPassInputAttachmentAspectCreateInfo: CStructConvertible {
    typealias CStruct = VkRenderPassInputAttachmentAspectCreateInfo

    let pAspectReferences: Array<InputAttachmentAspectReference>

    init(cStruct: VkRenderPassInputAttachmentAspectCreateInfo) {
        self.pAspectReferences = UnsafeBufferPointer(start: cStruct.pAspectReferences, count: Int(cStruct.aspectReferenceCount)).map{ InputAttachmentAspectReference(cStruct: $0) }
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkRenderPassInputAttachmentAspectCreateInfo>) throws -> R) rethrows -> R {
        try self.pAspectReferences.withCStructBufferPointer { ptr_pAspectReferences in
            var cStruct = VkRenderPassInputAttachmentAspectCreateInfo()
            cStruct.sType = VK_STRUCTURE_TYPE_RENDER_PASS_INPUT_ATTACHMENT_ASPECT_CREATE_INFO
            cStruct.pNext = nil
            cStruct.aspectReferenceCount = UInt32(ptr_pAspectReferences.count)
            cStruct.pAspectReferences = ptr_pAspectReferences.baseAddress
            return try body(&cStruct)
        }
    }
}

struct PhysicalDeviceSurfaceInfo2KHR: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceSurfaceInfo2KHR

    let surface: SurfaceKHR

    init(cStruct: VkPhysicalDeviceSurfaceInfo2KHR) {
        fatalError("This initializer should be removed.")
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceSurfaceInfo2KHR>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceSurfaceInfo2KHR()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SURFACE_INFO_2_KHR
        cStruct.pNext = nil
        cStruct.surface = self.surface.handle
        return try body(&cStruct)
    }
}

struct SurfaceCapabilities2KHR: CStructConvertible {
    typealias CStruct = VkSurfaceCapabilities2KHR

    let surfaceCapabilities: SurfaceCapabilitiesKHR

    init(cStruct: VkSurfaceCapabilities2KHR) {
        self.surfaceCapabilities = SurfaceCapabilitiesKHR(cStruct: cStruct.surfaceCapabilities)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkSurfaceCapabilities2KHR>) throws -> R) rethrows -> R {
        try self.surfaceCapabilities.withCStruct { ptr_surfaceCapabilities in
            var cStruct = VkSurfaceCapabilities2KHR()
            cStruct.sType = VK_STRUCTURE_TYPE_SURFACE_CAPABILITIES_2_KHR
            cStruct.pNext = nil
            cStruct.surfaceCapabilities = ptr_surfaceCapabilities.pointee
            return try body(&cStruct)
        }
    }
}

struct SurfaceFormat2KHR: CStructConvertible {
    typealias CStruct = VkSurfaceFormat2KHR

    let surfaceFormat: SurfaceFormatKHR

    init(cStruct: VkSurfaceFormat2KHR) {
        self.surfaceFormat = SurfaceFormatKHR(cStruct: cStruct.surfaceFormat)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkSurfaceFormat2KHR>) throws -> R) rethrows -> R {
        try self.surfaceFormat.withCStruct { ptr_surfaceFormat in
            var cStruct = VkSurfaceFormat2KHR()
            cStruct.sType = VK_STRUCTURE_TYPE_SURFACE_FORMAT_2_KHR
            cStruct.pNext = nil
            cStruct.surfaceFormat = ptr_surfaceFormat.pointee
            return try body(&cStruct)
        }
    }
}

struct DisplayProperties2KHR: CStructConvertible {
    typealias CStruct = VkDisplayProperties2KHR

    let displayProperties: DisplayPropertiesKHR

    init(cStruct: VkDisplayProperties2KHR) {
        self.displayProperties = DisplayPropertiesKHR(cStruct: cStruct.displayProperties)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkDisplayProperties2KHR>) throws -> R) rethrows -> R {
        try self.displayProperties.withCStruct { ptr_displayProperties in
            var cStruct = VkDisplayProperties2KHR()
            cStruct.sType = VK_STRUCTURE_TYPE_DISPLAY_PROPERTIES_2_KHR
            cStruct.pNext = nil
            cStruct.displayProperties = ptr_displayProperties.pointee
            return try body(&cStruct)
        }
    }
}

struct DisplayPlaneProperties2KHR: CStructConvertible {
    typealias CStruct = VkDisplayPlaneProperties2KHR

    let displayPlaneProperties: DisplayPlanePropertiesKHR

    init(cStruct: VkDisplayPlaneProperties2KHR) {
        self.displayPlaneProperties = DisplayPlanePropertiesKHR(cStruct: cStruct.displayPlaneProperties)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkDisplayPlaneProperties2KHR>) throws -> R) rethrows -> R {
        try self.displayPlaneProperties.withCStruct { ptr_displayPlaneProperties in
            var cStruct = VkDisplayPlaneProperties2KHR()
            cStruct.sType = VK_STRUCTURE_TYPE_DISPLAY_PLANE_PROPERTIES_2_KHR
            cStruct.pNext = nil
            cStruct.displayPlaneProperties = ptr_displayPlaneProperties.pointee
            return try body(&cStruct)
        }
    }
}

struct DisplayModeProperties2KHR: CStructConvertible {
    typealias CStruct = VkDisplayModeProperties2KHR

    let displayModeProperties: DisplayModePropertiesKHR

    init(cStruct: VkDisplayModeProperties2KHR) {
        self.displayModeProperties = DisplayModePropertiesKHR(cStruct: cStruct.displayModeProperties)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkDisplayModeProperties2KHR>) throws -> R) rethrows -> R {
        try self.displayModeProperties.withCStruct { ptr_displayModeProperties in
            var cStruct = VkDisplayModeProperties2KHR()
            cStruct.sType = VK_STRUCTURE_TYPE_DISPLAY_MODE_PROPERTIES_2_KHR
            cStruct.pNext = nil
            cStruct.displayModeProperties = ptr_displayModeProperties.pointee
            return try body(&cStruct)
        }
    }
}

struct DisplayPlaneInfo2KHR: CStructConvertible {
    typealias CStruct = VkDisplayPlaneInfo2KHR

    let mode: DisplayModeKHR
    let planeIndex: UInt32

    init(cStruct: VkDisplayPlaneInfo2KHR) {
        fatalError("This initializer should be removed.")
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkDisplayPlaneInfo2KHR>) throws -> R) rethrows -> R {
        var cStruct = VkDisplayPlaneInfo2KHR()
        cStruct.sType = VK_STRUCTURE_TYPE_DISPLAY_PLANE_INFO_2_KHR
        cStruct.pNext = nil
        cStruct.mode = self.mode.handle
        cStruct.planeIndex = self.planeIndex
        return try body(&cStruct)
    }
}

struct DisplayPlaneCapabilities2KHR: CStructConvertible {
    typealias CStruct = VkDisplayPlaneCapabilities2KHR

    let capabilities: DisplayPlaneCapabilitiesKHR

    init(cStruct: VkDisplayPlaneCapabilities2KHR) {
        self.capabilities = DisplayPlaneCapabilitiesKHR(cStruct: cStruct.capabilities)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkDisplayPlaneCapabilities2KHR>) throws -> R) rethrows -> R {
        try self.capabilities.withCStruct { ptr_capabilities in
            var cStruct = VkDisplayPlaneCapabilities2KHR()
            cStruct.sType = VK_STRUCTURE_TYPE_DISPLAY_PLANE_CAPABILITIES_2_KHR
            cStruct.pNext = nil
            cStruct.capabilities = ptr_capabilities.pointee
            return try body(&cStruct)
        }
    }
}

struct SharedPresentSurfaceCapabilitiesKHR: CStructConvertible {
    typealias CStruct = VkSharedPresentSurfaceCapabilitiesKHR

    let sharedPresentSupportedUsageFlags: ImageUsageFlags

    init(cStruct: VkSharedPresentSurfaceCapabilitiesKHR) {
        self.sharedPresentSupportedUsageFlags = ImageUsageFlags(rawValue: cStruct.sharedPresentSupportedUsageFlags)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkSharedPresentSurfaceCapabilitiesKHR>) throws -> R) rethrows -> R {
        var cStruct = VkSharedPresentSurfaceCapabilitiesKHR()
        cStruct.sType = VK_STRUCTURE_TYPE_SHARED_PRESENT_SURFACE_CAPABILITIES_KHR
        cStruct.pNext = nil
        cStruct.sharedPresentSupportedUsageFlags = self.sharedPresentSupportedUsageFlags.rawValue
        return try body(&cStruct)
    }
}

struct PhysicalDevice16BitStorageFeatures: CStructConvertible {
    typealias CStruct = VkPhysicalDevice16BitStorageFeatures

    let storageBuffer16BitAccess: Bool
    let uniformAndStorageBuffer16BitAccess: Bool
    let storagePushConstant16: Bool
    let storageInputOutput16: Bool

    init(cStruct: VkPhysicalDevice16BitStorageFeatures) {
        self.storageBuffer16BitAccess = cStruct.storageBuffer16BitAccess == VK_TRUE
        self.uniformAndStorageBuffer16BitAccess = cStruct.uniformAndStorageBuffer16BitAccess == VK_TRUE
        self.storagePushConstant16 = cStruct.storagePushConstant16 == VK_TRUE
        self.storageInputOutput16 = cStruct.storageInputOutput16 == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDevice16BitStorageFeatures>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDevice16BitStorageFeatures()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_16BIT_STORAGE_FEATURES
        cStruct.pNext = nil
        cStruct.storageBuffer16BitAccess = VkBool32(self.storageBuffer16BitAccess ? VK_TRUE : VK_FALSE)
        cStruct.uniformAndStorageBuffer16BitAccess = VkBool32(self.uniformAndStorageBuffer16BitAccess ? VK_TRUE : VK_FALSE)
        cStruct.storagePushConstant16 = VkBool32(self.storagePushConstant16 ? VK_TRUE : VK_FALSE)
        cStruct.storageInputOutput16 = VkBool32(self.storageInputOutput16 ? VK_TRUE : VK_FALSE)
        return try body(&cStruct)
    }
}

struct PhysicalDeviceSubgroupProperties: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceSubgroupProperties

    let subgroupSize: UInt32
    let supportedStages: ShaderStageFlags
    let supportedOperations: SubgroupFeatureFlags
    let quadOperationsInAllStages: Bool

    init(cStruct: VkPhysicalDeviceSubgroupProperties) {
        self.subgroupSize = cStruct.subgroupSize
        self.supportedStages = ShaderStageFlags(rawValue: cStruct.supportedStages)
        self.supportedOperations = SubgroupFeatureFlags(rawValue: cStruct.supportedOperations)
        self.quadOperationsInAllStages = cStruct.quadOperationsInAllStages == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceSubgroupProperties>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceSubgroupProperties()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SUBGROUP_PROPERTIES
        cStruct.pNext = nil
        cStruct.subgroupSize = self.subgroupSize
        cStruct.supportedStages = self.supportedStages.rawValue
        cStruct.supportedOperations = self.supportedOperations.rawValue
        cStruct.quadOperationsInAllStages = VkBool32(self.quadOperationsInAllStages ? VK_TRUE : VK_FALSE)
        return try body(&cStruct)
    }
}

struct PhysicalDeviceShaderSubgroupExtendedTypesFeatures: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceShaderSubgroupExtendedTypesFeatures

    let shaderSubgroupExtendedTypes: Bool

    init(cStruct: VkPhysicalDeviceShaderSubgroupExtendedTypesFeatures) {
        self.shaderSubgroupExtendedTypes = cStruct.shaderSubgroupExtendedTypes == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceShaderSubgroupExtendedTypesFeatures>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceShaderSubgroupExtendedTypesFeatures()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_SUBGROUP_EXTENDED_TYPES_FEATURES
        cStruct.pNext = nil
        cStruct.shaderSubgroupExtendedTypes = VkBool32(self.shaderSubgroupExtendedTypes ? VK_TRUE : VK_FALSE)
        return try body(&cStruct)
    }
}

struct BufferMemoryRequirementsInfo2: CStructConvertible {
    typealias CStruct = VkBufferMemoryRequirementsInfo2

    let buffer: Buffer

    init(cStruct: VkBufferMemoryRequirementsInfo2) {
        fatalError("This initializer should be removed.")
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkBufferMemoryRequirementsInfo2>) throws -> R) rethrows -> R {
        var cStruct = VkBufferMemoryRequirementsInfo2()
        cStruct.sType = VK_STRUCTURE_TYPE_BUFFER_MEMORY_REQUIREMENTS_INFO_2
        cStruct.pNext = nil
        cStruct.buffer = self.buffer.handle
        return try body(&cStruct)
    }
}

struct ImageMemoryRequirementsInfo2: CStructConvertible {
    typealias CStruct = VkImageMemoryRequirementsInfo2

    let image: Image

    init(cStruct: VkImageMemoryRequirementsInfo2) {
        fatalError("This initializer should be removed.")
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkImageMemoryRequirementsInfo2>) throws -> R) rethrows -> R {
        var cStruct = VkImageMemoryRequirementsInfo2()
        cStruct.sType = VK_STRUCTURE_TYPE_IMAGE_MEMORY_REQUIREMENTS_INFO_2
        cStruct.pNext = nil
        cStruct.image = self.image.handle
        return try body(&cStruct)
    }
}

struct ImageSparseMemoryRequirementsInfo2: CStructConvertible {
    typealias CStruct = VkImageSparseMemoryRequirementsInfo2

    let image: Image

    init(cStruct: VkImageSparseMemoryRequirementsInfo2) {
        fatalError("This initializer should be removed.")
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkImageSparseMemoryRequirementsInfo2>) throws -> R) rethrows -> R {
        var cStruct = VkImageSparseMemoryRequirementsInfo2()
        cStruct.sType = VK_STRUCTURE_TYPE_IMAGE_SPARSE_MEMORY_REQUIREMENTS_INFO_2
        cStruct.pNext = nil
        cStruct.image = self.image.handle
        return try body(&cStruct)
    }
}

struct MemoryRequirements2: CStructConvertible {
    typealias CStruct = VkMemoryRequirements2

    let memoryRequirements: MemoryRequirements

    init(cStruct: VkMemoryRequirements2) {
        self.memoryRequirements = MemoryRequirements(cStruct: cStruct.memoryRequirements)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkMemoryRequirements2>) throws -> R) rethrows -> R {
        try self.memoryRequirements.withCStruct { ptr_memoryRequirements in
            var cStruct = VkMemoryRequirements2()
            cStruct.sType = VK_STRUCTURE_TYPE_MEMORY_REQUIREMENTS_2
            cStruct.pNext = nil
            cStruct.memoryRequirements = ptr_memoryRequirements.pointee
            return try body(&cStruct)
        }
    }
}

struct SparseImageMemoryRequirements2: CStructConvertible {
    typealias CStruct = VkSparseImageMemoryRequirements2

    let memoryRequirements: SparseImageMemoryRequirements

    init(cStruct: VkSparseImageMemoryRequirements2) {
        self.memoryRequirements = SparseImageMemoryRequirements(cStruct: cStruct.memoryRequirements)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkSparseImageMemoryRequirements2>) throws -> R) rethrows -> R {
        try self.memoryRequirements.withCStruct { ptr_memoryRequirements in
            var cStruct = VkSparseImageMemoryRequirements2()
            cStruct.sType = VK_STRUCTURE_TYPE_SPARSE_IMAGE_MEMORY_REQUIREMENTS_2
            cStruct.pNext = nil
            cStruct.memoryRequirements = ptr_memoryRequirements.pointee
            return try body(&cStruct)
        }
    }
}

struct PhysicalDevicePointClippingProperties: CStructConvertible {
    typealias CStruct = VkPhysicalDevicePointClippingProperties

    let pointClippingBehavior: PointClippingBehavior

    init(cStruct: VkPhysicalDevicePointClippingProperties) {
        self.pointClippingBehavior = PointClippingBehavior(rawValue: cStruct.pointClippingBehavior.rawValue)!
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDevicePointClippingProperties>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDevicePointClippingProperties()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_POINT_CLIPPING_PROPERTIES
        cStruct.pNext = nil
        cStruct.pointClippingBehavior = VkPointClippingBehavior(rawValue: self.pointClippingBehavior.rawValue)
        return try body(&cStruct)
    }
}

struct MemoryDedicatedRequirements: CStructConvertible {
    typealias CStruct = VkMemoryDedicatedRequirements

    let prefersDedicatedAllocation: Bool
    let requiresDedicatedAllocation: Bool

    init(cStruct: VkMemoryDedicatedRequirements) {
        self.prefersDedicatedAllocation = cStruct.prefersDedicatedAllocation == VK_TRUE
        self.requiresDedicatedAllocation = cStruct.requiresDedicatedAllocation == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkMemoryDedicatedRequirements>) throws -> R) rethrows -> R {
        var cStruct = VkMemoryDedicatedRequirements()
        cStruct.sType = VK_STRUCTURE_TYPE_MEMORY_DEDICATED_REQUIREMENTS
        cStruct.pNext = nil
        cStruct.prefersDedicatedAllocation = VkBool32(self.prefersDedicatedAllocation ? VK_TRUE : VK_FALSE)
        cStruct.requiresDedicatedAllocation = VkBool32(self.requiresDedicatedAllocation ? VK_TRUE : VK_FALSE)
        return try body(&cStruct)
    }
}

struct MemoryDedicatedAllocateInfo: CStructConvertible {
    typealias CStruct = VkMemoryDedicatedAllocateInfo

    let image: Image?
    let buffer: Buffer?

    init(cStruct: VkMemoryDedicatedAllocateInfo) {
        fatalError("This initializer should be removed.")
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkMemoryDedicatedAllocateInfo>) throws -> R) rethrows -> R {
        var cStruct = VkMemoryDedicatedAllocateInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_MEMORY_DEDICATED_ALLOCATE_INFO
        cStruct.pNext = nil
        cStruct.image = self.image?.handle
        cStruct.buffer = self.buffer?.handle
        return try body(&cStruct)
    }
}

struct ImageViewUsageCreateInfo: CStructConvertible {
    typealias CStruct = VkImageViewUsageCreateInfo

    let usage: ImageUsageFlags

    init(cStruct: VkImageViewUsageCreateInfo) {
        self.usage = ImageUsageFlags(rawValue: cStruct.usage)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkImageViewUsageCreateInfo>) throws -> R) rethrows -> R {
        var cStruct = VkImageViewUsageCreateInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_IMAGE_VIEW_USAGE_CREATE_INFO
        cStruct.pNext = nil
        cStruct.usage = self.usage.rawValue
        return try body(&cStruct)
    }
}

struct PipelineTessellationDomainOriginStateCreateInfo: CStructConvertible {
    typealias CStruct = VkPipelineTessellationDomainOriginStateCreateInfo

    let domainOrigin: TessellationDomainOrigin

    init(cStruct: VkPipelineTessellationDomainOriginStateCreateInfo) {
        self.domainOrigin = TessellationDomainOrigin(rawValue: cStruct.domainOrigin.rawValue)!
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPipelineTessellationDomainOriginStateCreateInfo>) throws -> R) rethrows -> R {
        var cStruct = VkPipelineTessellationDomainOriginStateCreateInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_TESSELLATION_DOMAIN_ORIGIN_STATE_CREATE_INFO
        cStruct.pNext = nil
        cStruct.domainOrigin = VkTessellationDomainOrigin(rawValue: self.domainOrigin.rawValue)
        return try body(&cStruct)
    }
}

struct SamplerYcbcrConversionInfo: CStructConvertible {
    typealias CStruct = VkSamplerYcbcrConversionInfo

    let conversion: SamplerYcbcrConversion

    init(cStruct: VkSamplerYcbcrConversionInfo) {
        fatalError("This initializer should be removed.")
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkSamplerYcbcrConversionInfo>) throws -> R) rethrows -> R {
        var cStruct = VkSamplerYcbcrConversionInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_SAMPLER_YCBCR_CONVERSION_INFO
        cStruct.pNext = nil
        cStruct.conversion = self.conversion.handle
        return try body(&cStruct)
    }
}

struct SamplerYcbcrConversionCreateInfo: CStructConvertible {
    typealias CStruct = VkSamplerYcbcrConversionCreateInfo

    let format: Format
    let ycbcrModel: SamplerYcbcrModelConversion
    let ycbcrRange: SamplerYcbcrRange
    let components: ComponentMapping
    let xChromaOffset: ChromaLocation
    let yChromaOffset: ChromaLocation
    let chromaFilter: Filter
    let forceExplicitReconstruction: Bool

    init(cStruct: VkSamplerYcbcrConversionCreateInfo) {
        self.format = Format(rawValue: cStruct.format.rawValue)!
        self.ycbcrModel = SamplerYcbcrModelConversion(rawValue: cStruct.ycbcrModel.rawValue)!
        self.ycbcrRange = SamplerYcbcrRange(rawValue: cStruct.ycbcrRange.rawValue)!
        self.components = ComponentMapping(cStruct: cStruct.components)
        self.xChromaOffset = ChromaLocation(rawValue: cStruct.xChromaOffset.rawValue)!
        self.yChromaOffset = ChromaLocation(rawValue: cStruct.yChromaOffset.rawValue)!
        self.chromaFilter = Filter(rawValue: cStruct.chromaFilter.rawValue)!
        self.forceExplicitReconstruction = cStruct.forceExplicitReconstruction == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkSamplerYcbcrConversionCreateInfo>) throws -> R) rethrows -> R {
        try self.components.withCStruct { ptr_components in
            var cStruct = VkSamplerYcbcrConversionCreateInfo()
            cStruct.sType = VK_STRUCTURE_TYPE_SAMPLER_YCBCR_CONVERSION_CREATE_INFO
            cStruct.pNext = nil
            cStruct.format = VkFormat(rawValue: self.format.rawValue)
            cStruct.ycbcrModel = VkSamplerYcbcrModelConversion(rawValue: self.ycbcrModel.rawValue)
            cStruct.ycbcrRange = VkSamplerYcbcrRange(rawValue: self.ycbcrRange.rawValue)
            cStruct.components = ptr_components.pointee
            cStruct.xChromaOffset = VkChromaLocation(rawValue: self.xChromaOffset.rawValue)
            cStruct.yChromaOffset = VkChromaLocation(rawValue: self.yChromaOffset.rawValue)
            cStruct.chromaFilter = VkFilter(rawValue: self.chromaFilter.rawValue)
            cStruct.forceExplicitReconstruction = VkBool32(self.forceExplicitReconstruction ? VK_TRUE : VK_FALSE)
            return try body(&cStruct)
        }
    }
}

struct BindImagePlaneMemoryInfo: CStructConvertible {
    typealias CStruct = VkBindImagePlaneMemoryInfo

    let planeAspect: ImageAspectFlags

    init(cStruct: VkBindImagePlaneMemoryInfo) {
        self.planeAspect = ImageAspectFlags(rawValue: cStruct.planeAspect.rawValue)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkBindImagePlaneMemoryInfo>) throws -> R) rethrows -> R {
        var cStruct = VkBindImagePlaneMemoryInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_BIND_IMAGE_PLANE_MEMORY_INFO
        cStruct.pNext = nil
        cStruct.planeAspect = VkImageAspectFlagBits(rawValue: self.planeAspect.rawValue)
        return try body(&cStruct)
    }
}

struct ImagePlaneMemoryRequirementsInfo: CStructConvertible {
    typealias CStruct = VkImagePlaneMemoryRequirementsInfo

    let planeAspect: ImageAspectFlags

    init(cStruct: VkImagePlaneMemoryRequirementsInfo) {
        self.planeAspect = ImageAspectFlags(rawValue: cStruct.planeAspect.rawValue)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkImagePlaneMemoryRequirementsInfo>) throws -> R) rethrows -> R {
        var cStruct = VkImagePlaneMemoryRequirementsInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_IMAGE_PLANE_MEMORY_REQUIREMENTS_INFO
        cStruct.pNext = nil
        cStruct.planeAspect = VkImageAspectFlagBits(rawValue: self.planeAspect.rawValue)
        return try body(&cStruct)
    }
}

struct PhysicalDeviceSamplerYcbcrConversionFeatures: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceSamplerYcbcrConversionFeatures

    let samplerYcbcrConversion: Bool

    init(cStruct: VkPhysicalDeviceSamplerYcbcrConversionFeatures) {
        self.samplerYcbcrConversion = cStruct.samplerYcbcrConversion == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceSamplerYcbcrConversionFeatures>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceSamplerYcbcrConversionFeatures()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SAMPLER_YCBCR_CONVERSION_FEATURES
        cStruct.pNext = nil
        cStruct.samplerYcbcrConversion = VkBool32(self.samplerYcbcrConversion ? VK_TRUE : VK_FALSE)
        return try body(&cStruct)
    }
}

struct SamplerYcbcrConversionImageFormatProperties: CStructConvertible {
    typealias CStruct = VkSamplerYcbcrConversionImageFormatProperties

    let combinedImageSamplerDescriptorCount: UInt32

    init(cStruct: VkSamplerYcbcrConversionImageFormatProperties) {
        self.combinedImageSamplerDescriptorCount = cStruct.combinedImageSamplerDescriptorCount
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkSamplerYcbcrConversionImageFormatProperties>) throws -> R) rethrows -> R {
        var cStruct = VkSamplerYcbcrConversionImageFormatProperties()
        cStruct.sType = VK_STRUCTURE_TYPE_SAMPLER_YCBCR_CONVERSION_IMAGE_FORMAT_PROPERTIES
        cStruct.pNext = nil
        cStruct.combinedImageSamplerDescriptorCount = self.combinedImageSamplerDescriptorCount
        return try body(&cStruct)
    }
}

struct TextureLODGatherFormatPropertiesAMD: CStructConvertible {
    typealias CStruct = VkTextureLODGatherFormatPropertiesAMD

    let supportsTextureGatherLODBiasAMD: Bool

    init(cStruct: VkTextureLODGatherFormatPropertiesAMD) {
        self.supportsTextureGatherLODBiasAMD = cStruct.supportsTextureGatherLODBiasAMD == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkTextureLODGatherFormatPropertiesAMD>) throws -> R) rethrows -> R {
        var cStruct = VkTextureLODGatherFormatPropertiesAMD()
        cStruct.sType = VK_STRUCTURE_TYPE_TEXTURE_LOD_GATHER_FORMAT_PROPERTIES_AMD
        cStruct.pNext = nil
        cStruct.supportsTextureGatherLODBiasAMD = VkBool32(self.supportsTextureGatherLODBiasAMD ? VK_TRUE : VK_FALSE)
        return try body(&cStruct)
    }
}

struct ConditionalRenderingBeginInfoEXT: CStructConvertible {
    typealias CStruct = VkConditionalRenderingBeginInfoEXT

    let buffer: Buffer
    let offset: VkDeviceSize
    let flags: ConditionalRenderingFlagsEXT

    init(cStruct: VkConditionalRenderingBeginInfoEXT) {
        fatalError("This initializer should be removed.")
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkConditionalRenderingBeginInfoEXT>) throws -> R) rethrows -> R {
        var cStruct = VkConditionalRenderingBeginInfoEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_CONDITIONAL_RENDERING_BEGIN_INFO_EXT
        cStruct.pNext = nil
        cStruct.buffer = self.buffer.handle
        cStruct.offset = self.offset
        cStruct.flags = self.flags.rawValue
        return try body(&cStruct)
    }
}

struct ProtectedSubmitInfo: CStructConvertible {
    typealias CStruct = VkProtectedSubmitInfo

    let protectedSubmit: Bool

    init(cStruct: VkProtectedSubmitInfo) {
        self.protectedSubmit = cStruct.protectedSubmit == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkProtectedSubmitInfo>) throws -> R) rethrows -> R {
        var cStruct = VkProtectedSubmitInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_PROTECTED_SUBMIT_INFO
        cStruct.pNext = nil
        cStruct.protectedSubmit = VkBool32(self.protectedSubmit ? VK_TRUE : VK_FALSE)
        return try body(&cStruct)
    }
}

struct PhysicalDeviceProtectedMemoryFeatures: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceProtectedMemoryFeatures

    let protectedMemory: Bool

    init(cStruct: VkPhysicalDeviceProtectedMemoryFeatures) {
        self.protectedMemory = cStruct.protectedMemory == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceProtectedMemoryFeatures>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceProtectedMemoryFeatures()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PROTECTED_MEMORY_FEATURES
        cStruct.pNext = nil
        cStruct.protectedMemory = VkBool32(self.protectedMemory ? VK_TRUE : VK_FALSE)
        return try body(&cStruct)
    }
}

struct PhysicalDeviceProtectedMemoryProperties: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceProtectedMemoryProperties

    let protectedNoFault: Bool

    init(cStruct: VkPhysicalDeviceProtectedMemoryProperties) {
        self.protectedNoFault = cStruct.protectedNoFault == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceProtectedMemoryProperties>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceProtectedMemoryProperties()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PROTECTED_MEMORY_PROPERTIES
        cStruct.pNext = nil
        cStruct.protectedNoFault = VkBool32(self.protectedNoFault ? VK_TRUE : VK_FALSE)
        return try body(&cStruct)
    }
}

struct DeviceQueueInfo2: CStructConvertible {
    typealias CStruct = VkDeviceQueueInfo2

    let flags: DeviceQueueCreateFlags
    let queueFamilyIndex: UInt32
    let queueIndex: UInt32

    init(cStruct: VkDeviceQueueInfo2) {
        self.flags = DeviceQueueCreateFlags(rawValue: cStruct.flags)
        self.queueFamilyIndex = cStruct.queueFamilyIndex
        self.queueIndex = cStruct.queueIndex
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkDeviceQueueInfo2>) throws -> R) rethrows -> R {
        var cStruct = VkDeviceQueueInfo2()
        cStruct.sType = VK_STRUCTURE_TYPE_DEVICE_QUEUE_INFO_2
        cStruct.pNext = nil
        cStruct.flags = self.flags.rawValue
        cStruct.queueFamilyIndex = self.queueFamilyIndex
        cStruct.queueIndex = self.queueIndex
        return try body(&cStruct)
    }
}

struct PipelineCoverageToColorStateCreateInfoNV: CStructConvertible {
    typealias CStruct = VkPipelineCoverageToColorStateCreateInfoNV

    let flags: PipelineCoverageToColorStateCreateFlagsNV
    let coverageToColorEnable: Bool
    let coverageToColorLocation: UInt32

    init(cStruct: VkPipelineCoverageToColorStateCreateInfoNV) {
        self.flags = PipelineCoverageToColorStateCreateFlagsNV(rawValue: cStruct.flags)
        self.coverageToColorEnable = cStruct.coverageToColorEnable == VK_TRUE
        self.coverageToColorLocation = cStruct.coverageToColorLocation
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPipelineCoverageToColorStateCreateInfoNV>) throws -> R) rethrows -> R {
        var cStruct = VkPipelineCoverageToColorStateCreateInfoNV()
        cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_COVERAGE_TO_COLOR_STATE_CREATE_INFO_NV
        cStruct.pNext = nil
        cStruct.flags = self.flags.rawValue
        cStruct.coverageToColorEnable = VkBool32(self.coverageToColorEnable ? VK_TRUE : VK_FALSE)
        cStruct.coverageToColorLocation = self.coverageToColorLocation
        return try body(&cStruct)
    }
}

struct PhysicalDeviceSamplerFilterMinmaxProperties: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceSamplerFilterMinmaxProperties

    let filterMinmaxSingleComponentFormats: Bool
    let filterMinmaxImageComponentMapping: Bool

    init(cStruct: VkPhysicalDeviceSamplerFilterMinmaxProperties) {
        self.filterMinmaxSingleComponentFormats = cStruct.filterMinmaxSingleComponentFormats == VK_TRUE
        self.filterMinmaxImageComponentMapping = cStruct.filterMinmaxImageComponentMapping == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceSamplerFilterMinmaxProperties>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceSamplerFilterMinmaxProperties()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SAMPLER_FILTER_MINMAX_PROPERTIES
        cStruct.pNext = nil
        cStruct.filterMinmaxSingleComponentFormats = VkBool32(self.filterMinmaxSingleComponentFormats ? VK_TRUE : VK_FALSE)
        cStruct.filterMinmaxImageComponentMapping = VkBool32(self.filterMinmaxImageComponentMapping ? VK_TRUE : VK_FALSE)
        return try body(&cStruct)
    }
}

struct SampleLocationEXT: CStructConvertible {
    typealias CStruct = VkSampleLocationEXT

    let x: Float
    let y: Float

    init(cStruct: VkSampleLocationEXT) {
        self.x = cStruct.x
        self.y = cStruct.y
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkSampleLocationEXT>) throws -> R) rethrows -> R {
        var cStruct = VkSampleLocationEXT()
        cStruct.x = self.x
        cStruct.y = self.y
        return try body(&cStruct)
    }
}

struct SampleLocationsInfoEXT: CStructConvertible {
    typealias CStruct = VkSampleLocationsInfoEXT

    let sampleLocationsPerPixel: SampleCountFlags
    let sampleLocationGridSize: Extent2D
    let pSampleLocations: Array<SampleLocationEXT>

    init(cStruct: VkSampleLocationsInfoEXT) {
        self.sampleLocationsPerPixel = SampleCountFlags(rawValue: cStruct.sampleLocationsPerPixel.rawValue)
        self.sampleLocationGridSize = Extent2D(cStruct: cStruct.sampleLocationGridSize)
        self.pSampleLocations = UnsafeBufferPointer(start: cStruct.pSampleLocations, count: Int(cStruct.sampleLocationsCount)).map{ SampleLocationEXT(cStruct: $0) }
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkSampleLocationsInfoEXT>) throws -> R) rethrows -> R {
        try self.sampleLocationGridSize.withCStruct { ptr_sampleLocationGridSize in
            try self.pSampleLocations.withCStructBufferPointer { ptr_pSampleLocations in
                var cStruct = VkSampleLocationsInfoEXT()
                cStruct.sType = VK_STRUCTURE_TYPE_SAMPLE_LOCATIONS_INFO_EXT
                cStruct.pNext = nil
                cStruct.sampleLocationsPerPixel = VkSampleCountFlagBits(rawValue: self.sampleLocationsPerPixel.rawValue)
                cStruct.sampleLocationGridSize = ptr_sampleLocationGridSize.pointee
                cStruct.sampleLocationsCount = UInt32(ptr_pSampleLocations.count)
                cStruct.pSampleLocations = ptr_pSampleLocations.baseAddress
                return try body(&cStruct)
            }
        }
    }
}

struct AttachmentSampleLocationsEXT: CStructConvertible {
    typealias CStruct = VkAttachmentSampleLocationsEXT

    let attachmentIndex: UInt32
    let sampleLocationsInfo: SampleLocationsInfoEXT

    init(cStruct: VkAttachmentSampleLocationsEXT) {
        self.attachmentIndex = cStruct.attachmentIndex
        self.sampleLocationsInfo = SampleLocationsInfoEXT(cStruct: cStruct.sampleLocationsInfo)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkAttachmentSampleLocationsEXT>) throws -> R) rethrows -> R {
        try self.sampleLocationsInfo.withCStruct { ptr_sampleLocationsInfo in
            var cStruct = VkAttachmentSampleLocationsEXT()
            cStruct.attachmentIndex = self.attachmentIndex
            cStruct.sampleLocationsInfo = ptr_sampleLocationsInfo.pointee
            return try body(&cStruct)
        }
    }
}

struct SubpassSampleLocationsEXT: CStructConvertible {
    typealias CStruct = VkSubpassSampleLocationsEXT

    let subpassIndex: UInt32
    let sampleLocationsInfo: SampleLocationsInfoEXT

    init(cStruct: VkSubpassSampleLocationsEXT) {
        self.subpassIndex = cStruct.subpassIndex
        self.sampleLocationsInfo = SampleLocationsInfoEXT(cStruct: cStruct.sampleLocationsInfo)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkSubpassSampleLocationsEXT>) throws -> R) rethrows -> R {
        try self.sampleLocationsInfo.withCStruct { ptr_sampleLocationsInfo in
            var cStruct = VkSubpassSampleLocationsEXT()
            cStruct.subpassIndex = self.subpassIndex
            cStruct.sampleLocationsInfo = ptr_sampleLocationsInfo.pointee
            return try body(&cStruct)
        }
    }
}

struct RenderPassSampleLocationsBeginInfoEXT: CStructConvertible {
    typealias CStruct = VkRenderPassSampleLocationsBeginInfoEXT

    let pAttachmentInitialSampleLocations: Array<AttachmentSampleLocationsEXT>
    let pPostSubpassSampleLocations: Array<SubpassSampleLocationsEXT>

    init(cStruct: VkRenderPassSampleLocationsBeginInfoEXT) {
        self.pAttachmentInitialSampleLocations = UnsafeBufferPointer(start: cStruct.pAttachmentInitialSampleLocations, count: Int(cStruct.attachmentInitialSampleLocationsCount)).map{ AttachmentSampleLocationsEXT(cStruct: $0) }
        self.pPostSubpassSampleLocations = UnsafeBufferPointer(start: cStruct.pPostSubpassSampleLocations, count: Int(cStruct.postSubpassSampleLocationsCount)).map{ SubpassSampleLocationsEXT(cStruct: $0) }
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkRenderPassSampleLocationsBeginInfoEXT>) throws -> R) rethrows -> R {
        try self.pAttachmentInitialSampleLocations.withCStructBufferPointer { ptr_pAttachmentInitialSampleLocations in
            try self.pPostSubpassSampleLocations.withCStructBufferPointer { ptr_pPostSubpassSampleLocations in
                var cStruct = VkRenderPassSampleLocationsBeginInfoEXT()
                cStruct.sType = VK_STRUCTURE_TYPE_RENDER_PASS_SAMPLE_LOCATIONS_BEGIN_INFO_EXT
                cStruct.pNext = nil
                cStruct.attachmentInitialSampleLocationsCount = UInt32(ptr_pAttachmentInitialSampleLocations.count)
                cStruct.pAttachmentInitialSampleLocations = ptr_pAttachmentInitialSampleLocations.baseAddress
                cStruct.postSubpassSampleLocationsCount = UInt32(ptr_pPostSubpassSampleLocations.count)
                cStruct.pPostSubpassSampleLocations = ptr_pPostSubpassSampleLocations.baseAddress
                return try body(&cStruct)
            }
        }
    }
}

struct PipelineSampleLocationsStateCreateInfoEXT: CStructConvertible {
    typealias CStruct = VkPipelineSampleLocationsStateCreateInfoEXT

    let sampleLocationsEnable: Bool
    let sampleLocationsInfo: SampleLocationsInfoEXT

    init(cStruct: VkPipelineSampleLocationsStateCreateInfoEXT) {
        self.sampleLocationsEnable = cStruct.sampleLocationsEnable == VK_TRUE
        self.sampleLocationsInfo = SampleLocationsInfoEXT(cStruct: cStruct.sampleLocationsInfo)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPipelineSampleLocationsStateCreateInfoEXT>) throws -> R) rethrows -> R {
        try self.sampleLocationsInfo.withCStruct { ptr_sampleLocationsInfo in
            var cStruct = VkPipelineSampleLocationsStateCreateInfoEXT()
            cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_SAMPLE_LOCATIONS_STATE_CREATE_INFO_EXT
            cStruct.pNext = nil
            cStruct.sampleLocationsEnable = VkBool32(self.sampleLocationsEnable ? VK_TRUE : VK_FALSE)
            cStruct.sampleLocationsInfo = ptr_sampleLocationsInfo.pointee
            return try body(&cStruct)
        }
    }
}

struct PhysicalDeviceSampleLocationsPropertiesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceSampleLocationsPropertiesEXT

    let sampleLocationSampleCounts: SampleCountFlags
    let maxSampleLocationGridSize: Extent2D
    let sampleLocationCoordinateRange: (Float, Float)
    let sampleLocationSubPixelBits: UInt32
    let variableSampleLocations: Bool

    init(cStruct: VkPhysicalDeviceSampleLocationsPropertiesEXT) {
        self.sampleLocationSampleCounts = SampleCountFlags(rawValue: cStruct.sampleLocationSampleCounts)
        self.maxSampleLocationGridSize = Extent2D(cStruct: cStruct.maxSampleLocationGridSize)
        self.sampleLocationCoordinateRange = cStruct.sampleLocationCoordinateRange
        self.sampleLocationSubPixelBits = cStruct.sampleLocationSubPixelBits
        self.variableSampleLocations = cStruct.variableSampleLocations == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceSampleLocationsPropertiesEXT>) throws -> R) rethrows -> R {
        try self.maxSampleLocationGridSize.withCStruct { ptr_maxSampleLocationGridSize in
            var cStruct = VkPhysicalDeviceSampleLocationsPropertiesEXT()
            cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SAMPLE_LOCATIONS_PROPERTIES_EXT
            cStruct.pNext = nil
            cStruct.sampleLocationSampleCounts = self.sampleLocationSampleCounts.rawValue
            cStruct.maxSampleLocationGridSize = ptr_maxSampleLocationGridSize.pointee
            cStruct.sampleLocationCoordinateRange = self.sampleLocationCoordinateRange
            cStruct.sampleLocationSubPixelBits = self.sampleLocationSubPixelBits
            cStruct.variableSampleLocations = VkBool32(self.variableSampleLocations ? VK_TRUE : VK_FALSE)
            return try body(&cStruct)
        }
    }
}

struct MultisamplePropertiesEXT: CStructConvertible {
    typealias CStruct = VkMultisamplePropertiesEXT

    let maxSampleLocationGridSize: Extent2D

    init(cStruct: VkMultisamplePropertiesEXT) {
        self.maxSampleLocationGridSize = Extent2D(cStruct: cStruct.maxSampleLocationGridSize)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkMultisamplePropertiesEXT>) throws -> R) rethrows -> R {
        try self.maxSampleLocationGridSize.withCStruct { ptr_maxSampleLocationGridSize in
            var cStruct = VkMultisamplePropertiesEXT()
            cStruct.sType = VK_STRUCTURE_TYPE_MULTISAMPLE_PROPERTIES_EXT
            cStruct.pNext = nil
            cStruct.maxSampleLocationGridSize = ptr_maxSampleLocationGridSize.pointee
            return try body(&cStruct)
        }
    }
}

struct SamplerReductionModeCreateInfo: CStructConvertible {
    typealias CStruct = VkSamplerReductionModeCreateInfo

    let reductionMode: SamplerReductionMode

    init(cStruct: VkSamplerReductionModeCreateInfo) {
        self.reductionMode = SamplerReductionMode(rawValue: cStruct.reductionMode.rawValue)!
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkSamplerReductionModeCreateInfo>) throws -> R) rethrows -> R {
        var cStruct = VkSamplerReductionModeCreateInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_SAMPLER_REDUCTION_MODE_CREATE_INFO
        cStruct.pNext = nil
        cStruct.reductionMode = VkSamplerReductionMode(rawValue: self.reductionMode.rawValue)
        return try body(&cStruct)
    }
}

struct PhysicalDeviceBlendOperationAdvancedFeaturesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceBlendOperationAdvancedFeaturesEXT

    let advancedBlendCoherentOperations: Bool

    init(cStruct: VkPhysicalDeviceBlendOperationAdvancedFeaturesEXT) {
        self.advancedBlendCoherentOperations = cStruct.advancedBlendCoherentOperations == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceBlendOperationAdvancedFeaturesEXT>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceBlendOperationAdvancedFeaturesEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_BLEND_OPERATION_ADVANCED_FEATURES_EXT
        cStruct.pNext = nil
        cStruct.advancedBlendCoherentOperations = VkBool32(self.advancedBlendCoherentOperations ? VK_TRUE : VK_FALSE)
        return try body(&cStruct)
    }
}

struct PhysicalDeviceBlendOperationAdvancedPropertiesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceBlendOperationAdvancedPropertiesEXT

    let advancedBlendMaxColorAttachments: UInt32
    let advancedBlendIndependentBlend: Bool
    let advancedBlendNonPremultipliedSrcColor: Bool
    let advancedBlendNonPremultipliedDstColor: Bool
    let advancedBlendCorrelatedOverlap: Bool
    let advancedBlendAllOperations: Bool

    init(cStruct: VkPhysicalDeviceBlendOperationAdvancedPropertiesEXT) {
        self.advancedBlendMaxColorAttachments = cStruct.advancedBlendMaxColorAttachments
        self.advancedBlendIndependentBlend = cStruct.advancedBlendIndependentBlend == VK_TRUE
        self.advancedBlendNonPremultipliedSrcColor = cStruct.advancedBlendNonPremultipliedSrcColor == VK_TRUE
        self.advancedBlendNonPremultipliedDstColor = cStruct.advancedBlendNonPremultipliedDstColor == VK_TRUE
        self.advancedBlendCorrelatedOverlap = cStruct.advancedBlendCorrelatedOverlap == VK_TRUE
        self.advancedBlendAllOperations = cStruct.advancedBlendAllOperations == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceBlendOperationAdvancedPropertiesEXT>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceBlendOperationAdvancedPropertiesEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_BLEND_OPERATION_ADVANCED_PROPERTIES_EXT
        cStruct.pNext = nil
        cStruct.advancedBlendMaxColorAttachments = self.advancedBlendMaxColorAttachments
        cStruct.advancedBlendIndependentBlend = VkBool32(self.advancedBlendIndependentBlend ? VK_TRUE : VK_FALSE)
        cStruct.advancedBlendNonPremultipliedSrcColor = VkBool32(self.advancedBlendNonPremultipliedSrcColor ? VK_TRUE : VK_FALSE)
        cStruct.advancedBlendNonPremultipliedDstColor = VkBool32(self.advancedBlendNonPremultipliedDstColor ? VK_TRUE : VK_FALSE)
        cStruct.advancedBlendCorrelatedOverlap = VkBool32(self.advancedBlendCorrelatedOverlap ? VK_TRUE : VK_FALSE)
        cStruct.advancedBlendAllOperations = VkBool32(self.advancedBlendAllOperations ? VK_TRUE : VK_FALSE)
        return try body(&cStruct)
    }
}

struct PipelineColorBlendAdvancedStateCreateInfoEXT: CStructConvertible {
    typealias CStruct = VkPipelineColorBlendAdvancedStateCreateInfoEXT

    let srcPremultiplied: Bool
    let dstPremultiplied: Bool
    let blendOverlap: BlendOverlapEXT

    init(cStruct: VkPipelineColorBlendAdvancedStateCreateInfoEXT) {
        self.srcPremultiplied = cStruct.srcPremultiplied == VK_TRUE
        self.dstPremultiplied = cStruct.dstPremultiplied == VK_TRUE
        self.blendOverlap = BlendOverlapEXT(rawValue: cStruct.blendOverlap.rawValue)!
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPipelineColorBlendAdvancedStateCreateInfoEXT>) throws -> R) rethrows -> R {
        var cStruct = VkPipelineColorBlendAdvancedStateCreateInfoEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_COLOR_BLEND_ADVANCED_STATE_CREATE_INFO_EXT
        cStruct.pNext = nil
        cStruct.srcPremultiplied = VkBool32(self.srcPremultiplied ? VK_TRUE : VK_FALSE)
        cStruct.dstPremultiplied = VkBool32(self.dstPremultiplied ? VK_TRUE : VK_FALSE)
        cStruct.blendOverlap = VkBlendOverlapEXT(rawValue: self.blendOverlap.rawValue)
        return try body(&cStruct)
    }
}

struct PhysicalDeviceInlineUniformBlockFeaturesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceInlineUniformBlockFeaturesEXT

    let inlineUniformBlock: Bool
    let descriptorBindingInlineUniformBlockUpdateAfterBind: Bool

    init(cStruct: VkPhysicalDeviceInlineUniformBlockFeaturesEXT) {
        self.inlineUniformBlock = cStruct.inlineUniformBlock == VK_TRUE
        self.descriptorBindingInlineUniformBlockUpdateAfterBind = cStruct.descriptorBindingInlineUniformBlockUpdateAfterBind == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceInlineUniformBlockFeaturesEXT>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceInlineUniformBlockFeaturesEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_INLINE_UNIFORM_BLOCK_FEATURES_EXT
        cStruct.pNext = nil
        cStruct.inlineUniformBlock = VkBool32(self.inlineUniformBlock ? VK_TRUE : VK_FALSE)
        cStruct.descriptorBindingInlineUniformBlockUpdateAfterBind = VkBool32(self.descriptorBindingInlineUniformBlockUpdateAfterBind ? VK_TRUE : VK_FALSE)
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

    init(cStruct: VkPhysicalDeviceInlineUniformBlockPropertiesEXT) {
        self.maxInlineUniformBlockSize = cStruct.maxInlineUniformBlockSize
        self.maxPerStageDescriptorInlineUniformBlocks = cStruct.maxPerStageDescriptorInlineUniformBlocks
        self.maxPerStageDescriptorUpdateAfterBindInlineUniformBlocks = cStruct.maxPerStageDescriptorUpdateAfterBindInlineUniformBlocks
        self.maxDescriptorSetInlineUniformBlocks = cStruct.maxDescriptorSetInlineUniformBlocks
        self.maxDescriptorSetUpdateAfterBindInlineUniformBlocks = cStruct.maxDescriptorSetUpdateAfterBindInlineUniformBlocks
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceInlineUniformBlockPropertiesEXT>) throws -> R) rethrows -> R {
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

    init(cStruct: VkWriteDescriptorSetInlineUniformBlockEXT) {
        self.dataSize = cStruct.dataSize
        self.pData = cStruct.pData
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkWriteDescriptorSetInlineUniformBlockEXT>) throws -> R) rethrows -> R {
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

    init(cStruct: VkDescriptorPoolInlineUniformBlockCreateInfoEXT) {
        self.maxInlineUniformBlockBindings = cStruct.maxInlineUniformBlockBindings
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkDescriptorPoolInlineUniformBlockCreateInfoEXT>) throws -> R) rethrows -> R {
        var cStruct = VkDescriptorPoolInlineUniformBlockCreateInfoEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_DESCRIPTOR_POOL_INLINE_UNIFORM_BLOCK_CREATE_INFO_EXT
        cStruct.pNext = nil
        cStruct.maxInlineUniformBlockBindings = self.maxInlineUniformBlockBindings
        return try body(&cStruct)
    }
}

struct PipelineCoverageModulationStateCreateInfoNV: CStructConvertible {
    typealias CStruct = VkPipelineCoverageModulationStateCreateInfoNV

    let flags: PipelineCoverageModulationStateCreateFlagsNV
    let coverageModulationMode: CoverageModulationModeNV
    let coverageModulationTableEnable: Bool
    let pCoverageModulationTable: Array<Float>?

    init(cStruct: VkPipelineCoverageModulationStateCreateInfoNV) {
        self.flags = PipelineCoverageModulationStateCreateFlagsNV(rawValue: cStruct.flags)
        self.coverageModulationMode = CoverageModulationModeNV(rawValue: cStruct.coverageModulationMode.rawValue)!
        self.coverageModulationTableEnable = cStruct.coverageModulationTableEnable == VK_TRUE
        self.pCoverageModulationTable = (cStruct.pCoverageModulationTable != nil) ? Array(UnsafeBufferPointer(start: cStruct.pCoverageModulationTable, count: Int(cStruct.coverageModulationTableCount))) : nil
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPipelineCoverageModulationStateCreateInfoNV>) throws -> R) rethrows -> R {
        try self.pCoverageModulationTable.withOptionalUnsafeBufferPointer { ptr_pCoverageModulationTable in
            var cStruct = VkPipelineCoverageModulationStateCreateInfoNV()
            cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_COVERAGE_MODULATION_STATE_CREATE_INFO_NV
            cStruct.pNext = nil
            cStruct.flags = self.flags.rawValue
            cStruct.coverageModulationMode = VkCoverageModulationModeNV(rawValue: self.coverageModulationMode.rawValue)
            cStruct.coverageModulationTableEnable = VkBool32(self.coverageModulationTableEnable ? VK_TRUE : VK_FALSE)
            cStruct.coverageModulationTableCount = UInt32(ptr_pCoverageModulationTable.count)
            cStruct.pCoverageModulationTable = ptr_pCoverageModulationTable.baseAddress
            return try body(&cStruct)
        }
    }
}

struct ImageFormatListCreateInfo: CStructConvertible {
    typealias CStruct = VkImageFormatListCreateInfo

    let pViewFormats: Array<Format>

    init(cStruct: VkImageFormatListCreateInfo) {
        self.pViewFormats = UnsafeBufferPointer(start: cStruct.pViewFormats, count: Int(cStruct.viewFormatCount)).map{ Format(rawValue: $0.rawValue)! }
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkImageFormatListCreateInfo>) throws -> R) rethrows -> R {
        try self.pViewFormats.map{ VkFormat(rawValue: $0.rawValue) }.withUnsafeBufferPointer { ptr_pViewFormats in
            var cStruct = VkImageFormatListCreateInfo()
            cStruct.sType = VK_STRUCTURE_TYPE_IMAGE_FORMAT_LIST_CREATE_INFO
            cStruct.pNext = nil
            cStruct.viewFormatCount = UInt32(ptr_pViewFormats.count)
            cStruct.pViewFormats = ptr_pViewFormats.baseAddress
            return try body(&cStruct)
        }
    }
}

struct ValidationCacheCreateInfoEXT: CStructConvertible {
    typealias CStruct = VkValidationCacheCreateInfoEXT

    let flags: ValidationCacheCreateFlagsEXT
    let initialDataSize: Int
    let pInitialData: UnsafeRawPointer

    init(cStruct: VkValidationCacheCreateInfoEXT) {
        self.flags = ValidationCacheCreateFlagsEXT(rawValue: cStruct.flags)
        self.initialDataSize = cStruct.initialDataSize
        self.pInitialData = cStruct.pInitialData
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkValidationCacheCreateInfoEXT>) throws -> R) rethrows -> R {
        var cStruct = VkValidationCacheCreateInfoEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_VALIDATION_CACHE_CREATE_INFO_EXT
        cStruct.pNext = nil
        cStruct.flags = self.flags.rawValue
        cStruct.initialDataSize = self.initialDataSize
        cStruct.pInitialData = self.pInitialData
        return try body(&cStruct)
    }
}

struct ShaderModuleValidationCacheCreateInfoEXT: CStructConvertible {
    typealias CStruct = VkShaderModuleValidationCacheCreateInfoEXT

    let validationCache: ValidationCacheEXT

    init(cStruct: VkShaderModuleValidationCacheCreateInfoEXT) {
        fatalError("This initializer should be removed.")
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkShaderModuleValidationCacheCreateInfoEXT>) throws -> R) rethrows -> R {
        var cStruct = VkShaderModuleValidationCacheCreateInfoEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_SHADER_MODULE_VALIDATION_CACHE_CREATE_INFO_EXT
        cStruct.pNext = nil
        cStruct.validationCache = self.validationCache.handle
        return try body(&cStruct)
    }
}

struct PhysicalDeviceMaintenance3Properties: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceMaintenance3Properties

    let maxPerSetDescriptors: UInt32
    let maxMemoryAllocationSize: VkDeviceSize

    init(cStruct: VkPhysicalDeviceMaintenance3Properties) {
        self.maxPerSetDescriptors = cStruct.maxPerSetDescriptors
        self.maxMemoryAllocationSize = cStruct.maxMemoryAllocationSize
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceMaintenance3Properties>) throws -> R) rethrows -> R {
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

    let supported: Bool

    init(cStruct: VkDescriptorSetLayoutSupport) {
        self.supported = cStruct.supported == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkDescriptorSetLayoutSupport>) throws -> R) rethrows -> R {
        var cStruct = VkDescriptorSetLayoutSupport()
        cStruct.sType = VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_SUPPORT
        cStruct.pNext = nil
        cStruct.supported = VkBool32(self.supported ? VK_TRUE : VK_FALSE)
        return try body(&cStruct)
    }
}

struct PhysicalDeviceShaderDrawParametersFeatures: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceShaderDrawParametersFeatures

    let shaderDrawParameters: Bool

    init(cStruct: VkPhysicalDeviceShaderDrawParametersFeatures) {
        self.shaderDrawParameters = cStruct.shaderDrawParameters == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceShaderDrawParametersFeatures>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceShaderDrawParametersFeatures()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_DRAW_PARAMETERS_FEATURES
        cStruct.pNext = nil
        cStruct.shaderDrawParameters = VkBool32(self.shaderDrawParameters ? VK_TRUE : VK_FALSE)
        return try body(&cStruct)
    }
}

struct PhysicalDeviceShaderFloat16Int8Features: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceShaderFloat16Int8Features

    let shaderFloat16: Bool
    let shaderInt8: Bool

    init(cStruct: VkPhysicalDeviceShaderFloat16Int8Features) {
        self.shaderFloat16 = cStruct.shaderFloat16 == VK_TRUE
        self.shaderInt8 = cStruct.shaderInt8 == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceShaderFloat16Int8Features>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceShaderFloat16Int8Features()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_FLOAT16_INT8_FEATURES
        cStruct.pNext = nil
        cStruct.shaderFloat16 = VkBool32(self.shaderFloat16 ? VK_TRUE : VK_FALSE)
        cStruct.shaderInt8 = VkBool32(self.shaderInt8 ? VK_TRUE : VK_FALSE)
        return try body(&cStruct)
    }
}

struct PhysicalDeviceFloatControlsProperties: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceFloatControlsProperties

    let denormBehaviorIndependence: ShaderFloatControlsIndependence
    let roundingModeIndependence: ShaderFloatControlsIndependence
    let shaderSignedZeroInfNanPreserveFloat16: Bool
    let shaderSignedZeroInfNanPreserveFloat32: Bool
    let shaderSignedZeroInfNanPreserveFloat64: Bool
    let shaderDenormPreserveFloat16: Bool
    let shaderDenormPreserveFloat32: Bool
    let shaderDenormPreserveFloat64: Bool
    let shaderDenormFlushToZeroFloat16: Bool
    let shaderDenormFlushToZeroFloat32: Bool
    let shaderDenormFlushToZeroFloat64: Bool
    let shaderRoundingModeRTEFloat16: Bool
    let shaderRoundingModeRTEFloat32: Bool
    let shaderRoundingModeRTEFloat64: Bool
    let shaderRoundingModeRTZFloat16: Bool
    let shaderRoundingModeRTZFloat32: Bool
    let shaderRoundingModeRTZFloat64: Bool

    init(cStruct: VkPhysicalDeviceFloatControlsProperties) {
        self.denormBehaviorIndependence = ShaderFloatControlsIndependence(rawValue: cStruct.denormBehaviorIndependence.rawValue)!
        self.roundingModeIndependence = ShaderFloatControlsIndependence(rawValue: cStruct.roundingModeIndependence.rawValue)!
        self.shaderSignedZeroInfNanPreserveFloat16 = cStruct.shaderSignedZeroInfNanPreserveFloat16 == VK_TRUE
        self.shaderSignedZeroInfNanPreserveFloat32 = cStruct.shaderSignedZeroInfNanPreserveFloat32 == VK_TRUE
        self.shaderSignedZeroInfNanPreserveFloat64 = cStruct.shaderSignedZeroInfNanPreserveFloat64 == VK_TRUE
        self.shaderDenormPreserveFloat16 = cStruct.shaderDenormPreserveFloat16 == VK_TRUE
        self.shaderDenormPreserveFloat32 = cStruct.shaderDenormPreserveFloat32 == VK_TRUE
        self.shaderDenormPreserveFloat64 = cStruct.shaderDenormPreserveFloat64 == VK_TRUE
        self.shaderDenormFlushToZeroFloat16 = cStruct.shaderDenormFlushToZeroFloat16 == VK_TRUE
        self.shaderDenormFlushToZeroFloat32 = cStruct.shaderDenormFlushToZeroFloat32 == VK_TRUE
        self.shaderDenormFlushToZeroFloat64 = cStruct.shaderDenormFlushToZeroFloat64 == VK_TRUE
        self.shaderRoundingModeRTEFloat16 = cStruct.shaderRoundingModeRTEFloat16 == VK_TRUE
        self.shaderRoundingModeRTEFloat32 = cStruct.shaderRoundingModeRTEFloat32 == VK_TRUE
        self.shaderRoundingModeRTEFloat64 = cStruct.shaderRoundingModeRTEFloat64 == VK_TRUE
        self.shaderRoundingModeRTZFloat16 = cStruct.shaderRoundingModeRTZFloat16 == VK_TRUE
        self.shaderRoundingModeRTZFloat32 = cStruct.shaderRoundingModeRTZFloat32 == VK_TRUE
        self.shaderRoundingModeRTZFloat64 = cStruct.shaderRoundingModeRTZFloat64 == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceFloatControlsProperties>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceFloatControlsProperties()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FLOAT_CONTROLS_PROPERTIES
        cStruct.pNext = nil
        cStruct.denormBehaviorIndependence = VkShaderFloatControlsIndependence(rawValue: self.denormBehaviorIndependence.rawValue)
        cStruct.roundingModeIndependence = VkShaderFloatControlsIndependence(rawValue: self.roundingModeIndependence.rawValue)
        cStruct.shaderSignedZeroInfNanPreserveFloat16 = VkBool32(self.shaderSignedZeroInfNanPreserveFloat16 ? VK_TRUE : VK_FALSE)
        cStruct.shaderSignedZeroInfNanPreserveFloat32 = VkBool32(self.shaderSignedZeroInfNanPreserveFloat32 ? VK_TRUE : VK_FALSE)
        cStruct.shaderSignedZeroInfNanPreserveFloat64 = VkBool32(self.shaderSignedZeroInfNanPreserveFloat64 ? VK_TRUE : VK_FALSE)
        cStruct.shaderDenormPreserveFloat16 = VkBool32(self.shaderDenormPreserveFloat16 ? VK_TRUE : VK_FALSE)
        cStruct.shaderDenormPreserveFloat32 = VkBool32(self.shaderDenormPreserveFloat32 ? VK_TRUE : VK_FALSE)
        cStruct.shaderDenormPreserveFloat64 = VkBool32(self.shaderDenormPreserveFloat64 ? VK_TRUE : VK_FALSE)
        cStruct.shaderDenormFlushToZeroFloat16 = VkBool32(self.shaderDenormFlushToZeroFloat16 ? VK_TRUE : VK_FALSE)
        cStruct.shaderDenormFlushToZeroFloat32 = VkBool32(self.shaderDenormFlushToZeroFloat32 ? VK_TRUE : VK_FALSE)
        cStruct.shaderDenormFlushToZeroFloat64 = VkBool32(self.shaderDenormFlushToZeroFloat64 ? VK_TRUE : VK_FALSE)
        cStruct.shaderRoundingModeRTEFloat16 = VkBool32(self.shaderRoundingModeRTEFloat16 ? VK_TRUE : VK_FALSE)
        cStruct.shaderRoundingModeRTEFloat32 = VkBool32(self.shaderRoundingModeRTEFloat32 ? VK_TRUE : VK_FALSE)
        cStruct.shaderRoundingModeRTEFloat64 = VkBool32(self.shaderRoundingModeRTEFloat64 ? VK_TRUE : VK_FALSE)
        cStruct.shaderRoundingModeRTZFloat16 = VkBool32(self.shaderRoundingModeRTZFloat16 ? VK_TRUE : VK_FALSE)
        cStruct.shaderRoundingModeRTZFloat32 = VkBool32(self.shaderRoundingModeRTZFloat32 ? VK_TRUE : VK_FALSE)
        cStruct.shaderRoundingModeRTZFloat64 = VkBool32(self.shaderRoundingModeRTZFloat64 ? VK_TRUE : VK_FALSE)
        return try body(&cStruct)
    }
}

struct PhysicalDeviceHostQueryResetFeatures: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceHostQueryResetFeatures

    let hostQueryReset: Bool

    init(cStruct: VkPhysicalDeviceHostQueryResetFeatures) {
        self.hostQueryReset = cStruct.hostQueryReset == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceHostQueryResetFeatures>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceHostQueryResetFeatures()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_HOST_QUERY_RESET_FEATURES
        cStruct.pNext = nil
        cStruct.hostQueryReset = VkBool32(self.hostQueryReset ? VK_TRUE : VK_FALSE)
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

    init(cStruct: VkShaderResourceUsageAMD) {
        self.numUsedVgprs = cStruct.numUsedVgprs
        self.numUsedSgprs = cStruct.numUsedSgprs
        self.ldsSizePerLocalWorkGroup = cStruct.ldsSizePerLocalWorkGroup
        self.ldsUsageSizeInBytes = cStruct.ldsUsageSizeInBytes
        self.scratchMemUsageInBytes = cStruct.scratchMemUsageInBytes
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkShaderResourceUsageAMD>) throws -> R) rethrows -> R {
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

    let shaderStageMask: ShaderStageFlags
    let resourceUsage: ShaderResourceUsageAMD
    let numPhysicalVgprs: UInt32
    let numPhysicalSgprs: UInt32
    let numAvailableVgprs: UInt32
    let numAvailableSgprs: UInt32
    let computeWorkGroupSize: (UInt32, UInt32, UInt32)

    init(cStruct: VkShaderStatisticsInfoAMD) {
        self.shaderStageMask = ShaderStageFlags(rawValue: cStruct.shaderStageMask)
        self.resourceUsage = ShaderResourceUsageAMD(cStruct: cStruct.resourceUsage)
        self.numPhysicalVgprs = cStruct.numPhysicalVgprs
        self.numPhysicalSgprs = cStruct.numPhysicalSgprs
        self.numAvailableVgprs = cStruct.numAvailableVgprs
        self.numAvailableSgprs = cStruct.numAvailableSgprs
        self.computeWorkGroupSize = cStruct.computeWorkGroupSize
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkShaderStatisticsInfoAMD>) throws -> R) rethrows -> R {
        try self.resourceUsage.withCStruct { ptr_resourceUsage in
            var cStruct = VkShaderStatisticsInfoAMD()
            cStruct.shaderStageMask = self.shaderStageMask.rawValue
            cStruct.resourceUsage = ptr_resourceUsage.pointee
            cStruct.numPhysicalVgprs = self.numPhysicalVgprs
            cStruct.numPhysicalSgprs = self.numPhysicalSgprs
            cStruct.numAvailableVgprs = self.numAvailableVgprs
            cStruct.numAvailableSgprs = self.numAvailableSgprs
            cStruct.computeWorkGroupSize = self.computeWorkGroupSize
            return try body(&cStruct)
        }
    }
}

struct DeviceQueueGlobalPriorityCreateInfoEXT: CStructConvertible {
    typealias CStruct = VkDeviceQueueGlobalPriorityCreateInfoEXT

    let globalPriority: QueueGlobalPriorityEXT

    init(cStruct: VkDeviceQueueGlobalPriorityCreateInfoEXT) {
        self.globalPriority = QueueGlobalPriorityEXT(rawValue: cStruct.globalPriority.rawValue)!
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkDeviceQueueGlobalPriorityCreateInfoEXT>) throws -> R) rethrows -> R {
        var cStruct = VkDeviceQueueGlobalPriorityCreateInfoEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_DEVICE_QUEUE_GLOBAL_PRIORITY_CREATE_INFO_EXT
        cStruct.pNext = nil
        cStruct.globalPriority = VkQueueGlobalPriorityEXT(rawValue: self.globalPriority.rawValue)
        return try body(&cStruct)
    }
}

struct DebugUtilsObjectNameInfoEXT: CStructConvertible {
    typealias CStruct = VkDebugUtilsObjectNameInfoEXT

    let objectType: ObjectType
    let objectHandle: UInt64
    let pObjectName: String

    init(cStruct: VkDebugUtilsObjectNameInfoEXT) {
        self.objectType = ObjectType(rawValue: cStruct.objectType.rawValue)!
        self.objectHandle = cStruct.objectHandle
        self.pObjectName = String(cString: cStruct.pObjectName)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkDebugUtilsObjectNameInfoEXT>) throws -> R) rethrows -> R {
        try self.pObjectName.withCString { cString_pObjectName in
            var cStruct = VkDebugUtilsObjectNameInfoEXT()
            cStruct.sType = VK_STRUCTURE_TYPE_DEBUG_UTILS_OBJECT_NAME_INFO_EXT
            cStruct.pNext = nil
            cStruct.objectType = VkObjectType(rawValue: self.objectType.rawValue)
            cStruct.objectHandle = self.objectHandle
            cStruct.pObjectName = cString_pObjectName
            return try body(&cStruct)
        }
    }
}

struct DebugUtilsObjectTagInfoEXT: CStructConvertible {
    typealias CStruct = VkDebugUtilsObjectTagInfoEXT

    let objectType: ObjectType
    let objectHandle: UInt64
    let tagName: UInt64
    let tagSize: Int
    let pTag: UnsafeRawPointer

    init(cStruct: VkDebugUtilsObjectTagInfoEXT) {
        self.objectType = ObjectType(rawValue: cStruct.objectType.rawValue)!
        self.objectHandle = cStruct.objectHandle
        self.tagName = cStruct.tagName
        self.tagSize = cStruct.tagSize
        self.pTag = cStruct.pTag
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkDebugUtilsObjectTagInfoEXT>) throws -> R) rethrows -> R {
        var cStruct = VkDebugUtilsObjectTagInfoEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_DEBUG_UTILS_OBJECT_TAG_INFO_EXT
        cStruct.pNext = nil
        cStruct.objectType = VkObjectType(rawValue: self.objectType.rawValue)
        cStruct.objectHandle = self.objectHandle
        cStruct.tagName = self.tagName
        cStruct.tagSize = self.tagSize
        cStruct.pTag = self.pTag
        return try body(&cStruct)
    }
}

struct DebugUtilsLabelEXT: CStructConvertible {
    typealias CStruct = VkDebugUtilsLabelEXT

    let pLabelName: String
    let color: (Float, Float, Float, Float)

    init(cStruct: VkDebugUtilsLabelEXT) {
        self.pLabelName = String(cString: cStruct.pLabelName)
        self.color = cStruct.color
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkDebugUtilsLabelEXT>) throws -> R) rethrows -> R {
        try self.pLabelName.withCString { cString_pLabelName in
            var cStruct = VkDebugUtilsLabelEXT()
            cStruct.sType = VK_STRUCTURE_TYPE_DEBUG_UTILS_LABEL_EXT
            cStruct.pNext = nil
            cStruct.pLabelName = cString_pLabelName
            cStruct.color = self.color
            return try body(&cStruct)
        }
    }
}

struct DebugUtilsMessengerCreateInfoEXT: CStructConvertible {
    typealias CStruct = VkDebugUtilsMessengerCreateInfoEXT

    let flags: DebugUtilsMessengerCreateFlagsEXT
    let messageSeverity: DebugUtilsMessageSeverityFlagsEXT
    let messageType: DebugUtilsMessageTypeFlagsEXT
    let pfnUserCallback: PFN_vkDebugUtilsMessengerCallbackEXT
    let pUserData: UnsafeMutableRawPointer

    init(cStruct: VkDebugUtilsMessengerCreateInfoEXT) {
        self.flags = DebugUtilsMessengerCreateFlagsEXT(rawValue: cStruct.flags)
        self.messageSeverity = DebugUtilsMessageSeverityFlagsEXT(rawValue: cStruct.messageSeverity)
        self.messageType = DebugUtilsMessageTypeFlagsEXT(rawValue: cStruct.messageType)
        self.pfnUserCallback = cStruct.pfnUserCallback
        self.pUserData = cStruct.pUserData
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkDebugUtilsMessengerCreateInfoEXT>) throws -> R) rethrows -> R {
        var cStruct = VkDebugUtilsMessengerCreateInfoEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_DEBUG_UTILS_MESSENGER_CREATE_INFO_EXT
        cStruct.pNext = nil
        cStruct.flags = self.flags.rawValue
        cStruct.messageSeverity = self.messageSeverity.rawValue
        cStruct.messageType = self.messageType.rawValue
        cStruct.pfnUserCallback = self.pfnUserCallback
        cStruct.pUserData = self.pUserData
        return try body(&cStruct)
    }
}

struct DebugUtilsMessengerCallbackDataEXT: CStructConvertible {
    typealias CStruct = VkDebugUtilsMessengerCallbackDataEXT

    let flags: DebugUtilsMessengerCallbackDataFlagsEXT
    let pMessageIdName: String?
    let messageIdNumber: Int32
    let pMessage: String
    let pQueueLabels: Array<DebugUtilsLabelEXT>
    let pCmdBufLabels: Array<DebugUtilsLabelEXT>
    let pObjects: Array<DebugUtilsObjectNameInfoEXT>

    init(cStruct: VkDebugUtilsMessengerCallbackDataEXT) {
        self.flags = DebugUtilsMessengerCallbackDataFlagsEXT(rawValue: cStruct.flags)
        self.pMessageIdName = (cStruct.pMessageIdName != nil) ? String(cString: cStruct.pMessageIdName) : nil
        self.messageIdNumber = cStruct.messageIdNumber
        self.pMessage = String(cString: cStruct.pMessage)
        self.pQueueLabels = UnsafeBufferPointer(start: cStruct.pQueueLabels, count: Int(cStruct.queueLabelCount)).map{ DebugUtilsLabelEXT(cStruct: $0) }
        self.pCmdBufLabels = UnsafeBufferPointer(start: cStruct.pCmdBufLabels, count: Int(cStruct.cmdBufLabelCount)).map{ DebugUtilsLabelEXT(cStruct: $0) }
        self.pObjects = UnsafeBufferPointer(start: cStruct.pObjects, count: Int(cStruct.objectCount)).map{ DebugUtilsObjectNameInfoEXT(cStruct: $0) }
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkDebugUtilsMessengerCallbackDataEXT>) throws -> R) rethrows -> R {
        try self.pMessageIdName.withOptionalCString { cString_pMessageIdName in
            try self.pMessage.withCString { cString_pMessage in
                try self.pQueueLabels.withCStructBufferPointer { ptr_pQueueLabels in
                    try self.pCmdBufLabels.withCStructBufferPointer { ptr_pCmdBufLabels in
                        try self.pObjects.withCStructBufferPointer { ptr_pObjects in
                            var cStruct = VkDebugUtilsMessengerCallbackDataEXT()
                            cStruct.sType = VK_STRUCTURE_TYPE_DEBUG_UTILS_MESSENGER_CALLBACK_DATA_EXT
                            cStruct.pNext = nil
                            cStruct.flags = self.flags.rawValue
                            cStruct.pMessageIdName = cString_pMessageIdName
                            cStruct.messageIdNumber = self.messageIdNumber
                            cStruct.pMessage = cString_pMessage
                            cStruct.queueLabelCount = UInt32(ptr_pQueueLabels.count)
                            cStruct.pQueueLabels = ptr_pQueueLabels.baseAddress
                            cStruct.cmdBufLabelCount = UInt32(ptr_pCmdBufLabels.count)
                            cStruct.pCmdBufLabels = ptr_pCmdBufLabels.baseAddress
                            cStruct.objectCount = UInt32(ptr_pObjects.count)
                            cStruct.pObjects = ptr_pObjects.baseAddress
                            return try body(&cStruct)
                        }
                    }
                }
            }
        }
    }
}

struct ImportMemoryHostPointerInfoEXT: CStructConvertible {
    typealias CStruct = VkImportMemoryHostPointerInfoEXT

    let handleType: ExternalMemoryHandleTypeFlags
    let pHostPointer: UnsafeMutableRawPointer

    init(cStruct: VkImportMemoryHostPointerInfoEXT) {
        self.handleType = ExternalMemoryHandleTypeFlags(rawValue: cStruct.handleType.rawValue)
        self.pHostPointer = cStruct.pHostPointer
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkImportMemoryHostPointerInfoEXT>) throws -> R) rethrows -> R {
        var cStruct = VkImportMemoryHostPointerInfoEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_IMPORT_MEMORY_HOST_POINTER_INFO_EXT
        cStruct.pNext = nil
        cStruct.handleType = VkExternalMemoryHandleTypeFlagBits(rawValue: self.handleType.rawValue)
        cStruct.pHostPointer = self.pHostPointer
        return try body(&cStruct)
    }
}

struct MemoryHostPointerPropertiesEXT: CStructConvertible {
    typealias CStruct = VkMemoryHostPointerPropertiesEXT

    let memoryTypeBits: UInt32

    init(cStruct: VkMemoryHostPointerPropertiesEXT) {
        self.memoryTypeBits = cStruct.memoryTypeBits
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkMemoryHostPointerPropertiesEXT>) throws -> R) rethrows -> R {
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

    init(cStruct: VkPhysicalDeviceExternalMemoryHostPropertiesEXT) {
        self.minImportedHostPointerAlignment = cStruct.minImportedHostPointerAlignment
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceExternalMemoryHostPropertiesEXT>) throws -> R) rethrows -> R {
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
    let primitiveUnderestimation: Bool
    let conservativePointAndLineRasterization: Bool
    let degenerateTrianglesRasterized: Bool
    let degenerateLinesRasterized: Bool
    let fullyCoveredFragmentShaderInputVariable: Bool
    let conservativeRasterizationPostDepthCoverage: Bool

    init(cStruct: VkPhysicalDeviceConservativeRasterizationPropertiesEXT) {
        self.primitiveOverestimationSize = cStruct.primitiveOverestimationSize
        self.maxExtraPrimitiveOverestimationSize = cStruct.maxExtraPrimitiveOverestimationSize
        self.extraPrimitiveOverestimationSizeGranularity = cStruct.extraPrimitiveOverestimationSizeGranularity
        self.primitiveUnderestimation = cStruct.primitiveUnderestimation == VK_TRUE
        self.conservativePointAndLineRasterization = cStruct.conservativePointAndLineRasterization == VK_TRUE
        self.degenerateTrianglesRasterized = cStruct.degenerateTrianglesRasterized == VK_TRUE
        self.degenerateLinesRasterized = cStruct.degenerateLinesRasterized == VK_TRUE
        self.fullyCoveredFragmentShaderInputVariable = cStruct.fullyCoveredFragmentShaderInputVariable == VK_TRUE
        self.conservativeRasterizationPostDepthCoverage = cStruct.conservativeRasterizationPostDepthCoverage == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceConservativeRasterizationPropertiesEXT>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceConservativeRasterizationPropertiesEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_CONSERVATIVE_RASTERIZATION_PROPERTIES_EXT
        cStruct.pNext = nil
        cStruct.primitiveOverestimationSize = self.primitiveOverestimationSize
        cStruct.maxExtraPrimitiveOverestimationSize = self.maxExtraPrimitiveOverestimationSize
        cStruct.extraPrimitiveOverestimationSizeGranularity = self.extraPrimitiveOverestimationSizeGranularity
        cStruct.primitiveUnderestimation = VkBool32(self.primitiveUnderestimation ? VK_TRUE : VK_FALSE)
        cStruct.conservativePointAndLineRasterization = VkBool32(self.conservativePointAndLineRasterization ? VK_TRUE : VK_FALSE)
        cStruct.degenerateTrianglesRasterized = VkBool32(self.degenerateTrianglesRasterized ? VK_TRUE : VK_FALSE)
        cStruct.degenerateLinesRasterized = VkBool32(self.degenerateLinesRasterized ? VK_TRUE : VK_FALSE)
        cStruct.fullyCoveredFragmentShaderInputVariable = VkBool32(self.fullyCoveredFragmentShaderInputVariable ? VK_TRUE : VK_FALSE)
        cStruct.conservativeRasterizationPostDepthCoverage = VkBool32(self.conservativeRasterizationPostDepthCoverage ? VK_TRUE : VK_FALSE)
        return try body(&cStruct)
    }
}

struct CalibratedTimestampInfoEXT: CStructConvertible {
    typealias CStruct = VkCalibratedTimestampInfoEXT

    let timeDomain: TimeDomainEXT

    init(cStruct: VkCalibratedTimestampInfoEXT) {
        self.timeDomain = TimeDomainEXT(rawValue: cStruct.timeDomain.rawValue)!
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkCalibratedTimestampInfoEXT>) throws -> R) rethrows -> R {
        var cStruct = VkCalibratedTimestampInfoEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_CALIBRATED_TIMESTAMP_INFO_EXT
        cStruct.pNext = nil
        cStruct.timeDomain = VkTimeDomainEXT(rawValue: self.timeDomain.rawValue)
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

    init(cStruct: VkPhysicalDeviceShaderCorePropertiesAMD) {
        self.shaderEngineCount = cStruct.shaderEngineCount
        self.shaderArraysPerEngineCount = cStruct.shaderArraysPerEngineCount
        self.computeUnitsPerShaderArray = cStruct.computeUnitsPerShaderArray
        self.simdPerComputeUnit = cStruct.simdPerComputeUnit
        self.wavefrontsPerSimd = cStruct.wavefrontsPerSimd
        self.wavefrontSize = cStruct.wavefrontSize
        self.sgprsPerSimd = cStruct.sgprsPerSimd
        self.minSgprAllocation = cStruct.minSgprAllocation
        self.maxSgprAllocation = cStruct.maxSgprAllocation
        self.sgprAllocationGranularity = cStruct.sgprAllocationGranularity
        self.vgprsPerSimd = cStruct.vgprsPerSimd
        self.minVgprAllocation = cStruct.minVgprAllocation
        self.maxVgprAllocation = cStruct.maxVgprAllocation
        self.vgprAllocationGranularity = cStruct.vgprAllocationGranularity
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceShaderCorePropertiesAMD>) throws -> R) rethrows -> R {
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

    let shaderCoreFeatures: ShaderCorePropertiesFlagsAMD
    let activeComputeUnitCount: UInt32

    init(cStruct: VkPhysicalDeviceShaderCoreProperties2AMD) {
        self.shaderCoreFeatures = ShaderCorePropertiesFlagsAMD(rawValue: cStruct.shaderCoreFeatures)
        self.activeComputeUnitCount = cStruct.activeComputeUnitCount
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceShaderCoreProperties2AMD>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceShaderCoreProperties2AMD()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_CORE_PROPERTIES_2_AMD
        cStruct.pNext = nil
        cStruct.shaderCoreFeatures = self.shaderCoreFeatures.rawValue
        cStruct.activeComputeUnitCount = self.activeComputeUnitCount
        return try body(&cStruct)
    }
}

struct PipelineRasterizationConservativeStateCreateInfoEXT: CStructConvertible {
    typealias CStruct = VkPipelineRasterizationConservativeStateCreateInfoEXT

    let flags: PipelineRasterizationConservativeStateCreateFlagsEXT
    let conservativeRasterizationMode: ConservativeRasterizationModeEXT
    let extraPrimitiveOverestimationSize: Float

    init(cStruct: VkPipelineRasterizationConservativeStateCreateInfoEXT) {
        self.flags = PipelineRasterizationConservativeStateCreateFlagsEXT(rawValue: cStruct.flags)
        self.conservativeRasterizationMode = ConservativeRasterizationModeEXT(rawValue: cStruct.conservativeRasterizationMode.rawValue)!
        self.extraPrimitiveOverestimationSize = cStruct.extraPrimitiveOverestimationSize
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPipelineRasterizationConservativeStateCreateInfoEXT>) throws -> R) rethrows -> R {
        var cStruct = VkPipelineRasterizationConservativeStateCreateInfoEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_CONSERVATIVE_STATE_CREATE_INFO_EXT
        cStruct.pNext = nil
        cStruct.flags = self.flags.rawValue
        cStruct.conservativeRasterizationMode = VkConservativeRasterizationModeEXT(rawValue: self.conservativeRasterizationMode.rawValue)
        cStruct.extraPrimitiveOverestimationSize = self.extraPrimitiveOverestimationSize
        return try body(&cStruct)
    }
}

struct PhysicalDeviceDescriptorIndexingFeatures: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceDescriptorIndexingFeatures

    let shaderInputAttachmentArrayDynamicIndexing: Bool
    let shaderUniformTexelBufferArrayDynamicIndexing: Bool
    let shaderStorageTexelBufferArrayDynamicIndexing: Bool
    let shaderUniformBufferArrayNonUniformIndexing: Bool
    let shaderSampledImageArrayNonUniformIndexing: Bool
    let shaderStorageBufferArrayNonUniformIndexing: Bool
    let shaderStorageImageArrayNonUniformIndexing: Bool
    let shaderInputAttachmentArrayNonUniformIndexing: Bool
    let shaderUniformTexelBufferArrayNonUniformIndexing: Bool
    let shaderStorageTexelBufferArrayNonUniformIndexing: Bool
    let descriptorBindingUniformBufferUpdateAfterBind: Bool
    let descriptorBindingSampledImageUpdateAfterBind: Bool
    let descriptorBindingStorageImageUpdateAfterBind: Bool
    let descriptorBindingStorageBufferUpdateAfterBind: Bool
    let descriptorBindingUniformTexelBufferUpdateAfterBind: Bool
    let descriptorBindingStorageTexelBufferUpdateAfterBind: Bool
    let descriptorBindingUpdateUnusedWhilePending: Bool
    let descriptorBindingPartiallyBound: Bool
    let descriptorBindingVariableDescriptorCount: Bool
    let runtimeDescriptorArray: Bool

    init(cStruct: VkPhysicalDeviceDescriptorIndexingFeatures) {
        self.shaderInputAttachmentArrayDynamicIndexing = cStruct.shaderInputAttachmentArrayDynamicIndexing == VK_TRUE
        self.shaderUniformTexelBufferArrayDynamicIndexing = cStruct.shaderUniformTexelBufferArrayDynamicIndexing == VK_TRUE
        self.shaderStorageTexelBufferArrayDynamicIndexing = cStruct.shaderStorageTexelBufferArrayDynamicIndexing == VK_TRUE
        self.shaderUniformBufferArrayNonUniformIndexing = cStruct.shaderUniformBufferArrayNonUniformIndexing == VK_TRUE
        self.shaderSampledImageArrayNonUniformIndexing = cStruct.shaderSampledImageArrayNonUniformIndexing == VK_TRUE
        self.shaderStorageBufferArrayNonUniformIndexing = cStruct.shaderStorageBufferArrayNonUniformIndexing == VK_TRUE
        self.shaderStorageImageArrayNonUniformIndexing = cStruct.shaderStorageImageArrayNonUniformIndexing == VK_TRUE
        self.shaderInputAttachmentArrayNonUniformIndexing = cStruct.shaderInputAttachmentArrayNonUniformIndexing == VK_TRUE
        self.shaderUniformTexelBufferArrayNonUniformIndexing = cStruct.shaderUniformTexelBufferArrayNonUniformIndexing == VK_TRUE
        self.shaderStorageTexelBufferArrayNonUniformIndexing = cStruct.shaderStorageTexelBufferArrayNonUniformIndexing == VK_TRUE
        self.descriptorBindingUniformBufferUpdateAfterBind = cStruct.descriptorBindingUniformBufferUpdateAfterBind == VK_TRUE
        self.descriptorBindingSampledImageUpdateAfterBind = cStruct.descriptorBindingSampledImageUpdateAfterBind == VK_TRUE
        self.descriptorBindingStorageImageUpdateAfterBind = cStruct.descriptorBindingStorageImageUpdateAfterBind == VK_TRUE
        self.descriptorBindingStorageBufferUpdateAfterBind = cStruct.descriptorBindingStorageBufferUpdateAfterBind == VK_TRUE
        self.descriptorBindingUniformTexelBufferUpdateAfterBind = cStruct.descriptorBindingUniformTexelBufferUpdateAfterBind == VK_TRUE
        self.descriptorBindingStorageTexelBufferUpdateAfterBind = cStruct.descriptorBindingStorageTexelBufferUpdateAfterBind == VK_TRUE
        self.descriptorBindingUpdateUnusedWhilePending = cStruct.descriptorBindingUpdateUnusedWhilePending == VK_TRUE
        self.descriptorBindingPartiallyBound = cStruct.descriptorBindingPartiallyBound == VK_TRUE
        self.descriptorBindingVariableDescriptorCount = cStruct.descriptorBindingVariableDescriptorCount == VK_TRUE
        self.runtimeDescriptorArray = cStruct.runtimeDescriptorArray == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceDescriptorIndexingFeatures>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceDescriptorIndexingFeatures()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DESCRIPTOR_INDEXING_FEATURES
        cStruct.pNext = nil
        cStruct.shaderInputAttachmentArrayDynamicIndexing = VkBool32(self.shaderInputAttachmentArrayDynamicIndexing ? VK_TRUE : VK_FALSE)
        cStruct.shaderUniformTexelBufferArrayDynamicIndexing = VkBool32(self.shaderUniformTexelBufferArrayDynamicIndexing ? VK_TRUE : VK_FALSE)
        cStruct.shaderStorageTexelBufferArrayDynamicIndexing = VkBool32(self.shaderStorageTexelBufferArrayDynamicIndexing ? VK_TRUE : VK_FALSE)
        cStruct.shaderUniformBufferArrayNonUniformIndexing = VkBool32(self.shaderUniformBufferArrayNonUniformIndexing ? VK_TRUE : VK_FALSE)
        cStruct.shaderSampledImageArrayNonUniformIndexing = VkBool32(self.shaderSampledImageArrayNonUniformIndexing ? VK_TRUE : VK_FALSE)
        cStruct.shaderStorageBufferArrayNonUniformIndexing = VkBool32(self.shaderStorageBufferArrayNonUniformIndexing ? VK_TRUE : VK_FALSE)
        cStruct.shaderStorageImageArrayNonUniformIndexing = VkBool32(self.shaderStorageImageArrayNonUniformIndexing ? VK_TRUE : VK_FALSE)
        cStruct.shaderInputAttachmentArrayNonUniformIndexing = VkBool32(self.shaderInputAttachmentArrayNonUniformIndexing ? VK_TRUE : VK_FALSE)
        cStruct.shaderUniformTexelBufferArrayNonUniformIndexing = VkBool32(self.shaderUniformTexelBufferArrayNonUniformIndexing ? VK_TRUE : VK_FALSE)
        cStruct.shaderStorageTexelBufferArrayNonUniformIndexing = VkBool32(self.shaderStorageTexelBufferArrayNonUniformIndexing ? VK_TRUE : VK_FALSE)
        cStruct.descriptorBindingUniformBufferUpdateAfterBind = VkBool32(self.descriptorBindingUniformBufferUpdateAfterBind ? VK_TRUE : VK_FALSE)
        cStruct.descriptorBindingSampledImageUpdateAfterBind = VkBool32(self.descriptorBindingSampledImageUpdateAfterBind ? VK_TRUE : VK_FALSE)
        cStruct.descriptorBindingStorageImageUpdateAfterBind = VkBool32(self.descriptorBindingStorageImageUpdateAfterBind ? VK_TRUE : VK_FALSE)
        cStruct.descriptorBindingStorageBufferUpdateAfterBind = VkBool32(self.descriptorBindingStorageBufferUpdateAfterBind ? VK_TRUE : VK_FALSE)
        cStruct.descriptorBindingUniformTexelBufferUpdateAfterBind = VkBool32(self.descriptorBindingUniformTexelBufferUpdateAfterBind ? VK_TRUE : VK_FALSE)
        cStruct.descriptorBindingStorageTexelBufferUpdateAfterBind = VkBool32(self.descriptorBindingStorageTexelBufferUpdateAfterBind ? VK_TRUE : VK_FALSE)
        cStruct.descriptorBindingUpdateUnusedWhilePending = VkBool32(self.descriptorBindingUpdateUnusedWhilePending ? VK_TRUE : VK_FALSE)
        cStruct.descriptorBindingPartiallyBound = VkBool32(self.descriptorBindingPartiallyBound ? VK_TRUE : VK_FALSE)
        cStruct.descriptorBindingVariableDescriptorCount = VkBool32(self.descriptorBindingVariableDescriptorCount ? VK_TRUE : VK_FALSE)
        cStruct.runtimeDescriptorArray = VkBool32(self.runtimeDescriptorArray ? VK_TRUE : VK_FALSE)
        return try body(&cStruct)
    }
}

struct PhysicalDeviceDescriptorIndexingProperties: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceDescriptorIndexingProperties

    let maxUpdateAfterBindDescriptorsInAllPools: UInt32
    let shaderUniformBufferArrayNonUniformIndexingNative: Bool
    let shaderSampledImageArrayNonUniformIndexingNative: Bool
    let shaderStorageBufferArrayNonUniformIndexingNative: Bool
    let shaderStorageImageArrayNonUniformIndexingNative: Bool
    let shaderInputAttachmentArrayNonUniformIndexingNative: Bool
    let robustBufferAccessUpdateAfterBind: Bool
    let quadDivergentImplicitLod: Bool
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

    init(cStruct: VkPhysicalDeviceDescriptorIndexingProperties) {
        self.maxUpdateAfterBindDescriptorsInAllPools = cStruct.maxUpdateAfterBindDescriptorsInAllPools
        self.shaderUniformBufferArrayNonUniformIndexingNative = cStruct.shaderUniformBufferArrayNonUniformIndexingNative == VK_TRUE
        self.shaderSampledImageArrayNonUniformIndexingNative = cStruct.shaderSampledImageArrayNonUniformIndexingNative == VK_TRUE
        self.shaderStorageBufferArrayNonUniformIndexingNative = cStruct.shaderStorageBufferArrayNonUniformIndexingNative == VK_TRUE
        self.shaderStorageImageArrayNonUniformIndexingNative = cStruct.shaderStorageImageArrayNonUniformIndexingNative == VK_TRUE
        self.shaderInputAttachmentArrayNonUniformIndexingNative = cStruct.shaderInputAttachmentArrayNonUniformIndexingNative == VK_TRUE
        self.robustBufferAccessUpdateAfterBind = cStruct.robustBufferAccessUpdateAfterBind == VK_TRUE
        self.quadDivergentImplicitLod = cStruct.quadDivergentImplicitLod == VK_TRUE
        self.maxPerStageDescriptorUpdateAfterBindSamplers = cStruct.maxPerStageDescriptorUpdateAfterBindSamplers
        self.maxPerStageDescriptorUpdateAfterBindUniformBuffers = cStruct.maxPerStageDescriptorUpdateAfterBindUniformBuffers
        self.maxPerStageDescriptorUpdateAfterBindStorageBuffers = cStruct.maxPerStageDescriptorUpdateAfterBindStorageBuffers
        self.maxPerStageDescriptorUpdateAfterBindSampledImages = cStruct.maxPerStageDescriptorUpdateAfterBindSampledImages
        self.maxPerStageDescriptorUpdateAfterBindStorageImages = cStruct.maxPerStageDescriptorUpdateAfterBindStorageImages
        self.maxPerStageDescriptorUpdateAfterBindInputAttachments = cStruct.maxPerStageDescriptorUpdateAfterBindInputAttachments
        self.maxPerStageUpdateAfterBindResources = cStruct.maxPerStageUpdateAfterBindResources
        self.maxDescriptorSetUpdateAfterBindSamplers = cStruct.maxDescriptorSetUpdateAfterBindSamplers
        self.maxDescriptorSetUpdateAfterBindUniformBuffers = cStruct.maxDescriptorSetUpdateAfterBindUniformBuffers
        self.maxDescriptorSetUpdateAfterBindUniformBuffersDynamic = cStruct.maxDescriptorSetUpdateAfterBindUniformBuffersDynamic
        self.maxDescriptorSetUpdateAfterBindStorageBuffers = cStruct.maxDescriptorSetUpdateAfterBindStorageBuffers
        self.maxDescriptorSetUpdateAfterBindStorageBuffersDynamic = cStruct.maxDescriptorSetUpdateAfterBindStorageBuffersDynamic
        self.maxDescriptorSetUpdateAfterBindSampledImages = cStruct.maxDescriptorSetUpdateAfterBindSampledImages
        self.maxDescriptorSetUpdateAfterBindStorageImages = cStruct.maxDescriptorSetUpdateAfterBindStorageImages
        self.maxDescriptorSetUpdateAfterBindInputAttachments = cStruct.maxDescriptorSetUpdateAfterBindInputAttachments
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceDescriptorIndexingProperties>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceDescriptorIndexingProperties()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DESCRIPTOR_INDEXING_PROPERTIES
        cStruct.pNext = nil
        cStruct.maxUpdateAfterBindDescriptorsInAllPools = self.maxUpdateAfterBindDescriptorsInAllPools
        cStruct.shaderUniformBufferArrayNonUniformIndexingNative = VkBool32(self.shaderUniformBufferArrayNonUniformIndexingNative ? VK_TRUE : VK_FALSE)
        cStruct.shaderSampledImageArrayNonUniformIndexingNative = VkBool32(self.shaderSampledImageArrayNonUniformIndexingNative ? VK_TRUE : VK_FALSE)
        cStruct.shaderStorageBufferArrayNonUniformIndexingNative = VkBool32(self.shaderStorageBufferArrayNonUniformIndexingNative ? VK_TRUE : VK_FALSE)
        cStruct.shaderStorageImageArrayNonUniformIndexingNative = VkBool32(self.shaderStorageImageArrayNonUniformIndexingNative ? VK_TRUE : VK_FALSE)
        cStruct.shaderInputAttachmentArrayNonUniformIndexingNative = VkBool32(self.shaderInputAttachmentArrayNonUniformIndexingNative ? VK_TRUE : VK_FALSE)
        cStruct.robustBufferAccessUpdateAfterBind = VkBool32(self.robustBufferAccessUpdateAfterBind ? VK_TRUE : VK_FALSE)
        cStruct.quadDivergentImplicitLod = VkBool32(self.quadDivergentImplicitLod ? VK_TRUE : VK_FALSE)
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

    let pBindingFlags: Array<DescriptorBindingFlags>?

    init(cStruct: VkDescriptorSetLayoutBindingFlagsCreateInfo) {
        self.pBindingFlags = (cStruct.pBindingFlags != nil) ? UnsafeBufferPointer(start: cStruct.pBindingFlags, count: Int(cStruct.bindingCount)).map{ DescriptorBindingFlags(rawValue: $0) } : nil
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkDescriptorSetLayoutBindingFlagsCreateInfo>) throws -> R) rethrows -> R {
        try (self.pBindingFlags?.map{ $0.rawValue }).withOptionalUnsafeBufferPointer { ptr_pBindingFlags in
            var cStruct = VkDescriptorSetLayoutBindingFlagsCreateInfo()
            cStruct.sType = VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_BINDING_FLAGS_CREATE_INFO
            cStruct.pNext = nil
            cStruct.bindingCount = UInt32(ptr_pBindingFlags.count)
            cStruct.pBindingFlags = ptr_pBindingFlags.baseAddress
            return try body(&cStruct)
        }
    }
}

struct DescriptorSetVariableDescriptorCountAllocateInfo: CStructConvertible {
    typealias CStruct = VkDescriptorSetVariableDescriptorCountAllocateInfo

    let pDescriptorCounts: Array<UInt32>

    init(cStruct: VkDescriptorSetVariableDescriptorCountAllocateInfo) {
        self.pDescriptorCounts = Array(UnsafeBufferPointer(start: cStruct.pDescriptorCounts, count: Int(cStruct.descriptorSetCount)))
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkDescriptorSetVariableDescriptorCountAllocateInfo>) throws -> R) rethrows -> R {
        try self.pDescriptorCounts.withUnsafeBufferPointer { ptr_pDescriptorCounts in
            var cStruct = VkDescriptorSetVariableDescriptorCountAllocateInfo()
            cStruct.sType = VK_STRUCTURE_TYPE_DESCRIPTOR_SET_VARIABLE_DESCRIPTOR_COUNT_ALLOCATE_INFO
            cStruct.pNext = nil
            cStruct.descriptorSetCount = UInt32(ptr_pDescriptorCounts.count)
            cStruct.pDescriptorCounts = ptr_pDescriptorCounts.baseAddress
            return try body(&cStruct)
        }
    }
}

struct DescriptorSetVariableDescriptorCountLayoutSupport: CStructConvertible {
    typealias CStruct = VkDescriptorSetVariableDescriptorCountLayoutSupport

    let maxVariableDescriptorCount: UInt32

    init(cStruct: VkDescriptorSetVariableDescriptorCountLayoutSupport) {
        self.maxVariableDescriptorCount = cStruct.maxVariableDescriptorCount
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkDescriptorSetVariableDescriptorCountLayoutSupport>) throws -> R) rethrows -> R {
        var cStruct = VkDescriptorSetVariableDescriptorCountLayoutSupport()
        cStruct.sType = VK_STRUCTURE_TYPE_DESCRIPTOR_SET_VARIABLE_DESCRIPTOR_COUNT_LAYOUT_SUPPORT
        cStruct.pNext = nil
        cStruct.maxVariableDescriptorCount = self.maxVariableDescriptorCount
        return try body(&cStruct)
    }
}

struct AttachmentDescription2: CStructConvertible {
    typealias CStruct = VkAttachmentDescription2

    let flags: AttachmentDescriptionFlags
    let format: Format
    let samples: SampleCountFlags
    let loadOp: AttachmentLoadOp
    let storeOp: AttachmentStoreOp
    let stencilLoadOp: AttachmentLoadOp
    let stencilStoreOp: AttachmentStoreOp
    let initialLayout: ImageLayout
    let finalLayout: ImageLayout

    init(cStruct: VkAttachmentDescription2) {
        self.flags = AttachmentDescriptionFlags(rawValue: cStruct.flags)
        self.format = Format(rawValue: cStruct.format.rawValue)!
        self.samples = SampleCountFlags(rawValue: cStruct.samples.rawValue)
        self.loadOp = AttachmentLoadOp(rawValue: cStruct.loadOp.rawValue)!
        self.storeOp = AttachmentStoreOp(rawValue: cStruct.storeOp.rawValue)!
        self.stencilLoadOp = AttachmentLoadOp(rawValue: cStruct.stencilLoadOp.rawValue)!
        self.stencilStoreOp = AttachmentStoreOp(rawValue: cStruct.stencilStoreOp.rawValue)!
        self.initialLayout = ImageLayout(rawValue: cStruct.initialLayout.rawValue)!
        self.finalLayout = ImageLayout(rawValue: cStruct.finalLayout.rawValue)!
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkAttachmentDescription2>) throws -> R) rethrows -> R {
        var cStruct = VkAttachmentDescription2()
        cStruct.sType = VK_STRUCTURE_TYPE_ATTACHMENT_DESCRIPTION_2
        cStruct.pNext = nil
        cStruct.flags = self.flags.rawValue
        cStruct.format = VkFormat(rawValue: self.format.rawValue)
        cStruct.samples = VkSampleCountFlagBits(rawValue: self.samples.rawValue)
        cStruct.loadOp = VkAttachmentLoadOp(rawValue: self.loadOp.rawValue)
        cStruct.storeOp = VkAttachmentStoreOp(rawValue: self.storeOp.rawValue)
        cStruct.stencilLoadOp = VkAttachmentLoadOp(rawValue: self.stencilLoadOp.rawValue)
        cStruct.stencilStoreOp = VkAttachmentStoreOp(rawValue: self.stencilStoreOp.rawValue)
        cStruct.initialLayout = VkImageLayout(rawValue: self.initialLayout.rawValue)
        cStruct.finalLayout = VkImageLayout(rawValue: self.finalLayout.rawValue)
        return try body(&cStruct)
    }
}

struct AttachmentReference2: CStructConvertible {
    typealias CStruct = VkAttachmentReference2

    let attachment: UInt32
    let layout: ImageLayout
    let aspectMask: ImageAspectFlags

    init(cStruct: VkAttachmentReference2) {
        self.attachment = cStruct.attachment
        self.layout = ImageLayout(rawValue: cStruct.layout.rawValue)!
        self.aspectMask = ImageAspectFlags(rawValue: cStruct.aspectMask)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkAttachmentReference2>) throws -> R) rethrows -> R {
        var cStruct = VkAttachmentReference2()
        cStruct.sType = VK_STRUCTURE_TYPE_ATTACHMENT_REFERENCE_2
        cStruct.pNext = nil
        cStruct.attachment = self.attachment
        cStruct.layout = VkImageLayout(rawValue: self.layout.rawValue)
        cStruct.aspectMask = self.aspectMask.rawValue
        return try body(&cStruct)
    }
}

struct SubpassDescription2: CStructConvertible {
    typealias CStruct = VkSubpassDescription2

    let flags: SubpassDescriptionFlags
    let pipelineBindPoint: PipelineBindPoint
    let viewMask: UInt32
    let pInputAttachments: Array<AttachmentReference2>
    let pColorAttachments: Array<AttachmentReference2>
    let pResolveAttachments: Array<AttachmentReference2>?
    let pDepthStencilAttachment: AttachmentReference2?
    let pPreserveAttachments: Array<UInt32>

    init(cStruct: VkSubpassDescription2) {
        self.flags = SubpassDescriptionFlags(rawValue: cStruct.flags)
        self.pipelineBindPoint = PipelineBindPoint(rawValue: cStruct.pipelineBindPoint.rawValue)!
        self.viewMask = cStruct.viewMask
        self.pInputAttachments = UnsafeBufferPointer(start: cStruct.pInputAttachments, count: Int(cStruct.inputAttachmentCount)).map{ AttachmentReference2(cStruct: $0) }
        self.pColorAttachments = UnsafeBufferPointer(start: cStruct.pColorAttachments, count: Int(cStruct.colorAttachmentCount)).map{ AttachmentReference2(cStruct: $0) }
        self.pResolveAttachments = (cStruct.pResolveAttachments != nil) ? UnsafeBufferPointer(start: cStruct.pResolveAttachments, count: Int(cStruct.colorAttachmentCount)).map{ AttachmentReference2(cStruct: $0) } : nil
        self.pDepthStencilAttachment = (cStruct.pDepthStencilAttachment != nil) ? AttachmentReference2(cStruct: cStruct.pDepthStencilAttachment.pointee) : nil
        self.pPreserveAttachments = Array(UnsafeBufferPointer(start: cStruct.pPreserveAttachments, count: Int(cStruct.preserveAttachmentCount)))
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkSubpassDescription2>) throws -> R) rethrows -> R {
        try self.pInputAttachments.withCStructBufferPointer { ptr_pInputAttachments in
            try self.pColorAttachments.withCStructBufferPointer { ptr_pColorAttachments in
                try self.pResolveAttachments.withOptionalCStructBufferPointer { ptr_pResolveAttachments in
                    try self.pDepthStencilAttachment.withOptionalCStruct { ptr_pDepthStencilAttachment in
                        try self.pPreserveAttachments.withUnsafeBufferPointer { ptr_pPreserveAttachments in
                            var cStruct = VkSubpassDescription2()
                            cStruct.sType = VK_STRUCTURE_TYPE_SUBPASS_DESCRIPTION_2
                            cStruct.pNext = nil
                            cStruct.flags = self.flags.rawValue
                            cStruct.pipelineBindPoint = VkPipelineBindPoint(rawValue: self.pipelineBindPoint.rawValue)
                            cStruct.viewMask = self.viewMask
                            cStruct.inputAttachmentCount = UInt32(ptr_pInputAttachments.count)
                            cStruct.pInputAttachments = ptr_pInputAttachments.baseAddress
                            cStruct.colorAttachmentCount = UInt32(ptr_pColorAttachments.count)
                            cStruct.pColorAttachments = ptr_pColorAttachments.baseAddress
                            cStruct.pResolveAttachments = ptr_pResolveAttachments.baseAddress
                            cStruct.pDepthStencilAttachment = ptr_pDepthStencilAttachment
                            cStruct.preserveAttachmentCount = UInt32(ptr_pPreserveAttachments.count)
                            cStruct.pPreserveAttachments = ptr_pPreserveAttachments.baseAddress
                            return try body(&cStruct)
                        }
                    }
                }
            }
        }
    }
}

struct SubpassDependency2: CStructConvertible {
    typealias CStruct = VkSubpassDependency2

    let srcSubpass: UInt32
    let dstSubpass: UInt32
    let srcStageMask: PipelineStageFlags
    let dstStageMask: PipelineStageFlags
    let srcAccessMask: AccessFlags
    let dstAccessMask: AccessFlags
    let dependencyFlags: DependencyFlags
    let viewOffset: Int32

    init(cStruct: VkSubpassDependency2) {
        self.srcSubpass = cStruct.srcSubpass
        self.dstSubpass = cStruct.dstSubpass
        self.srcStageMask = PipelineStageFlags(rawValue: cStruct.srcStageMask)
        self.dstStageMask = PipelineStageFlags(rawValue: cStruct.dstStageMask)
        self.srcAccessMask = AccessFlags(rawValue: cStruct.srcAccessMask)
        self.dstAccessMask = AccessFlags(rawValue: cStruct.dstAccessMask)
        self.dependencyFlags = DependencyFlags(rawValue: cStruct.dependencyFlags)
        self.viewOffset = cStruct.viewOffset
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkSubpassDependency2>) throws -> R) rethrows -> R {
        var cStruct = VkSubpassDependency2()
        cStruct.sType = VK_STRUCTURE_TYPE_SUBPASS_DEPENDENCY_2
        cStruct.pNext = nil
        cStruct.srcSubpass = self.srcSubpass
        cStruct.dstSubpass = self.dstSubpass
        cStruct.srcStageMask = self.srcStageMask.rawValue
        cStruct.dstStageMask = self.dstStageMask.rawValue
        cStruct.srcAccessMask = self.srcAccessMask.rawValue
        cStruct.dstAccessMask = self.dstAccessMask.rawValue
        cStruct.dependencyFlags = self.dependencyFlags.rawValue
        cStruct.viewOffset = self.viewOffset
        return try body(&cStruct)
    }
}

struct RenderPassCreateInfo2: CStructConvertible {
    typealias CStruct = VkRenderPassCreateInfo2

    let flags: RenderPassCreateFlags
    let pAttachments: Array<AttachmentDescription2>
    let pSubpasses: Array<SubpassDescription2>
    let pDependencies: Array<SubpassDependency2>
    let pCorrelatedViewMasks: Array<UInt32>

    init(cStruct: VkRenderPassCreateInfo2) {
        self.flags = RenderPassCreateFlags(rawValue: cStruct.flags)
        self.pAttachments = UnsafeBufferPointer(start: cStruct.pAttachments, count: Int(cStruct.attachmentCount)).map{ AttachmentDescription2(cStruct: $0) }
        self.pSubpasses = UnsafeBufferPointer(start: cStruct.pSubpasses, count: Int(cStruct.subpassCount)).map{ SubpassDescription2(cStruct: $0) }
        self.pDependencies = UnsafeBufferPointer(start: cStruct.pDependencies, count: Int(cStruct.dependencyCount)).map{ SubpassDependency2(cStruct: $0) }
        self.pCorrelatedViewMasks = Array(UnsafeBufferPointer(start: cStruct.pCorrelatedViewMasks, count: Int(cStruct.correlatedViewMaskCount)))
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkRenderPassCreateInfo2>) throws -> R) rethrows -> R {
        try self.pAttachments.withCStructBufferPointer { ptr_pAttachments in
            try self.pSubpasses.withCStructBufferPointer { ptr_pSubpasses in
                try self.pDependencies.withCStructBufferPointer { ptr_pDependencies in
                    try self.pCorrelatedViewMasks.withUnsafeBufferPointer { ptr_pCorrelatedViewMasks in
                        var cStruct = VkRenderPassCreateInfo2()
                        cStruct.sType = VK_STRUCTURE_TYPE_RENDER_PASS_CREATE_INFO_2
                        cStruct.pNext = nil
                        cStruct.flags = self.flags.rawValue
                        cStruct.attachmentCount = UInt32(ptr_pAttachments.count)
                        cStruct.pAttachments = ptr_pAttachments.baseAddress
                        cStruct.subpassCount = UInt32(ptr_pSubpasses.count)
                        cStruct.pSubpasses = ptr_pSubpasses.baseAddress
                        cStruct.dependencyCount = UInt32(ptr_pDependencies.count)
                        cStruct.pDependencies = ptr_pDependencies.baseAddress
                        cStruct.correlatedViewMaskCount = UInt32(ptr_pCorrelatedViewMasks.count)
                        cStruct.pCorrelatedViewMasks = ptr_pCorrelatedViewMasks.baseAddress
                        return try body(&cStruct)
                    }
                }
            }
        }
    }
}

struct SubpassBeginInfo: CStructConvertible {
    typealias CStruct = VkSubpassBeginInfo

    let contents: SubpassContents

    init(cStruct: VkSubpassBeginInfo) {
        self.contents = SubpassContents(rawValue: cStruct.contents.rawValue)!
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkSubpassBeginInfo>) throws -> R) rethrows -> R {
        var cStruct = VkSubpassBeginInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_SUBPASS_BEGIN_INFO
        cStruct.pNext = nil
        cStruct.contents = VkSubpassContents(rawValue: self.contents.rawValue)
        return try body(&cStruct)
    }
}

struct SubpassEndInfo: CStructConvertible {
    typealias CStruct = VkSubpassEndInfo


    init(cStruct: VkSubpassEndInfo) {
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkSubpassEndInfo>) throws -> R) rethrows -> R {
        var cStruct = VkSubpassEndInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_SUBPASS_END_INFO
        cStruct.pNext = nil
        return try body(&cStruct)
    }
}

struct PhysicalDeviceTimelineSemaphoreFeatures: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceTimelineSemaphoreFeatures

    let timelineSemaphore: Bool

    init(cStruct: VkPhysicalDeviceTimelineSemaphoreFeatures) {
        self.timelineSemaphore = cStruct.timelineSemaphore == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceTimelineSemaphoreFeatures>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceTimelineSemaphoreFeatures()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TIMELINE_SEMAPHORE_FEATURES
        cStruct.pNext = nil
        cStruct.timelineSemaphore = VkBool32(self.timelineSemaphore ? VK_TRUE : VK_FALSE)
        return try body(&cStruct)
    }
}

struct PhysicalDeviceTimelineSemaphoreProperties: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceTimelineSemaphoreProperties

    let maxTimelineSemaphoreValueDifference: UInt64

    init(cStruct: VkPhysicalDeviceTimelineSemaphoreProperties) {
        self.maxTimelineSemaphoreValueDifference = cStruct.maxTimelineSemaphoreValueDifference
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceTimelineSemaphoreProperties>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceTimelineSemaphoreProperties()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TIMELINE_SEMAPHORE_PROPERTIES
        cStruct.pNext = nil
        cStruct.maxTimelineSemaphoreValueDifference = self.maxTimelineSemaphoreValueDifference
        return try body(&cStruct)
    }
}

struct SemaphoreTypeCreateInfo: CStructConvertible {
    typealias CStruct = VkSemaphoreTypeCreateInfo

    let semaphoreType: SemaphoreType
    let initialValue: UInt64

    init(cStruct: VkSemaphoreTypeCreateInfo) {
        self.semaphoreType = SemaphoreType(rawValue: cStruct.semaphoreType.rawValue)!
        self.initialValue = cStruct.initialValue
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkSemaphoreTypeCreateInfo>) throws -> R) rethrows -> R {
        var cStruct = VkSemaphoreTypeCreateInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_SEMAPHORE_TYPE_CREATE_INFO
        cStruct.pNext = nil
        cStruct.semaphoreType = VkSemaphoreType(rawValue: self.semaphoreType.rawValue)
        cStruct.initialValue = self.initialValue
        return try body(&cStruct)
    }
}

struct TimelineSemaphoreSubmitInfo: CStructConvertible {
    typealias CStruct = VkTimelineSemaphoreSubmitInfo

    let pWaitSemaphoreValues: Array<UInt64>?
    let pSignalSemaphoreValues: Array<UInt64>?

    init(cStruct: VkTimelineSemaphoreSubmitInfo) {
        self.pWaitSemaphoreValues = (cStruct.pWaitSemaphoreValues != nil) ? Array(UnsafeBufferPointer(start: cStruct.pWaitSemaphoreValues, count: Int(cStruct.waitSemaphoreValueCount))) : nil
        self.pSignalSemaphoreValues = (cStruct.pSignalSemaphoreValues != nil) ? Array(UnsafeBufferPointer(start: cStruct.pSignalSemaphoreValues, count: Int(cStruct.signalSemaphoreValueCount))) : nil
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkTimelineSemaphoreSubmitInfo>) throws -> R) rethrows -> R {
        try self.pWaitSemaphoreValues.withOptionalUnsafeBufferPointer { ptr_pWaitSemaphoreValues in
            try self.pSignalSemaphoreValues.withOptionalUnsafeBufferPointer { ptr_pSignalSemaphoreValues in
                var cStruct = VkTimelineSemaphoreSubmitInfo()
                cStruct.sType = VK_STRUCTURE_TYPE_TIMELINE_SEMAPHORE_SUBMIT_INFO
                cStruct.pNext = nil
                cStruct.waitSemaphoreValueCount = UInt32(ptr_pWaitSemaphoreValues.count)
                cStruct.pWaitSemaphoreValues = ptr_pWaitSemaphoreValues.baseAddress
                cStruct.signalSemaphoreValueCount = UInt32(ptr_pSignalSemaphoreValues.count)
                cStruct.pSignalSemaphoreValues = ptr_pSignalSemaphoreValues.baseAddress
                return try body(&cStruct)
            }
        }
    }
}

struct SemaphoreWaitInfo: CStructConvertible {
    typealias CStruct = VkSemaphoreWaitInfo

    let flags: SemaphoreWaitFlags
    let pSemaphores: Array<Semaphore>
    let pValues: Array<UInt64>

    init(cStruct: VkSemaphoreWaitInfo) {
        fatalError("This initializer should be removed.")
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkSemaphoreWaitInfo>) throws -> R) rethrows -> R {
        try self.pSemaphores.map{ $0.handle }.withUnsafeBufferPointer { ptr_pSemaphores in
            try self.pValues.withUnsafeBufferPointer { ptr_pValues in
                var cStruct = VkSemaphoreWaitInfo()
                cStruct.sType = VK_STRUCTURE_TYPE_SEMAPHORE_WAIT_INFO
                cStruct.pNext = nil
                cStruct.flags = self.flags.rawValue
                cStruct.semaphoreCount = UInt32(ptr_pSemaphores.count)
                cStruct.pSemaphores = ptr_pSemaphores.baseAddress
                cStruct.pValues = ptr_pValues.baseAddress
                return try body(&cStruct)
            }
        }
    }
}

struct SemaphoreSignalInfo: CStructConvertible {
    typealias CStruct = VkSemaphoreSignalInfo

    let semaphore: Semaphore
    let value: UInt64

    init(cStruct: VkSemaphoreSignalInfo) {
        fatalError("This initializer should be removed.")
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkSemaphoreSignalInfo>) throws -> R) rethrows -> R {
        var cStruct = VkSemaphoreSignalInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_SEMAPHORE_SIGNAL_INFO
        cStruct.pNext = nil
        cStruct.semaphore = self.semaphore.handle
        cStruct.value = self.value
        return try body(&cStruct)
    }
}

struct VertexInputBindingDivisorDescriptionEXT: CStructConvertible {
    typealias CStruct = VkVertexInputBindingDivisorDescriptionEXT

    let binding: UInt32
    let divisor: UInt32

    init(cStruct: VkVertexInputBindingDivisorDescriptionEXT) {
        self.binding = cStruct.binding
        self.divisor = cStruct.divisor
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkVertexInputBindingDivisorDescriptionEXT>) throws -> R) rethrows -> R {
        var cStruct = VkVertexInputBindingDivisorDescriptionEXT()
        cStruct.binding = self.binding
        cStruct.divisor = self.divisor
        return try body(&cStruct)
    }
}

struct PipelineVertexInputDivisorStateCreateInfoEXT: CStructConvertible {
    typealias CStruct = VkPipelineVertexInputDivisorStateCreateInfoEXT

    let pVertexBindingDivisors: Array<VertexInputBindingDivisorDescriptionEXT>

    init(cStruct: VkPipelineVertexInputDivisorStateCreateInfoEXT) {
        self.pVertexBindingDivisors = UnsafeBufferPointer(start: cStruct.pVertexBindingDivisors, count: Int(cStruct.vertexBindingDivisorCount)).map{ VertexInputBindingDivisorDescriptionEXT(cStruct: $0) }
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPipelineVertexInputDivisorStateCreateInfoEXT>) throws -> R) rethrows -> R {
        try self.pVertexBindingDivisors.withCStructBufferPointer { ptr_pVertexBindingDivisors in
            var cStruct = VkPipelineVertexInputDivisorStateCreateInfoEXT()
            cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_VERTEX_INPUT_DIVISOR_STATE_CREATE_INFO_EXT
            cStruct.pNext = nil
            cStruct.vertexBindingDivisorCount = UInt32(ptr_pVertexBindingDivisors.count)
            cStruct.pVertexBindingDivisors = ptr_pVertexBindingDivisors.baseAddress
            return try body(&cStruct)
        }
    }
}

struct PhysicalDeviceVertexAttributeDivisorPropertiesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceVertexAttributeDivisorPropertiesEXT

    let maxVertexAttribDivisor: UInt32

    init(cStruct: VkPhysicalDeviceVertexAttributeDivisorPropertiesEXT) {
        self.maxVertexAttribDivisor = cStruct.maxVertexAttribDivisor
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceVertexAttributeDivisorPropertiesEXT>) throws -> R) rethrows -> R {
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

    init(cStruct: VkPhysicalDevicePCIBusInfoPropertiesEXT) {
        self.pciDomain = cStruct.pciDomain
        self.pciBus = cStruct.pciBus
        self.pciDevice = cStruct.pciDevice
        self.pciFunction = cStruct.pciFunction
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDevicePCIBusInfoPropertiesEXT>) throws -> R) rethrows -> R {
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

    let conditionalRenderingEnable: Bool

    init(cStruct: VkCommandBufferInheritanceConditionalRenderingInfoEXT) {
        self.conditionalRenderingEnable = cStruct.conditionalRenderingEnable == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkCommandBufferInheritanceConditionalRenderingInfoEXT>) throws -> R) rethrows -> R {
        var cStruct = VkCommandBufferInheritanceConditionalRenderingInfoEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_COMMAND_BUFFER_INHERITANCE_CONDITIONAL_RENDERING_INFO_EXT
        cStruct.pNext = nil
        cStruct.conditionalRenderingEnable = VkBool32(self.conditionalRenderingEnable ? VK_TRUE : VK_FALSE)
        return try body(&cStruct)
    }
}

struct PhysicalDevice8BitStorageFeatures: CStructConvertible {
    typealias CStruct = VkPhysicalDevice8BitStorageFeatures

    let storageBuffer8BitAccess: Bool
    let uniformAndStorageBuffer8BitAccess: Bool
    let storagePushConstant8: Bool

    init(cStruct: VkPhysicalDevice8BitStorageFeatures) {
        self.storageBuffer8BitAccess = cStruct.storageBuffer8BitAccess == VK_TRUE
        self.uniformAndStorageBuffer8BitAccess = cStruct.uniformAndStorageBuffer8BitAccess == VK_TRUE
        self.storagePushConstant8 = cStruct.storagePushConstant8 == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDevice8BitStorageFeatures>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDevice8BitStorageFeatures()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_8BIT_STORAGE_FEATURES
        cStruct.pNext = nil
        cStruct.storageBuffer8BitAccess = VkBool32(self.storageBuffer8BitAccess ? VK_TRUE : VK_FALSE)
        cStruct.uniformAndStorageBuffer8BitAccess = VkBool32(self.uniformAndStorageBuffer8BitAccess ? VK_TRUE : VK_FALSE)
        cStruct.storagePushConstant8 = VkBool32(self.storagePushConstant8 ? VK_TRUE : VK_FALSE)
        return try body(&cStruct)
    }
}

struct PhysicalDeviceConditionalRenderingFeaturesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceConditionalRenderingFeaturesEXT

    let conditionalRendering: Bool
    let inheritedConditionalRendering: Bool

    init(cStruct: VkPhysicalDeviceConditionalRenderingFeaturesEXT) {
        self.conditionalRendering = cStruct.conditionalRendering == VK_TRUE
        self.inheritedConditionalRendering = cStruct.inheritedConditionalRendering == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceConditionalRenderingFeaturesEXT>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceConditionalRenderingFeaturesEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_CONDITIONAL_RENDERING_FEATURES_EXT
        cStruct.pNext = nil
        cStruct.conditionalRendering = VkBool32(self.conditionalRendering ? VK_TRUE : VK_FALSE)
        cStruct.inheritedConditionalRendering = VkBool32(self.inheritedConditionalRendering ? VK_TRUE : VK_FALSE)
        return try body(&cStruct)
    }
}

struct PhysicalDeviceVulkanMemoryModelFeatures: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceVulkanMemoryModelFeatures

    let vulkanMemoryModel: Bool
    let vulkanMemoryModelDeviceScope: Bool
    let vulkanMemoryModelAvailabilityVisibilityChains: Bool

    init(cStruct: VkPhysicalDeviceVulkanMemoryModelFeatures) {
        self.vulkanMemoryModel = cStruct.vulkanMemoryModel == VK_TRUE
        self.vulkanMemoryModelDeviceScope = cStruct.vulkanMemoryModelDeviceScope == VK_TRUE
        self.vulkanMemoryModelAvailabilityVisibilityChains = cStruct.vulkanMemoryModelAvailabilityVisibilityChains == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceVulkanMemoryModelFeatures>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceVulkanMemoryModelFeatures()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_MEMORY_MODEL_FEATURES
        cStruct.pNext = nil
        cStruct.vulkanMemoryModel = VkBool32(self.vulkanMemoryModel ? VK_TRUE : VK_FALSE)
        cStruct.vulkanMemoryModelDeviceScope = VkBool32(self.vulkanMemoryModelDeviceScope ? VK_TRUE : VK_FALSE)
        cStruct.vulkanMemoryModelAvailabilityVisibilityChains = VkBool32(self.vulkanMemoryModelAvailabilityVisibilityChains ? VK_TRUE : VK_FALSE)
        return try body(&cStruct)
    }
}

struct PhysicalDeviceShaderAtomicInt64Features: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceShaderAtomicInt64Features

    let shaderBufferInt64Atomics: Bool
    let shaderSharedInt64Atomics: Bool

    init(cStruct: VkPhysicalDeviceShaderAtomicInt64Features) {
        self.shaderBufferInt64Atomics = cStruct.shaderBufferInt64Atomics == VK_TRUE
        self.shaderSharedInt64Atomics = cStruct.shaderSharedInt64Atomics == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceShaderAtomicInt64Features>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceShaderAtomicInt64Features()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_ATOMIC_INT64_FEATURES
        cStruct.pNext = nil
        cStruct.shaderBufferInt64Atomics = VkBool32(self.shaderBufferInt64Atomics ? VK_TRUE : VK_FALSE)
        cStruct.shaderSharedInt64Atomics = VkBool32(self.shaderSharedInt64Atomics ? VK_TRUE : VK_FALSE)
        return try body(&cStruct)
    }
}

struct PhysicalDeviceVertexAttributeDivisorFeaturesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceVertexAttributeDivisorFeaturesEXT

    let vertexAttributeInstanceRateDivisor: Bool
    let vertexAttributeInstanceRateZeroDivisor: Bool

    init(cStruct: VkPhysicalDeviceVertexAttributeDivisorFeaturesEXT) {
        self.vertexAttributeInstanceRateDivisor = cStruct.vertexAttributeInstanceRateDivisor == VK_TRUE
        self.vertexAttributeInstanceRateZeroDivisor = cStruct.vertexAttributeInstanceRateZeroDivisor == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceVertexAttributeDivisorFeaturesEXT>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceVertexAttributeDivisorFeaturesEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VERTEX_ATTRIBUTE_DIVISOR_FEATURES_EXT
        cStruct.pNext = nil
        cStruct.vertexAttributeInstanceRateDivisor = VkBool32(self.vertexAttributeInstanceRateDivisor ? VK_TRUE : VK_FALSE)
        cStruct.vertexAttributeInstanceRateZeroDivisor = VkBool32(self.vertexAttributeInstanceRateZeroDivisor ? VK_TRUE : VK_FALSE)
        return try body(&cStruct)
    }
}

struct QueueFamilyCheckpointPropertiesNV: CStructConvertible {
    typealias CStruct = VkQueueFamilyCheckpointPropertiesNV

    let checkpointExecutionStageMask: PipelineStageFlags

    init(cStruct: VkQueueFamilyCheckpointPropertiesNV) {
        self.checkpointExecutionStageMask = PipelineStageFlags(rawValue: cStruct.checkpointExecutionStageMask)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkQueueFamilyCheckpointPropertiesNV>) throws -> R) rethrows -> R {
        var cStruct = VkQueueFamilyCheckpointPropertiesNV()
        cStruct.sType = VK_STRUCTURE_TYPE_QUEUE_FAMILY_CHECKPOINT_PROPERTIES_NV
        cStruct.pNext = nil
        cStruct.checkpointExecutionStageMask = self.checkpointExecutionStageMask.rawValue
        return try body(&cStruct)
    }
}

struct CheckpointDataNV: CStructConvertible {
    typealias CStruct = VkCheckpointDataNV

    let stage: PipelineStageFlags
    let pCheckpointMarker: UnsafeMutableRawPointer

    init(cStruct: VkCheckpointDataNV) {
        self.stage = PipelineStageFlags(rawValue: cStruct.stage.rawValue)
        self.pCheckpointMarker = cStruct.pCheckpointMarker
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkCheckpointDataNV>) throws -> R) rethrows -> R {
        var cStruct = VkCheckpointDataNV()
        cStruct.sType = VK_STRUCTURE_TYPE_CHECKPOINT_DATA_NV
        cStruct.pNext = nil
        cStruct.stage = VkPipelineStageFlagBits(rawValue: self.stage.rawValue)
        cStruct.pCheckpointMarker = self.pCheckpointMarker
        return try body(&cStruct)
    }
}

struct PhysicalDeviceDepthStencilResolveProperties: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceDepthStencilResolveProperties

    let supportedDepthResolveModes: ResolveModeFlags
    let supportedStencilResolveModes: ResolveModeFlags
    let independentResolveNone: Bool
    let independentResolve: Bool

    init(cStruct: VkPhysicalDeviceDepthStencilResolveProperties) {
        self.supportedDepthResolveModes = ResolveModeFlags(rawValue: cStruct.supportedDepthResolveModes)
        self.supportedStencilResolveModes = ResolveModeFlags(rawValue: cStruct.supportedStencilResolveModes)
        self.independentResolveNone = cStruct.independentResolveNone == VK_TRUE
        self.independentResolve = cStruct.independentResolve == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceDepthStencilResolveProperties>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceDepthStencilResolveProperties()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DEPTH_STENCIL_RESOLVE_PROPERTIES
        cStruct.pNext = nil
        cStruct.supportedDepthResolveModes = self.supportedDepthResolveModes.rawValue
        cStruct.supportedStencilResolveModes = self.supportedStencilResolveModes.rawValue
        cStruct.independentResolveNone = VkBool32(self.independentResolveNone ? VK_TRUE : VK_FALSE)
        cStruct.independentResolve = VkBool32(self.independentResolve ? VK_TRUE : VK_FALSE)
        return try body(&cStruct)
    }
}

struct SubpassDescriptionDepthStencilResolve: CStructConvertible {
    typealias CStruct = VkSubpassDescriptionDepthStencilResolve

    let depthResolveMode: ResolveModeFlags
    let stencilResolveMode: ResolveModeFlags
    let pDepthStencilResolveAttachment: AttachmentReference2?

    init(cStruct: VkSubpassDescriptionDepthStencilResolve) {
        self.depthResolveMode = ResolveModeFlags(rawValue: cStruct.depthResolveMode.rawValue)
        self.stencilResolveMode = ResolveModeFlags(rawValue: cStruct.stencilResolveMode.rawValue)
        self.pDepthStencilResolveAttachment = (cStruct.pDepthStencilResolveAttachment != nil) ? AttachmentReference2(cStruct: cStruct.pDepthStencilResolveAttachment.pointee) : nil
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkSubpassDescriptionDepthStencilResolve>) throws -> R) rethrows -> R {
        try self.pDepthStencilResolveAttachment.withOptionalCStruct { ptr_pDepthStencilResolveAttachment in
            var cStruct = VkSubpassDescriptionDepthStencilResolve()
            cStruct.sType = VK_STRUCTURE_TYPE_SUBPASS_DESCRIPTION_DEPTH_STENCIL_RESOLVE
            cStruct.pNext = nil
            cStruct.depthResolveMode = VkResolveModeFlagBits(rawValue: self.depthResolveMode.rawValue)
            cStruct.stencilResolveMode = VkResolveModeFlagBits(rawValue: self.stencilResolveMode.rawValue)
            cStruct.pDepthStencilResolveAttachment = ptr_pDepthStencilResolveAttachment
            return try body(&cStruct)
        }
    }
}

struct ImageViewASTCDecodeModeEXT: CStructConvertible {
    typealias CStruct = VkImageViewASTCDecodeModeEXT

    let decodeMode: Format

    init(cStruct: VkImageViewASTCDecodeModeEXT) {
        self.decodeMode = Format(rawValue: cStruct.decodeMode.rawValue)!
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkImageViewASTCDecodeModeEXT>) throws -> R) rethrows -> R {
        var cStruct = VkImageViewASTCDecodeModeEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_IMAGE_VIEW_ASTC_DECODE_MODE_EXT
        cStruct.pNext = nil
        cStruct.decodeMode = VkFormat(rawValue: self.decodeMode.rawValue)
        return try body(&cStruct)
    }
}

struct PhysicalDeviceASTCDecodeFeaturesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceASTCDecodeFeaturesEXT

    let decodeModeSharedExponent: Bool

    init(cStruct: VkPhysicalDeviceASTCDecodeFeaturesEXT) {
        self.decodeModeSharedExponent = cStruct.decodeModeSharedExponent == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceASTCDecodeFeaturesEXT>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceASTCDecodeFeaturesEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_ASTC_DECODE_FEATURES_EXT
        cStruct.pNext = nil
        cStruct.decodeModeSharedExponent = VkBool32(self.decodeModeSharedExponent ? VK_TRUE : VK_FALSE)
        return try body(&cStruct)
    }
}

struct PhysicalDeviceTransformFeedbackFeaturesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceTransformFeedbackFeaturesEXT

    let transformFeedback: Bool
    let geometryStreams: Bool

    init(cStruct: VkPhysicalDeviceTransformFeedbackFeaturesEXT) {
        self.transformFeedback = cStruct.transformFeedback == VK_TRUE
        self.geometryStreams = cStruct.geometryStreams == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceTransformFeedbackFeaturesEXT>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceTransformFeedbackFeaturesEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TRANSFORM_FEEDBACK_FEATURES_EXT
        cStruct.pNext = nil
        cStruct.transformFeedback = VkBool32(self.transformFeedback ? VK_TRUE : VK_FALSE)
        cStruct.geometryStreams = VkBool32(self.geometryStreams ? VK_TRUE : VK_FALSE)
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
    let transformFeedbackQueries: Bool
    let transformFeedbackStreamsLinesTriangles: Bool
    let transformFeedbackRasterizationStreamSelect: Bool
    let transformFeedbackDraw: Bool

    init(cStruct: VkPhysicalDeviceTransformFeedbackPropertiesEXT) {
        self.maxTransformFeedbackStreams = cStruct.maxTransformFeedbackStreams
        self.maxTransformFeedbackBuffers = cStruct.maxTransformFeedbackBuffers
        self.maxTransformFeedbackBufferSize = cStruct.maxTransformFeedbackBufferSize
        self.maxTransformFeedbackStreamDataSize = cStruct.maxTransformFeedbackStreamDataSize
        self.maxTransformFeedbackBufferDataSize = cStruct.maxTransformFeedbackBufferDataSize
        self.maxTransformFeedbackBufferDataStride = cStruct.maxTransformFeedbackBufferDataStride
        self.transformFeedbackQueries = cStruct.transformFeedbackQueries == VK_TRUE
        self.transformFeedbackStreamsLinesTriangles = cStruct.transformFeedbackStreamsLinesTriangles == VK_TRUE
        self.transformFeedbackRasterizationStreamSelect = cStruct.transformFeedbackRasterizationStreamSelect == VK_TRUE
        self.transformFeedbackDraw = cStruct.transformFeedbackDraw == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceTransformFeedbackPropertiesEXT>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceTransformFeedbackPropertiesEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TRANSFORM_FEEDBACK_PROPERTIES_EXT
        cStruct.pNext = nil
        cStruct.maxTransformFeedbackStreams = self.maxTransformFeedbackStreams
        cStruct.maxTransformFeedbackBuffers = self.maxTransformFeedbackBuffers
        cStruct.maxTransformFeedbackBufferSize = self.maxTransformFeedbackBufferSize
        cStruct.maxTransformFeedbackStreamDataSize = self.maxTransformFeedbackStreamDataSize
        cStruct.maxTransformFeedbackBufferDataSize = self.maxTransformFeedbackBufferDataSize
        cStruct.maxTransformFeedbackBufferDataStride = self.maxTransformFeedbackBufferDataStride
        cStruct.transformFeedbackQueries = VkBool32(self.transformFeedbackQueries ? VK_TRUE : VK_FALSE)
        cStruct.transformFeedbackStreamsLinesTriangles = VkBool32(self.transformFeedbackStreamsLinesTriangles ? VK_TRUE : VK_FALSE)
        cStruct.transformFeedbackRasterizationStreamSelect = VkBool32(self.transformFeedbackRasterizationStreamSelect ? VK_TRUE : VK_FALSE)
        cStruct.transformFeedbackDraw = VkBool32(self.transformFeedbackDraw ? VK_TRUE : VK_FALSE)
        return try body(&cStruct)
    }
}

struct PipelineRasterizationStateStreamCreateInfoEXT: CStructConvertible {
    typealias CStruct = VkPipelineRasterizationStateStreamCreateInfoEXT

    let flags: PipelineRasterizationStateStreamCreateFlagsEXT
    let rasterizationStream: UInt32

    init(cStruct: VkPipelineRasterizationStateStreamCreateInfoEXT) {
        self.flags = PipelineRasterizationStateStreamCreateFlagsEXT(rawValue: cStruct.flags)
        self.rasterizationStream = cStruct.rasterizationStream
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPipelineRasterizationStateStreamCreateInfoEXT>) throws -> R) rethrows -> R {
        var cStruct = VkPipelineRasterizationStateStreamCreateInfoEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_STATE_STREAM_CREATE_INFO_EXT
        cStruct.pNext = nil
        cStruct.flags = self.flags.rawValue
        cStruct.rasterizationStream = self.rasterizationStream
        return try body(&cStruct)
    }
}

struct PhysicalDeviceRepresentativeFragmentTestFeaturesNV: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceRepresentativeFragmentTestFeaturesNV

    let representativeFragmentTest: Bool

    init(cStruct: VkPhysicalDeviceRepresentativeFragmentTestFeaturesNV) {
        self.representativeFragmentTest = cStruct.representativeFragmentTest == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceRepresentativeFragmentTestFeaturesNV>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceRepresentativeFragmentTestFeaturesNV()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_REPRESENTATIVE_FRAGMENT_TEST_FEATURES_NV
        cStruct.pNext = nil
        cStruct.representativeFragmentTest = VkBool32(self.representativeFragmentTest ? VK_TRUE : VK_FALSE)
        return try body(&cStruct)
    }
}

struct PipelineRepresentativeFragmentTestStateCreateInfoNV: CStructConvertible {
    typealias CStruct = VkPipelineRepresentativeFragmentTestStateCreateInfoNV

    let representativeFragmentTestEnable: Bool

    init(cStruct: VkPipelineRepresentativeFragmentTestStateCreateInfoNV) {
        self.representativeFragmentTestEnable = cStruct.representativeFragmentTestEnable == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPipelineRepresentativeFragmentTestStateCreateInfoNV>) throws -> R) rethrows -> R {
        var cStruct = VkPipelineRepresentativeFragmentTestStateCreateInfoNV()
        cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_REPRESENTATIVE_FRAGMENT_TEST_STATE_CREATE_INFO_NV
        cStruct.pNext = nil
        cStruct.representativeFragmentTestEnable = VkBool32(self.representativeFragmentTestEnable ? VK_TRUE : VK_FALSE)
        return try body(&cStruct)
    }
}

struct PhysicalDeviceExclusiveScissorFeaturesNV: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceExclusiveScissorFeaturesNV

    let exclusiveScissor: Bool

    init(cStruct: VkPhysicalDeviceExclusiveScissorFeaturesNV) {
        self.exclusiveScissor = cStruct.exclusiveScissor == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceExclusiveScissorFeaturesNV>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceExclusiveScissorFeaturesNV()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXCLUSIVE_SCISSOR_FEATURES_NV
        cStruct.pNext = nil
        cStruct.exclusiveScissor = VkBool32(self.exclusiveScissor ? VK_TRUE : VK_FALSE)
        return try body(&cStruct)
    }
}

struct PipelineViewportExclusiveScissorStateCreateInfoNV: CStructConvertible {
    typealias CStruct = VkPipelineViewportExclusiveScissorStateCreateInfoNV

    let pExclusiveScissors: Array<Rect2D>?

    init(cStruct: VkPipelineViewportExclusiveScissorStateCreateInfoNV) {
        self.pExclusiveScissors = (cStruct.pExclusiveScissors != nil) ? UnsafeBufferPointer(start: cStruct.pExclusiveScissors, count: Int(cStruct.exclusiveScissorCount)).map{ Rect2D(cStruct: $0) } : nil
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPipelineViewportExclusiveScissorStateCreateInfoNV>) throws -> R) rethrows -> R {
        try self.pExclusiveScissors.withOptionalCStructBufferPointer { ptr_pExclusiveScissors in
            var cStruct = VkPipelineViewportExclusiveScissorStateCreateInfoNV()
            cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_EXCLUSIVE_SCISSOR_STATE_CREATE_INFO_NV
            cStruct.pNext = nil
            cStruct.exclusiveScissorCount = UInt32(ptr_pExclusiveScissors.count)
            cStruct.pExclusiveScissors = ptr_pExclusiveScissors.baseAddress
            return try body(&cStruct)
        }
    }
}

struct PhysicalDeviceCornerSampledImageFeaturesNV: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceCornerSampledImageFeaturesNV

    let cornerSampledImage: Bool

    init(cStruct: VkPhysicalDeviceCornerSampledImageFeaturesNV) {
        self.cornerSampledImage = cStruct.cornerSampledImage == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceCornerSampledImageFeaturesNV>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceCornerSampledImageFeaturesNV()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_CORNER_SAMPLED_IMAGE_FEATURES_NV
        cStruct.pNext = nil
        cStruct.cornerSampledImage = VkBool32(self.cornerSampledImage ? VK_TRUE : VK_FALSE)
        return try body(&cStruct)
    }
}

struct PhysicalDeviceComputeShaderDerivativesFeaturesNV: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceComputeShaderDerivativesFeaturesNV

    let computeDerivativeGroupQuads: Bool
    let computeDerivativeGroupLinear: Bool

    init(cStruct: VkPhysicalDeviceComputeShaderDerivativesFeaturesNV) {
        self.computeDerivativeGroupQuads = cStruct.computeDerivativeGroupQuads == VK_TRUE
        self.computeDerivativeGroupLinear = cStruct.computeDerivativeGroupLinear == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceComputeShaderDerivativesFeaturesNV>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceComputeShaderDerivativesFeaturesNV()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_COMPUTE_SHADER_DERIVATIVES_FEATURES_NV
        cStruct.pNext = nil
        cStruct.computeDerivativeGroupQuads = VkBool32(self.computeDerivativeGroupQuads ? VK_TRUE : VK_FALSE)
        cStruct.computeDerivativeGroupLinear = VkBool32(self.computeDerivativeGroupLinear ? VK_TRUE : VK_FALSE)
        return try body(&cStruct)
    }
}

struct PhysicalDeviceFragmentShaderBarycentricFeaturesNV: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceFragmentShaderBarycentricFeaturesNV

    let fragmentShaderBarycentric: Bool

    init(cStruct: VkPhysicalDeviceFragmentShaderBarycentricFeaturesNV) {
        self.fragmentShaderBarycentric = cStruct.fragmentShaderBarycentric == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceFragmentShaderBarycentricFeaturesNV>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceFragmentShaderBarycentricFeaturesNV()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_SHADER_BARYCENTRIC_FEATURES_NV
        cStruct.pNext = nil
        cStruct.fragmentShaderBarycentric = VkBool32(self.fragmentShaderBarycentric ? VK_TRUE : VK_FALSE)
        return try body(&cStruct)
    }
}

struct PhysicalDeviceShaderImageFootprintFeaturesNV: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceShaderImageFootprintFeaturesNV

    let imageFootprint: Bool

    init(cStruct: VkPhysicalDeviceShaderImageFootprintFeaturesNV) {
        self.imageFootprint = cStruct.imageFootprint == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceShaderImageFootprintFeaturesNV>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceShaderImageFootprintFeaturesNV()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_IMAGE_FOOTPRINT_FEATURES_NV
        cStruct.pNext = nil
        cStruct.imageFootprint = VkBool32(self.imageFootprint ? VK_TRUE : VK_FALSE)
        return try body(&cStruct)
    }
}

struct PhysicalDeviceDedicatedAllocationImageAliasingFeaturesNV: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceDedicatedAllocationImageAliasingFeaturesNV

    let dedicatedAllocationImageAliasing: Bool

    init(cStruct: VkPhysicalDeviceDedicatedAllocationImageAliasingFeaturesNV) {
        self.dedicatedAllocationImageAliasing = cStruct.dedicatedAllocationImageAliasing == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceDedicatedAllocationImageAliasingFeaturesNV>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceDedicatedAllocationImageAliasingFeaturesNV()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DEDICATED_ALLOCATION_IMAGE_ALIASING_FEATURES_NV
        cStruct.pNext = nil
        cStruct.dedicatedAllocationImageAliasing = VkBool32(self.dedicatedAllocationImageAliasing ? VK_TRUE : VK_FALSE)
        return try body(&cStruct)
    }
}

struct ShadingRatePaletteNV: CStructConvertible {
    typealias CStruct = VkShadingRatePaletteNV

    let pShadingRatePaletteEntries: Array<ShadingRatePaletteEntryNV>

    init(cStruct: VkShadingRatePaletteNV) {
        self.pShadingRatePaletteEntries = UnsafeBufferPointer(start: cStruct.pShadingRatePaletteEntries, count: Int(cStruct.shadingRatePaletteEntryCount)).map{ ShadingRatePaletteEntryNV(rawValue: $0.rawValue)! }
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkShadingRatePaletteNV>) throws -> R) rethrows -> R {
        try self.pShadingRatePaletteEntries.map{ VkShadingRatePaletteEntryNV(rawValue: $0.rawValue) }.withUnsafeBufferPointer { ptr_pShadingRatePaletteEntries in
            var cStruct = VkShadingRatePaletteNV()
            cStruct.shadingRatePaletteEntryCount = UInt32(ptr_pShadingRatePaletteEntries.count)
            cStruct.pShadingRatePaletteEntries = ptr_pShadingRatePaletteEntries.baseAddress
            return try body(&cStruct)
        }
    }
}

struct PipelineViewportShadingRateImageStateCreateInfoNV: CStructConvertible {
    typealias CStruct = VkPipelineViewportShadingRateImageStateCreateInfoNV

    let shadingRateImageEnable: Bool
    let pShadingRatePalettes: Array<ShadingRatePaletteNV>?

    init(cStruct: VkPipelineViewportShadingRateImageStateCreateInfoNV) {
        self.shadingRateImageEnable = cStruct.shadingRateImageEnable == VK_TRUE
        self.pShadingRatePalettes = (cStruct.pShadingRatePalettes != nil) ? UnsafeBufferPointer(start: cStruct.pShadingRatePalettes, count: Int(cStruct.viewportCount)).map{ ShadingRatePaletteNV(cStruct: $0) } : nil
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPipelineViewportShadingRateImageStateCreateInfoNV>) throws -> R) rethrows -> R {
        try self.pShadingRatePalettes.withOptionalCStructBufferPointer { ptr_pShadingRatePalettes in
            var cStruct = VkPipelineViewportShadingRateImageStateCreateInfoNV()
            cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_SHADING_RATE_IMAGE_STATE_CREATE_INFO_NV
            cStruct.pNext = nil
            cStruct.shadingRateImageEnable = VkBool32(self.shadingRateImageEnable ? VK_TRUE : VK_FALSE)
            cStruct.viewportCount = UInt32(ptr_pShadingRatePalettes.count)
            cStruct.pShadingRatePalettes = ptr_pShadingRatePalettes.baseAddress
            return try body(&cStruct)
        }
    }
}

struct PhysicalDeviceShadingRateImageFeaturesNV: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceShadingRateImageFeaturesNV

    let shadingRateImage: Bool
    let shadingRateCoarseSampleOrder: Bool

    init(cStruct: VkPhysicalDeviceShadingRateImageFeaturesNV) {
        self.shadingRateImage = cStruct.shadingRateImage == VK_TRUE
        self.shadingRateCoarseSampleOrder = cStruct.shadingRateCoarseSampleOrder == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceShadingRateImageFeaturesNV>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceShadingRateImageFeaturesNV()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADING_RATE_IMAGE_FEATURES_NV
        cStruct.pNext = nil
        cStruct.shadingRateImage = VkBool32(self.shadingRateImage ? VK_TRUE : VK_FALSE)
        cStruct.shadingRateCoarseSampleOrder = VkBool32(self.shadingRateCoarseSampleOrder ? VK_TRUE : VK_FALSE)
        return try body(&cStruct)
    }
}

struct PhysicalDeviceShadingRateImagePropertiesNV: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceShadingRateImagePropertiesNV

    let shadingRateTexelSize: Extent2D
    let shadingRatePaletteSize: UInt32
    let shadingRateMaxCoarseSamples: UInt32

    init(cStruct: VkPhysicalDeviceShadingRateImagePropertiesNV) {
        self.shadingRateTexelSize = Extent2D(cStruct: cStruct.shadingRateTexelSize)
        self.shadingRatePaletteSize = cStruct.shadingRatePaletteSize
        self.shadingRateMaxCoarseSamples = cStruct.shadingRateMaxCoarseSamples
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceShadingRateImagePropertiesNV>) throws -> R) rethrows -> R {
        try self.shadingRateTexelSize.withCStruct { ptr_shadingRateTexelSize in
            var cStruct = VkPhysicalDeviceShadingRateImagePropertiesNV()
            cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADING_RATE_IMAGE_PROPERTIES_NV
            cStruct.pNext = nil
            cStruct.shadingRateTexelSize = ptr_shadingRateTexelSize.pointee
            cStruct.shadingRatePaletteSize = self.shadingRatePaletteSize
            cStruct.shadingRateMaxCoarseSamples = self.shadingRateMaxCoarseSamples
            return try body(&cStruct)
        }
    }
}

struct CoarseSampleLocationNV: CStructConvertible {
    typealias CStruct = VkCoarseSampleLocationNV

    let pixelX: UInt32
    let pixelY: UInt32
    let sample: UInt32

    init(cStruct: VkCoarseSampleLocationNV) {
        self.pixelX = cStruct.pixelX
        self.pixelY = cStruct.pixelY
        self.sample = cStruct.sample
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkCoarseSampleLocationNV>) throws -> R) rethrows -> R {
        var cStruct = VkCoarseSampleLocationNV()
        cStruct.pixelX = self.pixelX
        cStruct.pixelY = self.pixelY
        cStruct.sample = self.sample
        return try body(&cStruct)
    }
}

struct CoarseSampleOrderCustomNV: CStructConvertible {
    typealias CStruct = VkCoarseSampleOrderCustomNV

    let shadingRate: ShadingRatePaletteEntryNV
    let sampleCount: UInt32
    let pSampleLocations: Array<CoarseSampleLocationNV>

    init(cStruct: VkCoarseSampleOrderCustomNV) {
        self.shadingRate = ShadingRatePaletteEntryNV(rawValue: cStruct.shadingRate.rawValue)!
        self.sampleCount = cStruct.sampleCount
        self.pSampleLocations = UnsafeBufferPointer(start: cStruct.pSampleLocations, count: Int(cStruct.sampleLocationCount)).map{ CoarseSampleLocationNV(cStruct: $0) }
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkCoarseSampleOrderCustomNV>) throws -> R) rethrows -> R {
        try self.pSampleLocations.withCStructBufferPointer { ptr_pSampleLocations in
            var cStruct = VkCoarseSampleOrderCustomNV()
            cStruct.shadingRate = VkShadingRatePaletteEntryNV(rawValue: self.shadingRate.rawValue)
            cStruct.sampleCount = self.sampleCount
            cStruct.sampleLocationCount = UInt32(ptr_pSampleLocations.count)
            cStruct.pSampleLocations = ptr_pSampleLocations.baseAddress
            return try body(&cStruct)
        }
    }
}

struct PipelineViewportCoarseSampleOrderStateCreateInfoNV: CStructConvertible {
    typealias CStruct = VkPipelineViewportCoarseSampleOrderStateCreateInfoNV

    let sampleOrderType: CoarseSampleOrderTypeNV
    let pCustomSampleOrders: Array<CoarseSampleOrderCustomNV>

    init(cStruct: VkPipelineViewportCoarseSampleOrderStateCreateInfoNV) {
        self.sampleOrderType = CoarseSampleOrderTypeNV(rawValue: cStruct.sampleOrderType.rawValue)!
        self.pCustomSampleOrders = UnsafeBufferPointer(start: cStruct.pCustomSampleOrders, count: Int(cStruct.customSampleOrderCount)).map{ CoarseSampleOrderCustomNV(cStruct: $0) }
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPipelineViewportCoarseSampleOrderStateCreateInfoNV>) throws -> R) rethrows -> R {
        try self.pCustomSampleOrders.withCStructBufferPointer { ptr_pCustomSampleOrders in
            var cStruct = VkPipelineViewportCoarseSampleOrderStateCreateInfoNV()
            cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_COARSE_SAMPLE_ORDER_STATE_CREATE_INFO_NV
            cStruct.pNext = nil
            cStruct.sampleOrderType = VkCoarseSampleOrderTypeNV(rawValue: self.sampleOrderType.rawValue)
            cStruct.customSampleOrderCount = UInt32(ptr_pCustomSampleOrders.count)
            cStruct.pCustomSampleOrders = ptr_pCustomSampleOrders.baseAddress
            return try body(&cStruct)
        }
    }
}

struct PhysicalDeviceMeshShaderFeaturesNV: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceMeshShaderFeaturesNV

    let taskShader: Bool
    let meshShader: Bool

    init(cStruct: VkPhysicalDeviceMeshShaderFeaturesNV) {
        self.taskShader = cStruct.taskShader == VK_TRUE
        self.meshShader = cStruct.meshShader == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceMeshShaderFeaturesNV>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceMeshShaderFeaturesNV()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MESH_SHADER_FEATURES_NV
        cStruct.pNext = nil
        cStruct.taskShader = VkBool32(self.taskShader ? VK_TRUE : VK_FALSE)
        cStruct.meshShader = VkBool32(self.meshShader ? VK_TRUE : VK_FALSE)
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

    init(cStruct: VkPhysicalDeviceMeshShaderPropertiesNV) {
        self.maxDrawMeshTasksCount = cStruct.maxDrawMeshTasksCount
        self.maxTaskWorkGroupInvocations = cStruct.maxTaskWorkGroupInvocations
        self.maxTaskWorkGroupSize = cStruct.maxTaskWorkGroupSize
        self.maxTaskTotalMemorySize = cStruct.maxTaskTotalMemorySize
        self.maxTaskOutputCount = cStruct.maxTaskOutputCount
        self.maxMeshWorkGroupInvocations = cStruct.maxMeshWorkGroupInvocations
        self.maxMeshWorkGroupSize = cStruct.maxMeshWorkGroupSize
        self.maxMeshTotalMemorySize = cStruct.maxMeshTotalMemorySize
        self.maxMeshOutputVertices = cStruct.maxMeshOutputVertices
        self.maxMeshOutputPrimitives = cStruct.maxMeshOutputPrimitives
        self.maxMeshMultiviewViewCount = cStruct.maxMeshMultiviewViewCount
        self.meshOutputPerVertexGranularity = cStruct.meshOutputPerVertexGranularity
        self.meshOutputPerPrimitiveGranularity = cStruct.meshOutputPerPrimitiveGranularity
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceMeshShaderPropertiesNV>) throws -> R) rethrows -> R {
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

    init(cStruct: VkDrawMeshTasksIndirectCommandNV) {
        self.taskCount = cStruct.taskCount
        self.firstTask = cStruct.firstTask
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkDrawMeshTasksIndirectCommandNV>) throws -> R) rethrows -> R {
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

    init(cStruct: VkRayTracingShaderGroupCreateInfoNV) {
        self.type = cStruct.type
        self.generalShader = cStruct.generalShader
        self.closestHitShader = cStruct.closestHitShader
        self.anyHitShader = cStruct.anyHitShader
        self.intersectionShader = cStruct.intersectionShader
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkRayTracingShaderGroupCreateInfoNV>) throws -> R) rethrows -> R {
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

    let flags: PipelineCreateFlags
    let pStages: Array<PipelineShaderStageCreateInfo>
    let pGroups: Array<RayTracingShaderGroupCreateInfoNV>
    let maxRecursionDepth: UInt32
    let layout: PipelineLayout
    let basePipelineHandle: Pipeline?
    let basePipelineIndex: Int32

    init(cStruct: VkRayTracingPipelineCreateInfoNV) {
        fatalError("This initializer should be removed.")
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkRayTracingPipelineCreateInfoNV>) throws -> R) rethrows -> R {
        try self.pStages.withCStructBufferPointer { ptr_pStages in
            try self.pGroups.withCStructBufferPointer { ptr_pGroups in
                var cStruct = VkRayTracingPipelineCreateInfoNV()
                cStruct.sType = VK_STRUCTURE_TYPE_RAY_TRACING_PIPELINE_CREATE_INFO_NV
                cStruct.pNext = nil
                cStruct.flags = self.flags.rawValue
                cStruct.stageCount = UInt32(ptr_pStages.count)
                cStruct.pStages = ptr_pStages.baseAddress
                cStruct.groupCount = UInt32(ptr_pGroups.count)
                cStruct.pGroups = ptr_pGroups.baseAddress
                cStruct.maxRecursionDepth = self.maxRecursionDepth
                cStruct.layout = self.layout.handle
                cStruct.basePipelineHandle = self.basePipelineHandle?.handle
                cStruct.basePipelineIndex = self.basePipelineIndex
                return try body(&cStruct)
            }
        }
    }
}

struct GeometryTrianglesNV: CStructConvertible {
    typealias CStruct = VkGeometryTrianglesNV

    let vertexData: Buffer?
    let vertexOffset: VkDeviceSize
    let vertexCount: UInt32
    let vertexStride: VkDeviceSize
    let vertexFormat: Format
    let indexData: Buffer?
    let indexOffset: VkDeviceSize
    let indexCount: UInt32
    let indexType: IndexType
    let transformData: Buffer?
    let transformOffset: VkDeviceSize

    init(cStruct: VkGeometryTrianglesNV) {
        fatalError("This initializer should be removed.")
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkGeometryTrianglesNV>) throws -> R) rethrows -> R {
        var cStruct = VkGeometryTrianglesNV()
        cStruct.sType = VK_STRUCTURE_TYPE_GEOMETRY_TRIANGLES_NV
        cStruct.pNext = nil
        cStruct.vertexData = self.vertexData?.handle
        cStruct.vertexOffset = self.vertexOffset
        cStruct.vertexCount = self.vertexCount
        cStruct.vertexStride = self.vertexStride
        cStruct.vertexFormat = VkFormat(rawValue: self.vertexFormat.rawValue)
        cStruct.indexData = self.indexData?.handle
        cStruct.indexOffset = self.indexOffset
        cStruct.indexCount = self.indexCount
        cStruct.indexType = VkIndexType(rawValue: self.indexType.rawValue)
        cStruct.transformData = self.transformData?.handle
        cStruct.transformOffset = self.transformOffset
        return try body(&cStruct)
    }
}

struct GeometryAABBNV: CStructConvertible {
    typealias CStruct = VkGeometryAABBNV

    let aabbData: Buffer?
    let numAABBs: UInt32
    let stride: UInt32
    let offset: VkDeviceSize

    init(cStruct: VkGeometryAABBNV) {
        fatalError("This initializer should be removed.")
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkGeometryAABBNV>) throws -> R) rethrows -> R {
        var cStruct = VkGeometryAABBNV()
        cStruct.sType = VK_STRUCTURE_TYPE_GEOMETRY_AABB_NV
        cStruct.pNext = nil
        cStruct.aabbData = self.aabbData?.handle
        cStruct.numAABBs = self.numAABBs
        cStruct.stride = self.stride
        cStruct.offset = self.offset
        return try body(&cStruct)
    }
}

struct GeometryDataNV: CStructConvertible {
    typealias CStruct = VkGeometryDataNV

    let triangles: GeometryTrianglesNV
    let aabbs: GeometryAABBNV

    init(cStruct: VkGeometryDataNV) {
        self.triangles = GeometryTrianglesNV(cStruct: cStruct.triangles)
        self.aabbs = GeometryAABBNV(cStruct: cStruct.aabbs)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkGeometryDataNV>) throws -> R) rethrows -> R {
        try self.triangles.withCStruct { ptr_triangles in
            try self.aabbs.withCStruct { ptr_aabbs in
                var cStruct = VkGeometryDataNV()
                cStruct.triangles = ptr_triangles.pointee
                cStruct.aabbs = ptr_aabbs.pointee
                return try body(&cStruct)
            }
        }
    }
}

struct GeometryNV: CStructConvertible {
    typealias CStruct = VkGeometryNV

    let geometryType: VkGeometryTypeKHR
    let geometry: GeometryDataNV
    let flags: VkGeometryFlagsKHR

    init(cStruct: VkGeometryNV) {
        self.geometryType = cStruct.geometryType
        self.geometry = GeometryDataNV(cStruct: cStruct.geometry)
        self.flags = cStruct.flags
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkGeometryNV>) throws -> R) rethrows -> R {
        try self.geometry.withCStruct { ptr_geometry in
            var cStruct = VkGeometryNV()
            cStruct.sType = VK_STRUCTURE_TYPE_GEOMETRY_NV
            cStruct.pNext = nil
            cStruct.geometryType = self.geometryType
            cStruct.geometry = ptr_geometry.pointee
            cStruct.flags = self.flags
            return try body(&cStruct)
        }
    }
}

struct AccelerationStructureInfoNV: CStructConvertible {
    typealias CStruct = VkAccelerationStructureInfoNV

    let type: VkAccelerationStructureTypeNV
    let flags: VkBuildAccelerationStructureFlagsNV
    let instanceCount: UInt32
    let pGeometries: Array<GeometryNV>

    init(cStruct: VkAccelerationStructureInfoNV) {
        self.type = cStruct.type
        self.flags = cStruct.flags
        self.instanceCount = cStruct.instanceCount
        self.pGeometries = UnsafeBufferPointer(start: cStruct.pGeometries, count: Int(cStruct.geometryCount)).map{ GeometryNV(cStruct: $0) }
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkAccelerationStructureInfoNV>) throws -> R) rethrows -> R {
        try self.pGeometries.withCStructBufferPointer { ptr_pGeometries in
            var cStruct = VkAccelerationStructureInfoNV()
            cStruct.sType = VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_INFO_NV
            cStruct.pNext = nil
            cStruct.type = self.type
            cStruct.flags = self.flags
            cStruct.instanceCount = self.instanceCount
            cStruct.geometryCount = UInt32(ptr_pGeometries.count)
            cStruct.pGeometries = ptr_pGeometries.baseAddress
            return try body(&cStruct)
        }
    }
}

struct AccelerationStructureCreateInfoNV: CStructConvertible {
    typealias CStruct = VkAccelerationStructureCreateInfoNV

    let compactedSize: VkDeviceSize
    let info: AccelerationStructureInfoNV

    init(cStruct: VkAccelerationStructureCreateInfoNV) {
        self.compactedSize = cStruct.compactedSize
        self.info = AccelerationStructureInfoNV(cStruct: cStruct.info)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkAccelerationStructureCreateInfoNV>) throws -> R) rethrows -> R {
        try self.info.withCStruct { ptr_info in
            var cStruct = VkAccelerationStructureCreateInfoNV()
            cStruct.sType = VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_CREATE_INFO_NV
            cStruct.pNext = nil
            cStruct.compactedSize = self.compactedSize
            cStruct.info = ptr_info.pointee
            return try body(&cStruct)
        }
    }
}

struct AccelerationStructureMemoryRequirementsInfoNV: CStructConvertible {
    typealias CStruct = VkAccelerationStructureMemoryRequirementsInfoNV

    let type: VkAccelerationStructureMemoryRequirementsTypeNV
    let accelerationStructure: AccelerationStructureNV

    init(cStruct: VkAccelerationStructureMemoryRequirementsInfoNV) {
        fatalError("This initializer should be removed.")
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkAccelerationStructureMemoryRequirementsInfoNV>) throws -> R) rethrows -> R {
        var cStruct = VkAccelerationStructureMemoryRequirementsInfoNV()
        cStruct.sType = VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_MEMORY_REQUIREMENTS_INFO_NV
        cStruct.pNext = nil
        cStruct.type = self.type
        cStruct.accelerationStructure = self.accelerationStructure.handle
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

    init(cStruct: VkPhysicalDeviceRayTracingPropertiesNV) {
        self.shaderGroupHandleSize = cStruct.shaderGroupHandleSize
        self.maxRecursionDepth = cStruct.maxRecursionDepth
        self.maxShaderGroupStride = cStruct.maxShaderGroupStride
        self.shaderGroupBaseAlignment = cStruct.shaderGroupBaseAlignment
        self.maxGeometryCount = cStruct.maxGeometryCount
        self.maxInstanceCount = cStruct.maxInstanceCount
        self.maxTriangleCount = cStruct.maxTriangleCount
        self.maxDescriptorSetAccelerationStructures = cStruct.maxDescriptorSetAccelerationStructures
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceRayTracingPropertiesNV>) throws -> R) rethrows -> R {
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

    init(cStruct: VkDrmFormatModifierPropertiesListEXT) {
        self.drmFormatModifierCount = cStruct.drmFormatModifierCount
        self.pDrmFormatModifierProperties = cStruct.pDrmFormatModifierProperties
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkDrmFormatModifierPropertiesListEXT>) throws -> R) rethrows -> R {
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
    let drmFormatModifierTilingFeatures: FormatFeatureFlags

    init(cStruct: VkDrmFormatModifierPropertiesEXT) {
        self.drmFormatModifier = cStruct.drmFormatModifier
        self.drmFormatModifierPlaneCount = cStruct.drmFormatModifierPlaneCount
        self.drmFormatModifierTilingFeatures = FormatFeatureFlags(rawValue: cStruct.drmFormatModifierTilingFeatures)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkDrmFormatModifierPropertiesEXT>) throws -> R) rethrows -> R {
        var cStruct = VkDrmFormatModifierPropertiesEXT()
        cStruct.drmFormatModifier = self.drmFormatModifier
        cStruct.drmFormatModifierPlaneCount = self.drmFormatModifierPlaneCount
        cStruct.drmFormatModifierTilingFeatures = self.drmFormatModifierTilingFeatures.rawValue
        return try body(&cStruct)
    }
}

struct PhysicalDeviceImageDrmFormatModifierInfoEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceImageDrmFormatModifierInfoEXT

    let drmFormatModifier: UInt64
    let sharingMode: SharingMode
    let pQueueFamilyIndices: Array<UInt32>

    init(cStruct: VkPhysicalDeviceImageDrmFormatModifierInfoEXT) {
        self.drmFormatModifier = cStruct.drmFormatModifier
        self.sharingMode = SharingMode(rawValue: cStruct.sharingMode.rawValue)!
        self.pQueueFamilyIndices = Array(UnsafeBufferPointer(start: cStruct.pQueueFamilyIndices, count: Int(cStruct.queueFamilyIndexCount)))
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceImageDrmFormatModifierInfoEXT>) throws -> R) rethrows -> R {
        try self.pQueueFamilyIndices.withUnsafeBufferPointer { ptr_pQueueFamilyIndices in
            var cStruct = VkPhysicalDeviceImageDrmFormatModifierInfoEXT()
            cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_DRM_FORMAT_MODIFIER_INFO_EXT
            cStruct.pNext = nil
            cStruct.drmFormatModifier = self.drmFormatModifier
            cStruct.sharingMode = VkSharingMode(rawValue: self.sharingMode.rawValue)
            cStruct.queueFamilyIndexCount = UInt32(ptr_pQueueFamilyIndices.count)
            cStruct.pQueueFamilyIndices = ptr_pQueueFamilyIndices.baseAddress
            return try body(&cStruct)
        }
    }
}

struct ImageDrmFormatModifierListCreateInfoEXT: CStructConvertible {
    typealias CStruct = VkImageDrmFormatModifierListCreateInfoEXT

    let pDrmFormatModifiers: Array<UInt64>

    init(cStruct: VkImageDrmFormatModifierListCreateInfoEXT) {
        self.pDrmFormatModifiers = Array(UnsafeBufferPointer(start: cStruct.pDrmFormatModifiers, count: Int(cStruct.drmFormatModifierCount)))
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkImageDrmFormatModifierListCreateInfoEXT>) throws -> R) rethrows -> R {
        try self.pDrmFormatModifiers.withUnsafeBufferPointer { ptr_pDrmFormatModifiers in
            var cStruct = VkImageDrmFormatModifierListCreateInfoEXT()
            cStruct.sType = VK_STRUCTURE_TYPE_IMAGE_DRM_FORMAT_MODIFIER_LIST_CREATE_INFO_EXT
            cStruct.pNext = nil
            cStruct.drmFormatModifierCount = UInt32(ptr_pDrmFormatModifiers.count)
            cStruct.pDrmFormatModifiers = ptr_pDrmFormatModifiers.baseAddress
            return try body(&cStruct)
        }
    }
}

struct ImageDrmFormatModifierExplicitCreateInfoEXT: CStructConvertible {
    typealias CStruct = VkImageDrmFormatModifierExplicitCreateInfoEXT

    let drmFormatModifier: UInt64
    let pPlaneLayouts: Array<SubresourceLayout>

    init(cStruct: VkImageDrmFormatModifierExplicitCreateInfoEXT) {
        self.drmFormatModifier = cStruct.drmFormatModifier
        self.pPlaneLayouts = UnsafeBufferPointer(start: cStruct.pPlaneLayouts, count: Int(cStruct.drmFormatModifierPlaneCount)).map{ SubresourceLayout(cStruct: $0) }
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkImageDrmFormatModifierExplicitCreateInfoEXT>) throws -> R) rethrows -> R {
        try self.pPlaneLayouts.withCStructBufferPointer { ptr_pPlaneLayouts in
            var cStruct = VkImageDrmFormatModifierExplicitCreateInfoEXT()
            cStruct.sType = VK_STRUCTURE_TYPE_IMAGE_DRM_FORMAT_MODIFIER_EXPLICIT_CREATE_INFO_EXT
            cStruct.pNext = nil
            cStruct.drmFormatModifier = self.drmFormatModifier
            cStruct.drmFormatModifierPlaneCount = UInt32(ptr_pPlaneLayouts.count)
            cStruct.pPlaneLayouts = ptr_pPlaneLayouts.baseAddress
            return try body(&cStruct)
        }
    }
}

struct ImageDrmFormatModifierPropertiesEXT: CStructConvertible {
    typealias CStruct = VkImageDrmFormatModifierPropertiesEXT

    let drmFormatModifier: UInt64

    init(cStruct: VkImageDrmFormatModifierPropertiesEXT) {
        self.drmFormatModifier = cStruct.drmFormatModifier
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkImageDrmFormatModifierPropertiesEXT>) throws -> R) rethrows -> R {
        var cStruct = VkImageDrmFormatModifierPropertiesEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_IMAGE_DRM_FORMAT_MODIFIER_PROPERTIES_EXT
        cStruct.pNext = nil
        cStruct.drmFormatModifier = self.drmFormatModifier
        return try body(&cStruct)
    }
}

struct ImageStencilUsageCreateInfo: CStructConvertible {
    typealias CStruct = VkImageStencilUsageCreateInfo

    let stencilUsage: ImageUsageFlags

    init(cStruct: VkImageStencilUsageCreateInfo) {
        self.stencilUsage = ImageUsageFlags(rawValue: cStruct.stencilUsage)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkImageStencilUsageCreateInfo>) throws -> R) rethrows -> R {
        var cStruct = VkImageStencilUsageCreateInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_IMAGE_STENCIL_USAGE_CREATE_INFO
        cStruct.pNext = nil
        cStruct.stencilUsage = self.stencilUsage.rawValue
        return try body(&cStruct)
    }
}

struct DeviceMemoryOverallocationCreateInfoAMD: CStructConvertible {
    typealias CStruct = VkDeviceMemoryOverallocationCreateInfoAMD

    let overallocationBehavior: MemoryOverallocationBehaviorAMD

    init(cStruct: VkDeviceMemoryOverallocationCreateInfoAMD) {
        self.overallocationBehavior = MemoryOverallocationBehaviorAMD(rawValue: cStruct.overallocationBehavior.rawValue)!
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkDeviceMemoryOverallocationCreateInfoAMD>) throws -> R) rethrows -> R {
        var cStruct = VkDeviceMemoryOverallocationCreateInfoAMD()
        cStruct.sType = VK_STRUCTURE_TYPE_DEVICE_MEMORY_OVERALLOCATION_CREATE_INFO_AMD
        cStruct.pNext = nil
        cStruct.overallocationBehavior = VkMemoryOverallocationBehaviorAMD(rawValue: self.overallocationBehavior.rawValue)
        return try body(&cStruct)
    }
}

struct PhysicalDeviceFragmentDensityMapFeaturesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceFragmentDensityMapFeaturesEXT

    let fragmentDensityMap: Bool
    let fragmentDensityMapDynamic: Bool
    let fragmentDensityMapNonSubsampledImages: Bool

    init(cStruct: VkPhysicalDeviceFragmentDensityMapFeaturesEXT) {
        self.fragmentDensityMap = cStruct.fragmentDensityMap == VK_TRUE
        self.fragmentDensityMapDynamic = cStruct.fragmentDensityMapDynamic == VK_TRUE
        self.fragmentDensityMapNonSubsampledImages = cStruct.fragmentDensityMapNonSubsampledImages == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceFragmentDensityMapFeaturesEXT>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceFragmentDensityMapFeaturesEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_DENSITY_MAP_FEATURES_EXT
        cStruct.pNext = nil
        cStruct.fragmentDensityMap = VkBool32(self.fragmentDensityMap ? VK_TRUE : VK_FALSE)
        cStruct.fragmentDensityMapDynamic = VkBool32(self.fragmentDensityMapDynamic ? VK_TRUE : VK_FALSE)
        cStruct.fragmentDensityMapNonSubsampledImages = VkBool32(self.fragmentDensityMapNonSubsampledImages ? VK_TRUE : VK_FALSE)
        return try body(&cStruct)
    }
}

struct PhysicalDeviceFragmentDensityMapPropertiesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceFragmentDensityMapPropertiesEXT

    let minFragmentDensityTexelSize: Extent2D
    let maxFragmentDensityTexelSize: Extent2D
    let fragmentDensityInvocations: Bool

    init(cStruct: VkPhysicalDeviceFragmentDensityMapPropertiesEXT) {
        self.minFragmentDensityTexelSize = Extent2D(cStruct: cStruct.minFragmentDensityTexelSize)
        self.maxFragmentDensityTexelSize = Extent2D(cStruct: cStruct.maxFragmentDensityTexelSize)
        self.fragmentDensityInvocations = cStruct.fragmentDensityInvocations == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceFragmentDensityMapPropertiesEXT>) throws -> R) rethrows -> R {
        try self.minFragmentDensityTexelSize.withCStruct { ptr_minFragmentDensityTexelSize in
            try self.maxFragmentDensityTexelSize.withCStruct { ptr_maxFragmentDensityTexelSize in
                var cStruct = VkPhysicalDeviceFragmentDensityMapPropertiesEXT()
                cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_DENSITY_MAP_PROPERTIES_EXT
                cStruct.pNext = nil
                cStruct.minFragmentDensityTexelSize = ptr_minFragmentDensityTexelSize.pointee
                cStruct.maxFragmentDensityTexelSize = ptr_maxFragmentDensityTexelSize.pointee
                cStruct.fragmentDensityInvocations = VkBool32(self.fragmentDensityInvocations ? VK_TRUE : VK_FALSE)
                return try body(&cStruct)
            }
        }
    }
}

struct RenderPassFragmentDensityMapCreateInfoEXT: CStructConvertible {
    typealias CStruct = VkRenderPassFragmentDensityMapCreateInfoEXT

    let fragmentDensityMapAttachment: AttachmentReference

    init(cStruct: VkRenderPassFragmentDensityMapCreateInfoEXT) {
        self.fragmentDensityMapAttachment = AttachmentReference(cStruct: cStruct.fragmentDensityMapAttachment)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkRenderPassFragmentDensityMapCreateInfoEXT>) throws -> R) rethrows -> R {
        try self.fragmentDensityMapAttachment.withCStruct { ptr_fragmentDensityMapAttachment in
            var cStruct = VkRenderPassFragmentDensityMapCreateInfoEXT()
            cStruct.sType = VK_STRUCTURE_TYPE_RENDER_PASS_FRAGMENT_DENSITY_MAP_CREATE_INFO_EXT
            cStruct.pNext = nil
            cStruct.fragmentDensityMapAttachment = ptr_fragmentDensityMapAttachment.pointee
            return try body(&cStruct)
        }
    }
}

struct PhysicalDeviceScalarBlockLayoutFeatures: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceScalarBlockLayoutFeatures

    let scalarBlockLayout: Bool

    init(cStruct: VkPhysicalDeviceScalarBlockLayoutFeatures) {
        self.scalarBlockLayout = cStruct.scalarBlockLayout == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceScalarBlockLayoutFeatures>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceScalarBlockLayoutFeatures()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SCALAR_BLOCK_LAYOUT_FEATURES
        cStruct.pNext = nil
        cStruct.scalarBlockLayout = VkBool32(self.scalarBlockLayout ? VK_TRUE : VK_FALSE)
        return try body(&cStruct)
    }
}

struct SurfaceProtectedCapabilitiesKHR: CStructConvertible {
    typealias CStruct = VkSurfaceProtectedCapabilitiesKHR

    let supportsProtected: Bool

    init(cStruct: VkSurfaceProtectedCapabilitiesKHR) {
        self.supportsProtected = cStruct.supportsProtected == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkSurfaceProtectedCapabilitiesKHR>) throws -> R) rethrows -> R {
        var cStruct = VkSurfaceProtectedCapabilitiesKHR()
        cStruct.sType = VK_STRUCTURE_TYPE_SURFACE_PROTECTED_CAPABILITIES_KHR
        cStruct.pNext = nil
        cStruct.supportsProtected = VkBool32(self.supportsProtected ? VK_TRUE : VK_FALSE)
        return try body(&cStruct)
    }
}

struct PhysicalDeviceUniformBufferStandardLayoutFeatures: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceUniformBufferStandardLayoutFeatures

    let uniformBufferStandardLayout: Bool

    init(cStruct: VkPhysicalDeviceUniformBufferStandardLayoutFeatures) {
        self.uniformBufferStandardLayout = cStruct.uniformBufferStandardLayout == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceUniformBufferStandardLayoutFeatures>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceUniformBufferStandardLayoutFeatures()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_UNIFORM_BUFFER_STANDARD_LAYOUT_FEATURES
        cStruct.pNext = nil
        cStruct.uniformBufferStandardLayout = VkBool32(self.uniformBufferStandardLayout ? VK_TRUE : VK_FALSE)
        return try body(&cStruct)
    }
}

struct PhysicalDeviceDepthClipEnableFeaturesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceDepthClipEnableFeaturesEXT

    let depthClipEnable: Bool

    init(cStruct: VkPhysicalDeviceDepthClipEnableFeaturesEXT) {
        self.depthClipEnable = cStruct.depthClipEnable == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceDepthClipEnableFeaturesEXT>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceDepthClipEnableFeaturesEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DEPTH_CLIP_ENABLE_FEATURES_EXT
        cStruct.pNext = nil
        cStruct.depthClipEnable = VkBool32(self.depthClipEnable ? VK_TRUE : VK_FALSE)
        return try body(&cStruct)
    }
}

struct PipelineRasterizationDepthClipStateCreateInfoEXT: CStructConvertible {
    typealias CStruct = VkPipelineRasterizationDepthClipStateCreateInfoEXT

    let flags: PipelineRasterizationDepthClipStateCreateFlagsEXT
    let depthClipEnable: Bool

    init(cStruct: VkPipelineRasterizationDepthClipStateCreateInfoEXT) {
        self.flags = PipelineRasterizationDepthClipStateCreateFlagsEXT(rawValue: cStruct.flags)
        self.depthClipEnable = cStruct.depthClipEnable == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPipelineRasterizationDepthClipStateCreateInfoEXT>) throws -> R) rethrows -> R {
        var cStruct = VkPipelineRasterizationDepthClipStateCreateInfoEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_DEPTH_CLIP_STATE_CREATE_INFO_EXT
        cStruct.pNext = nil
        cStruct.flags = self.flags.rawValue
        cStruct.depthClipEnable = VkBool32(self.depthClipEnable ? VK_TRUE : VK_FALSE)
        return try body(&cStruct)
    }
}

struct PhysicalDeviceMemoryBudgetPropertiesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceMemoryBudgetPropertiesEXT

    let heapBudget: (VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize)
    let heapUsage: (VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize)

    init(cStruct: VkPhysicalDeviceMemoryBudgetPropertiesEXT) {
        self.heapBudget = cStruct.heapBudget
        self.heapUsage = cStruct.heapUsage
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceMemoryBudgetPropertiesEXT>) throws -> R) rethrows -> R {
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

    let memoryPriority: Bool

    init(cStruct: VkPhysicalDeviceMemoryPriorityFeaturesEXT) {
        self.memoryPriority = cStruct.memoryPriority == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceMemoryPriorityFeaturesEXT>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceMemoryPriorityFeaturesEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MEMORY_PRIORITY_FEATURES_EXT
        cStruct.pNext = nil
        cStruct.memoryPriority = VkBool32(self.memoryPriority ? VK_TRUE : VK_FALSE)
        return try body(&cStruct)
    }
}

struct MemoryPriorityAllocateInfoEXT: CStructConvertible {
    typealias CStruct = VkMemoryPriorityAllocateInfoEXT

    let priority: Float

    init(cStruct: VkMemoryPriorityAllocateInfoEXT) {
        self.priority = cStruct.priority
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkMemoryPriorityAllocateInfoEXT>) throws -> R) rethrows -> R {
        var cStruct = VkMemoryPriorityAllocateInfoEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_MEMORY_PRIORITY_ALLOCATE_INFO_EXT
        cStruct.pNext = nil
        cStruct.priority = self.priority
        return try body(&cStruct)
    }
}

struct PhysicalDeviceBufferDeviceAddressFeatures: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceBufferDeviceAddressFeatures

    let bufferDeviceAddress: Bool
    let bufferDeviceAddressCaptureReplay: Bool
    let bufferDeviceAddressMultiDevice: Bool

    init(cStruct: VkPhysicalDeviceBufferDeviceAddressFeatures) {
        self.bufferDeviceAddress = cStruct.bufferDeviceAddress == VK_TRUE
        self.bufferDeviceAddressCaptureReplay = cStruct.bufferDeviceAddressCaptureReplay == VK_TRUE
        self.bufferDeviceAddressMultiDevice = cStruct.bufferDeviceAddressMultiDevice == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceBufferDeviceAddressFeatures>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceBufferDeviceAddressFeatures()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_BUFFER_DEVICE_ADDRESS_FEATURES
        cStruct.pNext = nil
        cStruct.bufferDeviceAddress = VkBool32(self.bufferDeviceAddress ? VK_TRUE : VK_FALSE)
        cStruct.bufferDeviceAddressCaptureReplay = VkBool32(self.bufferDeviceAddressCaptureReplay ? VK_TRUE : VK_FALSE)
        cStruct.bufferDeviceAddressMultiDevice = VkBool32(self.bufferDeviceAddressMultiDevice ? VK_TRUE : VK_FALSE)
        return try body(&cStruct)
    }
}

struct PhysicalDeviceBufferDeviceAddressFeaturesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceBufferDeviceAddressFeaturesEXT

    let bufferDeviceAddress: Bool
    let bufferDeviceAddressCaptureReplay: Bool
    let bufferDeviceAddressMultiDevice: Bool

    init(cStruct: VkPhysicalDeviceBufferDeviceAddressFeaturesEXT) {
        self.bufferDeviceAddress = cStruct.bufferDeviceAddress == VK_TRUE
        self.bufferDeviceAddressCaptureReplay = cStruct.bufferDeviceAddressCaptureReplay == VK_TRUE
        self.bufferDeviceAddressMultiDevice = cStruct.bufferDeviceAddressMultiDevice == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceBufferDeviceAddressFeaturesEXT>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceBufferDeviceAddressFeaturesEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_BUFFER_DEVICE_ADDRESS_FEATURES_EXT
        cStruct.pNext = nil
        cStruct.bufferDeviceAddress = VkBool32(self.bufferDeviceAddress ? VK_TRUE : VK_FALSE)
        cStruct.bufferDeviceAddressCaptureReplay = VkBool32(self.bufferDeviceAddressCaptureReplay ? VK_TRUE : VK_FALSE)
        cStruct.bufferDeviceAddressMultiDevice = VkBool32(self.bufferDeviceAddressMultiDevice ? VK_TRUE : VK_FALSE)
        return try body(&cStruct)
    }
}

struct BufferDeviceAddressInfo: CStructConvertible {
    typealias CStruct = VkBufferDeviceAddressInfo

    let buffer: Buffer

    init(cStruct: VkBufferDeviceAddressInfo) {
        fatalError("This initializer should be removed.")
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkBufferDeviceAddressInfo>) throws -> R) rethrows -> R {
        var cStruct = VkBufferDeviceAddressInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_BUFFER_DEVICE_ADDRESS_INFO
        cStruct.pNext = nil
        cStruct.buffer = self.buffer.handle
        return try body(&cStruct)
    }
}

struct BufferOpaqueCaptureAddressCreateInfo: CStructConvertible {
    typealias CStruct = VkBufferOpaqueCaptureAddressCreateInfo

    let opaqueCaptureAddress: UInt64

    init(cStruct: VkBufferOpaqueCaptureAddressCreateInfo) {
        self.opaqueCaptureAddress = cStruct.opaqueCaptureAddress
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkBufferOpaqueCaptureAddressCreateInfo>) throws -> R) rethrows -> R {
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

    init(cStruct: VkBufferDeviceAddressCreateInfoEXT) {
        self.deviceAddress = cStruct.deviceAddress
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkBufferDeviceAddressCreateInfoEXT>) throws -> R) rethrows -> R {
        var cStruct = VkBufferDeviceAddressCreateInfoEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_BUFFER_DEVICE_ADDRESS_CREATE_INFO_EXT
        cStruct.pNext = nil
        cStruct.deviceAddress = self.deviceAddress
        return try body(&cStruct)
    }
}

struct PhysicalDeviceImageViewImageFormatInfoEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceImageViewImageFormatInfoEXT

    let imageViewType: ImageViewType

    init(cStruct: VkPhysicalDeviceImageViewImageFormatInfoEXT) {
        self.imageViewType = ImageViewType(rawValue: cStruct.imageViewType.rawValue)!
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceImageViewImageFormatInfoEXT>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceImageViewImageFormatInfoEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_VIEW_IMAGE_FORMAT_INFO_EXT
        cStruct.pNext = nil
        cStruct.imageViewType = VkImageViewType(rawValue: self.imageViewType.rawValue)
        return try body(&cStruct)
    }
}

struct FilterCubicImageViewImageFormatPropertiesEXT: CStructConvertible {
    typealias CStruct = VkFilterCubicImageViewImageFormatPropertiesEXT

    let filterCubic: Bool
    let filterCubicMinmax: Bool

    init(cStruct: VkFilterCubicImageViewImageFormatPropertiesEXT) {
        self.filterCubic = cStruct.filterCubic == VK_TRUE
        self.filterCubicMinmax = cStruct.filterCubicMinmax == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkFilterCubicImageViewImageFormatPropertiesEXT>) throws -> R) rethrows -> R {
        var cStruct = VkFilterCubicImageViewImageFormatPropertiesEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_FILTER_CUBIC_IMAGE_VIEW_IMAGE_FORMAT_PROPERTIES_EXT
        cStruct.pNext = nil
        cStruct.filterCubic = VkBool32(self.filterCubic ? VK_TRUE : VK_FALSE)
        cStruct.filterCubicMinmax = VkBool32(self.filterCubicMinmax ? VK_TRUE : VK_FALSE)
        return try body(&cStruct)
    }
}

struct PhysicalDeviceImagelessFramebufferFeatures: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceImagelessFramebufferFeatures

    let imagelessFramebuffer: Bool

    init(cStruct: VkPhysicalDeviceImagelessFramebufferFeatures) {
        self.imagelessFramebuffer = cStruct.imagelessFramebuffer == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceImagelessFramebufferFeatures>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceImagelessFramebufferFeatures()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGELESS_FRAMEBUFFER_FEATURES
        cStruct.pNext = nil
        cStruct.imagelessFramebuffer = VkBool32(self.imagelessFramebuffer ? VK_TRUE : VK_FALSE)
        return try body(&cStruct)
    }
}

struct FramebufferAttachmentsCreateInfo: CStructConvertible {
    typealias CStruct = VkFramebufferAttachmentsCreateInfo

    let pAttachmentImageInfos: Array<FramebufferAttachmentImageInfo>

    init(cStruct: VkFramebufferAttachmentsCreateInfo) {
        self.pAttachmentImageInfos = UnsafeBufferPointer(start: cStruct.pAttachmentImageInfos, count: Int(cStruct.attachmentImageInfoCount)).map{ FramebufferAttachmentImageInfo(cStruct: $0) }
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkFramebufferAttachmentsCreateInfo>) throws -> R) rethrows -> R {
        try self.pAttachmentImageInfos.withCStructBufferPointer { ptr_pAttachmentImageInfos in
            var cStruct = VkFramebufferAttachmentsCreateInfo()
            cStruct.sType = VK_STRUCTURE_TYPE_FRAMEBUFFER_ATTACHMENTS_CREATE_INFO
            cStruct.pNext = nil
            cStruct.attachmentImageInfoCount = UInt32(ptr_pAttachmentImageInfos.count)
            cStruct.pAttachmentImageInfos = ptr_pAttachmentImageInfos.baseAddress
            return try body(&cStruct)
        }
    }
}

struct FramebufferAttachmentImageInfo: CStructConvertible {
    typealias CStruct = VkFramebufferAttachmentImageInfo

    let flags: ImageCreateFlags
    let usage: ImageUsageFlags
    let width: UInt32
    let height: UInt32
    let layerCount: UInt32
    let pViewFormats: Array<Format>

    init(cStruct: VkFramebufferAttachmentImageInfo) {
        self.flags = ImageCreateFlags(rawValue: cStruct.flags)
        self.usage = ImageUsageFlags(rawValue: cStruct.usage)
        self.width = cStruct.width
        self.height = cStruct.height
        self.layerCount = cStruct.layerCount
        self.pViewFormats = UnsafeBufferPointer(start: cStruct.pViewFormats, count: Int(cStruct.viewFormatCount)).map{ Format(rawValue: $0.rawValue)! }
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkFramebufferAttachmentImageInfo>) throws -> R) rethrows -> R {
        try self.pViewFormats.map{ VkFormat(rawValue: $0.rawValue) }.withUnsafeBufferPointer { ptr_pViewFormats in
            var cStruct = VkFramebufferAttachmentImageInfo()
            cStruct.sType = VK_STRUCTURE_TYPE_FRAMEBUFFER_ATTACHMENT_IMAGE_INFO
            cStruct.pNext = nil
            cStruct.flags = self.flags.rawValue
            cStruct.usage = self.usage.rawValue
            cStruct.width = self.width
            cStruct.height = self.height
            cStruct.layerCount = self.layerCount
            cStruct.viewFormatCount = UInt32(ptr_pViewFormats.count)
            cStruct.pViewFormats = ptr_pViewFormats.baseAddress
            return try body(&cStruct)
        }
    }
}

struct RenderPassAttachmentBeginInfo: CStructConvertible {
    typealias CStruct = VkRenderPassAttachmentBeginInfo

    let pAttachments: Array<ImageView>

    init(cStruct: VkRenderPassAttachmentBeginInfo) {
        fatalError("This initializer should be removed.")
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkRenderPassAttachmentBeginInfo>) throws -> R) rethrows -> R {
        try self.pAttachments.map{ $0.handle }.withUnsafeBufferPointer { ptr_pAttachments in
            var cStruct = VkRenderPassAttachmentBeginInfo()
            cStruct.sType = VK_STRUCTURE_TYPE_RENDER_PASS_ATTACHMENT_BEGIN_INFO
            cStruct.pNext = nil
            cStruct.attachmentCount = UInt32(ptr_pAttachments.count)
            cStruct.pAttachments = ptr_pAttachments.baseAddress
            return try body(&cStruct)
        }
    }
}

struct PhysicalDeviceTextureCompressionASTCHDRFeaturesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceTextureCompressionASTCHDRFeaturesEXT

    let textureCompressionASTC_HDR: Bool

    init(cStruct: VkPhysicalDeviceTextureCompressionASTCHDRFeaturesEXT) {
        self.textureCompressionASTC_HDR = cStruct.textureCompressionASTC_HDR == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceTextureCompressionASTCHDRFeaturesEXT>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceTextureCompressionASTCHDRFeaturesEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TEXTURE_COMPRESSION_ASTC_HDR_FEATURES_EXT
        cStruct.pNext = nil
        cStruct.textureCompressionASTC_HDR = VkBool32(self.textureCompressionASTC_HDR ? VK_TRUE : VK_FALSE)
        return try body(&cStruct)
    }
}

struct PhysicalDeviceCooperativeMatrixFeaturesNV: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceCooperativeMatrixFeaturesNV

    let cooperativeMatrix: Bool
    let cooperativeMatrixRobustBufferAccess: Bool

    init(cStruct: VkPhysicalDeviceCooperativeMatrixFeaturesNV) {
        self.cooperativeMatrix = cStruct.cooperativeMatrix == VK_TRUE
        self.cooperativeMatrixRobustBufferAccess = cStruct.cooperativeMatrixRobustBufferAccess == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceCooperativeMatrixFeaturesNV>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceCooperativeMatrixFeaturesNV()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_COOPERATIVE_MATRIX_FEATURES_NV
        cStruct.pNext = nil
        cStruct.cooperativeMatrix = VkBool32(self.cooperativeMatrix ? VK_TRUE : VK_FALSE)
        cStruct.cooperativeMatrixRobustBufferAccess = VkBool32(self.cooperativeMatrixRobustBufferAccess ? VK_TRUE : VK_FALSE)
        return try body(&cStruct)
    }
}

struct PhysicalDeviceCooperativeMatrixPropertiesNV: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceCooperativeMatrixPropertiesNV

    let cooperativeMatrixSupportedStages: ShaderStageFlags

    init(cStruct: VkPhysicalDeviceCooperativeMatrixPropertiesNV) {
        self.cooperativeMatrixSupportedStages = ShaderStageFlags(rawValue: cStruct.cooperativeMatrixSupportedStages)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceCooperativeMatrixPropertiesNV>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceCooperativeMatrixPropertiesNV()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_COOPERATIVE_MATRIX_PROPERTIES_NV
        cStruct.pNext = nil
        cStruct.cooperativeMatrixSupportedStages = self.cooperativeMatrixSupportedStages.rawValue
        return try body(&cStruct)
    }
}

struct CooperativeMatrixPropertiesNV: CStructConvertible {
    typealias CStruct = VkCooperativeMatrixPropertiesNV

    let MSize: UInt32
    let NSize: UInt32
    let KSize: UInt32
    let AType: ComponentTypeNV
    let BType: ComponentTypeNV
    let CType: ComponentTypeNV
    let DType: ComponentTypeNV
    let scope: ScopeNV

    init(cStruct: VkCooperativeMatrixPropertiesNV) {
        self.MSize = cStruct.MSize
        self.NSize = cStruct.NSize
        self.KSize = cStruct.KSize
        self.AType = ComponentTypeNV(rawValue: cStruct.AType.rawValue)!
        self.BType = ComponentTypeNV(rawValue: cStruct.BType.rawValue)!
        self.CType = ComponentTypeNV(rawValue: cStruct.CType.rawValue)!
        self.DType = ComponentTypeNV(rawValue: cStruct.DType.rawValue)!
        self.scope = ScopeNV(rawValue: cStruct.scope.rawValue)!
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkCooperativeMatrixPropertiesNV>) throws -> R) rethrows -> R {
        var cStruct = VkCooperativeMatrixPropertiesNV()
        cStruct.sType = VK_STRUCTURE_TYPE_COOPERATIVE_MATRIX_PROPERTIES_NV
        cStruct.pNext = nil
        cStruct.MSize = self.MSize
        cStruct.NSize = self.NSize
        cStruct.KSize = self.KSize
        cStruct.AType = VkComponentTypeNV(rawValue: self.AType.rawValue)
        cStruct.BType = VkComponentTypeNV(rawValue: self.BType.rawValue)
        cStruct.CType = VkComponentTypeNV(rawValue: self.CType.rawValue)
        cStruct.DType = VkComponentTypeNV(rawValue: self.DType.rawValue)
        cStruct.scope = VkScopeNV(rawValue: self.scope.rawValue)
        return try body(&cStruct)
    }
}

struct PhysicalDeviceYcbcrImageArraysFeaturesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceYcbcrImageArraysFeaturesEXT

    let ycbcrImageArrays: Bool

    init(cStruct: VkPhysicalDeviceYcbcrImageArraysFeaturesEXT) {
        self.ycbcrImageArrays = cStruct.ycbcrImageArrays == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceYcbcrImageArraysFeaturesEXT>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceYcbcrImageArraysFeaturesEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_YCBCR_IMAGE_ARRAYS_FEATURES_EXT
        cStruct.pNext = nil
        cStruct.ycbcrImageArrays = VkBool32(self.ycbcrImageArrays ? VK_TRUE : VK_FALSE)
        return try body(&cStruct)
    }
}

struct ImageViewHandleInfoNVX: CStructConvertible {
    typealias CStruct = VkImageViewHandleInfoNVX

    let imageView: ImageView
    let descriptorType: DescriptorType
    let sampler: Sampler?

    init(cStruct: VkImageViewHandleInfoNVX) {
        fatalError("This initializer should be removed.")
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkImageViewHandleInfoNVX>) throws -> R) rethrows -> R {
        var cStruct = VkImageViewHandleInfoNVX()
        cStruct.sType = VK_STRUCTURE_TYPE_IMAGE_VIEW_HANDLE_INFO_NVX
        cStruct.pNext = nil
        cStruct.imageView = self.imageView.handle
        cStruct.descriptorType = VkDescriptorType(rawValue: self.descriptorType.rawValue)
        cStruct.sampler = self.sampler?.handle
        return try body(&cStruct)
    }
}

struct PipelineCreationFeedbackEXT: CStructConvertible {
    typealias CStruct = VkPipelineCreationFeedbackEXT

    let flags: PipelineCreationFeedbackFlagsEXT
    let duration: UInt64

    init(cStruct: VkPipelineCreationFeedbackEXT) {
        self.flags = PipelineCreationFeedbackFlagsEXT(rawValue: cStruct.flags)
        self.duration = cStruct.duration
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPipelineCreationFeedbackEXT>) throws -> R) rethrows -> R {
        var cStruct = VkPipelineCreationFeedbackEXT()
        cStruct.flags = self.flags.rawValue
        cStruct.duration = self.duration
        return try body(&cStruct)
    }
}

struct PipelineCreationFeedbackCreateInfoEXT: CStructConvertible {
    typealias CStruct = VkPipelineCreationFeedbackCreateInfoEXT

    let pPipelineCreationFeedback: UnsafeMutablePointer<VkPipelineCreationFeedbackEXT>
    let pipelineStageCreationFeedbackCount: UInt32
    let pPipelineStageCreationFeedbacks: UnsafeMutablePointer<VkPipelineCreationFeedbackEXT>

    init(cStruct: VkPipelineCreationFeedbackCreateInfoEXT) {
        self.pPipelineCreationFeedback = cStruct.pPipelineCreationFeedback
        self.pipelineStageCreationFeedbackCount = cStruct.pipelineStageCreationFeedbackCount
        self.pPipelineStageCreationFeedbacks = cStruct.pPipelineStageCreationFeedbacks
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPipelineCreationFeedbackCreateInfoEXT>) throws -> R) rethrows -> R {
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

    let performanceCounterQueryPools: Bool
    let performanceCounterMultipleQueryPools: Bool

    init(cStruct: VkPhysicalDevicePerformanceQueryFeaturesKHR) {
        self.performanceCounterQueryPools = cStruct.performanceCounterQueryPools == VK_TRUE
        self.performanceCounterMultipleQueryPools = cStruct.performanceCounterMultipleQueryPools == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDevicePerformanceQueryFeaturesKHR>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDevicePerformanceQueryFeaturesKHR()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PERFORMANCE_QUERY_FEATURES_KHR
        cStruct.pNext = nil
        cStruct.performanceCounterQueryPools = VkBool32(self.performanceCounterQueryPools ? VK_TRUE : VK_FALSE)
        cStruct.performanceCounterMultipleQueryPools = VkBool32(self.performanceCounterMultipleQueryPools ? VK_TRUE : VK_FALSE)
        return try body(&cStruct)
    }
}

struct PhysicalDevicePerformanceQueryPropertiesKHR: CStructConvertible {
    typealias CStruct = VkPhysicalDevicePerformanceQueryPropertiesKHR

    let allowCommandBufferQueryCopies: Bool

    init(cStruct: VkPhysicalDevicePerformanceQueryPropertiesKHR) {
        self.allowCommandBufferQueryCopies = cStruct.allowCommandBufferQueryCopies == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDevicePerformanceQueryPropertiesKHR>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDevicePerformanceQueryPropertiesKHR()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PERFORMANCE_QUERY_PROPERTIES_KHR
        cStruct.pNext = nil
        cStruct.allowCommandBufferQueryCopies = VkBool32(self.allowCommandBufferQueryCopies ? VK_TRUE : VK_FALSE)
        return try body(&cStruct)
    }
}

struct PerformanceCounterKHR: CStructConvertible {
    typealias CStruct = VkPerformanceCounterKHR

    let unit: PerformanceCounterUnitKHR
    let scope: PerformanceCounterScopeKHR
    let storage: PerformanceCounterStorageKHR
    let uuid: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)

    init(cStruct: VkPerformanceCounterKHR) {
        self.unit = PerformanceCounterUnitKHR(rawValue: cStruct.unit.rawValue)!
        self.scope = PerformanceCounterScopeKHR(rawValue: cStruct.scope.rawValue)!
        self.storage = PerformanceCounterStorageKHR(rawValue: cStruct.storage.rawValue)!
        self.uuid = cStruct.uuid
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPerformanceCounterKHR>) throws -> R) rethrows -> R {
        var cStruct = VkPerformanceCounterKHR()
        cStruct.sType = VK_STRUCTURE_TYPE_PERFORMANCE_COUNTER_KHR
        cStruct.pNext = nil
        cStruct.unit = VkPerformanceCounterUnitKHR(rawValue: self.unit.rawValue)
        cStruct.scope = VkPerformanceCounterScopeKHR(rawValue: self.scope.rawValue)
        cStruct.storage = VkPerformanceCounterStorageKHR(rawValue: self.storage.rawValue)
        cStruct.uuid = self.uuid
        return try body(&cStruct)
    }
}

struct PerformanceCounterDescriptionKHR: CStructConvertible {
    typealias CStruct = VkPerformanceCounterDescriptionKHR

    let flags: PerformanceCounterDescriptionFlagsKHR
    let name: String
    let category: String
    let description: String

    init(cStruct: VkPerformanceCounterDescriptionKHR) {
        self.flags = PerformanceCounterDescriptionFlagsKHR(rawValue: cStruct.flags)
        self.name = String(unsafeBytesOf: cStruct.name)
        self.category = String(unsafeBytesOf: cStruct.category)
        self.description = String(unsafeBytesOf: cStruct.description)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPerformanceCounterDescriptionKHR>) throws -> R) rethrows -> R {
        var cStruct = VkPerformanceCounterDescriptionKHR()
        cStruct.sType = VK_STRUCTURE_TYPE_PERFORMANCE_COUNTER_DESCRIPTION_KHR
        cStruct.pNext = nil
        cStruct.flags = self.flags.rawValue
        cStruct.name = self.name.unsafeBytesCopy()
        cStruct.category = self.category.unsafeBytesCopy()
        cStruct.description = self.description.unsafeBytesCopy()
        return try body(&cStruct)
    }
}

struct QueryPoolPerformanceCreateInfoKHR: CStructConvertible {
    typealias CStruct = VkQueryPoolPerformanceCreateInfoKHR

    let queueFamilyIndex: UInt32
    let pCounterIndices: Array<UInt32>

    init(cStruct: VkQueryPoolPerformanceCreateInfoKHR) {
        self.queueFamilyIndex = cStruct.queueFamilyIndex
        self.pCounterIndices = Array(UnsafeBufferPointer(start: cStruct.pCounterIndices, count: Int(cStruct.counterIndexCount)))
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkQueryPoolPerformanceCreateInfoKHR>) throws -> R) rethrows -> R {
        try self.pCounterIndices.withUnsafeBufferPointer { ptr_pCounterIndices in
            var cStruct = VkQueryPoolPerformanceCreateInfoKHR()
            cStruct.sType = VK_STRUCTURE_TYPE_QUERY_POOL_PERFORMANCE_CREATE_INFO_KHR
            cStruct.pNext = nil
            cStruct.queueFamilyIndex = self.queueFamilyIndex
            cStruct.counterIndexCount = UInt32(ptr_pCounterIndices.count)
            cStruct.pCounterIndices = ptr_pCounterIndices.baseAddress
            return try body(&cStruct)
        }
    }
}

struct AcquireProfilingLockInfoKHR: CStructConvertible {
    typealias CStruct = VkAcquireProfilingLockInfoKHR

    let flags: AcquireProfilingLockFlagsKHR
    let timeout: UInt64

    init(cStruct: VkAcquireProfilingLockInfoKHR) {
        self.flags = AcquireProfilingLockFlagsKHR(rawValue: cStruct.flags)
        self.timeout = cStruct.timeout
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkAcquireProfilingLockInfoKHR>) throws -> R) rethrows -> R {
        var cStruct = VkAcquireProfilingLockInfoKHR()
        cStruct.sType = VK_STRUCTURE_TYPE_ACQUIRE_PROFILING_LOCK_INFO_KHR
        cStruct.pNext = nil
        cStruct.flags = self.flags.rawValue
        cStruct.timeout = self.timeout
        return try body(&cStruct)
    }
}

struct PerformanceQuerySubmitInfoKHR: CStructConvertible {
    typealias CStruct = VkPerformanceQuerySubmitInfoKHR

    let counterPassIndex: UInt32

    init(cStruct: VkPerformanceQuerySubmitInfoKHR) {
        self.counterPassIndex = cStruct.counterPassIndex
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPerformanceQuerySubmitInfoKHR>) throws -> R) rethrows -> R {
        var cStruct = VkPerformanceQuerySubmitInfoKHR()
        cStruct.sType = VK_STRUCTURE_TYPE_PERFORMANCE_QUERY_SUBMIT_INFO_KHR
        cStruct.pNext = nil
        cStruct.counterPassIndex = self.counterPassIndex
        return try body(&cStruct)
    }
}

struct HeadlessSurfaceCreateInfoEXT: CStructConvertible {
    typealias CStruct = VkHeadlessSurfaceCreateInfoEXT

    let flags: HeadlessSurfaceCreateFlagsEXT

    init(cStruct: VkHeadlessSurfaceCreateInfoEXT) {
        self.flags = HeadlessSurfaceCreateFlagsEXT(rawValue: cStruct.flags)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkHeadlessSurfaceCreateInfoEXT>) throws -> R) rethrows -> R {
        var cStruct = VkHeadlessSurfaceCreateInfoEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_HEADLESS_SURFACE_CREATE_INFO_EXT
        cStruct.pNext = nil
        cStruct.flags = self.flags.rawValue
        return try body(&cStruct)
    }
}

struct PhysicalDeviceCoverageReductionModeFeaturesNV: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceCoverageReductionModeFeaturesNV

    let coverageReductionMode: Bool

    init(cStruct: VkPhysicalDeviceCoverageReductionModeFeaturesNV) {
        self.coverageReductionMode = cStruct.coverageReductionMode == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceCoverageReductionModeFeaturesNV>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceCoverageReductionModeFeaturesNV()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_COVERAGE_REDUCTION_MODE_FEATURES_NV
        cStruct.pNext = nil
        cStruct.coverageReductionMode = VkBool32(self.coverageReductionMode ? VK_TRUE : VK_FALSE)
        return try body(&cStruct)
    }
}

struct PipelineCoverageReductionStateCreateInfoNV: CStructConvertible {
    typealias CStruct = VkPipelineCoverageReductionStateCreateInfoNV

    let flags: PipelineCoverageReductionStateCreateFlagsNV
    let coverageReductionMode: CoverageReductionModeNV

    init(cStruct: VkPipelineCoverageReductionStateCreateInfoNV) {
        self.flags = PipelineCoverageReductionStateCreateFlagsNV(rawValue: cStruct.flags)
        self.coverageReductionMode = CoverageReductionModeNV(rawValue: cStruct.coverageReductionMode.rawValue)!
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPipelineCoverageReductionStateCreateInfoNV>) throws -> R) rethrows -> R {
        var cStruct = VkPipelineCoverageReductionStateCreateInfoNV()
        cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_COVERAGE_REDUCTION_STATE_CREATE_INFO_NV
        cStruct.pNext = nil
        cStruct.flags = self.flags.rawValue
        cStruct.coverageReductionMode = VkCoverageReductionModeNV(rawValue: self.coverageReductionMode.rawValue)
        return try body(&cStruct)
    }
}

struct FramebufferMixedSamplesCombinationNV: CStructConvertible {
    typealias CStruct = VkFramebufferMixedSamplesCombinationNV

    let coverageReductionMode: CoverageReductionModeNV
    let rasterizationSamples: SampleCountFlags
    let depthStencilSamples: SampleCountFlags
    let colorSamples: SampleCountFlags

    init(cStruct: VkFramebufferMixedSamplesCombinationNV) {
        self.coverageReductionMode = CoverageReductionModeNV(rawValue: cStruct.coverageReductionMode.rawValue)!
        self.rasterizationSamples = SampleCountFlags(rawValue: cStruct.rasterizationSamples.rawValue)
        self.depthStencilSamples = SampleCountFlags(rawValue: cStruct.depthStencilSamples)
        self.colorSamples = SampleCountFlags(rawValue: cStruct.colorSamples)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkFramebufferMixedSamplesCombinationNV>) throws -> R) rethrows -> R {
        var cStruct = VkFramebufferMixedSamplesCombinationNV()
        cStruct.sType = VK_STRUCTURE_TYPE_FRAMEBUFFER_MIXED_SAMPLES_COMBINATION_NV
        cStruct.pNext = nil
        cStruct.coverageReductionMode = VkCoverageReductionModeNV(rawValue: self.coverageReductionMode.rawValue)
        cStruct.rasterizationSamples = VkSampleCountFlagBits(rawValue: self.rasterizationSamples.rawValue)
        cStruct.depthStencilSamples = self.depthStencilSamples.rawValue
        cStruct.colorSamples = self.colorSamples.rawValue
        return try body(&cStruct)
    }
}

struct PhysicalDeviceShaderIntegerFunctions2FeaturesINTEL: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceShaderIntegerFunctions2FeaturesINTEL

    let shaderIntegerFunctions2: Bool

    init(cStruct: VkPhysicalDeviceShaderIntegerFunctions2FeaturesINTEL) {
        self.shaderIntegerFunctions2 = cStruct.shaderIntegerFunctions2 == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceShaderIntegerFunctions2FeaturesINTEL>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceShaderIntegerFunctions2FeaturesINTEL()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_INTEGER_FUNCTIONS_2_FEATURES_INTEL
        cStruct.pNext = nil
        cStruct.shaderIntegerFunctions2 = VkBool32(self.shaderIntegerFunctions2 ? VK_TRUE : VK_FALSE)
        return try body(&cStruct)
    }
}

struct PerformanceValueINTEL: CStructConvertible {
    typealias CStruct = VkPerformanceValueINTEL

    let type: PerformanceValueTypeINTEL
    let data: VkPerformanceValueDataINTEL

    init(cStruct: VkPerformanceValueINTEL) {
        self.type = PerformanceValueTypeINTEL(rawValue: cStruct.type.rawValue)!
        self.data = cStruct.data
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPerformanceValueINTEL>) throws -> R) rethrows -> R {
        var cStruct = VkPerformanceValueINTEL()
        cStruct.type = VkPerformanceValueTypeINTEL(rawValue: self.type.rawValue)
        cStruct.data = self.data
        return try body(&cStruct)
    }
}

struct InitializePerformanceApiInfoINTEL: CStructConvertible {
    typealias CStruct = VkInitializePerformanceApiInfoINTEL

    let pUserData: UnsafeMutableRawPointer

    init(cStruct: VkInitializePerformanceApiInfoINTEL) {
        self.pUserData = cStruct.pUserData
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkInitializePerformanceApiInfoINTEL>) throws -> R) rethrows -> R {
        var cStruct = VkInitializePerformanceApiInfoINTEL()
        cStruct.sType = VK_STRUCTURE_TYPE_INITIALIZE_PERFORMANCE_API_INFO_INTEL
        cStruct.pNext = nil
        cStruct.pUserData = self.pUserData
        return try body(&cStruct)
    }
}

struct QueryPoolPerformanceQueryCreateInfoINTEL: CStructConvertible {
    typealias CStruct = VkQueryPoolPerformanceQueryCreateInfoINTEL

    let performanceCountersSampling: QueryPoolSamplingModeINTEL

    init(cStruct: VkQueryPoolPerformanceQueryCreateInfoINTEL) {
        self.performanceCountersSampling = QueryPoolSamplingModeINTEL(rawValue: cStruct.performanceCountersSampling.rawValue)!
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkQueryPoolPerformanceQueryCreateInfoINTEL>) throws -> R) rethrows -> R {
        var cStruct = VkQueryPoolPerformanceQueryCreateInfoINTEL()
        cStruct.sType = VK_STRUCTURE_TYPE_QUERY_POOL_CREATE_INFO_INTEL
        cStruct.pNext = nil
        cStruct.performanceCountersSampling = VkQueryPoolSamplingModeINTEL(rawValue: self.performanceCountersSampling.rawValue)
        return try body(&cStruct)
    }
}

struct PerformanceMarkerInfoINTEL: CStructConvertible {
    typealias CStruct = VkPerformanceMarkerInfoINTEL

    let marker: UInt64

    init(cStruct: VkPerformanceMarkerInfoINTEL) {
        self.marker = cStruct.marker
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPerformanceMarkerInfoINTEL>) throws -> R) rethrows -> R {
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

    init(cStruct: VkPerformanceStreamMarkerInfoINTEL) {
        self.marker = cStruct.marker
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPerformanceStreamMarkerInfoINTEL>) throws -> R) rethrows -> R {
        var cStruct = VkPerformanceStreamMarkerInfoINTEL()
        cStruct.sType = VK_STRUCTURE_TYPE_PERFORMANCE_STREAM_MARKER_INFO_INTEL
        cStruct.pNext = nil
        cStruct.marker = self.marker
        return try body(&cStruct)
    }
}

struct PerformanceOverrideInfoINTEL: CStructConvertible {
    typealias CStruct = VkPerformanceOverrideInfoINTEL

    let type: PerformanceOverrideTypeINTEL
    let enable: Bool
    let parameter: UInt64

    init(cStruct: VkPerformanceOverrideInfoINTEL) {
        self.type = PerformanceOverrideTypeINTEL(rawValue: cStruct.type.rawValue)!
        self.enable = cStruct.enable == VK_TRUE
        self.parameter = cStruct.parameter
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPerformanceOverrideInfoINTEL>) throws -> R) rethrows -> R {
        var cStruct = VkPerformanceOverrideInfoINTEL()
        cStruct.sType = VK_STRUCTURE_TYPE_PERFORMANCE_OVERRIDE_INFO_INTEL
        cStruct.pNext = nil
        cStruct.type = VkPerformanceOverrideTypeINTEL(rawValue: self.type.rawValue)
        cStruct.enable = VkBool32(self.enable ? VK_TRUE : VK_FALSE)
        cStruct.parameter = self.parameter
        return try body(&cStruct)
    }
}

struct PerformanceConfigurationAcquireInfoINTEL: CStructConvertible {
    typealias CStruct = VkPerformanceConfigurationAcquireInfoINTEL

    let type: PerformanceConfigurationTypeINTEL

    init(cStruct: VkPerformanceConfigurationAcquireInfoINTEL) {
        self.type = PerformanceConfigurationTypeINTEL(rawValue: cStruct.type.rawValue)!
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPerformanceConfigurationAcquireInfoINTEL>) throws -> R) rethrows -> R {
        var cStruct = VkPerformanceConfigurationAcquireInfoINTEL()
        cStruct.sType = VK_STRUCTURE_TYPE_PERFORMANCE_CONFIGURATION_ACQUIRE_INFO_INTEL
        cStruct.pNext = nil
        cStruct.type = VkPerformanceConfigurationTypeINTEL(rawValue: self.type.rawValue)
        return try body(&cStruct)
    }
}

struct PhysicalDeviceShaderClockFeaturesKHR: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceShaderClockFeaturesKHR

    let shaderSubgroupClock: Bool
    let shaderDeviceClock: Bool

    init(cStruct: VkPhysicalDeviceShaderClockFeaturesKHR) {
        self.shaderSubgroupClock = cStruct.shaderSubgroupClock == VK_TRUE
        self.shaderDeviceClock = cStruct.shaderDeviceClock == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceShaderClockFeaturesKHR>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceShaderClockFeaturesKHR()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_CLOCK_FEATURES_KHR
        cStruct.pNext = nil
        cStruct.shaderSubgroupClock = VkBool32(self.shaderSubgroupClock ? VK_TRUE : VK_FALSE)
        cStruct.shaderDeviceClock = VkBool32(self.shaderDeviceClock ? VK_TRUE : VK_FALSE)
        return try body(&cStruct)
    }
}

struct PhysicalDeviceIndexTypeUint8FeaturesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceIndexTypeUint8FeaturesEXT

    let indexTypeUint8: Bool

    init(cStruct: VkPhysicalDeviceIndexTypeUint8FeaturesEXT) {
        self.indexTypeUint8 = cStruct.indexTypeUint8 == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceIndexTypeUint8FeaturesEXT>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceIndexTypeUint8FeaturesEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_INDEX_TYPE_UINT8_FEATURES_EXT
        cStruct.pNext = nil
        cStruct.indexTypeUint8 = VkBool32(self.indexTypeUint8 ? VK_TRUE : VK_FALSE)
        return try body(&cStruct)
    }
}

struct PhysicalDeviceShaderSMBuiltinsPropertiesNV: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceShaderSMBuiltinsPropertiesNV

    let shaderSMCount: UInt32
    let shaderWarpsPerSM: UInt32

    init(cStruct: VkPhysicalDeviceShaderSMBuiltinsPropertiesNV) {
        self.shaderSMCount = cStruct.shaderSMCount
        self.shaderWarpsPerSM = cStruct.shaderWarpsPerSM
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceShaderSMBuiltinsPropertiesNV>) throws -> R) rethrows -> R {
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

    let shaderSMBuiltins: Bool

    init(cStruct: VkPhysicalDeviceShaderSMBuiltinsFeaturesNV) {
        self.shaderSMBuiltins = cStruct.shaderSMBuiltins == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceShaderSMBuiltinsFeaturesNV>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceShaderSMBuiltinsFeaturesNV()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_SM_BUILTINS_FEATURES_NV
        cStruct.pNext = nil
        cStruct.shaderSMBuiltins = VkBool32(self.shaderSMBuiltins ? VK_TRUE : VK_FALSE)
        return try body(&cStruct)
    }
}

struct PhysicalDeviceFragmentShaderInterlockFeaturesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceFragmentShaderInterlockFeaturesEXT

    let fragmentShaderSampleInterlock: Bool
    let fragmentShaderPixelInterlock: Bool
    let fragmentShaderShadingRateInterlock: Bool

    init(cStruct: VkPhysicalDeviceFragmentShaderInterlockFeaturesEXT) {
        self.fragmentShaderSampleInterlock = cStruct.fragmentShaderSampleInterlock == VK_TRUE
        self.fragmentShaderPixelInterlock = cStruct.fragmentShaderPixelInterlock == VK_TRUE
        self.fragmentShaderShadingRateInterlock = cStruct.fragmentShaderShadingRateInterlock == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceFragmentShaderInterlockFeaturesEXT>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceFragmentShaderInterlockFeaturesEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_SHADER_INTERLOCK_FEATURES_EXT
        cStruct.pNext = nil
        cStruct.fragmentShaderSampleInterlock = VkBool32(self.fragmentShaderSampleInterlock ? VK_TRUE : VK_FALSE)
        cStruct.fragmentShaderPixelInterlock = VkBool32(self.fragmentShaderPixelInterlock ? VK_TRUE : VK_FALSE)
        cStruct.fragmentShaderShadingRateInterlock = VkBool32(self.fragmentShaderShadingRateInterlock ? VK_TRUE : VK_FALSE)
        return try body(&cStruct)
    }
}

struct PhysicalDeviceSeparateDepthStencilLayoutsFeatures: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceSeparateDepthStencilLayoutsFeatures

    let separateDepthStencilLayouts: Bool

    init(cStruct: VkPhysicalDeviceSeparateDepthStencilLayoutsFeatures) {
        self.separateDepthStencilLayouts = cStruct.separateDepthStencilLayouts == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceSeparateDepthStencilLayoutsFeatures>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceSeparateDepthStencilLayoutsFeatures()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SEPARATE_DEPTH_STENCIL_LAYOUTS_FEATURES
        cStruct.pNext = nil
        cStruct.separateDepthStencilLayouts = VkBool32(self.separateDepthStencilLayouts ? VK_TRUE : VK_FALSE)
        return try body(&cStruct)
    }
}

struct AttachmentReferenceStencilLayout: CStructConvertible {
    typealias CStruct = VkAttachmentReferenceStencilLayout

    let stencilLayout: ImageLayout

    init(cStruct: VkAttachmentReferenceStencilLayout) {
        self.stencilLayout = ImageLayout(rawValue: cStruct.stencilLayout.rawValue)!
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkAttachmentReferenceStencilLayout>) throws -> R) rethrows -> R {
        var cStruct = VkAttachmentReferenceStencilLayout()
        cStruct.sType = VK_STRUCTURE_TYPE_ATTACHMENT_REFERENCE_STENCIL_LAYOUT
        cStruct.pNext = nil
        cStruct.stencilLayout = VkImageLayout(rawValue: self.stencilLayout.rawValue)
        return try body(&cStruct)
    }
}

struct AttachmentDescriptionStencilLayout: CStructConvertible {
    typealias CStruct = VkAttachmentDescriptionStencilLayout

    let stencilInitialLayout: ImageLayout
    let stencilFinalLayout: ImageLayout

    init(cStruct: VkAttachmentDescriptionStencilLayout) {
        self.stencilInitialLayout = ImageLayout(rawValue: cStruct.stencilInitialLayout.rawValue)!
        self.stencilFinalLayout = ImageLayout(rawValue: cStruct.stencilFinalLayout.rawValue)!
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkAttachmentDescriptionStencilLayout>) throws -> R) rethrows -> R {
        var cStruct = VkAttachmentDescriptionStencilLayout()
        cStruct.sType = VK_STRUCTURE_TYPE_ATTACHMENT_DESCRIPTION_STENCIL_LAYOUT
        cStruct.pNext = nil
        cStruct.stencilInitialLayout = VkImageLayout(rawValue: self.stencilInitialLayout.rawValue)
        cStruct.stencilFinalLayout = VkImageLayout(rawValue: self.stencilFinalLayout.rawValue)
        return try body(&cStruct)
    }
}

struct PhysicalDevicePipelineExecutablePropertiesFeaturesKHR: CStructConvertible {
    typealias CStruct = VkPhysicalDevicePipelineExecutablePropertiesFeaturesKHR

    let pipelineExecutableInfo: Bool

    init(cStruct: VkPhysicalDevicePipelineExecutablePropertiesFeaturesKHR) {
        self.pipelineExecutableInfo = cStruct.pipelineExecutableInfo == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDevicePipelineExecutablePropertiesFeaturesKHR>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDevicePipelineExecutablePropertiesFeaturesKHR()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PIPELINE_EXECUTABLE_PROPERTIES_FEATURES_KHR
        cStruct.pNext = nil
        cStruct.pipelineExecutableInfo = VkBool32(self.pipelineExecutableInfo ? VK_TRUE : VK_FALSE)
        return try body(&cStruct)
    }
}

struct PipelineInfoKHR: CStructConvertible {
    typealias CStruct = VkPipelineInfoKHR

    let pipeline: Pipeline

    init(cStruct: VkPipelineInfoKHR) {
        fatalError("This initializer should be removed.")
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPipelineInfoKHR>) throws -> R) rethrows -> R {
        var cStruct = VkPipelineInfoKHR()
        cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_INFO_KHR
        cStruct.pNext = nil
        cStruct.pipeline = self.pipeline.handle
        return try body(&cStruct)
    }
}

struct PipelineExecutablePropertiesKHR: CStructConvertible {
    typealias CStruct = VkPipelineExecutablePropertiesKHR

    let stages: ShaderStageFlags
    let name: String
    let description: String
    let subgroupSize: UInt32

    init(cStruct: VkPipelineExecutablePropertiesKHR) {
        self.stages = ShaderStageFlags(rawValue: cStruct.stages)
        self.name = String(unsafeBytesOf: cStruct.name)
        self.description = String(unsafeBytesOf: cStruct.description)
        self.subgroupSize = cStruct.subgroupSize
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPipelineExecutablePropertiesKHR>) throws -> R) rethrows -> R {
        var cStruct = VkPipelineExecutablePropertiesKHR()
        cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_EXECUTABLE_PROPERTIES_KHR
        cStruct.pNext = nil
        cStruct.stages = self.stages.rawValue
        cStruct.name = self.name.unsafeBytesCopy()
        cStruct.description = self.description.unsafeBytesCopy()
        cStruct.subgroupSize = self.subgroupSize
        return try body(&cStruct)
    }
}

struct PipelineExecutableInfoKHR: CStructConvertible {
    typealias CStruct = VkPipelineExecutableInfoKHR

    let pipeline: Pipeline
    let executableIndex: UInt32

    init(cStruct: VkPipelineExecutableInfoKHR) {
        fatalError("This initializer should be removed.")
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPipelineExecutableInfoKHR>) throws -> R) rethrows -> R {
        var cStruct = VkPipelineExecutableInfoKHR()
        cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_EXECUTABLE_INFO_KHR
        cStruct.pNext = nil
        cStruct.pipeline = self.pipeline.handle
        cStruct.executableIndex = self.executableIndex
        return try body(&cStruct)
    }
}

struct PipelineExecutableStatisticKHR: CStructConvertible {
    typealias CStruct = VkPipelineExecutableStatisticKHR

    let name: String
    let description: String
    let format: PipelineExecutableStatisticFormatKHR
    let value: VkPipelineExecutableStatisticValueKHR

    init(cStruct: VkPipelineExecutableStatisticKHR) {
        self.name = String(unsafeBytesOf: cStruct.name)
        self.description = String(unsafeBytesOf: cStruct.description)
        self.format = PipelineExecutableStatisticFormatKHR(rawValue: cStruct.format.rawValue)!
        self.value = cStruct.value
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPipelineExecutableStatisticKHR>) throws -> R) rethrows -> R {
        var cStruct = VkPipelineExecutableStatisticKHR()
        cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_EXECUTABLE_STATISTIC_KHR
        cStruct.pNext = nil
        cStruct.name = self.name.unsafeBytesCopy()
        cStruct.description = self.description.unsafeBytesCopy()
        cStruct.format = VkPipelineExecutableStatisticFormatKHR(rawValue: self.format.rawValue)
        cStruct.value = self.value
        return try body(&cStruct)
    }
}

struct PipelineExecutableInternalRepresentationKHR: CStructConvertible {
    typealias CStruct = VkPipelineExecutableInternalRepresentationKHR

    let name: String
    let description: String
    let isText: Bool
    let dataSize: Int
    let pData: UnsafeMutableRawPointer

    init(cStruct: VkPipelineExecutableInternalRepresentationKHR) {
        self.name = String(unsafeBytesOf: cStruct.name)
        self.description = String(unsafeBytesOf: cStruct.description)
        self.isText = cStruct.isText == VK_TRUE
        self.dataSize = cStruct.dataSize
        self.pData = cStruct.pData
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPipelineExecutableInternalRepresentationKHR>) throws -> R) rethrows -> R {
        var cStruct = VkPipelineExecutableInternalRepresentationKHR()
        cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_EXECUTABLE_INTERNAL_REPRESENTATION_KHR
        cStruct.pNext = nil
        cStruct.name = self.name.unsafeBytesCopy()
        cStruct.description = self.description.unsafeBytesCopy()
        cStruct.isText = VkBool32(self.isText ? VK_TRUE : VK_FALSE)
        cStruct.dataSize = self.dataSize
        cStruct.pData = self.pData
        return try body(&cStruct)
    }
}

struct PhysicalDeviceShaderDemoteToHelperInvocationFeaturesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceShaderDemoteToHelperInvocationFeaturesEXT

    let shaderDemoteToHelperInvocation: Bool

    init(cStruct: VkPhysicalDeviceShaderDemoteToHelperInvocationFeaturesEXT) {
        self.shaderDemoteToHelperInvocation = cStruct.shaderDemoteToHelperInvocation == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceShaderDemoteToHelperInvocationFeaturesEXT>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceShaderDemoteToHelperInvocationFeaturesEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_DEMOTE_TO_HELPER_INVOCATION_FEATURES_EXT
        cStruct.pNext = nil
        cStruct.shaderDemoteToHelperInvocation = VkBool32(self.shaderDemoteToHelperInvocation ? VK_TRUE : VK_FALSE)
        return try body(&cStruct)
    }
}

struct PhysicalDeviceTexelBufferAlignmentFeaturesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceTexelBufferAlignmentFeaturesEXT

    let texelBufferAlignment: Bool

    init(cStruct: VkPhysicalDeviceTexelBufferAlignmentFeaturesEXT) {
        self.texelBufferAlignment = cStruct.texelBufferAlignment == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceTexelBufferAlignmentFeaturesEXT>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceTexelBufferAlignmentFeaturesEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TEXEL_BUFFER_ALIGNMENT_FEATURES_EXT
        cStruct.pNext = nil
        cStruct.texelBufferAlignment = VkBool32(self.texelBufferAlignment ? VK_TRUE : VK_FALSE)
        return try body(&cStruct)
    }
}

struct PhysicalDeviceTexelBufferAlignmentPropertiesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceTexelBufferAlignmentPropertiesEXT

    let storageTexelBufferOffsetAlignmentBytes: VkDeviceSize
    let storageTexelBufferOffsetSingleTexelAlignment: Bool
    let uniformTexelBufferOffsetAlignmentBytes: VkDeviceSize
    let uniformTexelBufferOffsetSingleTexelAlignment: Bool

    init(cStruct: VkPhysicalDeviceTexelBufferAlignmentPropertiesEXT) {
        self.storageTexelBufferOffsetAlignmentBytes = cStruct.storageTexelBufferOffsetAlignmentBytes
        self.storageTexelBufferOffsetSingleTexelAlignment = cStruct.storageTexelBufferOffsetSingleTexelAlignment == VK_TRUE
        self.uniformTexelBufferOffsetAlignmentBytes = cStruct.uniformTexelBufferOffsetAlignmentBytes
        self.uniformTexelBufferOffsetSingleTexelAlignment = cStruct.uniformTexelBufferOffsetSingleTexelAlignment == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceTexelBufferAlignmentPropertiesEXT>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceTexelBufferAlignmentPropertiesEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TEXEL_BUFFER_ALIGNMENT_PROPERTIES_EXT
        cStruct.pNext = nil
        cStruct.storageTexelBufferOffsetAlignmentBytes = self.storageTexelBufferOffsetAlignmentBytes
        cStruct.storageTexelBufferOffsetSingleTexelAlignment = VkBool32(self.storageTexelBufferOffsetSingleTexelAlignment ? VK_TRUE : VK_FALSE)
        cStruct.uniformTexelBufferOffsetAlignmentBytes = self.uniformTexelBufferOffsetAlignmentBytes
        cStruct.uniformTexelBufferOffsetSingleTexelAlignment = VkBool32(self.uniformTexelBufferOffsetSingleTexelAlignment ? VK_TRUE : VK_FALSE)
        return try body(&cStruct)
    }
}

struct PhysicalDeviceSubgroupSizeControlFeaturesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceSubgroupSizeControlFeaturesEXT

    let subgroupSizeControl: Bool
    let computeFullSubgroups: Bool

    init(cStruct: VkPhysicalDeviceSubgroupSizeControlFeaturesEXT) {
        self.subgroupSizeControl = cStruct.subgroupSizeControl == VK_TRUE
        self.computeFullSubgroups = cStruct.computeFullSubgroups == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceSubgroupSizeControlFeaturesEXT>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceSubgroupSizeControlFeaturesEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SUBGROUP_SIZE_CONTROL_FEATURES_EXT
        cStruct.pNext = nil
        cStruct.subgroupSizeControl = VkBool32(self.subgroupSizeControl ? VK_TRUE : VK_FALSE)
        cStruct.computeFullSubgroups = VkBool32(self.computeFullSubgroups ? VK_TRUE : VK_FALSE)
        return try body(&cStruct)
    }
}

struct PhysicalDeviceSubgroupSizeControlPropertiesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceSubgroupSizeControlPropertiesEXT

    let minSubgroupSize: UInt32
    let maxSubgroupSize: UInt32
    let maxComputeWorkgroupSubgroups: UInt32
    let requiredSubgroupSizeStages: ShaderStageFlags

    init(cStruct: VkPhysicalDeviceSubgroupSizeControlPropertiesEXT) {
        self.minSubgroupSize = cStruct.minSubgroupSize
        self.maxSubgroupSize = cStruct.maxSubgroupSize
        self.maxComputeWorkgroupSubgroups = cStruct.maxComputeWorkgroupSubgroups
        self.requiredSubgroupSizeStages = ShaderStageFlags(rawValue: cStruct.requiredSubgroupSizeStages)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceSubgroupSizeControlPropertiesEXT>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceSubgroupSizeControlPropertiesEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SUBGROUP_SIZE_CONTROL_PROPERTIES_EXT
        cStruct.pNext = nil
        cStruct.minSubgroupSize = self.minSubgroupSize
        cStruct.maxSubgroupSize = self.maxSubgroupSize
        cStruct.maxComputeWorkgroupSubgroups = self.maxComputeWorkgroupSubgroups
        cStruct.requiredSubgroupSizeStages = self.requiredSubgroupSizeStages.rawValue
        return try body(&cStruct)
    }
}

struct PipelineShaderStageRequiredSubgroupSizeCreateInfoEXT: CStructConvertible {
    typealias CStruct = VkPipelineShaderStageRequiredSubgroupSizeCreateInfoEXT

    let requiredSubgroupSize: UInt32

    init(cStruct: VkPipelineShaderStageRequiredSubgroupSizeCreateInfoEXT) {
        self.requiredSubgroupSize = cStruct.requiredSubgroupSize
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPipelineShaderStageRequiredSubgroupSizeCreateInfoEXT>) throws -> R) rethrows -> R {
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

    init(cStruct: VkMemoryOpaqueCaptureAddressAllocateInfo) {
        self.opaqueCaptureAddress = cStruct.opaqueCaptureAddress
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkMemoryOpaqueCaptureAddressAllocateInfo>) throws -> R) rethrows -> R {
        var cStruct = VkMemoryOpaqueCaptureAddressAllocateInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_MEMORY_OPAQUE_CAPTURE_ADDRESS_ALLOCATE_INFO
        cStruct.pNext = nil
        cStruct.opaqueCaptureAddress = self.opaqueCaptureAddress
        return try body(&cStruct)
    }
}

struct DeviceMemoryOpaqueCaptureAddressInfo: CStructConvertible {
    typealias CStruct = VkDeviceMemoryOpaqueCaptureAddressInfo

    let memory: DeviceMemory

    init(cStruct: VkDeviceMemoryOpaqueCaptureAddressInfo) {
        fatalError("This initializer should be removed.")
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkDeviceMemoryOpaqueCaptureAddressInfo>) throws -> R) rethrows -> R {
        var cStruct = VkDeviceMemoryOpaqueCaptureAddressInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_DEVICE_MEMORY_OPAQUE_CAPTURE_ADDRESS_INFO
        cStruct.pNext = nil
        cStruct.memory = self.memory.handle
        return try body(&cStruct)
    }
}

struct PhysicalDeviceLineRasterizationFeaturesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceLineRasterizationFeaturesEXT

    let rectangularLines: Bool
    let bresenhamLines: Bool
    let smoothLines: Bool
    let stippledRectangularLines: Bool
    let stippledBresenhamLines: Bool
    let stippledSmoothLines: Bool

    init(cStruct: VkPhysicalDeviceLineRasterizationFeaturesEXT) {
        self.rectangularLines = cStruct.rectangularLines == VK_TRUE
        self.bresenhamLines = cStruct.bresenhamLines == VK_TRUE
        self.smoothLines = cStruct.smoothLines == VK_TRUE
        self.stippledRectangularLines = cStruct.stippledRectangularLines == VK_TRUE
        self.stippledBresenhamLines = cStruct.stippledBresenhamLines == VK_TRUE
        self.stippledSmoothLines = cStruct.stippledSmoothLines == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceLineRasterizationFeaturesEXT>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceLineRasterizationFeaturesEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_LINE_RASTERIZATION_FEATURES_EXT
        cStruct.pNext = nil
        cStruct.rectangularLines = VkBool32(self.rectangularLines ? VK_TRUE : VK_FALSE)
        cStruct.bresenhamLines = VkBool32(self.bresenhamLines ? VK_TRUE : VK_FALSE)
        cStruct.smoothLines = VkBool32(self.smoothLines ? VK_TRUE : VK_FALSE)
        cStruct.stippledRectangularLines = VkBool32(self.stippledRectangularLines ? VK_TRUE : VK_FALSE)
        cStruct.stippledBresenhamLines = VkBool32(self.stippledBresenhamLines ? VK_TRUE : VK_FALSE)
        cStruct.stippledSmoothLines = VkBool32(self.stippledSmoothLines ? VK_TRUE : VK_FALSE)
        return try body(&cStruct)
    }
}

struct PhysicalDeviceLineRasterizationPropertiesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceLineRasterizationPropertiesEXT

    let lineSubPixelPrecisionBits: UInt32

    init(cStruct: VkPhysicalDeviceLineRasterizationPropertiesEXT) {
        self.lineSubPixelPrecisionBits = cStruct.lineSubPixelPrecisionBits
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceLineRasterizationPropertiesEXT>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceLineRasterizationPropertiesEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_LINE_RASTERIZATION_PROPERTIES_EXT
        cStruct.pNext = nil
        cStruct.lineSubPixelPrecisionBits = self.lineSubPixelPrecisionBits
        return try body(&cStruct)
    }
}

struct PipelineRasterizationLineStateCreateInfoEXT: CStructConvertible {
    typealias CStruct = VkPipelineRasterizationLineStateCreateInfoEXT

    let lineRasterizationMode: LineRasterizationModeEXT
    let stippledLineEnable: Bool
    let lineStippleFactor: UInt32
    let lineStipplePattern: UInt16

    init(cStruct: VkPipelineRasterizationLineStateCreateInfoEXT) {
        self.lineRasterizationMode = LineRasterizationModeEXT(rawValue: cStruct.lineRasterizationMode.rawValue)!
        self.stippledLineEnable = cStruct.stippledLineEnable == VK_TRUE
        self.lineStippleFactor = cStruct.lineStippleFactor
        self.lineStipplePattern = cStruct.lineStipplePattern
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPipelineRasterizationLineStateCreateInfoEXT>) throws -> R) rethrows -> R {
        var cStruct = VkPipelineRasterizationLineStateCreateInfoEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_LINE_STATE_CREATE_INFO_EXT
        cStruct.pNext = nil
        cStruct.lineRasterizationMode = VkLineRasterizationModeEXT(rawValue: self.lineRasterizationMode.rawValue)
        cStruct.stippledLineEnable = VkBool32(self.stippledLineEnable ? VK_TRUE : VK_FALSE)
        cStruct.lineStippleFactor = self.lineStippleFactor
        cStruct.lineStipplePattern = self.lineStipplePattern
        return try body(&cStruct)
    }
}

struct PhysicalDevicePipelineCreationCacheControlFeaturesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDevicePipelineCreationCacheControlFeaturesEXT

    let pipelineCreationCacheControl: Bool

    init(cStruct: VkPhysicalDevicePipelineCreationCacheControlFeaturesEXT) {
        self.pipelineCreationCacheControl = cStruct.pipelineCreationCacheControl == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDevicePipelineCreationCacheControlFeaturesEXT>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDevicePipelineCreationCacheControlFeaturesEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PIPELINE_CREATION_CACHE_CONTROL_FEATURES_EXT
        cStruct.pNext = nil
        cStruct.pipelineCreationCacheControl = VkBool32(self.pipelineCreationCacheControl ? VK_TRUE : VK_FALSE)
        return try body(&cStruct)
    }
}

struct PhysicalDeviceVulkan11Features: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceVulkan11Features

    let storageBuffer16BitAccess: Bool
    let uniformAndStorageBuffer16BitAccess: Bool
    let storagePushConstant16: Bool
    let storageInputOutput16: Bool
    let multiview: Bool
    let multiviewGeometryShader: Bool
    let multiviewTessellationShader: Bool
    let variablePointersStorageBuffer: Bool
    let variablePointers: Bool
    let protectedMemory: Bool
    let samplerYcbcrConversion: Bool
    let shaderDrawParameters: Bool

    init(cStruct: VkPhysicalDeviceVulkan11Features) {
        self.storageBuffer16BitAccess = cStruct.storageBuffer16BitAccess == VK_TRUE
        self.uniformAndStorageBuffer16BitAccess = cStruct.uniformAndStorageBuffer16BitAccess == VK_TRUE
        self.storagePushConstant16 = cStruct.storagePushConstant16 == VK_TRUE
        self.storageInputOutput16 = cStruct.storageInputOutput16 == VK_TRUE
        self.multiview = cStruct.multiview == VK_TRUE
        self.multiviewGeometryShader = cStruct.multiviewGeometryShader == VK_TRUE
        self.multiviewTessellationShader = cStruct.multiviewTessellationShader == VK_TRUE
        self.variablePointersStorageBuffer = cStruct.variablePointersStorageBuffer == VK_TRUE
        self.variablePointers = cStruct.variablePointers == VK_TRUE
        self.protectedMemory = cStruct.protectedMemory == VK_TRUE
        self.samplerYcbcrConversion = cStruct.samplerYcbcrConversion == VK_TRUE
        self.shaderDrawParameters = cStruct.shaderDrawParameters == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceVulkan11Features>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceVulkan11Features()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_1_1_FEATURES
        cStruct.pNext = nil
        cStruct.storageBuffer16BitAccess = VkBool32(self.storageBuffer16BitAccess ? VK_TRUE : VK_FALSE)
        cStruct.uniformAndStorageBuffer16BitAccess = VkBool32(self.uniformAndStorageBuffer16BitAccess ? VK_TRUE : VK_FALSE)
        cStruct.storagePushConstant16 = VkBool32(self.storagePushConstant16 ? VK_TRUE : VK_FALSE)
        cStruct.storageInputOutput16 = VkBool32(self.storageInputOutput16 ? VK_TRUE : VK_FALSE)
        cStruct.multiview = VkBool32(self.multiview ? VK_TRUE : VK_FALSE)
        cStruct.multiviewGeometryShader = VkBool32(self.multiviewGeometryShader ? VK_TRUE : VK_FALSE)
        cStruct.multiviewTessellationShader = VkBool32(self.multiviewTessellationShader ? VK_TRUE : VK_FALSE)
        cStruct.variablePointersStorageBuffer = VkBool32(self.variablePointersStorageBuffer ? VK_TRUE : VK_FALSE)
        cStruct.variablePointers = VkBool32(self.variablePointers ? VK_TRUE : VK_FALSE)
        cStruct.protectedMemory = VkBool32(self.protectedMemory ? VK_TRUE : VK_FALSE)
        cStruct.samplerYcbcrConversion = VkBool32(self.samplerYcbcrConversion ? VK_TRUE : VK_FALSE)
        cStruct.shaderDrawParameters = VkBool32(self.shaderDrawParameters ? VK_TRUE : VK_FALSE)
        return try body(&cStruct)
    }
}

struct PhysicalDeviceVulkan11Properties: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceVulkan11Properties

    let deviceUUID: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
    let driverUUID: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
    let deviceLUID: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
    let deviceNodeMask: UInt32
    let deviceLUIDValid: Bool
    let subgroupSize: UInt32
    let subgroupSupportedStages: ShaderStageFlags
    let subgroupSupportedOperations: SubgroupFeatureFlags
    let subgroupQuadOperationsInAllStages: Bool
    let pointClippingBehavior: PointClippingBehavior
    let maxMultiviewViewCount: UInt32
    let maxMultiviewInstanceIndex: UInt32
    let protectedNoFault: Bool
    let maxPerSetDescriptors: UInt32
    let maxMemoryAllocationSize: VkDeviceSize

    init(cStruct: VkPhysicalDeviceVulkan11Properties) {
        self.deviceUUID = cStruct.deviceUUID
        self.driverUUID = cStruct.driverUUID
        self.deviceLUID = cStruct.deviceLUID
        self.deviceNodeMask = cStruct.deviceNodeMask
        self.deviceLUIDValid = cStruct.deviceLUIDValid == VK_TRUE
        self.subgroupSize = cStruct.subgroupSize
        self.subgroupSupportedStages = ShaderStageFlags(rawValue: cStruct.subgroupSupportedStages)
        self.subgroupSupportedOperations = SubgroupFeatureFlags(rawValue: cStruct.subgroupSupportedOperations)
        self.subgroupQuadOperationsInAllStages = cStruct.subgroupQuadOperationsInAllStages == VK_TRUE
        self.pointClippingBehavior = PointClippingBehavior(rawValue: cStruct.pointClippingBehavior.rawValue)!
        self.maxMultiviewViewCount = cStruct.maxMultiviewViewCount
        self.maxMultiviewInstanceIndex = cStruct.maxMultiviewInstanceIndex
        self.protectedNoFault = cStruct.protectedNoFault == VK_TRUE
        self.maxPerSetDescriptors = cStruct.maxPerSetDescriptors
        self.maxMemoryAllocationSize = cStruct.maxMemoryAllocationSize
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceVulkan11Properties>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceVulkan11Properties()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_1_1_PROPERTIES
        cStruct.pNext = nil
        cStruct.deviceUUID = self.deviceUUID
        cStruct.driverUUID = self.driverUUID
        cStruct.deviceLUID = self.deviceLUID
        cStruct.deviceNodeMask = self.deviceNodeMask
        cStruct.deviceLUIDValid = VkBool32(self.deviceLUIDValid ? VK_TRUE : VK_FALSE)
        cStruct.subgroupSize = self.subgroupSize
        cStruct.subgroupSupportedStages = self.subgroupSupportedStages.rawValue
        cStruct.subgroupSupportedOperations = self.subgroupSupportedOperations.rawValue
        cStruct.subgroupQuadOperationsInAllStages = VkBool32(self.subgroupQuadOperationsInAllStages ? VK_TRUE : VK_FALSE)
        cStruct.pointClippingBehavior = VkPointClippingBehavior(rawValue: self.pointClippingBehavior.rawValue)
        cStruct.maxMultiviewViewCount = self.maxMultiviewViewCount
        cStruct.maxMultiviewInstanceIndex = self.maxMultiviewInstanceIndex
        cStruct.protectedNoFault = VkBool32(self.protectedNoFault ? VK_TRUE : VK_FALSE)
        cStruct.maxPerSetDescriptors = self.maxPerSetDescriptors
        cStruct.maxMemoryAllocationSize = self.maxMemoryAllocationSize
        return try body(&cStruct)
    }
}

struct PhysicalDeviceVulkan12Features: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceVulkan12Features

    let samplerMirrorClampToEdge: Bool
    let drawIndirectCount: Bool
    let storageBuffer8BitAccess: Bool
    let uniformAndStorageBuffer8BitAccess: Bool
    let storagePushConstant8: Bool
    let shaderBufferInt64Atomics: Bool
    let shaderSharedInt64Atomics: Bool
    let shaderFloat16: Bool
    let shaderInt8: Bool
    let descriptorIndexing: Bool
    let shaderInputAttachmentArrayDynamicIndexing: Bool
    let shaderUniformTexelBufferArrayDynamicIndexing: Bool
    let shaderStorageTexelBufferArrayDynamicIndexing: Bool
    let shaderUniformBufferArrayNonUniformIndexing: Bool
    let shaderSampledImageArrayNonUniformIndexing: Bool
    let shaderStorageBufferArrayNonUniformIndexing: Bool
    let shaderStorageImageArrayNonUniformIndexing: Bool
    let shaderInputAttachmentArrayNonUniformIndexing: Bool
    let shaderUniformTexelBufferArrayNonUniformIndexing: Bool
    let shaderStorageTexelBufferArrayNonUniformIndexing: Bool
    let descriptorBindingUniformBufferUpdateAfterBind: Bool
    let descriptorBindingSampledImageUpdateAfterBind: Bool
    let descriptorBindingStorageImageUpdateAfterBind: Bool
    let descriptorBindingStorageBufferUpdateAfterBind: Bool
    let descriptorBindingUniformTexelBufferUpdateAfterBind: Bool
    let descriptorBindingStorageTexelBufferUpdateAfterBind: Bool
    let descriptorBindingUpdateUnusedWhilePending: Bool
    let descriptorBindingPartiallyBound: Bool
    let descriptorBindingVariableDescriptorCount: Bool
    let runtimeDescriptorArray: Bool
    let samplerFilterMinmax: Bool
    let scalarBlockLayout: Bool
    let imagelessFramebuffer: Bool
    let uniformBufferStandardLayout: Bool
    let shaderSubgroupExtendedTypes: Bool
    let separateDepthStencilLayouts: Bool
    let hostQueryReset: Bool
    let timelineSemaphore: Bool
    let bufferDeviceAddress: Bool
    let bufferDeviceAddressCaptureReplay: Bool
    let bufferDeviceAddressMultiDevice: Bool
    let vulkanMemoryModel: Bool
    let vulkanMemoryModelDeviceScope: Bool
    let vulkanMemoryModelAvailabilityVisibilityChains: Bool
    let shaderOutputViewportIndex: Bool
    let shaderOutputLayer: Bool
    let subgroupBroadcastDynamicId: Bool

    init(cStruct: VkPhysicalDeviceVulkan12Features) {
        self.samplerMirrorClampToEdge = cStruct.samplerMirrorClampToEdge == VK_TRUE
        self.drawIndirectCount = cStruct.drawIndirectCount == VK_TRUE
        self.storageBuffer8BitAccess = cStruct.storageBuffer8BitAccess == VK_TRUE
        self.uniformAndStorageBuffer8BitAccess = cStruct.uniformAndStorageBuffer8BitAccess == VK_TRUE
        self.storagePushConstant8 = cStruct.storagePushConstant8 == VK_TRUE
        self.shaderBufferInt64Atomics = cStruct.shaderBufferInt64Atomics == VK_TRUE
        self.shaderSharedInt64Atomics = cStruct.shaderSharedInt64Atomics == VK_TRUE
        self.shaderFloat16 = cStruct.shaderFloat16 == VK_TRUE
        self.shaderInt8 = cStruct.shaderInt8 == VK_TRUE
        self.descriptorIndexing = cStruct.descriptorIndexing == VK_TRUE
        self.shaderInputAttachmentArrayDynamicIndexing = cStruct.shaderInputAttachmentArrayDynamicIndexing == VK_TRUE
        self.shaderUniformTexelBufferArrayDynamicIndexing = cStruct.shaderUniformTexelBufferArrayDynamicIndexing == VK_TRUE
        self.shaderStorageTexelBufferArrayDynamicIndexing = cStruct.shaderStorageTexelBufferArrayDynamicIndexing == VK_TRUE
        self.shaderUniformBufferArrayNonUniformIndexing = cStruct.shaderUniformBufferArrayNonUniformIndexing == VK_TRUE
        self.shaderSampledImageArrayNonUniformIndexing = cStruct.shaderSampledImageArrayNonUniformIndexing == VK_TRUE
        self.shaderStorageBufferArrayNonUniformIndexing = cStruct.shaderStorageBufferArrayNonUniformIndexing == VK_TRUE
        self.shaderStorageImageArrayNonUniformIndexing = cStruct.shaderStorageImageArrayNonUniformIndexing == VK_TRUE
        self.shaderInputAttachmentArrayNonUniformIndexing = cStruct.shaderInputAttachmentArrayNonUniformIndexing == VK_TRUE
        self.shaderUniformTexelBufferArrayNonUniformIndexing = cStruct.shaderUniformTexelBufferArrayNonUniformIndexing == VK_TRUE
        self.shaderStorageTexelBufferArrayNonUniformIndexing = cStruct.shaderStorageTexelBufferArrayNonUniformIndexing == VK_TRUE
        self.descriptorBindingUniformBufferUpdateAfterBind = cStruct.descriptorBindingUniformBufferUpdateAfterBind == VK_TRUE
        self.descriptorBindingSampledImageUpdateAfterBind = cStruct.descriptorBindingSampledImageUpdateAfterBind == VK_TRUE
        self.descriptorBindingStorageImageUpdateAfterBind = cStruct.descriptorBindingStorageImageUpdateAfterBind == VK_TRUE
        self.descriptorBindingStorageBufferUpdateAfterBind = cStruct.descriptorBindingStorageBufferUpdateAfterBind == VK_TRUE
        self.descriptorBindingUniformTexelBufferUpdateAfterBind = cStruct.descriptorBindingUniformTexelBufferUpdateAfterBind == VK_TRUE
        self.descriptorBindingStorageTexelBufferUpdateAfterBind = cStruct.descriptorBindingStorageTexelBufferUpdateAfterBind == VK_TRUE
        self.descriptorBindingUpdateUnusedWhilePending = cStruct.descriptorBindingUpdateUnusedWhilePending == VK_TRUE
        self.descriptorBindingPartiallyBound = cStruct.descriptorBindingPartiallyBound == VK_TRUE
        self.descriptorBindingVariableDescriptorCount = cStruct.descriptorBindingVariableDescriptorCount == VK_TRUE
        self.runtimeDescriptorArray = cStruct.runtimeDescriptorArray == VK_TRUE
        self.samplerFilterMinmax = cStruct.samplerFilterMinmax == VK_TRUE
        self.scalarBlockLayout = cStruct.scalarBlockLayout == VK_TRUE
        self.imagelessFramebuffer = cStruct.imagelessFramebuffer == VK_TRUE
        self.uniformBufferStandardLayout = cStruct.uniformBufferStandardLayout == VK_TRUE
        self.shaderSubgroupExtendedTypes = cStruct.shaderSubgroupExtendedTypes == VK_TRUE
        self.separateDepthStencilLayouts = cStruct.separateDepthStencilLayouts == VK_TRUE
        self.hostQueryReset = cStruct.hostQueryReset == VK_TRUE
        self.timelineSemaphore = cStruct.timelineSemaphore == VK_TRUE
        self.bufferDeviceAddress = cStruct.bufferDeviceAddress == VK_TRUE
        self.bufferDeviceAddressCaptureReplay = cStruct.bufferDeviceAddressCaptureReplay == VK_TRUE
        self.bufferDeviceAddressMultiDevice = cStruct.bufferDeviceAddressMultiDevice == VK_TRUE
        self.vulkanMemoryModel = cStruct.vulkanMemoryModel == VK_TRUE
        self.vulkanMemoryModelDeviceScope = cStruct.vulkanMemoryModelDeviceScope == VK_TRUE
        self.vulkanMemoryModelAvailabilityVisibilityChains = cStruct.vulkanMemoryModelAvailabilityVisibilityChains == VK_TRUE
        self.shaderOutputViewportIndex = cStruct.shaderOutputViewportIndex == VK_TRUE
        self.shaderOutputLayer = cStruct.shaderOutputLayer == VK_TRUE
        self.subgroupBroadcastDynamicId = cStruct.subgroupBroadcastDynamicId == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceVulkan12Features>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceVulkan12Features()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_1_2_FEATURES
        cStruct.pNext = nil
        cStruct.samplerMirrorClampToEdge = VkBool32(self.samplerMirrorClampToEdge ? VK_TRUE : VK_FALSE)
        cStruct.drawIndirectCount = VkBool32(self.drawIndirectCount ? VK_TRUE : VK_FALSE)
        cStruct.storageBuffer8BitAccess = VkBool32(self.storageBuffer8BitAccess ? VK_TRUE : VK_FALSE)
        cStruct.uniformAndStorageBuffer8BitAccess = VkBool32(self.uniformAndStorageBuffer8BitAccess ? VK_TRUE : VK_FALSE)
        cStruct.storagePushConstant8 = VkBool32(self.storagePushConstant8 ? VK_TRUE : VK_FALSE)
        cStruct.shaderBufferInt64Atomics = VkBool32(self.shaderBufferInt64Atomics ? VK_TRUE : VK_FALSE)
        cStruct.shaderSharedInt64Atomics = VkBool32(self.shaderSharedInt64Atomics ? VK_TRUE : VK_FALSE)
        cStruct.shaderFloat16 = VkBool32(self.shaderFloat16 ? VK_TRUE : VK_FALSE)
        cStruct.shaderInt8 = VkBool32(self.shaderInt8 ? VK_TRUE : VK_FALSE)
        cStruct.descriptorIndexing = VkBool32(self.descriptorIndexing ? VK_TRUE : VK_FALSE)
        cStruct.shaderInputAttachmentArrayDynamicIndexing = VkBool32(self.shaderInputAttachmentArrayDynamicIndexing ? VK_TRUE : VK_FALSE)
        cStruct.shaderUniformTexelBufferArrayDynamicIndexing = VkBool32(self.shaderUniformTexelBufferArrayDynamicIndexing ? VK_TRUE : VK_FALSE)
        cStruct.shaderStorageTexelBufferArrayDynamicIndexing = VkBool32(self.shaderStorageTexelBufferArrayDynamicIndexing ? VK_TRUE : VK_FALSE)
        cStruct.shaderUniformBufferArrayNonUniformIndexing = VkBool32(self.shaderUniformBufferArrayNonUniformIndexing ? VK_TRUE : VK_FALSE)
        cStruct.shaderSampledImageArrayNonUniformIndexing = VkBool32(self.shaderSampledImageArrayNonUniformIndexing ? VK_TRUE : VK_FALSE)
        cStruct.shaderStorageBufferArrayNonUniformIndexing = VkBool32(self.shaderStorageBufferArrayNonUniformIndexing ? VK_TRUE : VK_FALSE)
        cStruct.shaderStorageImageArrayNonUniformIndexing = VkBool32(self.shaderStorageImageArrayNonUniformIndexing ? VK_TRUE : VK_FALSE)
        cStruct.shaderInputAttachmentArrayNonUniformIndexing = VkBool32(self.shaderInputAttachmentArrayNonUniformIndexing ? VK_TRUE : VK_FALSE)
        cStruct.shaderUniformTexelBufferArrayNonUniformIndexing = VkBool32(self.shaderUniformTexelBufferArrayNonUniformIndexing ? VK_TRUE : VK_FALSE)
        cStruct.shaderStorageTexelBufferArrayNonUniformIndexing = VkBool32(self.shaderStorageTexelBufferArrayNonUniformIndexing ? VK_TRUE : VK_FALSE)
        cStruct.descriptorBindingUniformBufferUpdateAfterBind = VkBool32(self.descriptorBindingUniformBufferUpdateAfterBind ? VK_TRUE : VK_FALSE)
        cStruct.descriptorBindingSampledImageUpdateAfterBind = VkBool32(self.descriptorBindingSampledImageUpdateAfterBind ? VK_TRUE : VK_FALSE)
        cStruct.descriptorBindingStorageImageUpdateAfterBind = VkBool32(self.descriptorBindingStorageImageUpdateAfterBind ? VK_TRUE : VK_FALSE)
        cStruct.descriptorBindingStorageBufferUpdateAfterBind = VkBool32(self.descriptorBindingStorageBufferUpdateAfterBind ? VK_TRUE : VK_FALSE)
        cStruct.descriptorBindingUniformTexelBufferUpdateAfterBind = VkBool32(self.descriptorBindingUniformTexelBufferUpdateAfterBind ? VK_TRUE : VK_FALSE)
        cStruct.descriptorBindingStorageTexelBufferUpdateAfterBind = VkBool32(self.descriptorBindingStorageTexelBufferUpdateAfterBind ? VK_TRUE : VK_FALSE)
        cStruct.descriptorBindingUpdateUnusedWhilePending = VkBool32(self.descriptorBindingUpdateUnusedWhilePending ? VK_TRUE : VK_FALSE)
        cStruct.descriptorBindingPartiallyBound = VkBool32(self.descriptorBindingPartiallyBound ? VK_TRUE : VK_FALSE)
        cStruct.descriptorBindingVariableDescriptorCount = VkBool32(self.descriptorBindingVariableDescriptorCount ? VK_TRUE : VK_FALSE)
        cStruct.runtimeDescriptorArray = VkBool32(self.runtimeDescriptorArray ? VK_TRUE : VK_FALSE)
        cStruct.samplerFilterMinmax = VkBool32(self.samplerFilterMinmax ? VK_TRUE : VK_FALSE)
        cStruct.scalarBlockLayout = VkBool32(self.scalarBlockLayout ? VK_TRUE : VK_FALSE)
        cStruct.imagelessFramebuffer = VkBool32(self.imagelessFramebuffer ? VK_TRUE : VK_FALSE)
        cStruct.uniformBufferStandardLayout = VkBool32(self.uniformBufferStandardLayout ? VK_TRUE : VK_FALSE)
        cStruct.shaderSubgroupExtendedTypes = VkBool32(self.shaderSubgroupExtendedTypes ? VK_TRUE : VK_FALSE)
        cStruct.separateDepthStencilLayouts = VkBool32(self.separateDepthStencilLayouts ? VK_TRUE : VK_FALSE)
        cStruct.hostQueryReset = VkBool32(self.hostQueryReset ? VK_TRUE : VK_FALSE)
        cStruct.timelineSemaphore = VkBool32(self.timelineSemaphore ? VK_TRUE : VK_FALSE)
        cStruct.bufferDeviceAddress = VkBool32(self.bufferDeviceAddress ? VK_TRUE : VK_FALSE)
        cStruct.bufferDeviceAddressCaptureReplay = VkBool32(self.bufferDeviceAddressCaptureReplay ? VK_TRUE : VK_FALSE)
        cStruct.bufferDeviceAddressMultiDevice = VkBool32(self.bufferDeviceAddressMultiDevice ? VK_TRUE : VK_FALSE)
        cStruct.vulkanMemoryModel = VkBool32(self.vulkanMemoryModel ? VK_TRUE : VK_FALSE)
        cStruct.vulkanMemoryModelDeviceScope = VkBool32(self.vulkanMemoryModelDeviceScope ? VK_TRUE : VK_FALSE)
        cStruct.vulkanMemoryModelAvailabilityVisibilityChains = VkBool32(self.vulkanMemoryModelAvailabilityVisibilityChains ? VK_TRUE : VK_FALSE)
        cStruct.shaderOutputViewportIndex = VkBool32(self.shaderOutputViewportIndex ? VK_TRUE : VK_FALSE)
        cStruct.shaderOutputLayer = VkBool32(self.shaderOutputLayer ? VK_TRUE : VK_FALSE)
        cStruct.subgroupBroadcastDynamicId = VkBool32(self.subgroupBroadcastDynamicId ? VK_TRUE : VK_FALSE)
        return try body(&cStruct)
    }
}

struct PhysicalDeviceVulkan12Properties: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceVulkan12Properties

    let driverID: DriverId
    let driverName: String
    let driverInfo: String
    let conformanceVersion: ConformanceVersion
    let denormBehaviorIndependence: ShaderFloatControlsIndependence
    let roundingModeIndependence: ShaderFloatControlsIndependence
    let shaderSignedZeroInfNanPreserveFloat16: Bool
    let shaderSignedZeroInfNanPreserveFloat32: Bool
    let shaderSignedZeroInfNanPreserveFloat64: Bool
    let shaderDenormPreserveFloat16: Bool
    let shaderDenormPreserveFloat32: Bool
    let shaderDenormPreserveFloat64: Bool
    let shaderDenormFlushToZeroFloat16: Bool
    let shaderDenormFlushToZeroFloat32: Bool
    let shaderDenormFlushToZeroFloat64: Bool
    let shaderRoundingModeRTEFloat16: Bool
    let shaderRoundingModeRTEFloat32: Bool
    let shaderRoundingModeRTEFloat64: Bool
    let shaderRoundingModeRTZFloat16: Bool
    let shaderRoundingModeRTZFloat32: Bool
    let shaderRoundingModeRTZFloat64: Bool
    let maxUpdateAfterBindDescriptorsInAllPools: UInt32
    let shaderUniformBufferArrayNonUniformIndexingNative: Bool
    let shaderSampledImageArrayNonUniformIndexingNative: Bool
    let shaderStorageBufferArrayNonUniformIndexingNative: Bool
    let shaderStorageImageArrayNonUniformIndexingNative: Bool
    let shaderInputAttachmentArrayNonUniformIndexingNative: Bool
    let robustBufferAccessUpdateAfterBind: Bool
    let quadDivergentImplicitLod: Bool
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
    let supportedDepthResolveModes: ResolveModeFlags
    let supportedStencilResolveModes: ResolveModeFlags
    let independentResolveNone: Bool
    let independentResolve: Bool
    let filterMinmaxSingleComponentFormats: Bool
    let filterMinmaxImageComponentMapping: Bool
    let maxTimelineSemaphoreValueDifference: UInt64
    let framebufferIntegerColorSampleCounts: SampleCountFlags

    init(cStruct: VkPhysicalDeviceVulkan12Properties) {
        self.driverID = DriverId(rawValue: cStruct.driverID.rawValue)!
        self.driverName = String(unsafeBytesOf: cStruct.driverName)
        self.driverInfo = String(unsafeBytesOf: cStruct.driverInfo)
        self.conformanceVersion = ConformanceVersion(cStruct: cStruct.conformanceVersion)
        self.denormBehaviorIndependence = ShaderFloatControlsIndependence(rawValue: cStruct.denormBehaviorIndependence.rawValue)!
        self.roundingModeIndependence = ShaderFloatControlsIndependence(rawValue: cStruct.roundingModeIndependence.rawValue)!
        self.shaderSignedZeroInfNanPreserveFloat16 = cStruct.shaderSignedZeroInfNanPreserveFloat16 == VK_TRUE
        self.shaderSignedZeroInfNanPreserveFloat32 = cStruct.shaderSignedZeroInfNanPreserveFloat32 == VK_TRUE
        self.shaderSignedZeroInfNanPreserveFloat64 = cStruct.shaderSignedZeroInfNanPreserveFloat64 == VK_TRUE
        self.shaderDenormPreserveFloat16 = cStruct.shaderDenormPreserveFloat16 == VK_TRUE
        self.shaderDenormPreserveFloat32 = cStruct.shaderDenormPreserveFloat32 == VK_TRUE
        self.shaderDenormPreserveFloat64 = cStruct.shaderDenormPreserveFloat64 == VK_TRUE
        self.shaderDenormFlushToZeroFloat16 = cStruct.shaderDenormFlushToZeroFloat16 == VK_TRUE
        self.shaderDenormFlushToZeroFloat32 = cStruct.shaderDenormFlushToZeroFloat32 == VK_TRUE
        self.shaderDenormFlushToZeroFloat64 = cStruct.shaderDenormFlushToZeroFloat64 == VK_TRUE
        self.shaderRoundingModeRTEFloat16 = cStruct.shaderRoundingModeRTEFloat16 == VK_TRUE
        self.shaderRoundingModeRTEFloat32 = cStruct.shaderRoundingModeRTEFloat32 == VK_TRUE
        self.shaderRoundingModeRTEFloat64 = cStruct.shaderRoundingModeRTEFloat64 == VK_TRUE
        self.shaderRoundingModeRTZFloat16 = cStruct.shaderRoundingModeRTZFloat16 == VK_TRUE
        self.shaderRoundingModeRTZFloat32 = cStruct.shaderRoundingModeRTZFloat32 == VK_TRUE
        self.shaderRoundingModeRTZFloat64 = cStruct.shaderRoundingModeRTZFloat64 == VK_TRUE
        self.maxUpdateAfterBindDescriptorsInAllPools = cStruct.maxUpdateAfterBindDescriptorsInAllPools
        self.shaderUniformBufferArrayNonUniformIndexingNative = cStruct.shaderUniformBufferArrayNonUniformIndexingNative == VK_TRUE
        self.shaderSampledImageArrayNonUniformIndexingNative = cStruct.shaderSampledImageArrayNonUniformIndexingNative == VK_TRUE
        self.shaderStorageBufferArrayNonUniformIndexingNative = cStruct.shaderStorageBufferArrayNonUniformIndexingNative == VK_TRUE
        self.shaderStorageImageArrayNonUniformIndexingNative = cStruct.shaderStorageImageArrayNonUniformIndexingNative == VK_TRUE
        self.shaderInputAttachmentArrayNonUniformIndexingNative = cStruct.shaderInputAttachmentArrayNonUniformIndexingNative == VK_TRUE
        self.robustBufferAccessUpdateAfterBind = cStruct.robustBufferAccessUpdateAfterBind == VK_TRUE
        self.quadDivergentImplicitLod = cStruct.quadDivergentImplicitLod == VK_TRUE
        self.maxPerStageDescriptorUpdateAfterBindSamplers = cStruct.maxPerStageDescriptorUpdateAfterBindSamplers
        self.maxPerStageDescriptorUpdateAfterBindUniformBuffers = cStruct.maxPerStageDescriptorUpdateAfterBindUniformBuffers
        self.maxPerStageDescriptorUpdateAfterBindStorageBuffers = cStruct.maxPerStageDescriptorUpdateAfterBindStorageBuffers
        self.maxPerStageDescriptorUpdateAfterBindSampledImages = cStruct.maxPerStageDescriptorUpdateAfterBindSampledImages
        self.maxPerStageDescriptorUpdateAfterBindStorageImages = cStruct.maxPerStageDescriptorUpdateAfterBindStorageImages
        self.maxPerStageDescriptorUpdateAfterBindInputAttachments = cStruct.maxPerStageDescriptorUpdateAfterBindInputAttachments
        self.maxPerStageUpdateAfterBindResources = cStruct.maxPerStageUpdateAfterBindResources
        self.maxDescriptorSetUpdateAfterBindSamplers = cStruct.maxDescriptorSetUpdateAfterBindSamplers
        self.maxDescriptorSetUpdateAfterBindUniformBuffers = cStruct.maxDescriptorSetUpdateAfterBindUniformBuffers
        self.maxDescriptorSetUpdateAfterBindUniformBuffersDynamic = cStruct.maxDescriptorSetUpdateAfterBindUniformBuffersDynamic
        self.maxDescriptorSetUpdateAfterBindStorageBuffers = cStruct.maxDescriptorSetUpdateAfterBindStorageBuffers
        self.maxDescriptorSetUpdateAfterBindStorageBuffersDynamic = cStruct.maxDescriptorSetUpdateAfterBindStorageBuffersDynamic
        self.maxDescriptorSetUpdateAfterBindSampledImages = cStruct.maxDescriptorSetUpdateAfterBindSampledImages
        self.maxDescriptorSetUpdateAfterBindStorageImages = cStruct.maxDescriptorSetUpdateAfterBindStorageImages
        self.maxDescriptorSetUpdateAfterBindInputAttachments = cStruct.maxDescriptorSetUpdateAfterBindInputAttachments
        self.supportedDepthResolveModes = ResolveModeFlags(rawValue: cStruct.supportedDepthResolveModes)
        self.supportedStencilResolveModes = ResolveModeFlags(rawValue: cStruct.supportedStencilResolveModes)
        self.independentResolveNone = cStruct.independentResolveNone == VK_TRUE
        self.independentResolve = cStruct.independentResolve == VK_TRUE
        self.filterMinmaxSingleComponentFormats = cStruct.filterMinmaxSingleComponentFormats == VK_TRUE
        self.filterMinmaxImageComponentMapping = cStruct.filterMinmaxImageComponentMapping == VK_TRUE
        self.maxTimelineSemaphoreValueDifference = cStruct.maxTimelineSemaphoreValueDifference
        self.framebufferIntegerColorSampleCounts = SampleCountFlags(rawValue: cStruct.framebufferIntegerColorSampleCounts)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceVulkan12Properties>) throws -> R) rethrows -> R {
        try self.conformanceVersion.withCStruct { ptr_conformanceVersion in
            var cStruct = VkPhysicalDeviceVulkan12Properties()
            cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_1_2_PROPERTIES
            cStruct.pNext = nil
            cStruct.driverID = VkDriverId(rawValue: self.driverID.rawValue)
            cStruct.driverName = self.driverName.unsafeBytesCopy()
            cStruct.driverInfo = self.driverInfo.unsafeBytesCopy()
            cStruct.conformanceVersion = ptr_conformanceVersion.pointee
            cStruct.denormBehaviorIndependence = VkShaderFloatControlsIndependence(rawValue: self.denormBehaviorIndependence.rawValue)
            cStruct.roundingModeIndependence = VkShaderFloatControlsIndependence(rawValue: self.roundingModeIndependence.rawValue)
            cStruct.shaderSignedZeroInfNanPreserveFloat16 = VkBool32(self.shaderSignedZeroInfNanPreserveFloat16 ? VK_TRUE : VK_FALSE)
            cStruct.shaderSignedZeroInfNanPreserveFloat32 = VkBool32(self.shaderSignedZeroInfNanPreserveFloat32 ? VK_TRUE : VK_FALSE)
            cStruct.shaderSignedZeroInfNanPreserveFloat64 = VkBool32(self.shaderSignedZeroInfNanPreserveFloat64 ? VK_TRUE : VK_FALSE)
            cStruct.shaderDenormPreserveFloat16 = VkBool32(self.shaderDenormPreserveFloat16 ? VK_TRUE : VK_FALSE)
            cStruct.shaderDenormPreserveFloat32 = VkBool32(self.shaderDenormPreserveFloat32 ? VK_TRUE : VK_FALSE)
            cStruct.shaderDenormPreserveFloat64 = VkBool32(self.shaderDenormPreserveFloat64 ? VK_TRUE : VK_FALSE)
            cStruct.shaderDenormFlushToZeroFloat16 = VkBool32(self.shaderDenormFlushToZeroFloat16 ? VK_TRUE : VK_FALSE)
            cStruct.shaderDenormFlushToZeroFloat32 = VkBool32(self.shaderDenormFlushToZeroFloat32 ? VK_TRUE : VK_FALSE)
            cStruct.shaderDenormFlushToZeroFloat64 = VkBool32(self.shaderDenormFlushToZeroFloat64 ? VK_TRUE : VK_FALSE)
            cStruct.shaderRoundingModeRTEFloat16 = VkBool32(self.shaderRoundingModeRTEFloat16 ? VK_TRUE : VK_FALSE)
            cStruct.shaderRoundingModeRTEFloat32 = VkBool32(self.shaderRoundingModeRTEFloat32 ? VK_TRUE : VK_FALSE)
            cStruct.shaderRoundingModeRTEFloat64 = VkBool32(self.shaderRoundingModeRTEFloat64 ? VK_TRUE : VK_FALSE)
            cStruct.shaderRoundingModeRTZFloat16 = VkBool32(self.shaderRoundingModeRTZFloat16 ? VK_TRUE : VK_FALSE)
            cStruct.shaderRoundingModeRTZFloat32 = VkBool32(self.shaderRoundingModeRTZFloat32 ? VK_TRUE : VK_FALSE)
            cStruct.shaderRoundingModeRTZFloat64 = VkBool32(self.shaderRoundingModeRTZFloat64 ? VK_TRUE : VK_FALSE)
            cStruct.maxUpdateAfterBindDescriptorsInAllPools = self.maxUpdateAfterBindDescriptorsInAllPools
            cStruct.shaderUniformBufferArrayNonUniformIndexingNative = VkBool32(self.shaderUniformBufferArrayNonUniformIndexingNative ? VK_TRUE : VK_FALSE)
            cStruct.shaderSampledImageArrayNonUniformIndexingNative = VkBool32(self.shaderSampledImageArrayNonUniformIndexingNative ? VK_TRUE : VK_FALSE)
            cStruct.shaderStorageBufferArrayNonUniformIndexingNative = VkBool32(self.shaderStorageBufferArrayNonUniformIndexingNative ? VK_TRUE : VK_FALSE)
            cStruct.shaderStorageImageArrayNonUniformIndexingNative = VkBool32(self.shaderStorageImageArrayNonUniformIndexingNative ? VK_TRUE : VK_FALSE)
            cStruct.shaderInputAttachmentArrayNonUniformIndexingNative = VkBool32(self.shaderInputAttachmentArrayNonUniformIndexingNative ? VK_TRUE : VK_FALSE)
            cStruct.robustBufferAccessUpdateAfterBind = VkBool32(self.robustBufferAccessUpdateAfterBind ? VK_TRUE : VK_FALSE)
            cStruct.quadDivergentImplicitLod = VkBool32(self.quadDivergentImplicitLod ? VK_TRUE : VK_FALSE)
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
            cStruct.supportedDepthResolveModes = self.supportedDepthResolveModes.rawValue
            cStruct.supportedStencilResolveModes = self.supportedStencilResolveModes.rawValue
            cStruct.independentResolveNone = VkBool32(self.independentResolveNone ? VK_TRUE : VK_FALSE)
            cStruct.independentResolve = VkBool32(self.independentResolve ? VK_TRUE : VK_FALSE)
            cStruct.filterMinmaxSingleComponentFormats = VkBool32(self.filterMinmaxSingleComponentFormats ? VK_TRUE : VK_FALSE)
            cStruct.filterMinmaxImageComponentMapping = VkBool32(self.filterMinmaxImageComponentMapping ? VK_TRUE : VK_FALSE)
            cStruct.maxTimelineSemaphoreValueDifference = self.maxTimelineSemaphoreValueDifference
            cStruct.framebufferIntegerColorSampleCounts = self.framebufferIntegerColorSampleCounts.rawValue
            return try body(&cStruct)
        }
    }
}

struct PipelineCompilerControlCreateInfoAMD: CStructConvertible {
    typealias CStruct = VkPipelineCompilerControlCreateInfoAMD

    let compilerControlFlags: PipelineCompilerControlFlagsAMD

    init(cStruct: VkPipelineCompilerControlCreateInfoAMD) {
        self.compilerControlFlags = PipelineCompilerControlFlagsAMD(rawValue: cStruct.compilerControlFlags)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPipelineCompilerControlCreateInfoAMD>) throws -> R) rethrows -> R {
        var cStruct = VkPipelineCompilerControlCreateInfoAMD()
        cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_COMPILER_CONTROL_CREATE_INFO_AMD
        cStruct.pNext = nil
        cStruct.compilerControlFlags = self.compilerControlFlags.rawValue
        return try body(&cStruct)
    }
}

struct PhysicalDeviceCoherentMemoryFeaturesAMD: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceCoherentMemoryFeaturesAMD

    let deviceCoherentMemory: Bool

    init(cStruct: VkPhysicalDeviceCoherentMemoryFeaturesAMD) {
        self.deviceCoherentMemory = cStruct.deviceCoherentMemory == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceCoherentMemoryFeaturesAMD>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceCoherentMemoryFeaturesAMD()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_COHERENT_MEMORY_FEATURES_AMD
        cStruct.pNext = nil
        cStruct.deviceCoherentMemory = VkBool32(self.deviceCoherentMemory ? VK_TRUE : VK_FALSE)
        return try body(&cStruct)
    }
}

struct PhysicalDeviceToolPropertiesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceToolPropertiesEXT

    let name: String
    let version: String
    let purposes: ToolPurposeFlagsEXT
    let description: String
    let layer: String

    init(cStruct: VkPhysicalDeviceToolPropertiesEXT) {
        self.name = String(unsafeBytesOf: cStruct.name)
        self.version = String(unsafeBytesOf: cStruct.version)
        self.purposes = ToolPurposeFlagsEXT(rawValue: cStruct.purposes)
        self.description = String(unsafeBytesOf: cStruct.description)
        self.layer = String(unsafeBytesOf: cStruct.layer)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceToolPropertiesEXT>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceToolPropertiesEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TOOL_PROPERTIES_EXT
        cStruct.pNext = nil
        cStruct.name = self.name.unsafeBytesCopy()
        cStruct.version = self.version.unsafeBytesCopy()
        cStruct.purposes = self.purposes.rawValue
        cStruct.description = self.description.unsafeBytesCopy()
        cStruct.layer = self.layer.unsafeBytesCopy()
        return try body(&cStruct)
    }
}

struct RenderPassTransformBeginInfoQCOM: CStructConvertible {
    typealias CStruct = VkRenderPassTransformBeginInfoQCOM

    let transform: SurfaceTransformFlagsKHR

    init(cStruct: VkRenderPassTransformBeginInfoQCOM) {
        self.transform = SurfaceTransformFlagsKHR(rawValue: cStruct.transform.rawValue)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkRenderPassTransformBeginInfoQCOM>) throws -> R) rethrows -> R {
        var cStruct = VkRenderPassTransformBeginInfoQCOM()
        cStruct.sType = VK_STRUCTURE_TYPE_RENDER_PASS_TRANSFORM_BEGIN_INFO_QCOM
        cStruct.pNext = nil
        cStruct.transform = VkSurfaceTransformFlagBitsKHR(rawValue: self.transform.rawValue)
        return try body(&cStruct)
    }
}

struct CommandBufferInheritanceRenderPassTransformInfoQCOM: CStructConvertible {
    typealias CStruct = VkCommandBufferInheritanceRenderPassTransformInfoQCOM

    let transform: SurfaceTransformFlagsKHR
    let renderArea: Rect2D

    init(cStruct: VkCommandBufferInheritanceRenderPassTransformInfoQCOM) {
        self.transform = SurfaceTransformFlagsKHR(rawValue: cStruct.transform.rawValue)
        self.renderArea = Rect2D(cStruct: cStruct.renderArea)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkCommandBufferInheritanceRenderPassTransformInfoQCOM>) throws -> R) rethrows -> R {
        try self.renderArea.withCStruct { ptr_renderArea in
            var cStruct = VkCommandBufferInheritanceRenderPassTransformInfoQCOM()
            cStruct.sType = VK_STRUCTURE_TYPE_COMMAND_BUFFER_INHERITANCE_RENDER_PASS_TRANSFORM_INFO_QCOM
            cStruct.pNext = nil
            cStruct.transform = VkSurfaceTransformFlagBitsKHR(rawValue: self.transform.rawValue)
            cStruct.renderArea = ptr_renderArea.pointee
            return try body(&cStruct)
        }
    }
}

struct PhysicalDeviceDiagnosticsConfigFeaturesNV: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceDiagnosticsConfigFeaturesNV

    let diagnosticsConfig: Bool

    init(cStruct: VkPhysicalDeviceDiagnosticsConfigFeaturesNV) {
        self.diagnosticsConfig = cStruct.diagnosticsConfig == VK_TRUE
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceDiagnosticsConfigFeaturesNV>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceDiagnosticsConfigFeaturesNV()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DIAGNOSTICS_CONFIG_FEATURES_NV
        cStruct.pNext = nil
        cStruct.diagnosticsConfig = VkBool32(self.diagnosticsConfig ? VK_TRUE : VK_FALSE)
        return try body(&cStruct)
    }
}

struct DeviceDiagnosticsConfigCreateInfoNV: CStructConvertible {
    typealias CStruct = VkDeviceDiagnosticsConfigCreateInfoNV

    let flags: DeviceDiagnosticsConfigFlagsNV

    init(cStruct: VkDeviceDiagnosticsConfigCreateInfoNV) {
        self.flags = DeviceDiagnosticsConfigFlagsNV(rawValue: cStruct.flags)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkDeviceDiagnosticsConfigCreateInfoNV>) throws -> R) rethrows -> R {
        var cStruct = VkDeviceDiagnosticsConfigCreateInfoNV()
        cStruct.sType = VK_STRUCTURE_TYPE_DEVICE_DIAGNOSTICS_CONFIG_CREATE_INFO_NV
        cStruct.pNext = nil
        cStruct.flags = self.flags.rawValue
        return try body(&cStruct)
    }
}

