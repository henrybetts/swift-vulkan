import CVulkan

class Instance {
    let handle: VkInstance!

    init(handle: VkInstance!) {
        self.handle = handle
    }

    func createInstance(pCreateInfo: InstanceCreateInfo, pInstance: UnsafeMutablePointer<VkInstance?>) throws -> Void {
        try pCreateInfo.withCStruct { ptr_pCreateInfo in
            try checkResult(
                vkCreateInstance(ptr_pCreateInfo, nil, pInstance)
            )
        }
    }

    func destroyInstance(instance: Instance?) -> Void {
        vkDestroyInstance(instance?.handle, nil)
    }

    func enumeratePhysicalDevices(instance: Instance, pPhysicalDeviceCount: UnsafeMutablePointer<UInt32>, pPhysicalDevices: UnsafeMutablePointer<VkPhysicalDevice?>) throws -> Void {
        try checkResult(
            vkEnumeratePhysicalDevices(instance.handle, pPhysicalDeviceCount, pPhysicalDevices)
        )
    }

    func getInstanceProcAddr(instance: Instance?, pName: String) -> PFN_vkVoidFunction {
        pName.withCString { cString_pName in
            vkGetInstanceProcAddr(instance?.handle, cString_pName)
        }
    }

    func enumerateInstanceVersion(pApiVersion: UnsafeMutablePointer<UInt32>) throws -> Void {
        try checkResult(
            vkEnumerateInstanceVersion(pApiVersion)
        )
    }

    func enumerateInstanceLayerProperties(pPropertyCount: UnsafeMutablePointer<UInt32>, pProperties: UnsafeMutablePointer<VkLayerProperties>) throws -> Void {
        try checkResult(
            vkEnumerateInstanceLayerProperties(pPropertyCount, pProperties)
        )
    }

    func enumerateInstanceExtensionProperties(pLayerName: String?, pPropertyCount: UnsafeMutablePointer<UInt32>, pProperties: UnsafeMutablePointer<VkExtensionProperties>) throws -> Void {
        try pLayerName.withOptionalCString { cString_pLayerName in
            try checkResult(
                vkEnumerateInstanceExtensionProperties(cString_pLayerName, pPropertyCount, pProperties)
            )
        }
    }

    func createDisplayPlaneSurfaceKHR(instance: Instance, pCreateInfo: DisplaySurfaceCreateInfoKHR, pSurface: UnsafeMutablePointer<VkSurfaceKHR?>) throws -> Void {
        try pCreateInfo.withCStruct { ptr_pCreateInfo in
            try checkResult(
                vkCreateDisplayPlaneSurfaceKHR(instance.handle, ptr_pCreateInfo, nil, pSurface)
            )
        }
    }

    func createDebugReportCallbackEXT(instance: Instance, pCreateInfo: DebugReportCallbackCreateInfoEXT, pCallback: UnsafeMutablePointer<VkDebugReportCallbackEXT?>) throws -> Void {
        try pCreateInfo.withCStruct { ptr_pCreateInfo in
            try checkResult(
                vkCreateDebugReportCallbackEXT(instance.handle, ptr_pCreateInfo, nil, pCallback)
            )
        }
    }

    func debugReportMessageEXT(instance: Instance, flags: DebugReportFlagsEXT, objectType: DebugReportObjectTypeEXT, object: UInt64, location: Int, messageCode: Int32, pLayerPrefix: String, pMessage: String) -> Void {
        pLayerPrefix.withCString { cString_pLayerPrefix in
            pMessage.withCString { cString_pMessage in
                vkDebugReportMessageEXT(instance.handle, flags.rawValue, VkDebugReportObjectTypeEXT(rawValue: objectType.rawValue), object, location, messageCode, cString_pLayerPrefix, cString_pMessage)
            }
        }
    }

    func enumeratePhysicalDeviceGroups(instance: Instance, pPhysicalDeviceGroupCount: UnsafeMutablePointer<UInt32>, pPhysicalDeviceGroupProperties: UnsafeMutablePointer<VkPhysicalDeviceGroupProperties>) throws -> Void {
        try checkResult(
            vkEnumeratePhysicalDeviceGroups(instance.handle, pPhysicalDeviceGroupCount, pPhysicalDeviceGroupProperties)
        )
    }

    func createDebugUtilsMessengerEXT(instance: Instance, pCreateInfo: DebugUtilsMessengerCreateInfoEXT, pMessenger: UnsafeMutablePointer<VkDebugUtilsMessengerEXT?>) throws -> Void {
        try pCreateInfo.withCStruct { ptr_pCreateInfo in
            try checkResult(
                vkCreateDebugUtilsMessengerEXT(instance.handle, ptr_pCreateInfo, nil, pMessenger)
            )
        }
    }

    func submitDebugUtilsMessageEXT(instance: Instance, messageSeverity: DebugUtilsMessageSeverityFlagsEXT, messageTypes: DebugUtilsMessageTypeFlagsEXT, pCallbackData: DebugUtilsMessengerCallbackDataEXT) -> Void {
        pCallbackData.withCStruct { ptr_pCallbackData in
            vkSubmitDebugUtilsMessageEXT(instance.handle, VkDebugUtilsMessageSeverityFlagBitsEXT(rawValue: messageSeverity.rawValue), messageTypes.rawValue, ptr_pCallbackData)
        }
    }

    func createHeadlessSurfaceEXT(instance: Instance, pCreateInfo: HeadlessSurfaceCreateInfoEXT, pSurface: UnsafeMutablePointer<VkSurfaceKHR?>) throws -> Void {
        try pCreateInfo.withCStruct { ptr_pCreateInfo in
            try checkResult(
                vkCreateHeadlessSurfaceEXT(instance.handle, ptr_pCreateInfo, nil, pSurface)
            )
        }
    }
}

class PhysicalDevice {
    let handle: VkPhysicalDevice!
    let instance: Instance

    init(handle: VkPhysicalDevice!, instance: Instance) {
        self.handle = handle
        self.instance = instance
    }

    func getPhysicalDeviceProperties(physicalDevice: PhysicalDevice, pProperties: UnsafeMutablePointer<VkPhysicalDeviceProperties>) -> Void {
        vkGetPhysicalDeviceProperties(physicalDevice.handle, pProperties)
    }

    func getPhysicalDeviceQueueFamilyProperties(physicalDevice: PhysicalDevice, pQueueFamilyPropertyCount: UnsafeMutablePointer<UInt32>, pQueueFamilyProperties: UnsafeMutablePointer<VkQueueFamilyProperties>) -> Void {
        vkGetPhysicalDeviceQueueFamilyProperties(physicalDevice.handle, pQueueFamilyPropertyCount, pQueueFamilyProperties)
    }

    func getPhysicalDeviceMemoryProperties(physicalDevice: PhysicalDevice, pMemoryProperties: UnsafeMutablePointer<VkPhysicalDeviceMemoryProperties>) -> Void {
        vkGetPhysicalDeviceMemoryProperties(physicalDevice.handle, pMemoryProperties)
    }

    func getPhysicalDeviceFeatures(physicalDevice: PhysicalDevice, pFeatures: UnsafeMutablePointer<VkPhysicalDeviceFeatures>) -> Void {
        vkGetPhysicalDeviceFeatures(physicalDevice.handle, pFeatures)
    }

    func getPhysicalDeviceFormatProperties(physicalDevice: PhysicalDevice, format: Format, pFormatProperties: UnsafeMutablePointer<VkFormatProperties>) -> Void {
        vkGetPhysicalDeviceFormatProperties(physicalDevice.handle, VkFormat(rawValue: format.rawValue), pFormatProperties)
    }

    func getPhysicalDeviceImageFormatProperties(physicalDevice: PhysicalDevice, format: Format, type: ImageType, tiling: ImageTiling, usage: ImageUsageFlags, flags: ImageCreateFlags, pImageFormatProperties: UnsafeMutablePointer<VkImageFormatProperties>) throws -> Void {
        try checkResult(
            vkGetPhysicalDeviceImageFormatProperties(physicalDevice.handle, VkFormat(rawValue: format.rawValue), VkImageType(rawValue: type.rawValue), VkImageTiling(rawValue: tiling.rawValue), usage.rawValue, flags.rawValue, pImageFormatProperties)
        )
    }

    func createDevice(physicalDevice: PhysicalDevice, pCreateInfo: DeviceCreateInfo, pDevice: UnsafeMutablePointer<VkDevice?>) throws -> Void {
        try pCreateInfo.withCStruct { ptr_pCreateInfo in
            try checkResult(
                vkCreateDevice(physicalDevice.handle, ptr_pCreateInfo, nil, pDevice)
            )
        }
    }

    func enumerateDeviceLayerProperties(physicalDevice: PhysicalDevice, pPropertyCount: UnsafeMutablePointer<UInt32>, pProperties: UnsafeMutablePointer<VkLayerProperties>) throws -> Void {
        try checkResult(
            vkEnumerateDeviceLayerProperties(physicalDevice.handle, pPropertyCount, pProperties)
        )
    }

    func enumerateDeviceExtensionProperties(physicalDevice: PhysicalDevice, pLayerName: String?, pPropertyCount: UnsafeMutablePointer<UInt32>, pProperties: UnsafeMutablePointer<VkExtensionProperties>) throws -> Void {
        try pLayerName.withOptionalCString { cString_pLayerName in
            try checkResult(
                vkEnumerateDeviceExtensionProperties(physicalDevice.handle, cString_pLayerName, pPropertyCount, pProperties)
            )
        }
    }

    func getPhysicalDeviceSparseImageFormatProperties(physicalDevice: PhysicalDevice, format: Format, type: ImageType, samples: SampleCountFlags, usage: ImageUsageFlags, tiling: ImageTiling, pPropertyCount: UnsafeMutablePointer<UInt32>, pProperties: UnsafeMutablePointer<VkSparseImageFormatProperties>) -> Void {
        vkGetPhysicalDeviceSparseImageFormatProperties(physicalDevice.handle, VkFormat(rawValue: format.rawValue), VkImageType(rawValue: type.rawValue), VkSampleCountFlagBits(rawValue: samples.rawValue), usage.rawValue, VkImageTiling(rawValue: tiling.rawValue), pPropertyCount, pProperties)
    }

    func getPhysicalDeviceDisplayPropertiesKHR(physicalDevice: PhysicalDevice, pPropertyCount: UnsafeMutablePointer<UInt32>, pProperties: UnsafeMutablePointer<VkDisplayPropertiesKHR>) throws -> Void {
        try checkResult(
            vkGetPhysicalDeviceDisplayPropertiesKHR(physicalDevice.handle, pPropertyCount, pProperties)
        )
    }

    func getPhysicalDeviceDisplayPlanePropertiesKHR(physicalDevice: PhysicalDevice, pPropertyCount: UnsafeMutablePointer<UInt32>, pProperties: UnsafeMutablePointer<VkDisplayPlanePropertiesKHR>) throws -> Void {
        try checkResult(
            vkGetPhysicalDeviceDisplayPlanePropertiesKHR(physicalDevice.handle, pPropertyCount, pProperties)
        )
    }

    func getDisplayPlaneSupportedDisplaysKHR(physicalDevice: PhysicalDevice, planeIndex: UInt32, pDisplayCount: UnsafeMutablePointer<UInt32>, pDisplays: UnsafeMutablePointer<VkDisplayKHR?>) throws -> Void {
        try checkResult(
            vkGetDisplayPlaneSupportedDisplaysKHR(physicalDevice.handle, planeIndex, pDisplayCount, pDisplays)
        )
    }

    func getPhysicalDeviceSurfaceSupportKHR(physicalDevice: PhysicalDevice, queueFamilyIndex: UInt32, surface: SurfaceKHR, pSupported: UnsafeMutablePointer<VkBool32>) throws -> Void {
        try checkResult(
            vkGetPhysicalDeviceSurfaceSupportKHR(physicalDevice.handle, queueFamilyIndex, surface.handle, pSupported)
        )
    }

    func getPhysicalDeviceSurfaceCapabilitiesKHR(physicalDevice: PhysicalDevice, surface: SurfaceKHR, pSurfaceCapabilities: UnsafeMutablePointer<VkSurfaceCapabilitiesKHR>) throws -> Void {
        try checkResult(
            vkGetPhysicalDeviceSurfaceCapabilitiesKHR(physicalDevice.handle, surface.handle, pSurfaceCapabilities)
        )
    }

    func getPhysicalDeviceSurfaceFormatsKHR(physicalDevice: PhysicalDevice, surface: SurfaceKHR, pSurfaceFormatCount: UnsafeMutablePointer<UInt32>, pSurfaceFormats: UnsafeMutablePointer<VkSurfaceFormatKHR>) throws -> Void {
        try checkResult(
            vkGetPhysicalDeviceSurfaceFormatsKHR(physicalDevice.handle, surface.handle, pSurfaceFormatCount, pSurfaceFormats)
        )
    }

    func getPhysicalDeviceSurfacePresentModesKHR(physicalDevice: PhysicalDevice, surface: SurfaceKHR, pPresentModeCount: UnsafeMutablePointer<UInt32>, pPresentModes: UnsafeMutablePointer<VkPresentModeKHR>) throws -> Void {
        try checkResult(
            vkGetPhysicalDeviceSurfacePresentModesKHR(physicalDevice.handle, surface.handle, pPresentModeCount, pPresentModes)
        )
    }

    func getPhysicalDeviceExternalImageFormatPropertiesNV(physicalDevice: PhysicalDevice, format: Format, type: ImageType, tiling: ImageTiling, usage: ImageUsageFlags, flags: ImageCreateFlags, externalHandleType: ExternalMemoryHandleTypeFlagsNV, pExternalImageFormatProperties: UnsafeMutablePointer<VkExternalImageFormatPropertiesNV>) throws -> Void {
        try checkResult(
            vkGetPhysicalDeviceExternalImageFormatPropertiesNV(physicalDevice.handle, VkFormat(rawValue: format.rawValue), VkImageType(rawValue: type.rawValue), VkImageTiling(rawValue: tiling.rawValue), usage.rawValue, flags.rawValue, externalHandleType.rawValue, pExternalImageFormatProperties)
        )
    }

    func getPhysicalDeviceFeatures2(physicalDevice: PhysicalDevice, pFeatures: UnsafeMutablePointer<VkPhysicalDeviceFeatures2>) -> Void {
        vkGetPhysicalDeviceFeatures2(physicalDevice.handle, pFeatures)
    }

    func getPhysicalDeviceProperties2(physicalDevice: PhysicalDevice, pProperties: UnsafeMutablePointer<VkPhysicalDeviceProperties2>) -> Void {
        vkGetPhysicalDeviceProperties2(physicalDevice.handle, pProperties)
    }

    func getPhysicalDeviceFormatProperties2(physicalDevice: PhysicalDevice, format: Format, pFormatProperties: UnsafeMutablePointer<VkFormatProperties2>) -> Void {
        vkGetPhysicalDeviceFormatProperties2(physicalDevice.handle, VkFormat(rawValue: format.rawValue), pFormatProperties)
    }

    func getPhysicalDeviceImageFormatProperties2(physicalDevice: PhysicalDevice, pImageFormatInfo: PhysicalDeviceImageFormatInfo2, pImageFormatProperties: UnsafeMutablePointer<VkImageFormatProperties2>) throws -> Void {
        try pImageFormatInfo.withCStruct { ptr_pImageFormatInfo in
            try checkResult(
                vkGetPhysicalDeviceImageFormatProperties2(physicalDevice.handle, ptr_pImageFormatInfo, pImageFormatProperties)
            )
        }
    }

    func getPhysicalDeviceQueueFamilyProperties2(physicalDevice: PhysicalDevice, pQueueFamilyPropertyCount: UnsafeMutablePointer<UInt32>, pQueueFamilyProperties: UnsafeMutablePointer<VkQueueFamilyProperties2>) -> Void {
        vkGetPhysicalDeviceQueueFamilyProperties2(physicalDevice.handle, pQueueFamilyPropertyCount, pQueueFamilyProperties)
    }

    func getPhysicalDeviceMemoryProperties2(physicalDevice: PhysicalDevice, pMemoryProperties: UnsafeMutablePointer<VkPhysicalDeviceMemoryProperties2>) -> Void {
        vkGetPhysicalDeviceMemoryProperties2(physicalDevice.handle, pMemoryProperties)
    }

    func getPhysicalDeviceSparseImageFormatProperties2(physicalDevice: PhysicalDevice, pFormatInfo: PhysicalDeviceSparseImageFormatInfo2, pPropertyCount: UnsafeMutablePointer<UInt32>, pProperties: UnsafeMutablePointer<VkSparseImageFormatProperties2>) -> Void {
        pFormatInfo.withCStruct { ptr_pFormatInfo in
            vkGetPhysicalDeviceSparseImageFormatProperties2(physicalDevice.handle, ptr_pFormatInfo, pPropertyCount, pProperties)
        }
    }

    func getPhysicalDeviceExternalBufferProperties(physicalDevice: PhysicalDevice, pExternalBufferInfo: PhysicalDeviceExternalBufferInfo, pExternalBufferProperties: UnsafeMutablePointer<VkExternalBufferProperties>) -> Void {
        pExternalBufferInfo.withCStruct { ptr_pExternalBufferInfo in
            vkGetPhysicalDeviceExternalBufferProperties(physicalDevice.handle, ptr_pExternalBufferInfo, pExternalBufferProperties)
        }
    }

    func getPhysicalDeviceExternalSemaphoreProperties(physicalDevice: PhysicalDevice, pExternalSemaphoreInfo: PhysicalDeviceExternalSemaphoreInfo, pExternalSemaphoreProperties: UnsafeMutablePointer<VkExternalSemaphoreProperties>) -> Void {
        pExternalSemaphoreInfo.withCStruct { ptr_pExternalSemaphoreInfo in
            vkGetPhysicalDeviceExternalSemaphoreProperties(physicalDevice.handle, ptr_pExternalSemaphoreInfo, pExternalSemaphoreProperties)
        }
    }

    func getPhysicalDeviceExternalFenceProperties(physicalDevice: PhysicalDevice, pExternalFenceInfo: PhysicalDeviceExternalFenceInfo, pExternalFenceProperties: UnsafeMutablePointer<VkExternalFenceProperties>) -> Void {
        pExternalFenceInfo.withCStruct { ptr_pExternalFenceInfo in
            vkGetPhysicalDeviceExternalFenceProperties(physicalDevice.handle, ptr_pExternalFenceInfo, pExternalFenceProperties)
        }
    }

    func getPhysicalDeviceSurfaceCapabilities2EXT(physicalDevice: PhysicalDevice, surface: SurfaceKHR, pSurfaceCapabilities: UnsafeMutablePointer<VkSurfaceCapabilities2EXT>) throws -> Void {
        try checkResult(
            vkGetPhysicalDeviceSurfaceCapabilities2EXT(physicalDevice.handle, surface.handle, pSurfaceCapabilities)
        )
    }

    func getPhysicalDevicePresentRectanglesKHR(physicalDevice: PhysicalDevice, surface: SurfaceKHR, pRectCount: UnsafeMutablePointer<UInt32>, pRects: UnsafeMutablePointer<VkRect2D>) throws -> Void {
        try checkResult(
            vkGetPhysicalDevicePresentRectanglesKHR(physicalDevice.handle, surface.handle, pRectCount, pRects)
        )
    }

    func getPhysicalDeviceMultisamplePropertiesEXT(physicalDevice: PhysicalDevice, samples: SampleCountFlags, pMultisampleProperties: UnsafeMutablePointer<VkMultisamplePropertiesEXT>) -> Void {
        vkGetPhysicalDeviceMultisamplePropertiesEXT(physicalDevice.handle, VkSampleCountFlagBits(rawValue: samples.rawValue), pMultisampleProperties)
    }

    func getPhysicalDeviceSurfaceCapabilities2KHR(physicalDevice: PhysicalDevice, pSurfaceInfo: PhysicalDeviceSurfaceInfo2KHR, pSurfaceCapabilities: UnsafeMutablePointer<VkSurfaceCapabilities2KHR>) throws -> Void {
        try pSurfaceInfo.withCStruct { ptr_pSurfaceInfo in
            try checkResult(
                vkGetPhysicalDeviceSurfaceCapabilities2KHR(physicalDevice.handle, ptr_pSurfaceInfo, pSurfaceCapabilities)
            )
        }
    }

    func getPhysicalDeviceSurfaceFormats2KHR(physicalDevice: PhysicalDevice, pSurfaceInfo: PhysicalDeviceSurfaceInfo2KHR, pSurfaceFormatCount: UnsafeMutablePointer<UInt32>, pSurfaceFormats: UnsafeMutablePointer<VkSurfaceFormat2KHR>) throws -> Void {
        try pSurfaceInfo.withCStruct { ptr_pSurfaceInfo in
            try checkResult(
                vkGetPhysicalDeviceSurfaceFormats2KHR(physicalDevice.handle, ptr_pSurfaceInfo, pSurfaceFormatCount, pSurfaceFormats)
            )
        }
    }

    func getPhysicalDeviceDisplayProperties2KHR(physicalDevice: PhysicalDevice, pPropertyCount: UnsafeMutablePointer<UInt32>, pProperties: UnsafeMutablePointer<VkDisplayProperties2KHR>) throws -> Void {
        try checkResult(
            vkGetPhysicalDeviceDisplayProperties2KHR(physicalDevice.handle, pPropertyCount, pProperties)
        )
    }

    func getPhysicalDeviceDisplayPlaneProperties2KHR(physicalDevice: PhysicalDevice, pPropertyCount: UnsafeMutablePointer<UInt32>, pProperties: UnsafeMutablePointer<VkDisplayPlaneProperties2KHR>) throws -> Void {
        try checkResult(
            vkGetPhysicalDeviceDisplayPlaneProperties2KHR(physicalDevice.handle, pPropertyCount, pProperties)
        )
    }

    func getDisplayPlaneCapabilities2KHR(physicalDevice: PhysicalDevice, pDisplayPlaneInfo: DisplayPlaneInfo2KHR, pCapabilities: UnsafeMutablePointer<VkDisplayPlaneCapabilities2KHR>) throws -> Void {
        try pDisplayPlaneInfo.withCStruct { ptr_pDisplayPlaneInfo in
            try checkResult(
                vkGetDisplayPlaneCapabilities2KHR(physicalDevice.handle, ptr_pDisplayPlaneInfo, pCapabilities)
            )
        }
    }

    func getPhysicalDeviceCalibrateableTimeDomainsEXT(physicalDevice: PhysicalDevice, pTimeDomainCount: UnsafeMutablePointer<UInt32>, pTimeDomains: UnsafeMutablePointer<VkTimeDomainEXT>) throws -> Void {
        try checkResult(
            vkGetPhysicalDeviceCalibrateableTimeDomainsEXT(physicalDevice.handle, pTimeDomainCount, pTimeDomains)
        )
    }

    func getPhysicalDeviceCooperativeMatrixPropertiesNV(physicalDevice: PhysicalDevice, pPropertyCount: UnsafeMutablePointer<UInt32>, pProperties: UnsafeMutablePointer<VkCooperativeMatrixPropertiesNV>) throws -> Void {
        try checkResult(
            vkGetPhysicalDeviceCooperativeMatrixPropertiesNV(physicalDevice.handle, pPropertyCount, pProperties)
        )
    }

    func enumeratePhysicalDeviceQueueFamilyPerformanceQueryCountersKHR(physicalDevice: PhysicalDevice, queueFamilyIndex: UInt32, pCounterCount: UnsafeMutablePointer<UInt32>, pCounters: UnsafeMutablePointer<VkPerformanceCounterKHR>, pCounterDescriptions: UnsafeMutablePointer<VkPerformanceCounterDescriptionKHR>) throws -> Void {
        try checkResult(
            vkEnumeratePhysicalDeviceQueueFamilyPerformanceQueryCountersKHR(physicalDevice.handle, queueFamilyIndex, pCounterCount, pCounters, pCounterDescriptions)
        )
    }

    func getPhysicalDeviceQueueFamilyPerformanceQueryPassesKHR(physicalDevice: PhysicalDevice, pPerformanceQueryCreateInfo: QueryPoolPerformanceCreateInfoKHR, pNumPasses: UnsafeMutablePointer<UInt32>) -> Void {
        pPerformanceQueryCreateInfo.withCStruct { ptr_pPerformanceQueryCreateInfo in
            vkGetPhysicalDeviceQueueFamilyPerformanceQueryPassesKHR(physicalDevice.handle, ptr_pPerformanceQueryCreateInfo, pNumPasses)
        }
    }

    func getPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNV(physicalDevice: PhysicalDevice, pCombinationCount: UnsafeMutablePointer<UInt32>, pCombinations: UnsafeMutablePointer<VkFramebufferMixedSamplesCombinationNV>) throws -> Void {
        try checkResult(
            vkGetPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNV(physicalDevice.handle, pCombinationCount, pCombinations)
        )
    }

    func getPhysicalDeviceToolPropertiesEXT(physicalDevice: PhysicalDevice, pToolCount: UnsafeMutablePointer<UInt32>, pToolProperties: UnsafeMutablePointer<VkPhysicalDeviceToolPropertiesEXT>) throws -> Void {
        try checkResult(
            vkGetPhysicalDeviceToolPropertiesEXT(physicalDevice.handle, pToolCount, pToolProperties)
        )
    }
}

class Device {
    let handle: VkDevice!
    let physicalDevice: PhysicalDevice

    init(handle: VkDevice!, physicalDevice: PhysicalDevice) {
        self.handle = handle
        self.physicalDevice = physicalDevice
    }

    func getDeviceProcAddr(device: Device, pName: String) -> PFN_vkVoidFunction {
        pName.withCString { cString_pName in
            vkGetDeviceProcAddr(device.handle, cString_pName)
        }
    }

    func destroyDevice(device: Device?) -> Void {
        vkDestroyDevice(device?.handle, nil)
    }

    func getDeviceQueue(device: Device, queueFamilyIndex: UInt32, queueIndex: UInt32, pQueue: UnsafeMutablePointer<VkQueue?>) -> Void {
        vkGetDeviceQueue(device.handle, queueFamilyIndex, queueIndex, pQueue)
    }

    func deviceWaitIdle(device: Device) throws -> Void {
        try checkResult(
            vkDeviceWaitIdle(device.handle)
        )
    }

    func allocateMemory(device: Device, pAllocateInfo: MemoryAllocateInfo, pMemory: UnsafeMutablePointer<VkDeviceMemory?>) throws -> Void {
        try pAllocateInfo.withCStruct { ptr_pAllocateInfo in
            try checkResult(
                vkAllocateMemory(device.handle, ptr_pAllocateInfo, nil, pMemory)
            )
        }
    }

    func freeMemory(device: Device, memory: DeviceMemory?) -> Void {
        vkFreeMemory(device.handle, memory?.handle, nil)
    }

    func flushMappedMemoryRanges(device: Device, pMemoryRanges: Array<MappedMemoryRange>) throws -> Void {
        try pMemoryRanges.withCStructBufferPointer { ptr_pMemoryRanges in
            try checkResult(
                vkFlushMappedMemoryRanges(device.handle, UInt32(ptr_pMemoryRanges.count), ptr_pMemoryRanges.baseAddress)
            )
        }
    }

    func invalidateMappedMemoryRanges(device: Device, pMemoryRanges: Array<MappedMemoryRange>) throws -> Void {
        try pMemoryRanges.withCStructBufferPointer { ptr_pMemoryRanges in
            try checkResult(
                vkInvalidateMappedMemoryRanges(device.handle, UInt32(ptr_pMemoryRanges.count), ptr_pMemoryRanges.baseAddress)
            )
        }
    }

    func createFence(device: Device, pCreateInfo: FenceCreateInfo, pFence: UnsafeMutablePointer<VkFence?>) throws -> Void {
        try pCreateInfo.withCStruct { ptr_pCreateInfo in
            try checkResult(
                vkCreateFence(device.handle, ptr_pCreateInfo, nil, pFence)
            )
        }
    }

    func resetFences(device: Device, pFences: Array<Fence>) throws -> Void {
        try pFences.map{ $0.handle }.withUnsafeBufferPointer { ptr_pFences in
            try checkResult(
                vkResetFences(device.handle, UInt32(ptr_pFences.count), ptr_pFences.baseAddress)
            )
        }
    }

    func waitForFences(device: Device, pFences: Array<Fence>, waitAll: Bool, timeout: UInt64) throws -> Void {
        try pFences.map{ $0.handle }.withUnsafeBufferPointer { ptr_pFences in
            try checkResult(
                vkWaitForFences(device.handle, UInt32(ptr_pFences.count), ptr_pFences.baseAddress, VkBool32(waitAll ? VK_TRUE : VK_FALSE), timeout)
            )
        }
    }

    func createSemaphore(device: Device, pCreateInfo: SemaphoreCreateInfo, pSemaphore: UnsafeMutablePointer<VkSemaphore?>) throws -> Void {
        try pCreateInfo.withCStruct { ptr_pCreateInfo in
            try checkResult(
                vkCreateSemaphore(device.handle, ptr_pCreateInfo, nil, pSemaphore)
            )
        }
    }

    func createEvent(device: Device, pCreateInfo: EventCreateInfo, pEvent: UnsafeMutablePointer<VkEvent?>) throws -> Void {
        try pCreateInfo.withCStruct { ptr_pCreateInfo in
            try checkResult(
                vkCreateEvent(device.handle, ptr_pCreateInfo, nil, pEvent)
            )
        }
    }

    func createQueryPool(device: Device, pCreateInfo: QueryPoolCreateInfo, pQueryPool: UnsafeMutablePointer<VkQueryPool?>) throws -> Void {
        try pCreateInfo.withCStruct { ptr_pCreateInfo in
            try checkResult(
                vkCreateQueryPool(device.handle, ptr_pCreateInfo, nil, pQueryPool)
            )
        }
    }

    func createBuffer(device: Device, pCreateInfo: BufferCreateInfo, pBuffer: UnsafeMutablePointer<VkBuffer?>) throws -> Void {
        try pCreateInfo.withCStruct { ptr_pCreateInfo in
            try checkResult(
                vkCreateBuffer(device.handle, ptr_pCreateInfo, nil, pBuffer)
            )
        }
    }

    func createBufferView(device: Device, pCreateInfo: BufferViewCreateInfo, pView: UnsafeMutablePointer<VkBufferView?>) throws -> Void {
        try pCreateInfo.withCStruct { ptr_pCreateInfo in
            try checkResult(
                vkCreateBufferView(device.handle, ptr_pCreateInfo, nil, pView)
            )
        }
    }

    func createImage(device: Device, pCreateInfo: ImageCreateInfo, pImage: UnsafeMutablePointer<VkImage?>) throws -> Void {
        try pCreateInfo.withCStruct { ptr_pCreateInfo in
            try checkResult(
                vkCreateImage(device.handle, ptr_pCreateInfo, nil, pImage)
            )
        }
    }

    func createImageView(device: Device, pCreateInfo: ImageViewCreateInfo, pView: UnsafeMutablePointer<VkImageView?>) throws -> Void {
        try pCreateInfo.withCStruct { ptr_pCreateInfo in
            try checkResult(
                vkCreateImageView(device.handle, ptr_pCreateInfo, nil, pView)
            )
        }
    }

    func createShaderModule(device: Device, pCreateInfo: ShaderModuleCreateInfo, pShaderModule: UnsafeMutablePointer<VkShaderModule?>) throws -> Void {
        try pCreateInfo.withCStruct { ptr_pCreateInfo in
            try checkResult(
                vkCreateShaderModule(device.handle, ptr_pCreateInfo, nil, pShaderModule)
            )
        }
    }

    func createPipelineCache(device: Device, pCreateInfo: PipelineCacheCreateInfo, pPipelineCache: UnsafeMutablePointer<VkPipelineCache?>) throws -> Void {
        try pCreateInfo.withCStruct { ptr_pCreateInfo in
            try checkResult(
                vkCreatePipelineCache(device.handle, ptr_pCreateInfo, nil, pPipelineCache)
            )
        }
    }

    func createGraphicsPipelines(device: Device, pipelineCache: PipelineCache?, pCreateInfos: Array<GraphicsPipelineCreateInfo>, pPipelines: UnsafeMutablePointer<VkPipeline?>) throws -> Void {
        try pCreateInfos.withCStructBufferPointer { ptr_pCreateInfos in
            try checkResult(
                vkCreateGraphicsPipelines(device.handle, pipelineCache?.handle, UInt32(ptr_pCreateInfos.count), ptr_pCreateInfos.baseAddress, nil, pPipelines)
            )
        }
    }

    func createComputePipelines(device: Device, pipelineCache: PipelineCache?, pCreateInfos: Array<ComputePipelineCreateInfo>, pPipelines: UnsafeMutablePointer<VkPipeline?>) throws -> Void {
        try pCreateInfos.withCStructBufferPointer { ptr_pCreateInfos in
            try checkResult(
                vkCreateComputePipelines(device.handle, pipelineCache?.handle, UInt32(ptr_pCreateInfos.count), ptr_pCreateInfos.baseAddress, nil, pPipelines)
            )
        }
    }

    func createPipelineLayout(device: Device, pCreateInfo: PipelineLayoutCreateInfo, pPipelineLayout: UnsafeMutablePointer<VkPipelineLayout?>) throws -> Void {
        try pCreateInfo.withCStruct { ptr_pCreateInfo in
            try checkResult(
                vkCreatePipelineLayout(device.handle, ptr_pCreateInfo, nil, pPipelineLayout)
            )
        }
    }

    func createSampler(device: Device, pCreateInfo: SamplerCreateInfo, pSampler: UnsafeMutablePointer<VkSampler?>) throws -> Void {
        try pCreateInfo.withCStruct { ptr_pCreateInfo in
            try checkResult(
                vkCreateSampler(device.handle, ptr_pCreateInfo, nil, pSampler)
            )
        }
    }

    func createDescriptorSetLayout(device: Device, pCreateInfo: DescriptorSetLayoutCreateInfo, pSetLayout: UnsafeMutablePointer<VkDescriptorSetLayout?>) throws -> Void {
        try pCreateInfo.withCStruct { ptr_pCreateInfo in
            try checkResult(
                vkCreateDescriptorSetLayout(device.handle, ptr_pCreateInfo, nil, pSetLayout)
            )
        }
    }

    func createDescriptorPool(device: Device, pCreateInfo: DescriptorPoolCreateInfo, pDescriptorPool: UnsafeMutablePointer<VkDescriptorPool?>) throws -> Void {
        try pCreateInfo.withCStruct { ptr_pCreateInfo in
            try checkResult(
                vkCreateDescriptorPool(device.handle, ptr_pCreateInfo, nil, pDescriptorPool)
            )
        }
    }

    func allocateDescriptorSets(device: Device, pAllocateInfo: DescriptorSetAllocateInfo, pDescriptorSets: UnsafeMutablePointer<VkDescriptorSet?>) throws -> Void {
        try pAllocateInfo.withCStruct { ptr_pAllocateInfo in
            try checkResult(
                vkAllocateDescriptorSets(device.handle, ptr_pAllocateInfo, pDescriptorSets)
            )
        }
    }

    func updateDescriptorSets(device: Device, pDescriptorWrites: Array<WriteDescriptorSet>, pDescriptorCopies: Array<CopyDescriptorSet>) -> Void {
        pDescriptorWrites.withCStructBufferPointer { ptr_pDescriptorWrites in
            pDescriptorCopies.withCStructBufferPointer { ptr_pDescriptorCopies in
                vkUpdateDescriptorSets(device.handle, UInt32(ptr_pDescriptorWrites.count), ptr_pDescriptorWrites.baseAddress, UInt32(ptr_pDescriptorCopies.count), ptr_pDescriptorCopies.baseAddress)
            }
        }
    }

    func createFramebuffer(device: Device, pCreateInfo: FramebufferCreateInfo, pFramebuffer: UnsafeMutablePointer<VkFramebuffer?>) throws -> Void {
        try pCreateInfo.withCStruct { ptr_pCreateInfo in
            try checkResult(
                vkCreateFramebuffer(device.handle, ptr_pCreateInfo, nil, pFramebuffer)
            )
        }
    }

    func createRenderPass(device: Device, pCreateInfo: RenderPassCreateInfo, pRenderPass: UnsafeMutablePointer<VkRenderPass?>) throws -> Void {
        try pCreateInfo.withCStruct { ptr_pCreateInfo in
            try checkResult(
                vkCreateRenderPass(device.handle, ptr_pCreateInfo, nil, pRenderPass)
            )
        }
    }

    func createCommandPool(device: Device, pCreateInfo: CommandPoolCreateInfo, pCommandPool: UnsafeMutablePointer<VkCommandPool?>) throws -> Void {
        try pCreateInfo.withCStruct { ptr_pCreateInfo in
            try checkResult(
                vkCreateCommandPool(device.handle, ptr_pCreateInfo, nil, pCommandPool)
            )
        }
    }

    func allocateCommandBuffers(device: Device, pAllocateInfo: CommandBufferAllocateInfo, pCommandBuffers: UnsafeMutablePointer<VkCommandBuffer?>) throws -> Void {
        try pAllocateInfo.withCStruct { ptr_pAllocateInfo in
            try checkResult(
                vkAllocateCommandBuffers(device.handle, ptr_pAllocateInfo, pCommandBuffers)
            )
        }
    }

    func createSharedSwapchainsKHR(device: Device, pCreateInfos: Array<SwapchainCreateInfoKHR>, pSwapchains: UnsafeMutablePointer<VkSwapchainKHR?>) throws -> Void {
        try pCreateInfos.withCStructBufferPointer { ptr_pCreateInfos in
            try checkResult(
                vkCreateSharedSwapchainsKHR(device.handle, UInt32(ptr_pCreateInfos.count), ptr_pCreateInfos.baseAddress, nil, pSwapchains)
            )
        }
    }

    func createSwapchainKHR(device: Device, pCreateInfo: SwapchainCreateInfoKHR, pSwapchain: UnsafeMutablePointer<VkSwapchainKHR?>) throws -> Void {
        try pCreateInfo.withCStruct { ptr_pCreateInfo in
            try checkResult(
                vkCreateSwapchainKHR(device.handle, ptr_pCreateInfo, nil, pSwapchain)
            )
        }
    }

    func destroySwapchainKHR(device: Device, swapchain: SwapchainKHR?) -> Void {
        vkDestroySwapchainKHR(device.handle, swapchain?.handle, nil)
    }

    func getSwapchainImagesKHR(device: Device, swapchain: SwapchainKHR, pSwapchainImageCount: UnsafeMutablePointer<UInt32>, pSwapchainImages: UnsafeMutablePointer<VkImage?>) throws -> Void {
        try checkResult(
            vkGetSwapchainImagesKHR(device.handle, swapchain.handle, pSwapchainImageCount, pSwapchainImages)
        )
    }

    func acquireNextImageKHR(device: Device, swapchain: SwapchainKHR, timeout: UInt64, semaphore: Semaphore?, fence: Fence?, pImageIndex: UnsafeMutablePointer<UInt32>) throws -> Void {
        try checkResult(
            vkAcquireNextImageKHR(device.handle, swapchain.handle, timeout, semaphore?.handle, fence?.handle, pImageIndex)
        )
    }

    func debugMarkerSetObjectNameEXT(device: Device, pNameInfo: DebugMarkerObjectNameInfoEXT) throws -> Void {
        try pNameInfo.withCStruct { ptr_pNameInfo in
            try checkResult(
                vkDebugMarkerSetObjectNameEXT(device.handle, ptr_pNameInfo)
            )
        }
    }

    func debugMarkerSetObjectTagEXT(device: Device, pTagInfo: DebugMarkerObjectTagInfoEXT) throws -> Void {
        try pTagInfo.withCStruct { ptr_pTagInfo in
            try checkResult(
                vkDebugMarkerSetObjectTagEXT(device.handle, ptr_pTagInfo)
            )
        }
    }

    func getGeneratedCommandsMemoryRequirementsNV(device: Device, pInfo: GeneratedCommandsMemoryRequirementsInfoNV, pMemoryRequirements: UnsafeMutablePointer<VkMemoryRequirements2>) -> Void {
        pInfo.withCStruct { ptr_pInfo in
            vkGetGeneratedCommandsMemoryRequirementsNV(device.handle, ptr_pInfo, pMemoryRequirements)
        }
    }

    func createIndirectCommandsLayoutNV(device: Device, pCreateInfo: IndirectCommandsLayoutCreateInfoNV, pIndirectCommandsLayout: UnsafeMutablePointer<VkIndirectCommandsLayoutNV?>) throws -> Void {
        try pCreateInfo.withCStruct { ptr_pCreateInfo in
            try checkResult(
                vkCreateIndirectCommandsLayoutNV(device.handle, ptr_pCreateInfo, nil, pIndirectCommandsLayout)
            )
        }
    }

    func getMemoryFdKHR(device: Device, pGetFdInfo: MemoryGetFdInfoKHR, pFd: UnsafeMutablePointer<Int32>) throws -> Void {
        try pGetFdInfo.withCStruct { ptr_pGetFdInfo in
            try checkResult(
                vkGetMemoryFdKHR(device.handle, ptr_pGetFdInfo, pFd)
            )
        }
    }

    func getMemoryFdPropertiesKHR(device: Device, handleType: ExternalMemoryHandleTypeFlags, fd: Int32, pMemoryFdProperties: UnsafeMutablePointer<VkMemoryFdPropertiesKHR>) throws -> Void {
        try checkResult(
            vkGetMemoryFdPropertiesKHR(device.handle, VkExternalMemoryHandleTypeFlagBits(rawValue: handleType.rawValue), fd, pMemoryFdProperties)
        )
    }

    func getSemaphoreFdKHR(device: Device, pGetFdInfo: SemaphoreGetFdInfoKHR, pFd: UnsafeMutablePointer<Int32>) throws -> Void {
        try pGetFdInfo.withCStruct { ptr_pGetFdInfo in
            try checkResult(
                vkGetSemaphoreFdKHR(device.handle, ptr_pGetFdInfo, pFd)
            )
        }
    }

    func importSemaphoreFdKHR(device: Device, pImportSemaphoreFdInfo: ImportSemaphoreFdInfoKHR) throws -> Void {
        try pImportSemaphoreFdInfo.withCStruct { ptr_pImportSemaphoreFdInfo in
            try checkResult(
                vkImportSemaphoreFdKHR(device.handle, ptr_pImportSemaphoreFdInfo)
            )
        }
    }

    func getFenceFdKHR(device: Device, pGetFdInfo: FenceGetFdInfoKHR, pFd: UnsafeMutablePointer<Int32>) throws -> Void {
        try pGetFdInfo.withCStruct { ptr_pGetFdInfo in
            try checkResult(
                vkGetFenceFdKHR(device.handle, ptr_pGetFdInfo, pFd)
            )
        }
    }

    func importFenceFdKHR(device: Device, pImportFenceFdInfo: ImportFenceFdInfoKHR) throws -> Void {
        try pImportFenceFdInfo.withCStruct { ptr_pImportFenceFdInfo in
            try checkResult(
                vkImportFenceFdKHR(device.handle, ptr_pImportFenceFdInfo)
            )
        }
    }

    func displayPowerControlEXT(device: Device, display: DisplayKHR, pDisplayPowerInfo: DisplayPowerInfoEXT) throws -> Void {
        try pDisplayPowerInfo.withCStruct { ptr_pDisplayPowerInfo in
            try checkResult(
                vkDisplayPowerControlEXT(device.handle, display.handle, ptr_pDisplayPowerInfo)
            )
        }
    }

    func registerDeviceEventEXT(device: Device, pDeviceEventInfo: DeviceEventInfoEXT, pFence: UnsafeMutablePointer<VkFence?>) throws -> Void {
        try pDeviceEventInfo.withCStruct { ptr_pDeviceEventInfo in
            try checkResult(
                vkRegisterDeviceEventEXT(device.handle, ptr_pDeviceEventInfo, nil, pFence)
            )
        }
    }

    func registerDisplayEventEXT(device: Device, display: DisplayKHR, pDisplayEventInfo: DisplayEventInfoEXT, pFence: UnsafeMutablePointer<VkFence?>) throws -> Void {
        try pDisplayEventInfo.withCStruct { ptr_pDisplayEventInfo in
            try checkResult(
                vkRegisterDisplayEventEXT(device.handle, display.handle, ptr_pDisplayEventInfo, nil, pFence)
            )
        }
    }

    func getSwapchainCounterEXT(device: Device, swapchain: SwapchainKHR, counter: SurfaceCounterFlagsEXT, pCounterValue: UnsafeMutablePointer<UInt64>) throws -> Void {
        try checkResult(
            vkGetSwapchainCounterEXT(device.handle, swapchain.handle, VkSurfaceCounterFlagBitsEXT(rawValue: counter.rawValue), pCounterValue)
        )
    }

    func getDeviceGroupPeerMemoryFeatures(device: Device, heapIndex: UInt32, localDeviceIndex: UInt32, remoteDeviceIndex: UInt32, pPeerMemoryFeatures: UnsafeMutablePointer<VkPeerMemoryFeatureFlags>) -> Void {
        vkGetDeviceGroupPeerMemoryFeatures(device.handle, heapIndex, localDeviceIndex, remoteDeviceIndex, pPeerMemoryFeatures)
    }

    func bindBufferMemory2(device: Device, pBindInfos: Array<BindBufferMemoryInfo>) throws -> Void {
        try pBindInfos.withCStructBufferPointer { ptr_pBindInfos in
            try checkResult(
                vkBindBufferMemory2(device.handle, UInt32(ptr_pBindInfos.count), ptr_pBindInfos.baseAddress)
            )
        }
    }

    func bindImageMemory2(device: Device, pBindInfos: Array<BindImageMemoryInfo>) throws -> Void {
        try pBindInfos.withCStructBufferPointer { ptr_pBindInfos in
            try checkResult(
                vkBindImageMemory2(device.handle, UInt32(ptr_pBindInfos.count), ptr_pBindInfos.baseAddress)
            )
        }
    }

    func getDeviceGroupPresentCapabilitiesKHR(device: Device, pDeviceGroupPresentCapabilities: UnsafeMutablePointer<VkDeviceGroupPresentCapabilitiesKHR>) throws -> Void {
        try checkResult(
            vkGetDeviceGroupPresentCapabilitiesKHR(device.handle, pDeviceGroupPresentCapabilities)
        )
    }

    func getDeviceGroupSurfacePresentModesKHR(device: Device, surface: SurfaceKHR, pModes: UnsafeMutablePointer<VkDeviceGroupPresentModeFlagsKHR>) throws -> Void {
        try checkResult(
            vkGetDeviceGroupSurfacePresentModesKHR(device.handle, surface.handle, pModes)
        )
    }

    func acquireNextImage2KHR(device: Device, pAcquireInfo: AcquireNextImageInfoKHR, pImageIndex: UnsafeMutablePointer<UInt32>) throws -> Void {
        try pAcquireInfo.withCStruct { ptr_pAcquireInfo in
            try checkResult(
                vkAcquireNextImage2KHR(device.handle, ptr_pAcquireInfo, pImageIndex)
            )
        }
    }

    func createDescriptorUpdateTemplate(device: Device, pCreateInfo: DescriptorUpdateTemplateCreateInfo, pDescriptorUpdateTemplate: UnsafeMutablePointer<VkDescriptorUpdateTemplate?>) throws -> Void {
        try pCreateInfo.withCStruct { ptr_pCreateInfo in
            try checkResult(
                vkCreateDescriptorUpdateTemplate(device.handle, ptr_pCreateInfo, nil, pDescriptorUpdateTemplate)
            )
        }
    }

    func setHdrMetadataEXT(device: Device, pSwapchains: Array<SwapchainKHR>, pMetadata: Array<HdrMetadataEXT>) -> Void {
        pSwapchains.map{ $0.handle }.withUnsafeBufferPointer { ptr_pSwapchains in
            pMetadata.withCStructBufferPointer { ptr_pMetadata in
                vkSetHdrMetadataEXT(device.handle, UInt32(ptr_pSwapchains.count), ptr_pSwapchains.baseAddress, ptr_pMetadata.baseAddress)
            }
        }
    }

    func getSwapchainStatusKHR(device: Device, swapchain: SwapchainKHR) throws -> Void {
        try checkResult(
            vkGetSwapchainStatusKHR(device.handle, swapchain.handle)
        )
    }

    func getRefreshCycleDurationGOOGLE(device: Device, swapchain: SwapchainKHR, pDisplayTimingProperties: UnsafeMutablePointer<VkRefreshCycleDurationGOOGLE>) throws -> Void {
        try checkResult(
            vkGetRefreshCycleDurationGOOGLE(device.handle, swapchain.handle, pDisplayTimingProperties)
        )
    }

    func getPastPresentationTimingGOOGLE(device: Device, swapchain: SwapchainKHR, pPresentationTimingCount: UnsafeMutablePointer<UInt32>, pPresentationTimings: UnsafeMutablePointer<VkPastPresentationTimingGOOGLE>) throws -> Void {
        try checkResult(
            vkGetPastPresentationTimingGOOGLE(device.handle, swapchain.handle, pPresentationTimingCount, pPresentationTimings)
        )
    }

    func getBufferMemoryRequirements2(device: Device, pInfo: BufferMemoryRequirementsInfo2, pMemoryRequirements: UnsafeMutablePointer<VkMemoryRequirements2>) -> Void {
        pInfo.withCStruct { ptr_pInfo in
            vkGetBufferMemoryRequirements2(device.handle, ptr_pInfo, pMemoryRequirements)
        }
    }

    func getImageMemoryRequirements2(device: Device, pInfo: ImageMemoryRequirementsInfo2, pMemoryRequirements: UnsafeMutablePointer<VkMemoryRequirements2>) -> Void {
        pInfo.withCStruct { ptr_pInfo in
            vkGetImageMemoryRequirements2(device.handle, ptr_pInfo, pMemoryRequirements)
        }
    }

    func getImageSparseMemoryRequirements2(device: Device, pInfo: ImageSparseMemoryRequirementsInfo2, pSparseMemoryRequirementCount: UnsafeMutablePointer<UInt32>, pSparseMemoryRequirements: UnsafeMutablePointer<VkSparseImageMemoryRequirements2>) -> Void {
        pInfo.withCStruct { ptr_pInfo in
            vkGetImageSparseMemoryRequirements2(device.handle, ptr_pInfo, pSparseMemoryRequirementCount, pSparseMemoryRequirements)
        }
    }

    func createSamplerYcbcrConversion(device: Device, pCreateInfo: SamplerYcbcrConversionCreateInfo, pYcbcrConversion: UnsafeMutablePointer<VkSamplerYcbcrConversion?>) throws -> Void {
        try pCreateInfo.withCStruct { ptr_pCreateInfo in
            try checkResult(
                vkCreateSamplerYcbcrConversion(device.handle, ptr_pCreateInfo, nil, pYcbcrConversion)
            )
        }
    }

    func getDeviceQueue2(device: Device, pQueueInfo: DeviceQueueInfo2, pQueue: UnsafeMutablePointer<VkQueue?>) -> Void {
        pQueueInfo.withCStruct { ptr_pQueueInfo in
            vkGetDeviceQueue2(device.handle, ptr_pQueueInfo, pQueue)
        }
    }

    func createValidationCacheEXT(device: Device, pCreateInfo: ValidationCacheCreateInfoEXT, pValidationCache: UnsafeMutablePointer<VkValidationCacheEXT?>) throws -> Void {
        try pCreateInfo.withCStruct { ptr_pCreateInfo in
            try checkResult(
                vkCreateValidationCacheEXT(device.handle, ptr_pCreateInfo, nil, pValidationCache)
            )
        }
    }

    func getDescriptorSetLayoutSupport(device: Device, pCreateInfo: DescriptorSetLayoutCreateInfo, pSupport: UnsafeMutablePointer<VkDescriptorSetLayoutSupport>) -> Void {
        pCreateInfo.withCStruct { ptr_pCreateInfo in
            vkGetDescriptorSetLayoutSupport(device.handle, ptr_pCreateInfo, pSupport)
        }
    }

    func setLocalDimmingAMD(device: Device, swapChain: SwapchainKHR, localDimmingEnable: Bool) -> Void {
        vkSetLocalDimmingAMD(device.handle, swapChain.handle, VkBool32(localDimmingEnable ? VK_TRUE : VK_FALSE))
    }

    func getCalibratedTimestampsEXT(device: Device, pTimestampInfos: Array<CalibratedTimestampInfoEXT>, pTimestamps: UnsafeMutablePointer<UInt64>, pMaxDeviation: UnsafeMutablePointer<UInt64>) throws -> Void {
        try pTimestampInfos.withCStructBufferPointer { ptr_pTimestampInfos in
            try checkResult(
                vkGetCalibratedTimestampsEXT(device.handle, UInt32(ptr_pTimestampInfos.count), ptr_pTimestampInfos.baseAddress, pTimestamps, pMaxDeviation)
            )
        }
    }

    func setDebugUtilsObjectNameEXT(device: Device, pNameInfo: DebugUtilsObjectNameInfoEXT) throws -> Void {
        try pNameInfo.withCStruct { ptr_pNameInfo in
            try checkResult(
                vkSetDebugUtilsObjectNameEXT(device.handle, ptr_pNameInfo)
            )
        }
    }

    func setDebugUtilsObjectTagEXT(device: Device, pTagInfo: DebugUtilsObjectTagInfoEXT) throws -> Void {
        try pTagInfo.withCStruct { ptr_pTagInfo in
            try checkResult(
                vkSetDebugUtilsObjectTagEXT(device.handle, ptr_pTagInfo)
            )
        }
    }

    func getMemoryHostPointerPropertiesEXT(device: Device, handleType: ExternalMemoryHandleTypeFlags, pHostPointer: UnsafeRawPointer, pMemoryHostPointerProperties: UnsafeMutablePointer<VkMemoryHostPointerPropertiesEXT>) throws -> Void {
        try checkResult(
            vkGetMemoryHostPointerPropertiesEXT(device.handle, VkExternalMemoryHandleTypeFlagBits(rawValue: handleType.rawValue), pHostPointer, pMemoryHostPointerProperties)
        )
    }

    func createRenderPass2(device: Device, pCreateInfo: RenderPassCreateInfo2, pRenderPass: UnsafeMutablePointer<VkRenderPass?>) throws -> Void {
        try pCreateInfo.withCStruct { ptr_pCreateInfo in
            try checkResult(
                vkCreateRenderPass2(device.handle, ptr_pCreateInfo, nil, pRenderPass)
            )
        }
    }

    func waitSemaphores(device: Device, pWaitInfo: SemaphoreWaitInfo, timeout: UInt64) throws -> Void {
        try pWaitInfo.withCStruct { ptr_pWaitInfo in
            try checkResult(
                vkWaitSemaphores(device.handle, ptr_pWaitInfo, timeout)
            )
        }
    }

    func signalSemaphore(device: Device, pSignalInfo: SemaphoreSignalInfo) throws -> Void {
        try pSignalInfo.withCStruct { ptr_pSignalInfo in
            try checkResult(
                vkSignalSemaphore(device.handle, ptr_pSignalInfo)
            )
        }
    }

    func createAccelerationStructureNV(device: Device, pCreateInfo: AccelerationStructureCreateInfoNV, pAccelerationStructure: UnsafeMutablePointer<VkAccelerationStructureNV>) throws -> Void {
        try pCreateInfo.withCStruct { ptr_pCreateInfo in
            try checkResult(
                vkCreateAccelerationStructureNV(device.handle, ptr_pCreateInfo, nil, pAccelerationStructure)
            )
        }
    }

    func getAccelerationStructureMemoryRequirementsNV(device: Device, pInfo: AccelerationStructureMemoryRequirementsInfoNV, pMemoryRequirements: UnsafeMutablePointer<VkMemoryRequirements2KHR>) -> Void {
        pInfo.withCStruct { ptr_pInfo in
            vkGetAccelerationStructureMemoryRequirementsNV(device.handle, ptr_pInfo, pMemoryRequirements)
        }
    }

    func getAccelerationStructureHandleNV(device: Device, accelerationStructure: VkAccelerationStructureKHR, dataSize: Int, pData: UnsafeMutableRawPointer) throws -> Void {
        try checkResult(
            vkGetAccelerationStructureHandleNV(device.handle, accelerationStructure, dataSize, pData)
        )
    }

    func createRayTracingPipelinesNV(device: Device, pipelineCache: PipelineCache?, pCreateInfos: Array<RayTracingPipelineCreateInfoNV>, pPipelines: UnsafeMutablePointer<VkPipeline?>) throws -> Void {
        try pCreateInfos.withCStructBufferPointer { ptr_pCreateInfos in
            try checkResult(
                vkCreateRayTracingPipelinesNV(device.handle, pipelineCache?.handle, UInt32(ptr_pCreateInfos.count), ptr_pCreateInfos.baseAddress, nil, pPipelines)
            )
        }
    }

    func getImageViewHandleNVX(device: Device, pInfo: ImageViewHandleInfoNVX) -> UInt32 {
        pInfo.withCStruct { ptr_pInfo in
            vkGetImageViewHandleNVX(device.handle, ptr_pInfo)
        }
    }

    func acquireProfilingLockKHR(device: Device, pInfo: AcquireProfilingLockInfoKHR) throws -> Void {
        try pInfo.withCStruct { ptr_pInfo in
            try checkResult(
                vkAcquireProfilingLockKHR(device.handle, ptr_pInfo)
            )
        }
    }

    func releaseProfilingLockKHR(device: Device) -> Void {
        vkReleaseProfilingLockKHR(device.handle)
    }

    func getBufferOpaqueCaptureAddress(device: Device, pInfo: BufferDeviceAddressInfo) -> UInt64 {
        pInfo.withCStruct { ptr_pInfo in
            vkGetBufferOpaqueCaptureAddress(device.handle, ptr_pInfo)
        }
    }

    func getBufferDeviceAddress(device: Device, pInfo: BufferDeviceAddressInfo) -> VkDeviceAddress {
        pInfo.withCStruct { ptr_pInfo in
            vkGetBufferDeviceAddress(device.handle, ptr_pInfo)
        }
    }

    func initializePerformanceApiINTEL(device: Device, pInitializeInfo: InitializePerformanceApiInfoINTEL) throws -> Void {
        try pInitializeInfo.withCStruct { ptr_pInitializeInfo in
            try checkResult(
                vkInitializePerformanceApiINTEL(device.handle, ptr_pInitializeInfo)
            )
        }
    }

    func uninitializePerformanceApiINTEL(device: Device) -> Void {
        vkUninitializePerformanceApiINTEL(device.handle)
    }

    func acquirePerformanceConfigurationINTEL(device: Device, pAcquireInfo: PerformanceConfigurationAcquireInfoINTEL, pConfiguration: UnsafeMutablePointer<VkPerformanceConfigurationINTEL?>) throws -> Void {
        try pAcquireInfo.withCStruct { ptr_pAcquireInfo in
            try checkResult(
                vkAcquirePerformanceConfigurationINTEL(device.handle, ptr_pAcquireInfo, pConfiguration)
            )
        }
    }

    func getPerformanceParameterINTEL(device: Device, parameter: PerformanceParameterTypeINTEL, pValue: UnsafeMutablePointer<VkPerformanceValueINTEL>) throws -> Void {
        try checkResult(
            vkGetPerformanceParameterINTEL(device.handle, VkPerformanceParameterTypeINTEL(rawValue: parameter.rawValue), pValue)
        )
    }

    func getDeviceMemoryOpaqueCaptureAddress(device: Device, pInfo: DeviceMemoryOpaqueCaptureAddressInfo) -> UInt64 {
        pInfo.withCStruct { ptr_pInfo in
            vkGetDeviceMemoryOpaqueCaptureAddress(device.handle, ptr_pInfo)
        }
    }

    func getPipelineExecutablePropertiesKHR(device: Device, pPipelineInfo: PipelineInfoKHR, pExecutableCount: UnsafeMutablePointer<UInt32>, pProperties: UnsafeMutablePointer<VkPipelineExecutablePropertiesKHR>) throws -> Void {
        try pPipelineInfo.withCStruct { ptr_pPipelineInfo in
            try checkResult(
                vkGetPipelineExecutablePropertiesKHR(device.handle, ptr_pPipelineInfo, pExecutableCount, pProperties)
            )
        }
    }

    func getPipelineExecutableStatisticsKHR(device: Device, pExecutableInfo: PipelineExecutableInfoKHR, pStatisticCount: UnsafeMutablePointer<UInt32>, pStatistics: UnsafeMutablePointer<VkPipelineExecutableStatisticKHR>) throws -> Void {
        try pExecutableInfo.withCStruct { ptr_pExecutableInfo in
            try checkResult(
                vkGetPipelineExecutableStatisticsKHR(device.handle, ptr_pExecutableInfo, pStatisticCount, pStatistics)
            )
        }
    }

    func getPipelineExecutableInternalRepresentationsKHR(device: Device, pExecutableInfo: PipelineExecutableInfoKHR, pInternalRepresentationCount: UnsafeMutablePointer<UInt32>, pInternalRepresentations: UnsafeMutablePointer<VkPipelineExecutableInternalRepresentationKHR>) throws -> Void {
        try pExecutableInfo.withCStruct { ptr_pExecutableInfo in
            try checkResult(
                vkGetPipelineExecutableInternalRepresentationsKHR(device.handle, ptr_pExecutableInfo, pInternalRepresentationCount, pInternalRepresentations)
            )
        }
    }
}

class Queue {
    let handle: VkQueue!
    let device: Device

    init(handle: VkQueue!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func queueSubmit(queue: Queue, pSubmits: Array<SubmitInfo>, fence: Fence?) throws -> Void {
        try pSubmits.withCStructBufferPointer { ptr_pSubmits in
            try checkResult(
                vkQueueSubmit(queue.handle, UInt32(ptr_pSubmits.count), ptr_pSubmits.baseAddress, fence?.handle)
            )
        }
    }

    func queueWaitIdle(queue: Queue) throws -> Void {
        try checkResult(
            vkQueueWaitIdle(queue.handle)
        )
    }

    func queueBindSparse(queue: Queue, pBindInfo: Array<BindSparseInfo>, fence: Fence?) throws -> Void {
        try pBindInfo.withCStructBufferPointer { ptr_pBindInfo in
            try checkResult(
                vkQueueBindSparse(queue.handle, UInt32(ptr_pBindInfo.count), ptr_pBindInfo.baseAddress, fence?.handle)
            )
        }
    }

    func queuePresentKHR(queue: Queue, pPresentInfo: PresentInfoKHR) throws -> Void {
        try pPresentInfo.withCStruct { ptr_pPresentInfo in
            try checkResult(
                vkQueuePresentKHR(queue.handle, ptr_pPresentInfo)
            )
        }
    }

    func queueBeginDebugUtilsLabelEXT(queue: Queue, pLabelInfo: DebugUtilsLabelEXT) -> Void {
        pLabelInfo.withCStruct { ptr_pLabelInfo in
            vkQueueBeginDebugUtilsLabelEXT(queue.handle, ptr_pLabelInfo)
        }
    }

    func queueEndDebugUtilsLabelEXT(queue: Queue) -> Void {
        vkQueueEndDebugUtilsLabelEXT(queue.handle)
    }

    func queueInsertDebugUtilsLabelEXT(queue: Queue, pLabelInfo: DebugUtilsLabelEXT) -> Void {
        pLabelInfo.withCStruct { ptr_pLabelInfo in
            vkQueueInsertDebugUtilsLabelEXT(queue.handle, ptr_pLabelInfo)
        }
    }

    func getQueueCheckpointDataNV(queue: Queue, pCheckpointDataCount: UnsafeMutablePointer<UInt32>, pCheckpointData: UnsafeMutablePointer<VkCheckpointDataNV>) -> Void {
        vkGetQueueCheckpointDataNV(queue.handle, pCheckpointDataCount, pCheckpointData)
    }

    func queueSetPerformanceConfigurationINTEL(queue: Queue, configuration: PerformanceConfigurationINTEL) throws -> Void {
        try checkResult(
            vkQueueSetPerformanceConfigurationINTEL(queue.handle, configuration.handle)
        )
    }
}

class CommandBuffer {
    let handle: VkCommandBuffer!
    let commandPool: CommandPool

    init(handle: VkCommandBuffer!, commandPool: CommandPool) {
        self.handle = handle
        self.commandPool = commandPool
    }

    func beginCommandBuffer(commandBuffer: CommandBuffer, pBeginInfo: CommandBufferBeginInfo) throws -> Void {
        try pBeginInfo.withCStruct { ptr_pBeginInfo in
            try checkResult(
                vkBeginCommandBuffer(commandBuffer.handle, ptr_pBeginInfo)
            )
        }
    }

    func endCommandBuffer(commandBuffer: CommandBuffer) throws -> Void {
        try checkResult(
            vkEndCommandBuffer(commandBuffer.handle)
        )
    }

    func resetCommandBuffer(commandBuffer: CommandBuffer, flags: CommandBufferResetFlags) throws -> Void {
        try checkResult(
            vkResetCommandBuffer(commandBuffer.handle, flags.rawValue)
        )
    }

    func cmdBindPipeline(commandBuffer: CommandBuffer, pipelineBindPoint: PipelineBindPoint, pipeline: Pipeline) -> Void {
        vkCmdBindPipeline(commandBuffer.handle, VkPipelineBindPoint(rawValue: pipelineBindPoint.rawValue), pipeline.handle)
    }

    func cmdSetViewport(commandBuffer: CommandBuffer, firstViewport: UInt32, pViewports: Array<Viewport>) -> Void {
        pViewports.withCStructBufferPointer { ptr_pViewports in
            vkCmdSetViewport(commandBuffer.handle, firstViewport, UInt32(ptr_pViewports.count), ptr_pViewports.baseAddress)
        }
    }

    func cmdSetScissor(commandBuffer: CommandBuffer, firstScissor: UInt32, pScissors: Array<Rect2D>) -> Void {
        pScissors.withCStructBufferPointer { ptr_pScissors in
            vkCmdSetScissor(commandBuffer.handle, firstScissor, UInt32(ptr_pScissors.count), ptr_pScissors.baseAddress)
        }
    }

    func cmdSetLineWidth(commandBuffer: CommandBuffer, lineWidth: Float) -> Void {
        vkCmdSetLineWidth(commandBuffer.handle, lineWidth)
    }

    func cmdSetDepthBias(commandBuffer: CommandBuffer, depthBiasConstantFactor: Float, depthBiasClamp: Float, depthBiasSlopeFactor: Float) -> Void {
        vkCmdSetDepthBias(commandBuffer.handle, depthBiasConstantFactor, depthBiasClamp, depthBiasSlopeFactor)
    }

    func cmdSetBlendConstants(commandBuffer: CommandBuffer, blendConstants: (Float, Float, Float, Float)) -> Void {
        vkCmdSetBlendConstants(commandBuffer.handle, blendConstants)
    }

    func cmdSetDepthBounds(commandBuffer: CommandBuffer, minDepthBounds: Float, maxDepthBounds: Float) -> Void {
        vkCmdSetDepthBounds(commandBuffer.handle, minDepthBounds, maxDepthBounds)
    }

    func cmdSetStencilCompareMask(commandBuffer: CommandBuffer, faceMask: StencilFaceFlags, compareMask: UInt32) -> Void {
        vkCmdSetStencilCompareMask(commandBuffer.handle, faceMask.rawValue, compareMask)
    }

    func cmdSetStencilWriteMask(commandBuffer: CommandBuffer, faceMask: StencilFaceFlags, writeMask: UInt32) -> Void {
        vkCmdSetStencilWriteMask(commandBuffer.handle, faceMask.rawValue, writeMask)
    }

    func cmdSetStencilReference(commandBuffer: CommandBuffer, faceMask: StencilFaceFlags, reference: UInt32) -> Void {
        vkCmdSetStencilReference(commandBuffer.handle, faceMask.rawValue, reference)
    }

    func cmdBindDescriptorSets(commandBuffer: CommandBuffer, pipelineBindPoint: PipelineBindPoint, layout: PipelineLayout, firstSet: UInt32, pDescriptorSets: Array<DescriptorSet>, pDynamicOffsets: Array<UInt32>) -> Void {
        pDescriptorSets.map{ $0.handle }.withUnsafeBufferPointer { ptr_pDescriptorSets in
            pDynamicOffsets.withUnsafeBufferPointer { ptr_pDynamicOffsets in
                vkCmdBindDescriptorSets(commandBuffer.handle, VkPipelineBindPoint(rawValue: pipelineBindPoint.rawValue), layout.handle, firstSet, UInt32(ptr_pDescriptorSets.count), ptr_pDescriptorSets.baseAddress, UInt32(ptr_pDynamicOffsets.count), ptr_pDynamicOffsets.baseAddress)
            }
        }
    }

    func cmdBindIndexBuffer(commandBuffer: CommandBuffer, buffer: Buffer, offset: VkDeviceSize, indexType: IndexType) -> Void {
        vkCmdBindIndexBuffer(commandBuffer.handle, buffer.handle, offset, VkIndexType(rawValue: indexType.rawValue))
    }

    func cmdBindVertexBuffers(commandBuffer: CommandBuffer, firstBinding: UInt32, pBuffers: Array<Buffer>, pOffsets: Array<VkDeviceSize>) -> Void {
        pBuffers.map{ $0.handle }.withUnsafeBufferPointer { ptr_pBuffers in
            pOffsets.withUnsafeBufferPointer { ptr_pOffsets in
                vkCmdBindVertexBuffers(commandBuffer.handle, firstBinding, UInt32(ptr_pBuffers.count), ptr_pBuffers.baseAddress, ptr_pOffsets.baseAddress)
            }
        }
    }

    func cmdDraw(commandBuffer: CommandBuffer, vertexCount: UInt32, instanceCount: UInt32, firstVertex: UInt32, firstInstance: UInt32) -> Void {
        vkCmdDraw(commandBuffer.handle, vertexCount, instanceCount, firstVertex, firstInstance)
    }

    func cmdDrawIndexed(commandBuffer: CommandBuffer, indexCount: UInt32, instanceCount: UInt32, firstIndex: UInt32, vertexOffset: Int32, firstInstance: UInt32) -> Void {
        vkCmdDrawIndexed(commandBuffer.handle, indexCount, instanceCount, firstIndex, vertexOffset, firstInstance)
    }

    func cmdDrawIndirect(commandBuffer: CommandBuffer, buffer: Buffer, offset: VkDeviceSize, drawCount: UInt32, stride: UInt32) -> Void {
        vkCmdDrawIndirect(commandBuffer.handle, buffer.handle, offset, drawCount, stride)
    }

    func cmdDrawIndexedIndirect(commandBuffer: CommandBuffer, buffer: Buffer, offset: VkDeviceSize, drawCount: UInt32, stride: UInt32) -> Void {
        vkCmdDrawIndexedIndirect(commandBuffer.handle, buffer.handle, offset, drawCount, stride)
    }

    func cmdDispatch(commandBuffer: CommandBuffer, groupCountX: UInt32, groupCountY: UInt32, groupCountZ: UInt32) -> Void {
        vkCmdDispatch(commandBuffer.handle, groupCountX, groupCountY, groupCountZ)
    }

    func cmdDispatchIndirect(commandBuffer: CommandBuffer, buffer: Buffer, offset: VkDeviceSize) -> Void {
        vkCmdDispatchIndirect(commandBuffer.handle, buffer.handle, offset)
    }

    func cmdCopyBuffer(commandBuffer: CommandBuffer, srcBuffer: Buffer, dstBuffer: Buffer, pRegions: Array<BufferCopy>) -> Void {
        pRegions.withCStructBufferPointer { ptr_pRegions in
            vkCmdCopyBuffer(commandBuffer.handle, srcBuffer.handle, dstBuffer.handle, UInt32(ptr_pRegions.count), ptr_pRegions.baseAddress)
        }
    }

    func cmdCopyImage(commandBuffer: CommandBuffer, srcImage: Image, srcImageLayout: ImageLayout, dstImage: Image, dstImageLayout: ImageLayout, pRegions: Array<ImageCopy>) -> Void {
        pRegions.withCStructBufferPointer { ptr_pRegions in
            vkCmdCopyImage(commandBuffer.handle, srcImage.handle, VkImageLayout(rawValue: srcImageLayout.rawValue), dstImage.handle, VkImageLayout(rawValue: dstImageLayout.rawValue), UInt32(ptr_pRegions.count), ptr_pRegions.baseAddress)
        }
    }

    func cmdBlitImage(commandBuffer: CommandBuffer, srcImage: Image, srcImageLayout: ImageLayout, dstImage: Image, dstImageLayout: ImageLayout, pRegions: Array<ImageBlit>, filter: Filter) -> Void {
        pRegions.withCStructBufferPointer { ptr_pRegions in
            vkCmdBlitImage(commandBuffer.handle, srcImage.handle, VkImageLayout(rawValue: srcImageLayout.rawValue), dstImage.handle, VkImageLayout(rawValue: dstImageLayout.rawValue), UInt32(ptr_pRegions.count), ptr_pRegions.baseAddress, VkFilter(rawValue: filter.rawValue))
        }
    }

    func cmdCopyBufferToImage(commandBuffer: CommandBuffer, srcBuffer: Buffer, dstImage: Image, dstImageLayout: ImageLayout, pRegions: Array<BufferImageCopy>) -> Void {
        pRegions.withCStructBufferPointer { ptr_pRegions in
            vkCmdCopyBufferToImage(commandBuffer.handle, srcBuffer.handle, dstImage.handle, VkImageLayout(rawValue: dstImageLayout.rawValue), UInt32(ptr_pRegions.count), ptr_pRegions.baseAddress)
        }
    }

    func cmdCopyImageToBuffer(commandBuffer: CommandBuffer, srcImage: Image, srcImageLayout: ImageLayout, dstBuffer: Buffer, pRegions: Array<BufferImageCopy>) -> Void {
        pRegions.withCStructBufferPointer { ptr_pRegions in
            vkCmdCopyImageToBuffer(commandBuffer.handle, srcImage.handle, VkImageLayout(rawValue: srcImageLayout.rawValue), dstBuffer.handle, UInt32(ptr_pRegions.count), ptr_pRegions.baseAddress)
        }
    }

    func cmdUpdateBuffer(commandBuffer: CommandBuffer, dstBuffer: Buffer, dstOffset: VkDeviceSize, dataSize: VkDeviceSize, pData: UnsafeRawPointer) -> Void {
        vkCmdUpdateBuffer(commandBuffer.handle, dstBuffer.handle, dstOffset, dataSize, pData)
    }

    func cmdFillBuffer(commandBuffer: CommandBuffer, dstBuffer: Buffer, dstOffset: VkDeviceSize, size: VkDeviceSize, data: UInt32) -> Void {
        vkCmdFillBuffer(commandBuffer.handle, dstBuffer.handle, dstOffset, size, data)
    }

    func cmdClearColorImage(commandBuffer: CommandBuffer, image: Image, imageLayout: ImageLayout, pColor: UnsafePointer<VkClearColorValue>, pRanges: Array<ImageSubresourceRange>) -> Void {
        pRanges.withCStructBufferPointer { ptr_pRanges in
            vkCmdClearColorImage(commandBuffer.handle, image.handle, VkImageLayout(rawValue: imageLayout.rawValue), pColor, UInt32(ptr_pRanges.count), ptr_pRanges.baseAddress)
        }
    }

    func cmdClearDepthStencilImage(commandBuffer: CommandBuffer, image: Image, imageLayout: ImageLayout, pDepthStencil: ClearDepthStencilValue, pRanges: Array<ImageSubresourceRange>) -> Void {
        pDepthStencil.withCStruct { ptr_pDepthStencil in
            pRanges.withCStructBufferPointer { ptr_pRanges in
                vkCmdClearDepthStencilImage(commandBuffer.handle, image.handle, VkImageLayout(rawValue: imageLayout.rawValue), ptr_pDepthStencil, UInt32(ptr_pRanges.count), ptr_pRanges.baseAddress)
            }
        }
    }

    func cmdClearAttachments(commandBuffer: CommandBuffer, pAttachments: Array<ClearAttachment>, pRects: Array<ClearRect>) -> Void {
        pAttachments.withCStructBufferPointer { ptr_pAttachments in
            pRects.withCStructBufferPointer { ptr_pRects in
                vkCmdClearAttachments(commandBuffer.handle, UInt32(ptr_pAttachments.count), ptr_pAttachments.baseAddress, UInt32(ptr_pRects.count), ptr_pRects.baseAddress)
            }
        }
    }

    func cmdResolveImage(commandBuffer: CommandBuffer, srcImage: Image, srcImageLayout: ImageLayout, dstImage: Image, dstImageLayout: ImageLayout, pRegions: Array<ImageResolve>) -> Void {
        pRegions.withCStructBufferPointer { ptr_pRegions in
            vkCmdResolveImage(commandBuffer.handle, srcImage.handle, VkImageLayout(rawValue: srcImageLayout.rawValue), dstImage.handle, VkImageLayout(rawValue: dstImageLayout.rawValue), UInt32(ptr_pRegions.count), ptr_pRegions.baseAddress)
        }
    }

    func cmdSetEvent(commandBuffer: CommandBuffer, event: Event, stageMask: PipelineStageFlags) -> Void {
        vkCmdSetEvent(commandBuffer.handle, event.handle, stageMask.rawValue)
    }

    func cmdResetEvent(commandBuffer: CommandBuffer, event: Event, stageMask: PipelineStageFlags) -> Void {
        vkCmdResetEvent(commandBuffer.handle, event.handle, stageMask.rawValue)
    }

    func cmdWaitEvents(commandBuffer: CommandBuffer, pEvents: Array<Event>, srcStageMask: PipelineStageFlags, dstStageMask: PipelineStageFlags, pMemoryBarriers: Array<MemoryBarrier>, pBufferMemoryBarriers: Array<BufferMemoryBarrier>, pImageMemoryBarriers: Array<ImageMemoryBarrier>) -> Void {
        pEvents.map{ $0.handle }.withUnsafeBufferPointer { ptr_pEvents in
            pMemoryBarriers.withCStructBufferPointer { ptr_pMemoryBarriers in
                pBufferMemoryBarriers.withCStructBufferPointer { ptr_pBufferMemoryBarriers in
                    pImageMemoryBarriers.withCStructBufferPointer { ptr_pImageMemoryBarriers in
                        vkCmdWaitEvents(commandBuffer.handle, UInt32(ptr_pEvents.count), ptr_pEvents.baseAddress, srcStageMask.rawValue, dstStageMask.rawValue, UInt32(ptr_pMemoryBarriers.count), ptr_pMemoryBarriers.baseAddress, UInt32(ptr_pBufferMemoryBarriers.count), ptr_pBufferMemoryBarriers.baseAddress, UInt32(ptr_pImageMemoryBarriers.count), ptr_pImageMemoryBarriers.baseAddress)
                    }
                }
            }
        }
    }

    func cmdPipelineBarrier(commandBuffer: CommandBuffer, srcStageMask: PipelineStageFlags, dstStageMask: PipelineStageFlags, dependencyFlags: DependencyFlags, pMemoryBarriers: Array<MemoryBarrier>, pBufferMemoryBarriers: Array<BufferMemoryBarrier>, pImageMemoryBarriers: Array<ImageMemoryBarrier>) -> Void {
        pMemoryBarriers.withCStructBufferPointer { ptr_pMemoryBarriers in
            pBufferMemoryBarriers.withCStructBufferPointer { ptr_pBufferMemoryBarriers in
                pImageMemoryBarriers.withCStructBufferPointer { ptr_pImageMemoryBarriers in
                    vkCmdPipelineBarrier(commandBuffer.handle, srcStageMask.rawValue, dstStageMask.rawValue, dependencyFlags.rawValue, UInt32(ptr_pMemoryBarriers.count), ptr_pMemoryBarriers.baseAddress, UInt32(ptr_pBufferMemoryBarriers.count), ptr_pBufferMemoryBarriers.baseAddress, UInt32(ptr_pImageMemoryBarriers.count), ptr_pImageMemoryBarriers.baseAddress)
                }
            }
        }
    }

    func cmdBeginQuery(commandBuffer: CommandBuffer, queryPool: QueryPool, query: UInt32, flags: QueryControlFlags) -> Void {
        vkCmdBeginQuery(commandBuffer.handle, queryPool.handle, query, flags.rawValue)
    }

    func cmdEndQuery(commandBuffer: CommandBuffer, queryPool: QueryPool, query: UInt32) -> Void {
        vkCmdEndQuery(commandBuffer.handle, queryPool.handle, query)
    }

    func cmdBeginConditionalRenderingEXT(commandBuffer: CommandBuffer, pConditionalRenderingBegin: ConditionalRenderingBeginInfoEXT) -> Void {
        pConditionalRenderingBegin.withCStruct { ptr_pConditionalRenderingBegin in
            vkCmdBeginConditionalRenderingEXT(commandBuffer.handle, ptr_pConditionalRenderingBegin)
        }
    }

    func cmdEndConditionalRenderingEXT(commandBuffer: CommandBuffer) -> Void {
        vkCmdEndConditionalRenderingEXT(commandBuffer.handle)
    }

    func cmdResetQueryPool(commandBuffer: CommandBuffer, queryPool: QueryPool, firstQuery: UInt32, queryCount: UInt32) -> Void {
        vkCmdResetQueryPool(commandBuffer.handle, queryPool.handle, firstQuery, queryCount)
    }

    func cmdWriteTimestamp(commandBuffer: CommandBuffer, pipelineStage: PipelineStageFlags, queryPool: QueryPool, query: UInt32) -> Void {
        vkCmdWriteTimestamp(commandBuffer.handle, VkPipelineStageFlagBits(rawValue: pipelineStage.rawValue), queryPool.handle, query)
    }

    func cmdCopyQueryPoolResults(commandBuffer: CommandBuffer, queryPool: QueryPool, firstQuery: UInt32, queryCount: UInt32, dstBuffer: Buffer, dstOffset: VkDeviceSize, stride: VkDeviceSize, flags: QueryResultFlags) -> Void {
        vkCmdCopyQueryPoolResults(commandBuffer.handle, queryPool.handle, firstQuery, queryCount, dstBuffer.handle, dstOffset, stride, flags.rawValue)
    }

    func cmdPushConstants(commandBuffer: CommandBuffer, layout: PipelineLayout, stageFlags: ShaderStageFlags, offset: UInt32, size: UInt32, pValues: UnsafeRawPointer) -> Void {
        vkCmdPushConstants(commandBuffer.handle, layout.handle, stageFlags.rawValue, offset, size, pValues)
    }

    func cmdBeginRenderPass(commandBuffer: CommandBuffer, pRenderPassBegin: RenderPassBeginInfo, contents: SubpassContents) -> Void {
        pRenderPassBegin.withCStruct { ptr_pRenderPassBegin in
            vkCmdBeginRenderPass(commandBuffer.handle, ptr_pRenderPassBegin, VkSubpassContents(rawValue: contents.rawValue))
        }
    }

    func cmdNextSubpass(commandBuffer: CommandBuffer, contents: SubpassContents) -> Void {
        vkCmdNextSubpass(commandBuffer.handle, VkSubpassContents(rawValue: contents.rawValue))
    }

    func cmdEndRenderPass(commandBuffer: CommandBuffer) -> Void {
        vkCmdEndRenderPass(commandBuffer.handle)
    }

    func cmdExecuteCommands(commandBuffer: CommandBuffer, pCommandBuffers: Array<CommandBuffer>) -> Void {
        pCommandBuffers.map{ $0.handle }.withUnsafeBufferPointer { ptr_pCommandBuffers in
            vkCmdExecuteCommands(commandBuffer.handle, UInt32(ptr_pCommandBuffers.count), ptr_pCommandBuffers.baseAddress)
        }
    }

    func cmdDebugMarkerBeginEXT(commandBuffer: CommandBuffer, pMarkerInfo: DebugMarkerMarkerInfoEXT) -> Void {
        pMarkerInfo.withCStruct { ptr_pMarkerInfo in
            vkCmdDebugMarkerBeginEXT(commandBuffer.handle, ptr_pMarkerInfo)
        }
    }

    func cmdDebugMarkerEndEXT(commandBuffer: CommandBuffer) -> Void {
        vkCmdDebugMarkerEndEXT(commandBuffer.handle)
    }

    func cmdDebugMarkerInsertEXT(commandBuffer: CommandBuffer, pMarkerInfo: DebugMarkerMarkerInfoEXT) -> Void {
        pMarkerInfo.withCStruct { ptr_pMarkerInfo in
            vkCmdDebugMarkerInsertEXT(commandBuffer.handle, ptr_pMarkerInfo)
        }
    }

    func cmdExecuteGeneratedCommandsNV(commandBuffer: CommandBuffer, isPreprocessed: Bool, pGeneratedCommandsInfo: GeneratedCommandsInfoNV) -> Void {
        pGeneratedCommandsInfo.withCStruct { ptr_pGeneratedCommandsInfo in
            vkCmdExecuteGeneratedCommandsNV(commandBuffer.handle, VkBool32(isPreprocessed ? VK_TRUE : VK_FALSE), ptr_pGeneratedCommandsInfo)
        }
    }

    func cmdPreprocessGeneratedCommandsNV(commandBuffer: CommandBuffer, pGeneratedCommandsInfo: GeneratedCommandsInfoNV) -> Void {
        pGeneratedCommandsInfo.withCStruct { ptr_pGeneratedCommandsInfo in
            vkCmdPreprocessGeneratedCommandsNV(commandBuffer.handle, ptr_pGeneratedCommandsInfo)
        }
    }

    func cmdBindPipelineShaderGroupNV(commandBuffer: CommandBuffer, pipelineBindPoint: PipelineBindPoint, pipeline: Pipeline, groupIndex: UInt32) -> Void {
        vkCmdBindPipelineShaderGroupNV(commandBuffer.handle, VkPipelineBindPoint(rawValue: pipelineBindPoint.rawValue), pipeline.handle, groupIndex)
    }

    func cmdPushDescriptorSetKHR(commandBuffer: CommandBuffer, pipelineBindPoint: PipelineBindPoint, layout: PipelineLayout, set: UInt32, pDescriptorWrites: Array<WriteDescriptorSet>) -> Void {
        pDescriptorWrites.withCStructBufferPointer { ptr_pDescriptorWrites in
            vkCmdPushDescriptorSetKHR(commandBuffer.handle, VkPipelineBindPoint(rawValue: pipelineBindPoint.rawValue), layout.handle, set, UInt32(ptr_pDescriptorWrites.count), ptr_pDescriptorWrites.baseAddress)
        }
    }

    func cmdSetDeviceMask(commandBuffer: CommandBuffer, deviceMask: UInt32) -> Void {
        vkCmdSetDeviceMask(commandBuffer.handle, deviceMask)
    }

    func cmdDispatchBase(commandBuffer: CommandBuffer, baseGroupX: UInt32, baseGroupY: UInt32, baseGroupZ: UInt32, groupCountX: UInt32, groupCountY: UInt32, groupCountZ: UInt32) -> Void {
        vkCmdDispatchBase(commandBuffer.handle, baseGroupX, baseGroupY, baseGroupZ, groupCountX, groupCountY, groupCountZ)
    }

    func cmdPushDescriptorSetWithTemplateKHR(commandBuffer: CommandBuffer, descriptorUpdateTemplate: DescriptorUpdateTemplate, layout: PipelineLayout, set: UInt32, pData: UnsafeRawPointer) -> Void {
        vkCmdPushDescriptorSetWithTemplateKHR(commandBuffer.handle, descriptorUpdateTemplate.handle, layout.handle, set, pData)
    }

    func cmdSetViewportWScalingNV(commandBuffer: CommandBuffer, firstViewport: UInt32, pViewportWScalings: Array<ViewportWScalingNV>) -> Void {
        pViewportWScalings.withCStructBufferPointer { ptr_pViewportWScalings in
            vkCmdSetViewportWScalingNV(commandBuffer.handle, firstViewport, UInt32(ptr_pViewportWScalings.count), ptr_pViewportWScalings.baseAddress)
        }
    }

    func cmdSetDiscardRectangleEXT(commandBuffer: CommandBuffer, firstDiscardRectangle: UInt32, pDiscardRectangles: Array<Rect2D>) -> Void {
        pDiscardRectangles.withCStructBufferPointer { ptr_pDiscardRectangles in
            vkCmdSetDiscardRectangleEXT(commandBuffer.handle, firstDiscardRectangle, UInt32(ptr_pDiscardRectangles.count), ptr_pDiscardRectangles.baseAddress)
        }
    }

    func cmdSetSampleLocationsEXT(commandBuffer: CommandBuffer, pSampleLocationsInfo: SampleLocationsInfoEXT) -> Void {
        pSampleLocationsInfo.withCStruct { ptr_pSampleLocationsInfo in
            vkCmdSetSampleLocationsEXT(commandBuffer.handle, ptr_pSampleLocationsInfo)
        }
    }

    func cmdBeginDebugUtilsLabelEXT(commandBuffer: CommandBuffer, pLabelInfo: DebugUtilsLabelEXT) -> Void {
        pLabelInfo.withCStruct { ptr_pLabelInfo in
            vkCmdBeginDebugUtilsLabelEXT(commandBuffer.handle, ptr_pLabelInfo)
        }
    }

    func cmdEndDebugUtilsLabelEXT(commandBuffer: CommandBuffer) -> Void {
        vkCmdEndDebugUtilsLabelEXT(commandBuffer.handle)
    }

    func cmdInsertDebugUtilsLabelEXT(commandBuffer: CommandBuffer, pLabelInfo: DebugUtilsLabelEXT) -> Void {
        pLabelInfo.withCStruct { ptr_pLabelInfo in
            vkCmdInsertDebugUtilsLabelEXT(commandBuffer.handle, ptr_pLabelInfo)
        }
    }

    func cmdWriteBufferMarkerAMD(commandBuffer: CommandBuffer, pipelineStage: PipelineStageFlags, dstBuffer: Buffer, dstOffset: VkDeviceSize, marker: UInt32) -> Void {
        vkCmdWriteBufferMarkerAMD(commandBuffer.handle, VkPipelineStageFlagBits(rawValue: pipelineStage.rawValue), dstBuffer.handle, dstOffset, marker)
    }

    func cmdBeginRenderPass2(commandBuffer: CommandBuffer, pRenderPassBegin: RenderPassBeginInfo, pSubpassBeginInfo: SubpassBeginInfo) -> Void {
        pRenderPassBegin.withCStruct { ptr_pRenderPassBegin in
            pSubpassBeginInfo.withCStruct { ptr_pSubpassBeginInfo in
                vkCmdBeginRenderPass2(commandBuffer.handle, ptr_pRenderPassBegin, ptr_pSubpassBeginInfo)
            }
        }
    }

    func cmdNextSubpass2(commandBuffer: CommandBuffer, pSubpassBeginInfo: SubpassBeginInfo, pSubpassEndInfo: SubpassEndInfo) -> Void {
        pSubpassBeginInfo.withCStruct { ptr_pSubpassBeginInfo in
            pSubpassEndInfo.withCStruct { ptr_pSubpassEndInfo in
                vkCmdNextSubpass2(commandBuffer.handle, ptr_pSubpassBeginInfo, ptr_pSubpassEndInfo)
            }
        }
    }

    func cmdEndRenderPass2(commandBuffer: CommandBuffer, pSubpassEndInfo: SubpassEndInfo) -> Void {
        pSubpassEndInfo.withCStruct { ptr_pSubpassEndInfo in
            vkCmdEndRenderPass2(commandBuffer.handle, ptr_pSubpassEndInfo)
        }
    }

    func cmdDrawIndirectCount(commandBuffer: CommandBuffer, buffer: Buffer, offset: VkDeviceSize, countBuffer: Buffer, countBufferOffset: VkDeviceSize, maxDrawCount: UInt32, stride: UInt32) -> Void {
        vkCmdDrawIndirectCount(commandBuffer.handle, buffer.handle, offset, countBuffer.handle, countBufferOffset, maxDrawCount, stride)
    }

    func cmdDrawIndexedIndirectCount(commandBuffer: CommandBuffer, buffer: Buffer, offset: VkDeviceSize, countBuffer: Buffer, countBufferOffset: VkDeviceSize, maxDrawCount: UInt32, stride: UInt32) -> Void {
        vkCmdDrawIndexedIndirectCount(commandBuffer.handle, buffer.handle, offset, countBuffer.handle, countBufferOffset, maxDrawCount, stride)
    }

    func cmdSetCheckpointNV(commandBuffer: CommandBuffer, pCheckpointMarker: UnsafeRawPointer) -> Void {
        vkCmdSetCheckpointNV(commandBuffer.handle, pCheckpointMarker)
    }

    func cmdBindTransformFeedbackBuffersEXT(commandBuffer: CommandBuffer, firstBinding: UInt32, pBuffers: Array<Buffer>, pOffsets: Array<VkDeviceSize>, pSizes: Array<VkDeviceSize>?) -> Void {
        pBuffers.map{ $0.handle }.withUnsafeBufferPointer { ptr_pBuffers in
            pOffsets.withUnsafeBufferPointer { ptr_pOffsets in
                pSizes.withOptionalUnsafeBufferPointer { ptr_pSizes in
                    vkCmdBindTransformFeedbackBuffersEXT(commandBuffer.handle, firstBinding, UInt32(ptr_pBuffers.count), ptr_pBuffers.baseAddress, ptr_pOffsets.baseAddress, ptr_pSizes.baseAddress)
                }
            }
        }
    }

    func cmdBeginTransformFeedbackEXT(commandBuffer: CommandBuffer, firstCounterBuffer: UInt32, pCounterBuffers: Array<Buffer>, pCounterBufferOffsets: Array<VkDeviceSize>?) -> Void {
        pCounterBuffers.map{ $0.handle }.withUnsafeBufferPointer { ptr_pCounterBuffers in
            pCounterBufferOffsets.withOptionalUnsafeBufferPointer { ptr_pCounterBufferOffsets in
                vkCmdBeginTransformFeedbackEXT(commandBuffer.handle, firstCounterBuffer, UInt32(ptr_pCounterBuffers.count), ptr_pCounterBuffers.baseAddress, ptr_pCounterBufferOffsets.baseAddress)
            }
        }
    }

    func cmdEndTransformFeedbackEXT(commandBuffer: CommandBuffer, firstCounterBuffer: UInt32, pCounterBuffers: Array<Buffer>, pCounterBufferOffsets: Array<VkDeviceSize>?) -> Void {
        pCounterBuffers.map{ $0.handle }.withUnsafeBufferPointer { ptr_pCounterBuffers in
            pCounterBufferOffsets.withOptionalUnsafeBufferPointer { ptr_pCounterBufferOffsets in
                vkCmdEndTransformFeedbackEXT(commandBuffer.handle, firstCounterBuffer, UInt32(ptr_pCounterBuffers.count), ptr_pCounterBuffers.baseAddress, ptr_pCounterBufferOffsets.baseAddress)
            }
        }
    }

    func cmdBeginQueryIndexedEXT(commandBuffer: CommandBuffer, queryPool: QueryPool, query: UInt32, flags: QueryControlFlags, index: UInt32) -> Void {
        vkCmdBeginQueryIndexedEXT(commandBuffer.handle, queryPool.handle, query, flags.rawValue, index)
    }

    func cmdEndQueryIndexedEXT(commandBuffer: CommandBuffer, queryPool: QueryPool, query: UInt32, index: UInt32) -> Void {
        vkCmdEndQueryIndexedEXT(commandBuffer.handle, queryPool.handle, query, index)
    }

    func cmdDrawIndirectByteCountEXT(commandBuffer: CommandBuffer, instanceCount: UInt32, firstInstance: UInt32, counterBuffer: Buffer, counterBufferOffset: VkDeviceSize, counterOffset: UInt32, vertexStride: UInt32) -> Void {
        vkCmdDrawIndirectByteCountEXT(commandBuffer.handle, instanceCount, firstInstance, counterBuffer.handle, counterBufferOffset, counterOffset, vertexStride)
    }

    func cmdSetExclusiveScissorNV(commandBuffer: CommandBuffer, firstExclusiveScissor: UInt32, pExclusiveScissors: Array<Rect2D>) -> Void {
        pExclusiveScissors.withCStructBufferPointer { ptr_pExclusiveScissors in
            vkCmdSetExclusiveScissorNV(commandBuffer.handle, firstExclusiveScissor, UInt32(ptr_pExclusiveScissors.count), ptr_pExclusiveScissors.baseAddress)
        }
    }

    func cmdBindShadingRateImageNV(commandBuffer: CommandBuffer, imageView: ImageView?, imageLayout: ImageLayout) -> Void {
        vkCmdBindShadingRateImageNV(commandBuffer.handle, imageView?.handle, VkImageLayout(rawValue: imageLayout.rawValue))
    }

    func cmdSetViewportShadingRatePaletteNV(commandBuffer: CommandBuffer, firstViewport: UInt32, pShadingRatePalettes: Array<ShadingRatePaletteNV>) -> Void {
        pShadingRatePalettes.withCStructBufferPointer { ptr_pShadingRatePalettes in
            vkCmdSetViewportShadingRatePaletteNV(commandBuffer.handle, firstViewport, UInt32(ptr_pShadingRatePalettes.count), ptr_pShadingRatePalettes.baseAddress)
        }
    }

    func cmdSetCoarseSampleOrderNV(commandBuffer: CommandBuffer, sampleOrderType: CoarseSampleOrderTypeNV, pCustomSampleOrders: Array<CoarseSampleOrderCustomNV>) -> Void {
        pCustomSampleOrders.withCStructBufferPointer { ptr_pCustomSampleOrders in
            vkCmdSetCoarseSampleOrderNV(commandBuffer.handle, VkCoarseSampleOrderTypeNV(rawValue: sampleOrderType.rawValue), UInt32(ptr_pCustomSampleOrders.count), ptr_pCustomSampleOrders.baseAddress)
        }
    }

    func cmdDrawMeshTasksNV(commandBuffer: CommandBuffer, taskCount: UInt32, firstTask: UInt32) -> Void {
        vkCmdDrawMeshTasksNV(commandBuffer.handle, taskCount, firstTask)
    }

    func cmdDrawMeshTasksIndirectNV(commandBuffer: CommandBuffer, buffer: Buffer, offset: VkDeviceSize, drawCount: UInt32, stride: UInt32) -> Void {
        vkCmdDrawMeshTasksIndirectNV(commandBuffer.handle, buffer.handle, offset, drawCount, stride)
    }

    func cmdDrawMeshTasksIndirectCountNV(commandBuffer: CommandBuffer, buffer: Buffer, offset: VkDeviceSize, countBuffer: Buffer, countBufferOffset: VkDeviceSize, maxDrawCount: UInt32, stride: UInt32) -> Void {
        vkCmdDrawMeshTasksIndirectCountNV(commandBuffer.handle, buffer.handle, offset, countBuffer.handle, countBufferOffset, maxDrawCount, stride)
    }

    func cmdCopyAccelerationStructureNV(commandBuffer: CommandBuffer, dst: VkAccelerationStructureKHR, src: VkAccelerationStructureKHR, mode: VkCopyAccelerationStructureModeKHR) -> Void {
        vkCmdCopyAccelerationStructureNV(commandBuffer.handle, dst, src, mode)
    }

    func cmdBuildAccelerationStructureNV(commandBuffer: CommandBuffer, pInfo: AccelerationStructureInfoNV, instanceData: Buffer?, instanceOffset: VkDeviceSize, update: Bool, dst: VkAccelerationStructureKHR, src: VkAccelerationStructureKHR, scratch: Buffer, scratchOffset: VkDeviceSize) -> Void {
        pInfo.withCStruct { ptr_pInfo in
            vkCmdBuildAccelerationStructureNV(commandBuffer.handle, ptr_pInfo, instanceData?.handle, instanceOffset, VkBool32(update ? VK_TRUE : VK_FALSE), dst, src, scratch.handle, scratchOffset)
        }
    }

    func cmdTraceRaysNV(commandBuffer: CommandBuffer, raygenShaderBindingTableBuffer: Buffer, raygenShaderBindingOffset: VkDeviceSize, missShaderBindingTableBuffer: Buffer?, missShaderBindingOffset: VkDeviceSize, missShaderBindingStride: VkDeviceSize, hitShaderBindingTableBuffer: Buffer?, hitShaderBindingOffset: VkDeviceSize, hitShaderBindingStride: VkDeviceSize, callableShaderBindingTableBuffer: Buffer?, callableShaderBindingOffset: VkDeviceSize, callableShaderBindingStride: VkDeviceSize, width: UInt32, height: UInt32, depth: UInt32) -> Void {
        vkCmdTraceRaysNV(commandBuffer.handle, raygenShaderBindingTableBuffer.handle, raygenShaderBindingOffset, missShaderBindingTableBuffer?.handle, missShaderBindingOffset, missShaderBindingStride, hitShaderBindingTableBuffer?.handle, hitShaderBindingOffset, hitShaderBindingStride, callableShaderBindingTableBuffer?.handle, callableShaderBindingOffset, callableShaderBindingStride, width, height, depth)
    }

    func cmdSetPerformanceMarkerINTEL(commandBuffer: CommandBuffer, pMarkerInfo: PerformanceMarkerInfoINTEL) throws -> Void {
        try pMarkerInfo.withCStruct { ptr_pMarkerInfo in
            try checkResult(
                vkCmdSetPerformanceMarkerINTEL(commandBuffer.handle, ptr_pMarkerInfo)
            )
        }
    }

    func cmdSetPerformanceStreamMarkerINTEL(commandBuffer: CommandBuffer, pMarkerInfo: PerformanceStreamMarkerInfoINTEL) throws -> Void {
        try pMarkerInfo.withCStruct { ptr_pMarkerInfo in
            try checkResult(
                vkCmdSetPerformanceStreamMarkerINTEL(commandBuffer.handle, ptr_pMarkerInfo)
            )
        }
    }

    func cmdSetPerformanceOverrideINTEL(commandBuffer: CommandBuffer, pOverrideInfo: PerformanceOverrideInfoINTEL) throws -> Void {
        try pOverrideInfo.withCStruct { ptr_pOverrideInfo in
            try checkResult(
                vkCmdSetPerformanceOverrideINTEL(commandBuffer.handle, ptr_pOverrideInfo)
            )
        }
    }

    func cmdSetLineStippleEXT(commandBuffer: CommandBuffer, lineStippleFactor: UInt32, lineStipplePattern: UInt16) -> Void {
        vkCmdSetLineStippleEXT(commandBuffer.handle, lineStippleFactor, lineStipplePattern)
    }
}

class DeviceMemory {
    let handle: VkDeviceMemory!
    let device: Device

    init(handle: VkDeviceMemory!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func mapMemory(device: Device, memory: DeviceMemory, offset: VkDeviceSize, size: VkDeviceSize, flags: MemoryMapFlags, ppData: UnsafeMutablePointer<UnsafeMutableRawPointer?>) throws -> Void {
        try checkResult(
            vkMapMemory(device.handle, memory.handle, offset, size, flags.rawValue, ppData)
        )
    }

    func unmapMemory(device: Device, memory: DeviceMemory) -> Void {
        vkUnmapMemory(device.handle, memory.handle)
    }

    func getDeviceMemoryCommitment(device: Device, memory: DeviceMemory, pCommittedMemoryInBytes: UnsafeMutablePointer<VkDeviceSize>) -> Void {
        vkGetDeviceMemoryCommitment(device.handle, memory.handle, pCommittedMemoryInBytes)
    }
}

class CommandPool {
    let handle: VkCommandPool!
    let device: Device

    init(handle: VkCommandPool!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func destroyCommandPool(device: Device, commandPool: CommandPool?) -> Void {
        vkDestroyCommandPool(device.handle, commandPool?.handle, nil)
    }

    func resetCommandPool(device: Device, commandPool: CommandPool, flags: CommandPoolResetFlags) throws -> Void {
        try checkResult(
            vkResetCommandPool(device.handle, commandPool.handle, flags.rawValue)
        )
    }

    func freeCommandBuffers(device: Device, commandPool: CommandPool, pCommandBuffers: Array<CommandBuffer>) -> Void {
        pCommandBuffers.map{ $0.handle }.withUnsafeBufferPointer { ptr_pCommandBuffers in
            vkFreeCommandBuffers(device.handle, commandPool.handle, UInt32(ptr_pCommandBuffers.count), ptr_pCommandBuffers.baseAddress)
        }
    }

    func trimCommandPool(device: Device, commandPool: CommandPool, flags: CommandPoolTrimFlags) -> Void {
        vkTrimCommandPool(device.handle, commandPool.handle, flags.rawValue)
    }
}

class Buffer {
    let handle: VkBuffer!
    let device: Device

    init(handle: VkBuffer!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func getBufferMemoryRequirements(device: Device, buffer: Buffer, pMemoryRequirements: UnsafeMutablePointer<VkMemoryRequirements>) -> Void {
        vkGetBufferMemoryRequirements(device.handle, buffer.handle, pMemoryRequirements)
    }

    func bindBufferMemory(device: Device, buffer: Buffer, memory: DeviceMemory, memoryOffset: VkDeviceSize) throws -> Void {
        try checkResult(
            vkBindBufferMemory(device.handle, buffer.handle, memory.handle, memoryOffset)
        )
    }

    func destroyBuffer(device: Device, buffer: Buffer?) -> Void {
        vkDestroyBuffer(device.handle, buffer?.handle, nil)
    }
}

class BufferView {
    let handle: VkBufferView!
    let device: Device

    init(handle: VkBufferView!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func destroyBufferView(device: Device, bufferView: BufferView?) -> Void {
        vkDestroyBufferView(device.handle, bufferView?.handle, nil)
    }
}

class Image {
    let handle: VkImage!
    let device: Device

    init(handle: VkImage!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func getImageMemoryRequirements(device: Device, image: Image, pMemoryRequirements: UnsafeMutablePointer<VkMemoryRequirements>) -> Void {
        vkGetImageMemoryRequirements(device.handle, image.handle, pMemoryRequirements)
    }

    func bindImageMemory(device: Device, image: Image, memory: DeviceMemory, memoryOffset: VkDeviceSize) throws -> Void {
        try checkResult(
            vkBindImageMemory(device.handle, image.handle, memory.handle, memoryOffset)
        )
    }

    func getImageSparseMemoryRequirements(device: Device, image: Image, pSparseMemoryRequirementCount: UnsafeMutablePointer<UInt32>, pSparseMemoryRequirements: UnsafeMutablePointer<VkSparseImageMemoryRequirements>) -> Void {
        vkGetImageSparseMemoryRequirements(device.handle, image.handle, pSparseMemoryRequirementCount, pSparseMemoryRequirements)
    }

    func destroyImage(device: Device, image: Image?) -> Void {
        vkDestroyImage(device.handle, image?.handle, nil)
    }

    func getImageSubresourceLayout(device: Device, image: Image, pSubresource: ImageSubresource, pLayout: UnsafeMutablePointer<VkSubresourceLayout>) -> Void {
        pSubresource.withCStruct { ptr_pSubresource in
            vkGetImageSubresourceLayout(device.handle, image.handle, ptr_pSubresource, pLayout)
        }
    }

    func getImageDrmFormatModifierPropertiesEXT(device: Device, image: Image, pProperties: UnsafeMutablePointer<VkImageDrmFormatModifierPropertiesEXT>) throws -> Void {
        try checkResult(
            vkGetImageDrmFormatModifierPropertiesEXT(device.handle, image.handle, pProperties)
        )
    }
}

class ImageView {
    let handle: VkImageView!
    let device: Device

    init(handle: VkImageView!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func destroyImageView(device: Device, imageView: ImageView?) -> Void {
        vkDestroyImageView(device.handle, imageView?.handle, nil)
    }
}

class ShaderModule {
    let handle: VkShaderModule!
    let device: Device

    init(handle: VkShaderModule!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func destroyShaderModule(device: Device, shaderModule: ShaderModule?) -> Void {
        vkDestroyShaderModule(device.handle, shaderModule?.handle, nil)
    }
}

class Pipeline {
    let handle: VkPipeline!
    let device: Device

    init(handle: VkPipeline!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func destroyPipeline(device: Device, pipeline: Pipeline?) -> Void {
        vkDestroyPipeline(device.handle, pipeline?.handle, nil)
    }

    func getShaderInfoAMD(device: Device, pipeline: Pipeline, shaderStage: ShaderStageFlags, infoType: ShaderInfoTypeAMD, pInfoSize: UnsafeMutablePointer<Int>, pInfo: UnsafeMutableRawPointer) throws -> Void {
        try checkResult(
            vkGetShaderInfoAMD(device.handle, pipeline.handle, VkShaderStageFlagBits(rawValue: shaderStage.rawValue), VkShaderInfoTypeAMD(rawValue: infoType.rawValue), pInfoSize, pInfo)
        )
    }

    func compileDeferredNV(device: Device, pipeline: Pipeline, shader: UInt32) throws -> Void {
        try checkResult(
            vkCompileDeferredNV(device.handle, pipeline.handle, shader)
        )
    }
}

class PipelineLayout {
    let handle: VkPipelineLayout!
    let device: Device

    init(handle: VkPipelineLayout!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func destroyPipelineLayout(device: Device, pipelineLayout: PipelineLayout?) -> Void {
        vkDestroyPipelineLayout(device.handle, pipelineLayout?.handle, nil)
    }
}

class Sampler {
    let handle: VkSampler!
    let device: Device

    init(handle: VkSampler!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func destroySampler(device: Device, sampler: Sampler?) -> Void {
        vkDestroySampler(device.handle, sampler?.handle, nil)
    }
}

class DescriptorSet {
    let handle: VkDescriptorSet!
    let descriptorPool: DescriptorPool

    init(handle: VkDescriptorSet!, descriptorPool: DescriptorPool) {
        self.handle = handle
        self.descriptorPool = descriptorPool
    }

    func updateDescriptorSetWithTemplate(device: Device, descriptorSet: DescriptorSet, descriptorUpdateTemplate: DescriptorUpdateTemplate, pData: UnsafeRawPointer) -> Void {
        vkUpdateDescriptorSetWithTemplate(device.handle, descriptorSet.handle, descriptorUpdateTemplate.handle, pData)
    }
}

class DescriptorSetLayout {
    let handle: VkDescriptorSetLayout!
    let device: Device

    init(handle: VkDescriptorSetLayout!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func destroyDescriptorSetLayout(device: Device, descriptorSetLayout: DescriptorSetLayout?) -> Void {
        vkDestroyDescriptorSetLayout(device.handle, descriptorSetLayout?.handle, nil)
    }
}

class DescriptorPool {
    let handle: VkDescriptorPool!
    let device: Device

    init(handle: VkDescriptorPool!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func destroyDescriptorPool(device: Device, descriptorPool: DescriptorPool?) -> Void {
        vkDestroyDescriptorPool(device.handle, descriptorPool?.handle, nil)
    }

    func resetDescriptorPool(device: Device, descriptorPool: DescriptorPool, flags: DescriptorPoolResetFlags) throws -> Void {
        try checkResult(
            vkResetDescriptorPool(device.handle, descriptorPool.handle, flags.rawValue)
        )
    }

    func freeDescriptorSets(device: Device, descriptorPool: DescriptorPool, pDescriptorSets: Array<DescriptorSet>) throws -> Void {
        try pDescriptorSets.map{ $0.handle }.withUnsafeBufferPointer { ptr_pDescriptorSets in
            try checkResult(
                vkFreeDescriptorSets(device.handle, descriptorPool.handle, UInt32(ptr_pDescriptorSets.count), ptr_pDescriptorSets.baseAddress)
            )
        }
    }
}

class Fence {
    let handle: VkFence!
    let device: Device

    init(handle: VkFence!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func destroyFence(device: Device, fence: Fence?) -> Void {
        vkDestroyFence(device.handle, fence?.handle, nil)
    }

    func getFenceStatus(device: Device, fence: Fence) throws -> Void {
        try checkResult(
            vkGetFenceStatus(device.handle, fence.handle)
        )
    }
}

class Semaphore {
    let handle: VkSemaphore!
    let device: Device

    init(handle: VkSemaphore!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func destroySemaphore(device: Device, semaphore: Semaphore?) -> Void {
        vkDestroySemaphore(device.handle, semaphore?.handle, nil)
    }

    func getSemaphoreCounterValue(device: Device, semaphore: Semaphore, pValue: UnsafeMutablePointer<UInt64>) throws -> Void {
        try checkResult(
            vkGetSemaphoreCounterValue(device.handle, semaphore.handle, pValue)
        )
    }
}

class Event {
    let handle: VkEvent!
    let device: Device

    init(handle: VkEvent!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func destroyEvent(device: Device, event: Event?) -> Void {
        vkDestroyEvent(device.handle, event?.handle, nil)
    }

    func getEventStatus(device: Device, event: Event) throws -> Void {
        try checkResult(
            vkGetEventStatus(device.handle, event.handle)
        )
    }

    func setEvent(device: Device, event: Event) throws -> Void {
        try checkResult(
            vkSetEvent(device.handle, event.handle)
        )
    }

    func resetEvent(device: Device, event: Event) throws -> Void {
        try checkResult(
            vkResetEvent(device.handle, event.handle)
        )
    }
}

class QueryPool {
    let handle: VkQueryPool!
    let device: Device

    init(handle: VkQueryPool!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func destroyQueryPool(device: Device, queryPool: QueryPool?) -> Void {
        vkDestroyQueryPool(device.handle, queryPool?.handle, nil)
    }

    func getQueryPoolResults(device: Device, queryPool: QueryPool, firstQuery: UInt32, queryCount: UInt32, dataSize: Int, pData: UnsafeMutableRawPointer, stride: VkDeviceSize, flags: QueryResultFlags) throws -> Void {
        try checkResult(
            vkGetQueryPoolResults(device.handle, queryPool.handle, firstQuery, queryCount, dataSize, pData, stride, flags.rawValue)
        )
    }

    func resetQueryPool(device: Device, queryPool: QueryPool, firstQuery: UInt32, queryCount: UInt32) -> Void {
        vkResetQueryPool(device.handle, queryPool.handle, firstQuery, queryCount)
    }
}

class Framebuffer {
    let handle: VkFramebuffer!
    let device: Device

    init(handle: VkFramebuffer!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func destroyFramebuffer(device: Device, framebuffer: Framebuffer?) -> Void {
        vkDestroyFramebuffer(device.handle, framebuffer?.handle, nil)
    }
}

class RenderPass {
    let handle: VkRenderPass!
    let device: Device

    init(handle: VkRenderPass!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func destroyRenderPass(device: Device, renderPass: RenderPass?) -> Void {
        vkDestroyRenderPass(device.handle, renderPass?.handle, nil)
    }

    func getRenderAreaGranularity(device: Device, renderPass: RenderPass, pGranularity: UnsafeMutablePointer<VkExtent2D>) -> Void {
        vkGetRenderAreaGranularity(device.handle, renderPass.handle, pGranularity)
    }
}

class PipelineCache {
    let handle: VkPipelineCache!
    let device: Device

    init(handle: VkPipelineCache!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func destroyPipelineCache(device: Device, pipelineCache: PipelineCache?) -> Void {
        vkDestroyPipelineCache(device.handle, pipelineCache?.handle, nil)
    }

    func getPipelineCacheData(device: Device, pipelineCache: PipelineCache, pDataSize: UnsafeMutablePointer<Int>, pData: UnsafeMutableRawPointer) throws -> Void {
        try checkResult(
            vkGetPipelineCacheData(device.handle, pipelineCache.handle, pDataSize, pData)
        )
    }

    func mergePipelineCaches(device: Device, dstCache: PipelineCache, pSrcCaches: Array<PipelineCache>) throws -> Void {
        try pSrcCaches.map{ $0.handle }.withUnsafeBufferPointer { ptr_pSrcCaches in
            try checkResult(
                vkMergePipelineCaches(device.handle, dstCache.handle, UInt32(ptr_pSrcCaches.count), ptr_pSrcCaches.baseAddress)
            )
        }
    }
}

class IndirectCommandsLayoutNV {
    let handle: VkIndirectCommandsLayoutNV!
    let device: Device

    init(handle: VkIndirectCommandsLayoutNV!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func destroyIndirectCommandsLayoutNV(device: Device, indirectCommandsLayout: IndirectCommandsLayoutNV) -> Void {
        vkDestroyIndirectCommandsLayoutNV(device.handle, indirectCommandsLayout.handle, nil)
    }
}

class DescriptorUpdateTemplate {
    let handle: VkDescriptorUpdateTemplate!
    let device: Device

    init(handle: VkDescriptorUpdateTemplate!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func destroyDescriptorUpdateTemplate(device: Device, descriptorUpdateTemplate: DescriptorUpdateTemplate?) -> Void {
        vkDestroyDescriptorUpdateTemplate(device.handle, descriptorUpdateTemplate?.handle, nil)
    }
}

class SamplerYcbcrConversion {
    let handle: VkSamplerYcbcrConversion!
    let device: Device

    init(handle: VkSamplerYcbcrConversion!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func destroySamplerYcbcrConversion(device: Device, ycbcrConversion: SamplerYcbcrConversion?) -> Void {
        vkDestroySamplerYcbcrConversion(device.handle, ycbcrConversion?.handle, nil)
    }
}

class ValidationCacheEXT {
    let handle: VkValidationCacheEXT!
    let device: Device

    init(handle: VkValidationCacheEXT!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func destroyValidationCacheEXT(device: Device, validationCache: ValidationCacheEXT?) -> Void {
        vkDestroyValidationCacheEXT(device.handle, validationCache?.handle, nil)
    }

    func getValidationCacheDataEXT(device: Device, validationCache: ValidationCacheEXT, pDataSize: UnsafeMutablePointer<Int>, pData: UnsafeMutableRawPointer) throws -> Void {
        try checkResult(
            vkGetValidationCacheDataEXT(device.handle, validationCache.handle, pDataSize, pData)
        )
    }

    func mergeValidationCachesEXT(device: Device, dstCache: ValidationCacheEXT, pSrcCaches: Array<ValidationCacheEXT>) throws -> Void {
        try pSrcCaches.map{ $0.handle }.withUnsafeBufferPointer { ptr_pSrcCaches in
            try checkResult(
                vkMergeValidationCachesEXT(device.handle, dstCache.handle, UInt32(ptr_pSrcCaches.count), ptr_pSrcCaches.baseAddress)
            )
        }
    }
}

class PerformanceConfigurationINTEL {
    let handle: VkPerformanceConfigurationINTEL!
    let device: Device

    init(handle: VkPerformanceConfigurationINTEL!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func releasePerformanceConfigurationINTEL(device: Device, configuration: PerformanceConfigurationINTEL) throws -> Void {
        try checkResult(
            vkReleasePerformanceConfigurationINTEL(device.handle, configuration.handle)
        )
    }
}

class DisplayKHR {
    let handle: VkDisplayKHR!
    let physicalDevice: PhysicalDevice

    init(handle: VkDisplayKHR!, physicalDevice: PhysicalDevice) {
        self.handle = handle
        self.physicalDevice = physicalDevice
    }

    func getDisplayModePropertiesKHR(physicalDevice: PhysicalDevice, display: DisplayKHR, pPropertyCount: UnsafeMutablePointer<UInt32>, pProperties: UnsafeMutablePointer<VkDisplayModePropertiesKHR>) throws -> Void {
        try checkResult(
            vkGetDisplayModePropertiesKHR(physicalDevice.handle, display.handle, pPropertyCount, pProperties)
        )
    }

    func createDisplayModeKHR(physicalDevice: PhysicalDevice, display: DisplayKHR, pCreateInfo: DisplayModeCreateInfoKHR, pMode: UnsafeMutablePointer<VkDisplayModeKHR?>) throws -> Void {
        try pCreateInfo.withCStruct { ptr_pCreateInfo in
            try checkResult(
                vkCreateDisplayModeKHR(physicalDevice.handle, display.handle, ptr_pCreateInfo, nil, pMode)
            )
        }
    }

    func releaseDisplayEXT(physicalDevice: PhysicalDevice, display: DisplayKHR) throws -> Void {
        try checkResult(
            vkReleaseDisplayEXT(physicalDevice.handle, display.handle)
        )
    }

    func getDisplayModeProperties2KHR(physicalDevice: PhysicalDevice, display: DisplayKHR, pPropertyCount: UnsafeMutablePointer<UInt32>, pProperties: UnsafeMutablePointer<VkDisplayModeProperties2KHR>) throws -> Void {
        try checkResult(
            vkGetDisplayModeProperties2KHR(physicalDevice.handle, display.handle, pPropertyCount, pProperties)
        )
    }
}

class DisplayModeKHR {
    let handle: VkDisplayModeKHR!
    let display: DisplayKHR

    init(handle: VkDisplayModeKHR!, display: DisplayKHR) {
        self.handle = handle
        self.display = display
    }

    func getDisplayPlaneCapabilitiesKHR(physicalDevice: PhysicalDevice, mode: DisplayModeKHR, planeIndex: UInt32, pCapabilities: UnsafeMutablePointer<VkDisplayPlaneCapabilitiesKHR>) throws -> Void {
        try checkResult(
            vkGetDisplayPlaneCapabilitiesKHR(physicalDevice.handle, mode.handle, planeIndex, pCapabilities)
        )
    }
}

class SurfaceKHR {
    let handle: VkSurfaceKHR!
    let instance: Instance

    init(handle: VkSurfaceKHR!, instance: Instance) {
        self.handle = handle
        self.instance = instance
    }

    func destroySurfaceKHR(instance: Instance, surface: SurfaceKHR?) -> Void {
        vkDestroySurfaceKHR(instance.handle, surface?.handle, nil)
    }
}

class SwapchainKHR {
    let handle: VkSwapchainKHR!
    let surface: SurfaceKHR

    init(handle: VkSwapchainKHR!, surface: SurfaceKHR) {
        self.handle = handle
        self.surface = surface
    }
}

class DebugReportCallbackEXT {
    let handle: VkDebugReportCallbackEXT!
    let instance: Instance

    init(handle: VkDebugReportCallbackEXT!, instance: Instance) {
        self.handle = handle
        self.instance = instance
    }

    func destroyDebugReportCallbackEXT(instance: Instance, callback: DebugReportCallbackEXT) -> Void {
        vkDestroyDebugReportCallbackEXT(instance.handle, callback.handle, nil)
    }
}

class DebugUtilsMessengerEXT {
    let handle: VkDebugUtilsMessengerEXT!
    let instance: Instance

    init(handle: VkDebugUtilsMessengerEXT!, instance: Instance) {
        self.handle = handle
        self.instance = instance
    }

    func destroyDebugUtilsMessengerEXT(instance: Instance, messenger: DebugUtilsMessengerEXT) -> Void {
        vkDestroyDebugUtilsMessengerEXT(instance.handle, messenger.handle, nil)
    }
}

