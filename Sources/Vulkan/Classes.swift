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

    func enumeratePhysicalDevices(pPhysicalDeviceCount: UnsafeMutablePointer<UInt32>, pPhysicalDevices: UnsafeMutablePointer<VkPhysicalDevice?>) throws -> Void {
        try checkResult(
            vkEnumeratePhysicalDevices(self.handle, pPhysicalDeviceCount, pPhysicalDevices)
        )
    }

    func getInstanceProcAddr(instance: Instance?, pName: String) -> PFN_vkVoidFunction {
        pName.withCString { cString_pName in
            vkGetInstanceProcAddr(instance?.handle, cString_pName)
        }
    }

    func destroyDevice(device: Device?) -> Void {
        vkDestroyDevice(device?.handle, nil)
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

    func createDisplayPlaneSurfaceKHR(pCreateInfo: DisplaySurfaceCreateInfoKHR, pSurface: UnsafeMutablePointer<VkSurfaceKHR?>) throws -> Void {
        try pCreateInfo.withCStruct { ptr_pCreateInfo in
            try checkResult(
                vkCreateDisplayPlaneSurfaceKHR(self.handle, ptr_pCreateInfo, nil, pSurface)
            )
        }
    }

    func destroySurfaceKHR(surface: SurfaceKHR?) -> Void {
        vkDestroySurfaceKHR(self.handle, surface?.handle, nil)
    }

    func createDebugReportCallbackEXT(pCreateInfo: DebugReportCallbackCreateInfoEXT, pCallback: UnsafeMutablePointer<VkDebugReportCallbackEXT?>) throws -> Void {
        try pCreateInfo.withCStruct { ptr_pCreateInfo in
            try checkResult(
                vkCreateDebugReportCallbackEXT(self.handle, ptr_pCreateInfo, nil, pCallback)
            )
        }
    }

    func debugReportMessageEXT(flags: DebugReportFlagsEXT, objectType: DebugReportObjectTypeEXT, object: UInt64, location: Int, messageCode: Int32, pLayerPrefix: String, pMessage: String) -> Void {
        pLayerPrefix.withCString { cString_pLayerPrefix in
            pMessage.withCString { cString_pMessage in
                vkDebugReportMessageEXT(self.handle, flags.rawValue, VkDebugReportObjectTypeEXT(rawValue: objectType.rawValue), object, location, messageCode, cString_pLayerPrefix, cString_pMessage)
            }
        }
    }

    func enumeratePhysicalDeviceGroups(pPhysicalDeviceGroupCount: UnsafeMutablePointer<UInt32>, pPhysicalDeviceGroupProperties: UnsafeMutablePointer<VkPhysicalDeviceGroupProperties>) throws -> Void {
        try checkResult(
            vkEnumeratePhysicalDeviceGroups(self.handle, pPhysicalDeviceGroupCount, pPhysicalDeviceGroupProperties)
        )
    }

    func createDebugUtilsMessengerEXT(pCreateInfo: DebugUtilsMessengerCreateInfoEXT, pMessenger: UnsafeMutablePointer<VkDebugUtilsMessengerEXT?>) throws -> Void {
        try pCreateInfo.withCStruct { ptr_pCreateInfo in
            try checkResult(
                vkCreateDebugUtilsMessengerEXT(self.handle, ptr_pCreateInfo, nil, pMessenger)
            )
        }
    }

    func submitDebugUtilsMessageEXT(messageSeverity: DebugUtilsMessageSeverityFlagsEXT, messageTypes: DebugUtilsMessageTypeFlagsEXT, pCallbackData: DebugUtilsMessengerCallbackDataEXT) -> Void {
        pCallbackData.withCStruct { ptr_pCallbackData in
            vkSubmitDebugUtilsMessageEXT(self.handle, VkDebugUtilsMessageSeverityFlagBitsEXT(rawValue: messageSeverity.rawValue), messageTypes.rawValue, ptr_pCallbackData)
        }
    }

    func createHeadlessSurfaceEXT(pCreateInfo: HeadlessSurfaceCreateInfoEXT, pSurface: UnsafeMutablePointer<VkSurfaceKHR?>) throws -> Void {
        try pCreateInfo.withCStruct { ptr_pCreateInfo in
            try checkResult(
                vkCreateHeadlessSurfaceEXT(self.handle, ptr_pCreateInfo, nil, pSurface)
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

    func getPhysicalDeviceProperties(pProperties: UnsafeMutablePointer<VkPhysicalDeviceProperties>) -> Void {
        vkGetPhysicalDeviceProperties(self.handle, pProperties)
    }

    func getPhysicalDeviceQueueFamilyProperties(pQueueFamilyPropertyCount: UnsafeMutablePointer<UInt32>, pQueueFamilyProperties: UnsafeMutablePointer<VkQueueFamilyProperties>) -> Void {
        vkGetPhysicalDeviceQueueFamilyProperties(self.handle, pQueueFamilyPropertyCount, pQueueFamilyProperties)
    }

    func getPhysicalDeviceMemoryProperties(pMemoryProperties: UnsafeMutablePointer<VkPhysicalDeviceMemoryProperties>) -> Void {
        vkGetPhysicalDeviceMemoryProperties(self.handle, pMemoryProperties)
    }

    func getPhysicalDeviceFeatures(pFeatures: UnsafeMutablePointer<VkPhysicalDeviceFeatures>) -> Void {
        vkGetPhysicalDeviceFeatures(self.handle, pFeatures)
    }

    func getPhysicalDeviceFormatProperties(format: Format, pFormatProperties: UnsafeMutablePointer<VkFormatProperties>) -> Void {
        vkGetPhysicalDeviceFormatProperties(self.handle, VkFormat(rawValue: format.rawValue), pFormatProperties)
    }

    func getPhysicalDeviceImageFormatProperties(format: Format, type: ImageType, tiling: ImageTiling, usage: ImageUsageFlags, flags: ImageCreateFlags, pImageFormatProperties: UnsafeMutablePointer<VkImageFormatProperties>) throws -> Void {
        try checkResult(
            vkGetPhysicalDeviceImageFormatProperties(self.handle, VkFormat(rawValue: format.rawValue), VkImageType(rawValue: type.rawValue), VkImageTiling(rawValue: tiling.rawValue), usage.rawValue, flags.rawValue, pImageFormatProperties)
        )
    }

    func createDevice(pCreateInfo: DeviceCreateInfo, pDevice: UnsafeMutablePointer<VkDevice?>) throws -> Void {
        try pCreateInfo.withCStruct { ptr_pCreateInfo in
            try checkResult(
                vkCreateDevice(self.handle, ptr_pCreateInfo, nil, pDevice)
            )
        }
    }

    func enumerateDeviceLayerProperties(pPropertyCount: UnsafeMutablePointer<UInt32>, pProperties: UnsafeMutablePointer<VkLayerProperties>) throws -> Void {
        try checkResult(
            vkEnumerateDeviceLayerProperties(self.handle, pPropertyCount, pProperties)
        )
    }

    func enumerateDeviceExtensionProperties(pLayerName: String?, pPropertyCount: UnsafeMutablePointer<UInt32>, pProperties: UnsafeMutablePointer<VkExtensionProperties>) throws -> Void {
        try pLayerName.withOptionalCString { cString_pLayerName in
            try checkResult(
                vkEnumerateDeviceExtensionProperties(self.handle, cString_pLayerName, pPropertyCount, pProperties)
            )
        }
    }

    func getPhysicalDeviceSparseImageFormatProperties(format: Format, type: ImageType, samples: SampleCountFlags, usage: ImageUsageFlags, tiling: ImageTiling, pPropertyCount: UnsafeMutablePointer<UInt32>, pProperties: UnsafeMutablePointer<VkSparseImageFormatProperties>) -> Void {
        vkGetPhysicalDeviceSparseImageFormatProperties(self.handle, VkFormat(rawValue: format.rawValue), VkImageType(rawValue: type.rawValue), VkSampleCountFlagBits(rawValue: samples.rawValue), usage.rawValue, VkImageTiling(rawValue: tiling.rawValue), pPropertyCount, pProperties)
    }

    func getPhysicalDeviceDisplayPropertiesKHR(pPropertyCount: UnsafeMutablePointer<UInt32>, pProperties: UnsafeMutablePointer<VkDisplayPropertiesKHR>) throws -> Void {
        try checkResult(
            vkGetPhysicalDeviceDisplayPropertiesKHR(self.handle, pPropertyCount, pProperties)
        )
    }

    func getPhysicalDeviceDisplayPlanePropertiesKHR(pPropertyCount: UnsafeMutablePointer<UInt32>, pProperties: UnsafeMutablePointer<VkDisplayPlanePropertiesKHR>) throws -> Void {
        try checkResult(
            vkGetPhysicalDeviceDisplayPlanePropertiesKHR(self.handle, pPropertyCount, pProperties)
        )
    }

    func getDisplayPlaneSupportedDisplaysKHR(planeIndex: UInt32, pDisplayCount: UnsafeMutablePointer<UInt32>, pDisplays: UnsafeMutablePointer<VkDisplayKHR?>) throws -> Void {
        try checkResult(
            vkGetDisplayPlaneSupportedDisplaysKHR(self.handle, planeIndex, pDisplayCount, pDisplays)
        )
    }

    func getPhysicalDeviceSurfaceSupportKHR(queueFamilyIndex: UInt32, surface: SurfaceKHR, pSupported: UnsafeMutablePointer<VkBool32>) throws -> Void {
        try checkResult(
            vkGetPhysicalDeviceSurfaceSupportKHR(self.handle, queueFamilyIndex, surface.handle, pSupported)
        )
    }

    func getPhysicalDeviceSurfaceCapabilitiesKHR(surface: SurfaceKHR, pSurfaceCapabilities: UnsafeMutablePointer<VkSurfaceCapabilitiesKHR>) throws -> Void {
        try checkResult(
            vkGetPhysicalDeviceSurfaceCapabilitiesKHR(self.handle, surface.handle, pSurfaceCapabilities)
        )
    }

    func getPhysicalDeviceSurfaceFormatsKHR(surface: SurfaceKHR, pSurfaceFormatCount: UnsafeMutablePointer<UInt32>, pSurfaceFormats: UnsafeMutablePointer<VkSurfaceFormatKHR>) throws -> Void {
        try checkResult(
            vkGetPhysicalDeviceSurfaceFormatsKHR(self.handle, surface.handle, pSurfaceFormatCount, pSurfaceFormats)
        )
    }

    func getPhysicalDeviceSurfacePresentModesKHR(surface: SurfaceKHR, pPresentModeCount: UnsafeMutablePointer<UInt32>, pPresentModes: UnsafeMutablePointer<VkPresentModeKHR>) throws -> Void {
        try checkResult(
            vkGetPhysicalDeviceSurfacePresentModesKHR(self.handle, surface.handle, pPresentModeCount, pPresentModes)
        )
    }

    func getPhysicalDeviceExternalImageFormatPropertiesNV(format: Format, type: ImageType, tiling: ImageTiling, usage: ImageUsageFlags, flags: ImageCreateFlags, externalHandleType: ExternalMemoryHandleTypeFlagsNV, pExternalImageFormatProperties: UnsafeMutablePointer<VkExternalImageFormatPropertiesNV>) throws -> Void {
        try checkResult(
            vkGetPhysicalDeviceExternalImageFormatPropertiesNV(self.handle, VkFormat(rawValue: format.rawValue), VkImageType(rawValue: type.rawValue), VkImageTiling(rawValue: tiling.rawValue), usage.rawValue, flags.rawValue, externalHandleType.rawValue, pExternalImageFormatProperties)
        )
    }

    func getPhysicalDeviceFeatures2(pFeatures: UnsafeMutablePointer<VkPhysicalDeviceFeatures2>) -> Void {
        vkGetPhysicalDeviceFeatures2(self.handle, pFeatures)
    }

    func getPhysicalDeviceProperties2(pProperties: UnsafeMutablePointer<VkPhysicalDeviceProperties2>) -> Void {
        vkGetPhysicalDeviceProperties2(self.handle, pProperties)
    }

    func getPhysicalDeviceFormatProperties2(format: Format, pFormatProperties: UnsafeMutablePointer<VkFormatProperties2>) -> Void {
        vkGetPhysicalDeviceFormatProperties2(self.handle, VkFormat(rawValue: format.rawValue), pFormatProperties)
    }

    func getPhysicalDeviceImageFormatProperties2(pImageFormatInfo: PhysicalDeviceImageFormatInfo2, pImageFormatProperties: UnsafeMutablePointer<VkImageFormatProperties2>) throws -> Void {
        try pImageFormatInfo.withCStruct { ptr_pImageFormatInfo in
            try checkResult(
                vkGetPhysicalDeviceImageFormatProperties2(self.handle, ptr_pImageFormatInfo, pImageFormatProperties)
            )
        }
    }

    func getPhysicalDeviceQueueFamilyProperties2(pQueueFamilyPropertyCount: UnsafeMutablePointer<UInt32>, pQueueFamilyProperties: UnsafeMutablePointer<VkQueueFamilyProperties2>) -> Void {
        vkGetPhysicalDeviceQueueFamilyProperties2(self.handle, pQueueFamilyPropertyCount, pQueueFamilyProperties)
    }

    func getPhysicalDeviceMemoryProperties2(pMemoryProperties: UnsafeMutablePointer<VkPhysicalDeviceMemoryProperties2>) -> Void {
        vkGetPhysicalDeviceMemoryProperties2(self.handle, pMemoryProperties)
    }

    func getPhysicalDeviceSparseImageFormatProperties2(pFormatInfo: PhysicalDeviceSparseImageFormatInfo2, pPropertyCount: UnsafeMutablePointer<UInt32>, pProperties: UnsafeMutablePointer<VkSparseImageFormatProperties2>) -> Void {
        pFormatInfo.withCStruct { ptr_pFormatInfo in
            vkGetPhysicalDeviceSparseImageFormatProperties2(self.handle, ptr_pFormatInfo, pPropertyCount, pProperties)
        }
    }

    func getPhysicalDeviceExternalBufferProperties(pExternalBufferInfo: PhysicalDeviceExternalBufferInfo, pExternalBufferProperties: UnsafeMutablePointer<VkExternalBufferProperties>) -> Void {
        pExternalBufferInfo.withCStruct { ptr_pExternalBufferInfo in
            vkGetPhysicalDeviceExternalBufferProperties(self.handle, ptr_pExternalBufferInfo, pExternalBufferProperties)
        }
    }

    func getPhysicalDeviceExternalSemaphoreProperties(pExternalSemaphoreInfo: PhysicalDeviceExternalSemaphoreInfo, pExternalSemaphoreProperties: UnsafeMutablePointer<VkExternalSemaphoreProperties>) -> Void {
        pExternalSemaphoreInfo.withCStruct { ptr_pExternalSemaphoreInfo in
            vkGetPhysicalDeviceExternalSemaphoreProperties(self.handle, ptr_pExternalSemaphoreInfo, pExternalSemaphoreProperties)
        }
    }

    func getPhysicalDeviceExternalFenceProperties(pExternalFenceInfo: PhysicalDeviceExternalFenceInfo, pExternalFenceProperties: UnsafeMutablePointer<VkExternalFenceProperties>) -> Void {
        pExternalFenceInfo.withCStruct { ptr_pExternalFenceInfo in
            vkGetPhysicalDeviceExternalFenceProperties(self.handle, ptr_pExternalFenceInfo, pExternalFenceProperties)
        }
    }

    func getPhysicalDeviceSurfaceCapabilities2EXT(surface: SurfaceKHR, pSurfaceCapabilities: UnsafeMutablePointer<VkSurfaceCapabilities2EXT>) throws -> Void {
        try checkResult(
            vkGetPhysicalDeviceSurfaceCapabilities2EXT(self.handle, surface.handle, pSurfaceCapabilities)
        )
    }

    func getPhysicalDevicePresentRectanglesKHR(surface: SurfaceKHR, pRectCount: UnsafeMutablePointer<UInt32>, pRects: UnsafeMutablePointer<VkRect2D>) throws -> Void {
        try checkResult(
            vkGetPhysicalDevicePresentRectanglesKHR(self.handle, surface.handle, pRectCount, pRects)
        )
    }

    func getPhysicalDeviceMultisamplePropertiesEXT(samples: SampleCountFlags, pMultisampleProperties: UnsafeMutablePointer<VkMultisamplePropertiesEXT>) -> Void {
        vkGetPhysicalDeviceMultisamplePropertiesEXT(self.handle, VkSampleCountFlagBits(rawValue: samples.rawValue), pMultisampleProperties)
    }

    func getPhysicalDeviceSurfaceCapabilities2KHR(pSurfaceInfo: PhysicalDeviceSurfaceInfo2KHR, pSurfaceCapabilities: UnsafeMutablePointer<VkSurfaceCapabilities2KHR>) throws -> Void {
        try pSurfaceInfo.withCStruct { ptr_pSurfaceInfo in
            try checkResult(
                vkGetPhysicalDeviceSurfaceCapabilities2KHR(self.handle, ptr_pSurfaceInfo, pSurfaceCapabilities)
            )
        }
    }

    func getPhysicalDeviceSurfaceFormats2KHR(pSurfaceInfo: PhysicalDeviceSurfaceInfo2KHR, pSurfaceFormatCount: UnsafeMutablePointer<UInt32>, pSurfaceFormats: UnsafeMutablePointer<VkSurfaceFormat2KHR>) throws -> Void {
        try pSurfaceInfo.withCStruct { ptr_pSurfaceInfo in
            try checkResult(
                vkGetPhysicalDeviceSurfaceFormats2KHR(self.handle, ptr_pSurfaceInfo, pSurfaceFormatCount, pSurfaceFormats)
            )
        }
    }

    func getPhysicalDeviceDisplayProperties2KHR(pPropertyCount: UnsafeMutablePointer<UInt32>, pProperties: UnsafeMutablePointer<VkDisplayProperties2KHR>) throws -> Void {
        try checkResult(
            vkGetPhysicalDeviceDisplayProperties2KHR(self.handle, pPropertyCount, pProperties)
        )
    }

    func getPhysicalDeviceDisplayPlaneProperties2KHR(pPropertyCount: UnsafeMutablePointer<UInt32>, pProperties: UnsafeMutablePointer<VkDisplayPlaneProperties2KHR>) throws -> Void {
        try checkResult(
            vkGetPhysicalDeviceDisplayPlaneProperties2KHR(self.handle, pPropertyCount, pProperties)
        )
    }

    func getDisplayPlaneCapabilities2KHR(pDisplayPlaneInfo: DisplayPlaneInfo2KHR, pCapabilities: UnsafeMutablePointer<VkDisplayPlaneCapabilities2KHR>) throws -> Void {
        try pDisplayPlaneInfo.withCStruct { ptr_pDisplayPlaneInfo in
            try checkResult(
                vkGetDisplayPlaneCapabilities2KHR(self.handle, ptr_pDisplayPlaneInfo, pCapabilities)
            )
        }
    }

    func getPhysicalDeviceCalibrateableTimeDomainsEXT(pTimeDomainCount: UnsafeMutablePointer<UInt32>, pTimeDomains: UnsafeMutablePointer<VkTimeDomainEXT>) throws -> Void {
        try checkResult(
            vkGetPhysicalDeviceCalibrateableTimeDomainsEXT(self.handle, pTimeDomainCount, pTimeDomains)
        )
    }

    func getPhysicalDeviceCooperativeMatrixPropertiesNV(pPropertyCount: UnsafeMutablePointer<UInt32>, pProperties: UnsafeMutablePointer<VkCooperativeMatrixPropertiesNV>) throws -> Void {
        try checkResult(
            vkGetPhysicalDeviceCooperativeMatrixPropertiesNV(self.handle, pPropertyCount, pProperties)
        )
    }

    func enumeratePhysicalDeviceQueueFamilyPerformanceQueryCountersKHR(queueFamilyIndex: UInt32, pCounterCount: UnsafeMutablePointer<UInt32>, pCounters: UnsafeMutablePointer<VkPerformanceCounterKHR>, pCounterDescriptions: UnsafeMutablePointer<VkPerformanceCounterDescriptionKHR>) throws -> Void {
        try checkResult(
            vkEnumeratePhysicalDeviceQueueFamilyPerformanceQueryCountersKHR(self.handle, queueFamilyIndex, pCounterCount, pCounters, pCounterDescriptions)
        )
    }

    func getPhysicalDeviceQueueFamilyPerformanceQueryPassesKHR(pPerformanceQueryCreateInfo: QueryPoolPerformanceCreateInfoKHR, pNumPasses: UnsafeMutablePointer<UInt32>) -> Void {
        pPerformanceQueryCreateInfo.withCStruct { ptr_pPerformanceQueryCreateInfo in
            vkGetPhysicalDeviceQueueFamilyPerformanceQueryPassesKHR(self.handle, ptr_pPerformanceQueryCreateInfo, pNumPasses)
        }
    }

    func getPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNV(pCombinationCount: UnsafeMutablePointer<UInt32>, pCombinations: UnsafeMutablePointer<VkFramebufferMixedSamplesCombinationNV>) throws -> Void {
        try checkResult(
            vkGetPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNV(self.handle, pCombinationCount, pCombinations)
        )
    }

    func getPhysicalDeviceToolPropertiesEXT(pToolCount: UnsafeMutablePointer<UInt32>, pToolProperties: UnsafeMutablePointer<VkPhysicalDeviceToolPropertiesEXT>) throws -> Void {
        try checkResult(
            vkGetPhysicalDeviceToolPropertiesEXT(self.handle, pToolCount, pToolProperties)
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

    func getDeviceProcAddr(pName: String) -> PFN_vkVoidFunction {
        pName.withCString { cString_pName in
            vkGetDeviceProcAddr(self.handle, cString_pName)
        }
    }

    func getDeviceQueue(queueFamilyIndex: UInt32, queueIndex: UInt32, pQueue: UnsafeMutablePointer<VkQueue?>) -> Void {
        vkGetDeviceQueue(self.handle, queueFamilyIndex, queueIndex, pQueue)
    }

    func deviceWaitIdle() throws -> Void {
        try checkResult(
            vkDeviceWaitIdle(self.handle)
        )
    }

    func allocateMemory(pAllocateInfo: MemoryAllocateInfo, pMemory: UnsafeMutablePointer<VkDeviceMemory?>) throws -> Void {
        try pAllocateInfo.withCStruct { ptr_pAllocateInfo in
            try checkResult(
                vkAllocateMemory(self.handle, ptr_pAllocateInfo, nil, pMemory)
            )
        }
    }

    func freeMemory(memory: DeviceMemory?) -> Void {
        vkFreeMemory(self.handle, memory?.handle, nil)
    }

    func flushMappedMemoryRanges(pMemoryRanges: Array<MappedMemoryRange>) throws -> Void {
        try pMemoryRanges.withCStructBufferPointer { ptr_pMemoryRanges in
            try checkResult(
                vkFlushMappedMemoryRanges(self.handle, UInt32(ptr_pMemoryRanges.count), ptr_pMemoryRanges.baseAddress)
            )
        }
    }

    func invalidateMappedMemoryRanges(pMemoryRanges: Array<MappedMemoryRange>) throws -> Void {
        try pMemoryRanges.withCStructBufferPointer { ptr_pMemoryRanges in
            try checkResult(
                vkInvalidateMappedMemoryRanges(self.handle, UInt32(ptr_pMemoryRanges.count), ptr_pMemoryRanges.baseAddress)
            )
        }
    }

    func createFence(pCreateInfo: FenceCreateInfo, pFence: UnsafeMutablePointer<VkFence?>) throws -> Void {
        try pCreateInfo.withCStruct { ptr_pCreateInfo in
            try checkResult(
                vkCreateFence(self.handle, ptr_pCreateInfo, nil, pFence)
            )
        }
    }

    func destroyFence(fence: Fence?) -> Void {
        vkDestroyFence(self.handle, fence?.handle, nil)
    }

    func resetFences(pFences: Array<Fence>) throws -> Void {
        try pFences.map{ $0.handle }.withUnsafeBufferPointer { ptr_pFences in
            try checkResult(
                vkResetFences(self.handle, UInt32(ptr_pFences.count), ptr_pFences.baseAddress)
            )
        }
    }

    func waitForFences(pFences: Array<Fence>, waitAll: Bool, timeout: UInt64) throws -> Void {
        try pFences.map{ $0.handle }.withUnsafeBufferPointer { ptr_pFences in
            try checkResult(
                vkWaitForFences(self.handle, UInt32(ptr_pFences.count), ptr_pFences.baseAddress, VkBool32(waitAll ? VK_TRUE : VK_FALSE), timeout)
            )
        }
    }

    func createSemaphore(pCreateInfo: SemaphoreCreateInfo, pSemaphore: UnsafeMutablePointer<VkSemaphore?>) throws -> Void {
        try pCreateInfo.withCStruct { ptr_pCreateInfo in
            try checkResult(
                vkCreateSemaphore(self.handle, ptr_pCreateInfo, nil, pSemaphore)
            )
        }
    }

    func destroySemaphore(semaphore: Semaphore?) -> Void {
        vkDestroySemaphore(self.handle, semaphore?.handle, nil)
    }

    func createEvent(pCreateInfo: EventCreateInfo, pEvent: UnsafeMutablePointer<VkEvent?>) throws -> Void {
        try pCreateInfo.withCStruct { ptr_pCreateInfo in
            try checkResult(
                vkCreateEvent(self.handle, ptr_pCreateInfo, nil, pEvent)
            )
        }
    }

    func destroyEvent(event: Event?) -> Void {
        vkDestroyEvent(self.handle, event?.handle, nil)
    }

    func createQueryPool(pCreateInfo: QueryPoolCreateInfo, pQueryPool: UnsafeMutablePointer<VkQueryPool?>) throws -> Void {
        try pCreateInfo.withCStruct { ptr_pCreateInfo in
            try checkResult(
                vkCreateQueryPool(self.handle, ptr_pCreateInfo, nil, pQueryPool)
            )
        }
    }

    func destroyQueryPool(queryPool: QueryPool?) -> Void {
        vkDestroyQueryPool(self.handle, queryPool?.handle, nil)
    }

    func createBuffer(pCreateInfo: BufferCreateInfo, pBuffer: UnsafeMutablePointer<VkBuffer?>) throws -> Void {
        try pCreateInfo.withCStruct { ptr_pCreateInfo in
            try checkResult(
                vkCreateBuffer(self.handle, ptr_pCreateInfo, nil, pBuffer)
            )
        }
    }

    func destroyBuffer(buffer: Buffer?) -> Void {
        vkDestroyBuffer(self.handle, buffer?.handle, nil)
    }

    func createBufferView(pCreateInfo: BufferViewCreateInfo, pView: UnsafeMutablePointer<VkBufferView?>) throws -> Void {
        try pCreateInfo.withCStruct { ptr_pCreateInfo in
            try checkResult(
                vkCreateBufferView(self.handle, ptr_pCreateInfo, nil, pView)
            )
        }
    }

    func destroyBufferView(bufferView: BufferView?) -> Void {
        vkDestroyBufferView(self.handle, bufferView?.handle, nil)
    }

    func createImage(pCreateInfo: ImageCreateInfo, pImage: UnsafeMutablePointer<VkImage?>) throws -> Void {
        try pCreateInfo.withCStruct { ptr_pCreateInfo in
            try checkResult(
                vkCreateImage(self.handle, ptr_pCreateInfo, nil, pImage)
            )
        }
    }

    func destroyImage(image: Image?) -> Void {
        vkDestroyImage(self.handle, image?.handle, nil)
    }

    func createImageView(pCreateInfo: ImageViewCreateInfo, pView: UnsafeMutablePointer<VkImageView?>) throws -> Void {
        try pCreateInfo.withCStruct { ptr_pCreateInfo in
            try checkResult(
                vkCreateImageView(self.handle, ptr_pCreateInfo, nil, pView)
            )
        }
    }

    func destroyImageView(imageView: ImageView?) -> Void {
        vkDestroyImageView(self.handle, imageView?.handle, nil)
    }

    func createShaderModule(pCreateInfo: ShaderModuleCreateInfo, pShaderModule: UnsafeMutablePointer<VkShaderModule?>) throws -> Void {
        try pCreateInfo.withCStruct { ptr_pCreateInfo in
            try checkResult(
                vkCreateShaderModule(self.handle, ptr_pCreateInfo, nil, pShaderModule)
            )
        }
    }

    func destroyShaderModule(shaderModule: ShaderModule?) -> Void {
        vkDestroyShaderModule(self.handle, shaderModule?.handle, nil)
    }

    func createPipelineCache(pCreateInfo: PipelineCacheCreateInfo, pPipelineCache: UnsafeMutablePointer<VkPipelineCache?>) throws -> Void {
        try pCreateInfo.withCStruct { ptr_pCreateInfo in
            try checkResult(
                vkCreatePipelineCache(self.handle, ptr_pCreateInfo, nil, pPipelineCache)
            )
        }
    }

    func destroyPipelineCache(pipelineCache: PipelineCache?) -> Void {
        vkDestroyPipelineCache(self.handle, pipelineCache?.handle, nil)
    }

    func createGraphicsPipelines(pipelineCache: PipelineCache?, pCreateInfos: Array<GraphicsPipelineCreateInfo>, pPipelines: UnsafeMutablePointer<VkPipeline?>) throws -> Void {
        try pCreateInfos.withCStructBufferPointer { ptr_pCreateInfos in
            try checkResult(
                vkCreateGraphicsPipelines(self.handle, pipelineCache?.handle, UInt32(ptr_pCreateInfos.count), ptr_pCreateInfos.baseAddress, nil, pPipelines)
            )
        }
    }

    func createComputePipelines(pipelineCache: PipelineCache?, pCreateInfos: Array<ComputePipelineCreateInfo>, pPipelines: UnsafeMutablePointer<VkPipeline?>) throws -> Void {
        try pCreateInfos.withCStructBufferPointer { ptr_pCreateInfos in
            try checkResult(
                vkCreateComputePipelines(self.handle, pipelineCache?.handle, UInt32(ptr_pCreateInfos.count), ptr_pCreateInfos.baseAddress, nil, pPipelines)
            )
        }
    }

    func destroyPipeline(pipeline: Pipeline?) -> Void {
        vkDestroyPipeline(self.handle, pipeline?.handle, nil)
    }

    func createPipelineLayout(pCreateInfo: PipelineLayoutCreateInfo, pPipelineLayout: UnsafeMutablePointer<VkPipelineLayout?>) throws -> Void {
        try pCreateInfo.withCStruct { ptr_pCreateInfo in
            try checkResult(
                vkCreatePipelineLayout(self.handle, ptr_pCreateInfo, nil, pPipelineLayout)
            )
        }
    }

    func destroyPipelineLayout(pipelineLayout: PipelineLayout?) -> Void {
        vkDestroyPipelineLayout(self.handle, pipelineLayout?.handle, nil)
    }

    func createSampler(pCreateInfo: SamplerCreateInfo, pSampler: UnsafeMutablePointer<VkSampler?>) throws -> Void {
        try pCreateInfo.withCStruct { ptr_pCreateInfo in
            try checkResult(
                vkCreateSampler(self.handle, ptr_pCreateInfo, nil, pSampler)
            )
        }
    }

    func destroySampler(sampler: Sampler?) -> Void {
        vkDestroySampler(self.handle, sampler?.handle, nil)
    }

    func createDescriptorSetLayout(pCreateInfo: DescriptorSetLayoutCreateInfo, pSetLayout: UnsafeMutablePointer<VkDescriptorSetLayout?>) throws -> Void {
        try pCreateInfo.withCStruct { ptr_pCreateInfo in
            try checkResult(
                vkCreateDescriptorSetLayout(self.handle, ptr_pCreateInfo, nil, pSetLayout)
            )
        }
    }

    func destroyDescriptorSetLayout(descriptorSetLayout: DescriptorSetLayout?) -> Void {
        vkDestroyDescriptorSetLayout(self.handle, descriptorSetLayout?.handle, nil)
    }

    func createDescriptorPool(pCreateInfo: DescriptorPoolCreateInfo, pDescriptorPool: UnsafeMutablePointer<VkDescriptorPool?>) throws -> Void {
        try pCreateInfo.withCStruct { ptr_pCreateInfo in
            try checkResult(
                vkCreateDescriptorPool(self.handle, ptr_pCreateInfo, nil, pDescriptorPool)
            )
        }
    }

    func destroyDescriptorPool(descriptorPool: DescriptorPool?) -> Void {
        vkDestroyDescriptorPool(self.handle, descriptorPool?.handle, nil)
    }

    func allocateDescriptorSets(pAllocateInfo: DescriptorSetAllocateInfo, pDescriptorSets: UnsafeMutablePointer<VkDescriptorSet?>) throws -> Void {
        try pAllocateInfo.withCStruct { ptr_pAllocateInfo in
            try checkResult(
                vkAllocateDescriptorSets(self.handle, ptr_pAllocateInfo, pDescriptorSets)
            )
        }
    }

    func updateDescriptorSets(pDescriptorWrites: Array<WriteDescriptorSet>, pDescriptorCopies: Array<CopyDescriptorSet>) -> Void {
        pDescriptorWrites.withCStructBufferPointer { ptr_pDescriptorWrites in
            pDescriptorCopies.withCStructBufferPointer { ptr_pDescriptorCopies in
                vkUpdateDescriptorSets(self.handle, UInt32(ptr_pDescriptorWrites.count), ptr_pDescriptorWrites.baseAddress, UInt32(ptr_pDescriptorCopies.count), ptr_pDescriptorCopies.baseAddress)
            }
        }
    }

    func createFramebuffer(pCreateInfo: FramebufferCreateInfo, pFramebuffer: UnsafeMutablePointer<VkFramebuffer?>) throws -> Void {
        try pCreateInfo.withCStruct { ptr_pCreateInfo in
            try checkResult(
                vkCreateFramebuffer(self.handle, ptr_pCreateInfo, nil, pFramebuffer)
            )
        }
    }

    func destroyFramebuffer(framebuffer: Framebuffer?) -> Void {
        vkDestroyFramebuffer(self.handle, framebuffer?.handle, nil)
    }

    func createRenderPass(pCreateInfo: RenderPassCreateInfo, pRenderPass: UnsafeMutablePointer<VkRenderPass?>) throws -> Void {
        try pCreateInfo.withCStruct { ptr_pCreateInfo in
            try checkResult(
                vkCreateRenderPass(self.handle, ptr_pCreateInfo, nil, pRenderPass)
            )
        }
    }

    func destroyRenderPass(renderPass: RenderPass?) -> Void {
        vkDestroyRenderPass(self.handle, renderPass?.handle, nil)
    }

    func createCommandPool(pCreateInfo: CommandPoolCreateInfo, pCommandPool: UnsafeMutablePointer<VkCommandPool?>) throws -> Void {
        try pCreateInfo.withCStruct { ptr_pCreateInfo in
            try checkResult(
                vkCreateCommandPool(self.handle, ptr_pCreateInfo, nil, pCommandPool)
            )
        }
    }

    func destroyCommandPool(commandPool: CommandPool?) -> Void {
        vkDestroyCommandPool(self.handle, commandPool?.handle, nil)
    }

    func allocateCommandBuffers(pAllocateInfo: CommandBufferAllocateInfo, pCommandBuffers: UnsafeMutablePointer<VkCommandBuffer?>) throws -> Void {
        try pAllocateInfo.withCStruct { ptr_pAllocateInfo in
            try checkResult(
                vkAllocateCommandBuffers(self.handle, ptr_pAllocateInfo, pCommandBuffers)
            )
        }
    }

    func createSharedSwapchainsKHR(pCreateInfos: Array<SwapchainCreateInfoKHR>, pSwapchains: UnsafeMutablePointer<VkSwapchainKHR?>) throws -> Void {
        try pCreateInfos.withCStructBufferPointer { ptr_pCreateInfos in
            try checkResult(
                vkCreateSharedSwapchainsKHR(self.handle, UInt32(ptr_pCreateInfos.count), ptr_pCreateInfos.baseAddress, nil, pSwapchains)
            )
        }
    }

    func createSwapchainKHR(pCreateInfo: SwapchainCreateInfoKHR, pSwapchain: UnsafeMutablePointer<VkSwapchainKHR?>) throws -> Void {
        try pCreateInfo.withCStruct { ptr_pCreateInfo in
            try checkResult(
                vkCreateSwapchainKHR(self.handle, ptr_pCreateInfo, nil, pSwapchain)
            )
        }
    }

    func destroySwapchainKHR(swapchain: SwapchainKHR?) -> Void {
        vkDestroySwapchainKHR(self.handle, swapchain?.handle, nil)
    }

    func getSwapchainImagesKHR(swapchain: SwapchainKHR, pSwapchainImageCount: UnsafeMutablePointer<UInt32>, pSwapchainImages: UnsafeMutablePointer<VkImage?>) throws -> Void {
        try checkResult(
            vkGetSwapchainImagesKHR(self.handle, swapchain.handle, pSwapchainImageCount, pSwapchainImages)
        )
    }

    func acquireNextImageKHR(swapchain: SwapchainKHR, timeout: UInt64, semaphore: Semaphore?, fence: Fence?, pImageIndex: UnsafeMutablePointer<UInt32>) throws -> Void {
        try checkResult(
            vkAcquireNextImageKHR(self.handle, swapchain.handle, timeout, semaphore?.handle, fence?.handle, pImageIndex)
        )
    }

    func debugMarkerSetObjectNameEXT(pNameInfo: DebugMarkerObjectNameInfoEXT) throws -> Void {
        try pNameInfo.withCStruct { ptr_pNameInfo in
            try checkResult(
                vkDebugMarkerSetObjectNameEXT(self.handle, ptr_pNameInfo)
            )
        }
    }

    func debugMarkerSetObjectTagEXT(pTagInfo: DebugMarkerObjectTagInfoEXT) throws -> Void {
        try pTagInfo.withCStruct { ptr_pTagInfo in
            try checkResult(
                vkDebugMarkerSetObjectTagEXT(self.handle, ptr_pTagInfo)
            )
        }
    }

    func getGeneratedCommandsMemoryRequirementsNV(pInfo: GeneratedCommandsMemoryRequirementsInfoNV, pMemoryRequirements: UnsafeMutablePointer<VkMemoryRequirements2>) -> Void {
        pInfo.withCStruct { ptr_pInfo in
            vkGetGeneratedCommandsMemoryRequirementsNV(self.handle, ptr_pInfo, pMemoryRequirements)
        }
    }

    func createIndirectCommandsLayoutNV(pCreateInfo: IndirectCommandsLayoutCreateInfoNV, pIndirectCommandsLayout: UnsafeMutablePointer<VkIndirectCommandsLayoutNV?>) throws -> Void {
        try pCreateInfo.withCStruct { ptr_pCreateInfo in
            try checkResult(
                vkCreateIndirectCommandsLayoutNV(self.handle, ptr_pCreateInfo, nil, pIndirectCommandsLayout)
            )
        }
    }

    func getMemoryFdKHR(pGetFdInfo: MemoryGetFdInfoKHR, pFd: UnsafeMutablePointer<Int32>) throws -> Void {
        try pGetFdInfo.withCStruct { ptr_pGetFdInfo in
            try checkResult(
                vkGetMemoryFdKHR(self.handle, ptr_pGetFdInfo, pFd)
            )
        }
    }

    func getMemoryFdPropertiesKHR(handleType: ExternalMemoryHandleTypeFlags, fd: Int32, pMemoryFdProperties: UnsafeMutablePointer<VkMemoryFdPropertiesKHR>) throws -> Void {
        try checkResult(
            vkGetMemoryFdPropertiesKHR(self.handle, VkExternalMemoryHandleTypeFlagBits(rawValue: handleType.rawValue), fd, pMemoryFdProperties)
        )
    }

    func getSemaphoreFdKHR(pGetFdInfo: SemaphoreGetFdInfoKHR, pFd: UnsafeMutablePointer<Int32>) throws -> Void {
        try pGetFdInfo.withCStruct { ptr_pGetFdInfo in
            try checkResult(
                vkGetSemaphoreFdKHR(self.handle, ptr_pGetFdInfo, pFd)
            )
        }
    }

    func importSemaphoreFdKHR(pImportSemaphoreFdInfo: ImportSemaphoreFdInfoKHR) throws -> Void {
        try pImportSemaphoreFdInfo.withCStruct { ptr_pImportSemaphoreFdInfo in
            try checkResult(
                vkImportSemaphoreFdKHR(self.handle, ptr_pImportSemaphoreFdInfo)
            )
        }
    }

    func getFenceFdKHR(pGetFdInfo: FenceGetFdInfoKHR, pFd: UnsafeMutablePointer<Int32>) throws -> Void {
        try pGetFdInfo.withCStruct { ptr_pGetFdInfo in
            try checkResult(
                vkGetFenceFdKHR(self.handle, ptr_pGetFdInfo, pFd)
            )
        }
    }

    func importFenceFdKHR(pImportFenceFdInfo: ImportFenceFdInfoKHR) throws -> Void {
        try pImportFenceFdInfo.withCStruct { ptr_pImportFenceFdInfo in
            try checkResult(
                vkImportFenceFdKHR(self.handle, ptr_pImportFenceFdInfo)
            )
        }
    }

    func displayPowerControlEXT(display: DisplayKHR, pDisplayPowerInfo: DisplayPowerInfoEXT) throws -> Void {
        try pDisplayPowerInfo.withCStruct { ptr_pDisplayPowerInfo in
            try checkResult(
                vkDisplayPowerControlEXT(self.handle, display.handle, ptr_pDisplayPowerInfo)
            )
        }
    }

    func registerDeviceEventEXT(pDeviceEventInfo: DeviceEventInfoEXT, pFence: UnsafeMutablePointer<VkFence?>) throws -> Void {
        try pDeviceEventInfo.withCStruct { ptr_pDeviceEventInfo in
            try checkResult(
                vkRegisterDeviceEventEXT(self.handle, ptr_pDeviceEventInfo, nil, pFence)
            )
        }
    }

    func registerDisplayEventEXT(display: DisplayKHR, pDisplayEventInfo: DisplayEventInfoEXT, pFence: UnsafeMutablePointer<VkFence?>) throws -> Void {
        try pDisplayEventInfo.withCStruct { ptr_pDisplayEventInfo in
            try checkResult(
                vkRegisterDisplayEventEXT(self.handle, display.handle, ptr_pDisplayEventInfo, nil, pFence)
            )
        }
    }

    func getSwapchainCounterEXT(swapchain: SwapchainKHR, counter: SurfaceCounterFlagsEXT, pCounterValue: UnsafeMutablePointer<UInt64>) throws -> Void {
        try checkResult(
            vkGetSwapchainCounterEXT(self.handle, swapchain.handle, VkSurfaceCounterFlagBitsEXT(rawValue: counter.rawValue), pCounterValue)
        )
    }

    func getDeviceGroupPeerMemoryFeatures(heapIndex: UInt32, localDeviceIndex: UInt32, remoteDeviceIndex: UInt32, pPeerMemoryFeatures: UnsafeMutablePointer<VkPeerMemoryFeatureFlags>) -> Void {
        vkGetDeviceGroupPeerMemoryFeatures(self.handle, heapIndex, localDeviceIndex, remoteDeviceIndex, pPeerMemoryFeatures)
    }

    func bindBufferMemory2(pBindInfos: Array<BindBufferMemoryInfo>) throws -> Void {
        try pBindInfos.withCStructBufferPointer { ptr_pBindInfos in
            try checkResult(
                vkBindBufferMemory2(self.handle, UInt32(ptr_pBindInfos.count), ptr_pBindInfos.baseAddress)
            )
        }
    }

    func bindImageMemory2(pBindInfos: Array<BindImageMemoryInfo>) throws -> Void {
        try pBindInfos.withCStructBufferPointer { ptr_pBindInfos in
            try checkResult(
                vkBindImageMemory2(self.handle, UInt32(ptr_pBindInfos.count), ptr_pBindInfos.baseAddress)
            )
        }
    }

    func getDeviceGroupPresentCapabilitiesKHR(pDeviceGroupPresentCapabilities: UnsafeMutablePointer<VkDeviceGroupPresentCapabilitiesKHR>) throws -> Void {
        try checkResult(
            vkGetDeviceGroupPresentCapabilitiesKHR(self.handle, pDeviceGroupPresentCapabilities)
        )
    }

    func getDeviceGroupSurfacePresentModesKHR(surface: SurfaceKHR, pModes: UnsafeMutablePointer<VkDeviceGroupPresentModeFlagsKHR>) throws -> Void {
        try checkResult(
            vkGetDeviceGroupSurfacePresentModesKHR(self.handle, surface.handle, pModes)
        )
    }

    func acquireNextImage2KHR(pAcquireInfo: AcquireNextImageInfoKHR, pImageIndex: UnsafeMutablePointer<UInt32>) throws -> Void {
        try pAcquireInfo.withCStruct { ptr_pAcquireInfo in
            try checkResult(
                vkAcquireNextImage2KHR(self.handle, ptr_pAcquireInfo, pImageIndex)
            )
        }
    }

    func createDescriptorUpdateTemplate(pCreateInfo: DescriptorUpdateTemplateCreateInfo, pDescriptorUpdateTemplate: UnsafeMutablePointer<VkDescriptorUpdateTemplate?>) throws -> Void {
        try pCreateInfo.withCStruct { ptr_pCreateInfo in
            try checkResult(
                vkCreateDescriptorUpdateTemplate(self.handle, ptr_pCreateInfo, nil, pDescriptorUpdateTemplate)
            )
        }
    }

    func destroyDescriptorUpdateTemplate(descriptorUpdateTemplate: DescriptorUpdateTemplate?) -> Void {
        vkDestroyDescriptorUpdateTemplate(self.handle, descriptorUpdateTemplate?.handle, nil)
    }

    func setHdrMetadataEXT(pSwapchains: Array<SwapchainKHR>, pMetadata: Array<HdrMetadataEXT>) -> Void {
        pSwapchains.map{ $0.handle }.withUnsafeBufferPointer { ptr_pSwapchains in
            pMetadata.withCStructBufferPointer { ptr_pMetadata in
                vkSetHdrMetadataEXT(self.handle, UInt32(ptr_pSwapchains.count), ptr_pSwapchains.baseAddress, ptr_pMetadata.baseAddress)
            }
        }
    }

    func getSwapchainStatusKHR(swapchain: SwapchainKHR) throws -> Void {
        try checkResult(
            vkGetSwapchainStatusKHR(self.handle, swapchain.handle)
        )
    }

    func getRefreshCycleDurationGOOGLE(swapchain: SwapchainKHR, pDisplayTimingProperties: UnsafeMutablePointer<VkRefreshCycleDurationGOOGLE>) throws -> Void {
        try checkResult(
            vkGetRefreshCycleDurationGOOGLE(self.handle, swapchain.handle, pDisplayTimingProperties)
        )
    }

    func getPastPresentationTimingGOOGLE(swapchain: SwapchainKHR, pPresentationTimingCount: UnsafeMutablePointer<UInt32>, pPresentationTimings: UnsafeMutablePointer<VkPastPresentationTimingGOOGLE>) throws -> Void {
        try checkResult(
            vkGetPastPresentationTimingGOOGLE(self.handle, swapchain.handle, pPresentationTimingCount, pPresentationTimings)
        )
    }

    func getBufferMemoryRequirements2(pInfo: BufferMemoryRequirementsInfo2, pMemoryRequirements: UnsafeMutablePointer<VkMemoryRequirements2>) -> Void {
        pInfo.withCStruct { ptr_pInfo in
            vkGetBufferMemoryRequirements2(self.handle, ptr_pInfo, pMemoryRequirements)
        }
    }

    func getImageMemoryRequirements2(pInfo: ImageMemoryRequirementsInfo2, pMemoryRequirements: UnsafeMutablePointer<VkMemoryRequirements2>) -> Void {
        pInfo.withCStruct { ptr_pInfo in
            vkGetImageMemoryRequirements2(self.handle, ptr_pInfo, pMemoryRequirements)
        }
    }

    func getImageSparseMemoryRequirements2(pInfo: ImageSparseMemoryRequirementsInfo2, pSparseMemoryRequirementCount: UnsafeMutablePointer<UInt32>, pSparseMemoryRequirements: UnsafeMutablePointer<VkSparseImageMemoryRequirements2>) -> Void {
        pInfo.withCStruct { ptr_pInfo in
            vkGetImageSparseMemoryRequirements2(self.handle, ptr_pInfo, pSparseMemoryRequirementCount, pSparseMemoryRequirements)
        }
    }

    func createSamplerYcbcrConversion(pCreateInfo: SamplerYcbcrConversionCreateInfo, pYcbcrConversion: UnsafeMutablePointer<VkSamplerYcbcrConversion?>) throws -> Void {
        try pCreateInfo.withCStruct { ptr_pCreateInfo in
            try checkResult(
                vkCreateSamplerYcbcrConversion(self.handle, ptr_pCreateInfo, nil, pYcbcrConversion)
            )
        }
    }

    func destroySamplerYcbcrConversion(ycbcrConversion: SamplerYcbcrConversion?) -> Void {
        vkDestroySamplerYcbcrConversion(self.handle, ycbcrConversion?.handle, nil)
    }

    func getDeviceQueue2(pQueueInfo: DeviceQueueInfo2, pQueue: UnsafeMutablePointer<VkQueue?>) -> Void {
        pQueueInfo.withCStruct { ptr_pQueueInfo in
            vkGetDeviceQueue2(self.handle, ptr_pQueueInfo, pQueue)
        }
    }

    func createValidationCacheEXT(pCreateInfo: ValidationCacheCreateInfoEXT, pValidationCache: UnsafeMutablePointer<VkValidationCacheEXT?>) throws -> Void {
        try pCreateInfo.withCStruct { ptr_pCreateInfo in
            try checkResult(
                vkCreateValidationCacheEXT(self.handle, ptr_pCreateInfo, nil, pValidationCache)
            )
        }
    }

    func destroyValidationCacheEXT(validationCache: ValidationCacheEXT?) -> Void {
        vkDestroyValidationCacheEXT(self.handle, validationCache?.handle, nil)
    }

    func getDescriptorSetLayoutSupport(pCreateInfo: DescriptorSetLayoutCreateInfo, pSupport: UnsafeMutablePointer<VkDescriptorSetLayoutSupport>) -> Void {
        pCreateInfo.withCStruct { ptr_pCreateInfo in
            vkGetDescriptorSetLayoutSupport(self.handle, ptr_pCreateInfo, pSupport)
        }
    }

    func setLocalDimmingAMD(swapChain: SwapchainKHR, localDimmingEnable: Bool) -> Void {
        vkSetLocalDimmingAMD(self.handle, swapChain.handle, VkBool32(localDimmingEnable ? VK_TRUE : VK_FALSE))
    }

    func getCalibratedTimestampsEXT(pTimestampInfos: Array<CalibratedTimestampInfoEXT>, pTimestamps: UnsafeMutablePointer<UInt64>, pMaxDeviation: UnsafeMutablePointer<UInt64>) throws -> Void {
        try pTimestampInfos.withCStructBufferPointer { ptr_pTimestampInfos in
            try checkResult(
                vkGetCalibratedTimestampsEXT(self.handle, UInt32(ptr_pTimestampInfos.count), ptr_pTimestampInfos.baseAddress, pTimestamps, pMaxDeviation)
            )
        }
    }

    func setDebugUtilsObjectNameEXT(pNameInfo: DebugUtilsObjectNameInfoEXT) throws -> Void {
        try pNameInfo.withCStruct { ptr_pNameInfo in
            try checkResult(
                vkSetDebugUtilsObjectNameEXT(self.handle, ptr_pNameInfo)
            )
        }
    }

    func setDebugUtilsObjectTagEXT(pTagInfo: DebugUtilsObjectTagInfoEXT) throws -> Void {
        try pTagInfo.withCStruct { ptr_pTagInfo in
            try checkResult(
                vkSetDebugUtilsObjectTagEXT(self.handle, ptr_pTagInfo)
            )
        }
    }

    func getMemoryHostPointerPropertiesEXT(handleType: ExternalMemoryHandleTypeFlags, pHostPointer: UnsafeRawPointer, pMemoryHostPointerProperties: UnsafeMutablePointer<VkMemoryHostPointerPropertiesEXT>) throws -> Void {
        try checkResult(
            vkGetMemoryHostPointerPropertiesEXT(self.handle, VkExternalMemoryHandleTypeFlagBits(rawValue: handleType.rawValue), pHostPointer, pMemoryHostPointerProperties)
        )
    }

    func createRenderPass2(pCreateInfo: RenderPassCreateInfo2, pRenderPass: UnsafeMutablePointer<VkRenderPass?>) throws -> Void {
        try pCreateInfo.withCStruct { ptr_pCreateInfo in
            try checkResult(
                vkCreateRenderPass2(self.handle, ptr_pCreateInfo, nil, pRenderPass)
            )
        }
    }

    func waitSemaphores(pWaitInfo: SemaphoreWaitInfo, timeout: UInt64) throws -> Void {
        try pWaitInfo.withCStruct { ptr_pWaitInfo in
            try checkResult(
                vkWaitSemaphores(self.handle, ptr_pWaitInfo, timeout)
            )
        }
    }

    func signalSemaphore(pSignalInfo: SemaphoreSignalInfo) throws -> Void {
        try pSignalInfo.withCStruct { ptr_pSignalInfo in
            try checkResult(
                vkSignalSemaphore(self.handle, ptr_pSignalInfo)
            )
        }
    }

    func createAccelerationStructureNV(pCreateInfo: AccelerationStructureCreateInfoNV, pAccelerationStructure: UnsafeMutablePointer<VkAccelerationStructureNV>) throws -> Void {
        try pCreateInfo.withCStruct { ptr_pCreateInfo in
            try checkResult(
                vkCreateAccelerationStructureNV(self.handle, ptr_pCreateInfo, nil, pAccelerationStructure)
            )
        }
    }

    func getAccelerationStructureMemoryRequirementsNV(pInfo: AccelerationStructureMemoryRequirementsInfoNV, pMemoryRequirements: UnsafeMutablePointer<VkMemoryRequirements2KHR>) -> Void {
        pInfo.withCStruct { ptr_pInfo in
            vkGetAccelerationStructureMemoryRequirementsNV(self.handle, ptr_pInfo, pMemoryRequirements)
        }
    }

    func getAccelerationStructureHandleNV(accelerationStructure: VkAccelerationStructureKHR, dataSize: Int, pData: UnsafeMutableRawPointer) throws -> Void {
        try checkResult(
            vkGetAccelerationStructureHandleNV(self.handle, accelerationStructure, dataSize, pData)
        )
    }

    func createRayTracingPipelinesNV(pipelineCache: PipelineCache?, pCreateInfos: Array<RayTracingPipelineCreateInfoNV>, pPipelines: UnsafeMutablePointer<VkPipeline?>) throws -> Void {
        try pCreateInfos.withCStructBufferPointer { ptr_pCreateInfos in
            try checkResult(
                vkCreateRayTracingPipelinesNV(self.handle, pipelineCache?.handle, UInt32(ptr_pCreateInfos.count), ptr_pCreateInfos.baseAddress, nil, pPipelines)
            )
        }
    }

    func getImageViewHandleNVX(pInfo: ImageViewHandleInfoNVX) -> UInt32 {
        pInfo.withCStruct { ptr_pInfo in
            vkGetImageViewHandleNVX(self.handle, ptr_pInfo)
        }
    }

    func acquireProfilingLockKHR(pInfo: AcquireProfilingLockInfoKHR) throws -> Void {
        try pInfo.withCStruct { ptr_pInfo in
            try checkResult(
                vkAcquireProfilingLockKHR(self.handle, ptr_pInfo)
            )
        }
    }

    func releaseProfilingLockKHR() -> Void {
        vkReleaseProfilingLockKHR(self.handle)
    }

    func getBufferOpaqueCaptureAddress(pInfo: BufferDeviceAddressInfo) -> UInt64 {
        pInfo.withCStruct { ptr_pInfo in
            vkGetBufferOpaqueCaptureAddress(self.handle, ptr_pInfo)
        }
    }

    func getBufferDeviceAddress(pInfo: BufferDeviceAddressInfo) -> VkDeviceAddress {
        pInfo.withCStruct { ptr_pInfo in
            vkGetBufferDeviceAddress(self.handle, ptr_pInfo)
        }
    }

    func initializePerformanceApiINTEL(pInitializeInfo: InitializePerformanceApiInfoINTEL) throws -> Void {
        try pInitializeInfo.withCStruct { ptr_pInitializeInfo in
            try checkResult(
                vkInitializePerformanceApiINTEL(self.handle, ptr_pInitializeInfo)
            )
        }
    }

    func uninitializePerformanceApiINTEL() -> Void {
        vkUninitializePerformanceApiINTEL(self.handle)
    }

    func acquirePerformanceConfigurationINTEL(pAcquireInfo: PerformanceConfigurationAcquireInfoINTEL, pConfiguration: UnsafeMutablePointer<VkPerformanceConfigurationINTEL?>) throws -> Void {
        try pAcquireInfo.withCStruct { ptr_pAcquireInfo in
            try checkResult(
                vkAcquirePerformanceConfigurationINTEL(self.handle, ptr_pAcquireInfo, pConfiguration)
            )
        }
    }

    func getPerformanceParameterINTEL(parameter: PerformanceParameterTypeINTEL, pValue: UnsafeMutablePointer<VkPerformanceValueINTEL>) throws -> Void {
        try checkResult(
            vkGetPerformanceParameterINTEL(self.handle, VkPerformanceParameterTypeINTEL(rawValue: parameter.rawValue), pValue)
        )
    }

    func getDeviceMemoryOpaqueCaptureAddress(pInfo: DeviceMemoryOpaqueCaptureAddressInfo) -> UInt64 {
        pInfo.withCStruct { ptr_pInfo in
            vkGetDeviceMemoryOpaqueCaptureAddress(self.handle, ptr_pInfo)
        }
    }

    func getPipelineExecutablePropertiesKHR(pPipelineInfo: PipelineInfoKHR, pExecutableCount: UnsafeMutablePointer<UInt32>, pProperties: UnsafeMutablePointer<VkPipelineExecutablePropertiesKHR>) throws -> Void {
        try pPipelineInfo.withCStruct { ptr_pPipelineInfo in
            try checkResult(
                vkGetPipelineExecutablePropertiesKHR(self.handle, ptr_pPipelineInfo, pExecutableCount, pProperties)
            )
        }
    }

    func getPipelineExecutableStatisticsKHR(pExecutableInfo: PipelineExecutableInfoKHR, pStatisticCount: UnsafeMutablePointer<UInt32>, pStatistics: UnsafeMutablePointer<VkPipelineExecutableStatisticKHR>) throws -> Void {
        try pExecutableInfo.withCStruct { ptr_pExecutableInfo in
            try checkResult(
                vkGetPipelineExecutableStatisticsKHR(self.handle, ptr_pExecutableInfo, pStatisticCount, pStatistics)
            )
        }
    }

    func getPipelineExecutableInternalRepresentationsKHR(pExecutableInfo: PipelineExecutableInfoKHR, pInternalRepresentationCount: UnsafeMutablePointer<UInt32>, pInternalRepresentations: UnsafeMutablePointer<VkPipelineExecutableInternalRepresentationKHR>) throws -> Void {
        try pExecutableInfo.withCStruct { ptr_pExecutableInfo in
            try checkResult(
                vkGetPipelineExecutableInternalRepresentationsKHR(self.handle, ptr_pExecutableInfo, pInternalRepresentationCount, pInternalRepresentations)
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

    func queueSubmit(pSubmits: Array<SubmitInfo>, fence: Fence?) throws -> Void {
        try pSubmits.withCStructBufferPointer { ptr_pSubmits in
            try checkResult(
                vkQueueSubmit(self.handle, UInt32(ptr_pSubmits.count), ptr_pSubmits.baseAddress, fence?.handle)
            )
        }
    }

    func queueWaitIdle() throws -> Void {
        try checkResult(
            vkQueueWaitIdle(self.handle)
        )
    }

    func queueBindSparse(pBindInfo: Array<BindSparseInfo>, fence: Fence?) throws -> Void {
        try pBindInfo.withCStructBufferPointer { ptr_pBindInfo in
            try checkResult(
                vkQueueBindSparse(self.handle, UInt32(ptr_pBindInfo.count), ptr_pBindInfo.baseAddress, fence?.handle)
            )
        }
    }

    func queuePresentKHR(pPresentInfo: PresentInfoKHR) throws -> Void {
        try pPresentInfo.withCStruct { ptr_pPresentInfo in
            try checkResult(
                vkQueuePresentKHR(self.handle, ptr_pPresentInfo)
            )
        }
    }

    func queueBeginDebugUtilsLabelEXT(pLabelInfo: DebugUtilsLabelEXT) -> Void {
        pLabelInfo.withCStruct { ptr_pLabelInfo in
            vkQueueBeginDebugUtilsLabelEXT(self.handle, ptr_pLabelInfo)
        }
    }

    func queueEndDebugUtilsLabelEXT() -> Void {
        vkQueueEndDebugUtilsLabelEXT(self.handle)
    }

    func queueInsertDebugUtilsLabelEXT(pLabelInfo: DebugUtilsLabelEXT) -> Void {
        pLabelInfo.withCStruct { ptr_pLabelInfo in
            vkQueueInsertDebugUtilsLabelEXT(self.handle, ptr_pLabelInfo)
        }
    }

    func getQueueCheckpointDataNV(pCheckpointDataCount: UnsafeMutablePointer<UInt32>, pCheckpointData: UnsafeMutablePointer<VkCheckpointDataNV>) -> Void {
        vkGetQueueCheckpointDataNV(self.handle, pCheckpointDataCount, pCheckpointData)
    }

    func queueSetPerformanceConfigurationINTEL(configuration: PerformanceConfigurationINTEL) throws -> Void {
        try checkResult(
            vkQueueSetPerformanceConfigurationINTEL(self.handle, configuration.handle)
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

    func beginCommandBuffer(pBeginInfo: CommandBufferBeginInfo) throws -> Void {
        try pBeginInfo.withCStruct { ptr_pBeginInfo in
            try checkResult(
                vkBeginCommandBuffer(self.handle, ptr_pBeginInfo)
            )
        }
    }

    func endCommandBuffer() throws -> Void {
        try checkResult(
            vkEndCommandBuffer(self.handle)
        )
    }

    func resetCommandBuffer(flags: CommandBufferResetFlags) throws -> Void {
        try checkResult(
            vkResetCommandBuffer(self.handle, flags.rawValue)
        )
    }

    func cmdBindPipeline(pipelineBindPoint: PipelineBindPoint, pipeline: Pipeline) -> Void {
        vkCmdBindPipeline(self.handle, VkPipelineBindPoint(rawValue: pipelineBindPoint.rawValue), pipeline.handle)
    }

    func cmdSetViewport(firstViewport: UInt32, pViewports: Array<Viewport>) -> Void {
        pViewports.withCStructBufferPointer { ptr_pViewports in
            vkCmdSetViewport(self.handle, firstViewport, UInt32(ptr_pViewports.count), ptr_pViewports.baseAddress)
        }
    }

    func cmdSetScissor(firstScissor: UInt32, pScissors: Array<Rect2D>) -> Void {
        pScissors.withCStructBufferPointer { ptr_pScissors in
            vkCmdSetScissor(self.handle, firstScissor, UInt32(ptr_pScissors.count), ptr_pScissors.baseAddress)
        }
    }

    func cmdSetLineWidth(lineWidth: Float) -> Void {
        vkCmdSetLineWidth(self.handle, lineWidth)
    }

    func cmdSetDepthBias(depthBiasConstantFactor: Float, depthBiasClamp: Float, depthBiasSlopeFactor: Float) -> Void {
        vkCmdSetDepthBias(self.handle, depthBiasConstantFactor, depthBiasClamp, depthBiasSlopeFactor)
    }

    func cmdSetBlendConstants(blendConstants: (Float, Float, Float, Float)) -> Void {
        vkCmdSetBlendConstants(self.handle, blendConstants)
    }

    func cmdSetDepthBounds(minDepthBounds: Float, maxDepthBounds: Float) -> Void {
        vkCmdSetDepthBounds(self.handle, minDepthBounds, maxDepthBounds)
    }

    func cmdSetStencilCompareMask(faceMask: StencilFaceFlags, compareMask: UInt32) -> Void {
        vkCmdSetStencilCompareMask(self.handle, faceMask.rawValue, compareMask)
    }

    func cmdSetStencilWriteMask(faceMask: StencilFaceFlags, writeMask: UInt32) -> Void {
        vkCmdSetStencilWriteMask(self.handle, faceMask.rawValue, writeMask)
    }

    func cmdSetStencilReference(faceMask: StencilFaceFlags, reference: UInt32) -> Void {
        vkCmdSetStencilReference(self.handle, faceMask.rawValue, reference)
    }

    func cmdBindDescriptorSets(pipelineBindPoint: PipelineBindPoint, layout: PipelineLayout, firstSet: UInt32, pDescriptorSets: Array<DescriptorSet>, pDynamicOffsets: Array<UInt32>) -> Void {
        pDescriptorSets.map{ $0.handle }.withUnsafeBufferPointer { ptr_pDescriptorSets in
            pDynamicOffsets.withUnsafeBufferPointer { ptr_pDynamicOffsets in
                vkCmdBindDescriptorSets(self.handle, VkPipelineBindPoint(rawValue: pipelineBindPoint.rawValue), layout.handle, firstSet, UInt32(ptr_pDescriptorSets.count), ptr_pDescriptorSets.baseAddress, UInt32(ptr_pDynamicOffsets.count), ptr_pDynamicOffsets.baseAddress)
            }
        }
    }

    func cmdBindIndexBuffer(buffer: Buffer, offset: VkDeviceSize, indexType: IndexType) -> Void {
        vkCmdBindIndexBuffer(self.handle, buffer.handle, offset, VkIndexType(rawValue: indexType.rawValue))
    }

    func cmdBindVertexBuffers(firstBinding: UInt32, pBuffers: Array<Buffer>, pOffsets: Array<VkDeviceSize>) -> Void {
        pBuffers.map{ $0.handle }.withUnsafeBufferPointer { ptr_pBuffers in
            pOffsets.withUnsafeBufferPointer { ptr_pOffsets in
                vkCmdBindVertexBuffers(self.handle, firstBinding, UInt32(ptr_pBuffers.count), ptr_pBuffers.baseAddress, ptr_pOffsets.baseAddress)
            }
        }
    }

    func cmdDraw(vertexCount: UInt32, instanceCount: UInt32, firstVertex: UInt32, firstInstance: UInt32) -> Void {
        vkCmdDraw(self.handle, vertexCount, instanceCount, firstVertex, firstInstance)
    }

    func cmdDrawIndexed(indexCount: UInt32, instanceCount: UInt32, firstIndex: UInt32, vertexOffset: Int32, firstInstance: UInt32) -> Void {
        vkCmdDrawIndexed(self.handle, indexCount, instanceCount, firstIndex, vertexOffset, firstInstance)
    }

    func cmdDrawIndirect(buffer: Buffer, offset: VkDeviceSize, drawCount: UInt32, stride: UInt32) -> Void {
        vkCmdDrawIndirect(self.handle, buffer.handle, offset, drawCount, stride)
    }

    func cmdDrawIndexedIndirect(buffer: Buffer, offset: VkDeviceSize, drawCount: UInt32, stride: UInt32) -> Void {
        vkCmdDrawIndexedIndirect(self.handle, buffer.handle, offset, drawCount, stride)
    }

    func cmdDispatch(groupCountX: UInt32, groupCountY: UInt32, groupCountZ: UInt32) -> Void {
        vkCmdDispatch(self.handle, groupCountX, groupCountY, groupCountZ)
    }

    func cmdDispatchIndirect(buffer: Buffer, offset: VkDeviceSize) -> Void {
        vkCmdDispatchIndirect(self.handle, buffer.handle, offset)
    }

    func cmdCopyBuffer(srcBuffer: Buffer, dstBuffer: Buffer, pRegions: Array<BufferCopy>) -> Void {
        pRegions.withCStructBufferPointer { ptr_pRegions in
            vkCmdCopyBuffer(self.handle, srcBuffer.handle, dstBuffer.handle, UInt32(ptr_pRegions.count), ptr_pRegions.baseAddress)
        }
    }

    func cmdCopyImage(srcImage: Image, srcImageLayout: ImageLayout, dstImage: Image, dstImageLayout: ImageLayout, pRegions: Array<ImageCopy>) -> Void {
        pRegions.withCStructBufferPointer { ptr_pRegions in
            vkCmdCopyImage(self.handle, srcImage.handle, VkImageLayout(rawValue: srcImageLayout.rawValue), dstImage.handle, VkImageLayout(rawValue: dstImageLayout.rawValue), UInt32(ptr_pRegions.count), ptr_pRegions.baseAddress)
        }
    }

    func cmdBlitImage(srcImage: Image, srcImageLayout: ImageLayout, dstImage: Image, dstImageLayout: ImageLayout, pRegions: Array<ImageBlit>, filter: Filter) -> Void {
        pRegions.withCStructBufferPointer { ptr_pRegions in
            vkCmdBlitImage(self.handle, srcImage.handle, VkImageLayout(rawValue: srcImageLayout.rawValue), dstImage.handle, VkImageLayout(rawValue: dstImageLayout.rawValue), UInt32(ptr_pRegions.count), ptr_pRegions.baseAddress, VkFilter(rawValue: filter.rawValue))
        }
    }

    func cmdCopyBufferToImage(srcBuffer: Buffer, dstImage: Image, dstImageLayout: ImageLayout, pRegions: Array<BufferImageCopy>) -> Void {
        pRegions.withCStructBufferPointer { ptr_pRegions in
            vkCmdCopyBufferToImage(self.handle, srcBuffer.handle, dstImage.handle, VkImageLayout(rawValue: dstImageLayout.rawValue), UInt32(ptr_pRegions.count), ptr_pRegions.baseAddress)
        }
    }

    func cmdCopyImageToBuffer(srcImage: Image, srcImageLayout: ImageLayout, dstBuffer: Buffer, pRegions: Array<BufferImageCopy>) -> Void {
        pRegions.withCStructBufferPointer { ptr_pRegions in
            vkCmdCopyImageToBuffer(self.handle, srcImage.handle, VkImageLayout(rawValue: srcImageLayout.rawValue), dstBuffer.handle, UInt32(ptr_pRegions.count), ptr_pRegions.baseAddress)
        }
    }

    func cmdUpdateBuffer(dstBuffer: Buffer, dstOffset: VkDeviceSize, dataSize: VkDeviceSize, pData: UnsafeRawPointer) -> Void {
        vkCmdUpdateBuffer(self.handle, dstBuffer.handle, dstOffset, dataSize, pData)
    }

    func cmdFillBuffer(dstBuffer: Buffer, dstOffset: VkDeviceSize, size: VkDeviceSize, data: UInt32) -> Void {
        vkCmdFillBuffer(self.handle, dstBuffer.handle, dstOffset, size, data)
    }

    func cmdClearColorImage(image: Image, imageLayout: ImageLayout, pColor: UnsafePointer<VkClearColorValue>, pRanges: Array<ImageSubresourceRange>) -> Void {
        pRanges.withCStructBufferPointer { ptr_pRanges in
            vkCmdClearColorImage(self.handle, image.handle, VkImageLayout(rawValue: imageLayout.rawValue), pColor, UInt32(ptr_pRanges.count), ptr_pRanges.baseAddress)
        }
    }

    func cmdClearDepthStencilImage(image: Image, imageLayout: ImageLayout, pDepthStencil: ClearDepthStencilValue, pRanges: Array<ImageSubresourceRange>) -> Void {
        pDepthStencil.withCStruct { ptr_pDepthStencil in
            pRanges.withCStructBufferPointer { ptr_pRanges in
                vkCmdClearDepthStencilImage(self.handle, image.handle, VkImageLayout(rawValue: imageLayout.rawValue), ptr_pDepthStencil, UInt32(ptr_pRanges.count), ptr_pRanges.baseAddress)
            }
        }
    }

    func cmdClearAttachments(pAttachments: Array<ClearAttachment>, pRects: Array<ClearRect>) -> Void {
        pAttachments.withCStructBufferPointer { ptr_pAttachments in
            pRects.withCStructBufferPointer { ptr_pRects in
                vkCmdClearAttachments(self.handle, UInt32(ptr_pAttachments.count), ptr_pAttachments.baseAddress, UInt32(ptr_pRects.count), ptr_pRects.baseAddress)
            }
        }
    }

    func cmdResolveImage(srcImage: Image, srcImageLayout: ImageLayout, dstImage: Image, dstImageLayout: ImageLayout, pRegions: Array<ImageResolve>) -> Void {
        pRegions.withCStructBufferPointer { ptr_pRegions in
            vkCmdResolveImage(self.handle, srcImage.handle, VkImageLayout(rawValue: srcImageLayout.rawValue), dstImage.handle, VkImageLayout(rawValue: dstImageLayout.rawValue), UInt32(ptr_pRegions.count), ptr_pRegions.baseAddress)
        }
    }

    func cmdSetEvent(event: Event, stageMask: PipelineStageFlags) -> Void {
        vkCmdSetEvent(self.handle, event.handle, stageMask.rawValue)
    }

    func cmdResetEvent(event: Event, stageMask: PipelineStageFlags) -> Void {
        vkCmdResetEvent(self.handle, event.handle, stageMask.rawValue)
    }

    func cmdWaitEvents(pEvents: Array<Event>, srcStageMask: PipelineStageFlags, dstStageMask: PipelineStageFlags, pMemoryBarriers: Array<MemoryBarrier>, pBufferMemoryBarriers: Array<BufferMemoryBarrier>, pImageMemoryBarriers: Array<ImageMemoryBarrier>) -> Void {
        pEvents.map{ $0.handle }.withUnsafeBufferPointer { ptr_pEvents in
            pMemoryBarriers.withCStructBufferPointer { ptr_pMemoryBarriers in
                pBufferMemoryBarriers.withCStructBufferPointer { ptr_pBufferMemoryBarriers in
                    pImageMemoryBarriers.withCStructBufferPointer { ptr_pImageMemoryBarriers in
                        vkCmdWaitEvents(self.handle, UInt32(ptr_pEvents.count), ptr_pEvents.baseAddress, srcStageMask.rawValue, dstStageMask.rawValue, UInt32(ptr_pMemoryBarriers.count), ptr_pMemoryBarriers.baseAddress, UInt32(ptr_pBufferMemoryBarriers.count), ptr_pBufferMemoryBarriers.baseAddress, UInt32(ptr_pImageMemoryBarriers.count), ptr_pImageMemoryBarriers.baseAddress)
                    }
                }
            }
        }
    }

    func cmdPipelineBarrier(srcStageMask: PipelineStageFlags, dstStageMask: PipelineStageFlags, dependencyFlags: DependencyFlags, pMemoryBarriers: Array<MemoryBarrier>, pBufferMemoryBarriers: Array<BufferMemoryBarrier>, pImageMemoryBarriers: Array<ImageMemoryBarrier>) -> Void {
        pMemoryBarriers.withCStructBufferPointer { ptr_pMemoryBarriers in
            pBufferMemoryBarriers.withCStructBufferPointer { ptr_pBufferMemoryBarriers in
                pImageMemoryBarriers.withCStructBufferPointer { ptr_pImageMemoryBarriers in
                    vkCmdPipelineBarrier(self.handle, srcStageMask.rawValue, dstStageMask.rawValue, dependencyFlags.rawValue, UInt32(ptr_pMemoryBarriers.count), ptr_pMemoryBarriers.baseAddress, UInt32(ptr_pBufferMemoryBarriers.count), ptr_pBufferMemoryBarriers.baseAddress, UInt32(ptr_pImageMemoryBarriers.count), ptr_pImageMemoryBarriers.baseAddress)
                }
            }
        }
    }

    func cmdBeginQuery(queryPool: QueryPool, query: UInt32, flags: QueryControlFlags) -> Void {
        vkCmdBeginQuery(self.handle, queryPool.handle, query, flags.rawValue)
    }

    func cmdEndQuery(queryPool: QueryPool, query: UInt32) -> Void {
        vkCmdEndQuery(self.handle, queryPool.handle, query)
    }

    func cmdBeginConditionalRenderingEXT(pConditionalRenderingBegin: ConditionalRenderingBeginInfoEXT) -> Void {
        pConditionalRenderingBegin.withCStruct { ptr_pConditionalRenderingBegin in
            vkCmdBeginConditionalRenderingEXT(self.handle, ptr_pConditionalRenderingBegin)
        }
    }

    func cmdEndConditionalRenderingEXT() -> Void {
        vkCmdEndConditionalRenderingEXT(self.handle)
    }

    func cmdResetQueryPool(queryPool: QueryPool, firstQuery: UInt32, queryCount: UInt32) -> Void {
        vkCmdResetQueryPool(self.handle, queryPool.handle, firstQuery, queryCount)
    }

    func cmdWriteTimestamp(pipelineStage: PipelineStageFlags, queryPool: QueryPool, query: UInt32) -> Void {
        vkCmdWriteTimestamp(self.handle, VkPipelineStageFlagBits(rawValue: pipelineStage.rawValue), queryPool.handle, query)
    }

    func cmdCopyQueryPoolResults(queryPool: QueryPool, firstQuery: UInt32, queryCount: UInt32, dstBuffer: Buffer, dstOffset: VkDeviceSize, stride: VkDeviceSize, flags: QueryResultFlags) -> Void {
        vkCmdCopyQueryPoolResults(self.handle, queryPool.handle, firstQuery, queryCount, dstBuffer.handle, dstOffset, stride, flags.rawValue)
    }

    func cmdPushConstants(layout: PipelineLayout, stageFlags: ShaderStageFlags, offset: UInt32, size: UInt32, pValues: UnsafeRawPointer) -> Void {
        vkCmdPushConstants(self.handle, layout.handle, stageFlags.rawValue, offset, size, pValues)
    }

    func cmdBeginRenderPass(pRenderPassBegin: RenderPassBeginInfo, contents: SubpassContents) -> Void {
        pRenderPassBegin.withCStruct { ptr_pRenderPassBegin in
            vkCmdBeginRenderPass(self.handle, ptr_pRenderPassBegin, VkSubpassContents(rawValue: contents.rawValue))
        }
    }

    func cmdNextSubpass(contents: SubpassContents) -> Void {
        vkCmdNextSubpass(self.handle, VkSubpassContents(rawValue: contents.rawValue))
    }

    func cmdEndRenderPass() -> Void {
        vkCmdEndRenderPass(self.handle)
    }

    func cmdExecuteCommands(pCommandBuffers: Array<CommandBuffer>) -> Void {
        pCommandBuffers.map{ $0.handle }.withUnsafeBufferPointer { ptr_pCommandBuffers in
            vkCmdExecuteCommands(self.handle, UInt32(ptr_pCommandBuffers.count), ptr_pCommandBuffers.baseAddress)
        }
    }

    func cmdDebugMarkerBeginEXT(pMarkerInfo: DebugMarkerMarkerInfoEXT) -> Void {
        pMarkerInfo.withCStruct { ptr_pMarkerInfo in
            vkCmdDebugMarkerBeginEXT(self.handle, ptr_pMarkerInfo)
        }
    }

    func cmdDebugMarkerEndEXT() -> Void {
        vkCmdDebugMarkerEndEXT(self.handle)
    }

    func cmdDebugMarkerInsertEXT(pMarkerInfo: DebugMarkerMarkerInfoEXT) -> Void {
        pMarkerInfo.withCStruct { ptr_pMarkerInfo in
            vkCmdDebugMarkerInsertEXT(self.handle, ptr_pMarkerInfo)
        }
    }

    func cmdExecuteGeneratedCommandsNV(isPreprocessed: Bool, pGeneratedCommandsInfo: GeneratedCommandsInfoNV) -> Void {
        pGeneratedCommandsInfo.withCStruct { ptr_pGeneratedCommandsInfo in
            vkCmdExecuteGeneratedCommandsNV(self.handle, VkBool32(isPreprocessed ? VK_TRUE : VK_FALSE), ptr_pGeneratedCommandsInfo)
        }
    }

    func cmdPreprocessGeneratedCommandsNV(pGeneratedCommandsInfo: GeneratedCommandsInfoNV) -> Void {
        pGeneratedCommandsInfo.withCStruct { ptr_pGeneratedCommandsInfo in
            vkCmdPreprocessGeneratedCommandsNV(self.handle, ptr_pGeneratedCommandsInfo)
        }
    }

    func cmdBindPipelineShaderGroupNV(pipelineBindPoint: PipelineBindPoint, pipeline: Pipeline, groupIndex: UInt32) -> Void {
        vkCmdBindPipelineShaderGroupNV(self.handle, VkPipelineBindPoint(rawValue: pipelineBindPoint.rawValue), pipeline.handle, groupIndex)
    }

    func cmdPushDescriptorSetKHR(pipelineBindPoint: PipelineBindPoint, layout: PipelineLayout, set: UInt32, pDescriptorWrites: Array<WriteDescriptorSet>) -> Void {
        pDescriptorWrites.withCStructBufferPointer { ptr_pDescriptorWrites in
            vkCmdPushDescriptorSetKHR(self.handle, VkPipelineBindPoint(rawValue: pipelineBindPoint.rawValue), layout.handle, set, UInt32(ptr_pDescriptorWrites.count), ptr_pDescriptorWrites.baseAddress)
        }
    }

    func cmdSetDeviceMask(deviceMask: UInt32) -> Void {
        vkCmdSetDeviceMask(self.handle, deviceMask)
    }

    func cmdDispatchBase(baseGroupX: UInt32, baseGroupY: UInt32, baseGroupZ: UInt32, groupCountX: UInt32, groupCountY: UInt32, groupCountZ: UInt32) -> Void {
        vkCmdDispatchBase(self.handle, baseGroupX, baseGroupY, baseGroupZ, groupCountX, groupCountY, groupCountZ)
    }

    func cmdPushDescriptorSetWithTemplateKHR(descriptorUpdateTemplate: DescriptorUpdateTemplate, layout: PipelineLayout, set: UInt32, pData: UnsafeRawPointer) -> Void {
        vkCmdPushDescriptorSetWithTemplateKHR(self.handle, descriptorUpdateTemplate.handle, layout.handle, set, pData)
    }

    func cmdSetViewportWScalingNV(firstViewport: UInt32, pViewportWScalings: Array<ViewportWScalingNV>) -> Void {
        pViewportWScalings.withCStructBufferPointer { ptr_pViewportWScalings in
            vkCmdSetViewportWScalingNV(self.handle, firstViewport, UInt32(ptr_pViewportWScalings.count), ptr_pViewportWScalings.baseAddress)
        }
    }

    func cmdSetDiscardRectangleEXT(firstDiscardRectangle: UInt32, pDiscardRectangles: Array<Rect2D>) -> Void {
        pDiscardRectangles.withCStructBufferPointer { ptr_pDiscardRectangles in
            vkCmdSetDiscardRectangleEXT(self.handle, firstDiscardRectangle, UInt32(ptr_pDiscardRectangles.count), ptr_pDiscardRectangles.baseAddress)
        }
    }

    func cmdSetSampleLocationsEXT(pSampleLocationsInfo: SampleLocationsInfoEXT) -> Void {
        pSampleLocationsInfo.withCStruct { ptr_pSampleLocationsInfo in
            vkCmdSetSampleLocationsEXT(self.handle, ptr_pSampleLocationsInfo)
        }
    }

    func cmdBeginDebugUtilsLabelEXT(pLabelInfo: DebugUtilsLabelEXT) -> Void {
        pLabelInfo.withCStruct { ptr_pLabelInfo in
            vkCmdBeginDebugUtilsLabelEXT(self.handle, ptr_pLabelInfo)
        }
    }

    func cmdEndDebugUtilsLabelEXT() -> Void {
        vkCmdEndDebugUtilsLabelEXT(self.handle)
    }

    func cmdInsertDebugUtilsLabelEXT(pLabelInfo: DebugUtilsLabelEXT) -> Void {
        pLabelInfo.withCStruct { ptr_pLabelInfo in
            vkCmdInsertDebugUtilsLabelEXT(self.handle, ptr_pLabelInfo)
        }
    }

    func cmdWriteBufferMarkerAMD(pipelineStage: PipelineStageFlags, dstBuffer: Buffer, dstOffset: VkDeviceSize, marker: UInt32) -> Void {
        vkCmdWriteBufferMarkerAMD(self.handle, VkPipelineStageFlagBits(rawValue: pipelineStage.rawValue), dstBuffer.handle, dstOffset, marker)
    }

    func cmdBeginRenderPass2(pRenderPassBegin: RenderPassBeginInfo, pSubpassBeginInfo: SubpassBeginInfo) -> Void {
        pRenderPassBegin.withCStruct { ptr_pRenderPassBegin in
            pSubpassBeginInfo.withCStruct { ptr_pSubpassBeginInfo in
                vkCmdBeginRenderPass2(self.handle, ptr_pRenderPassBegin, ptr_pSubpassBeginInfo)
            }
        }
    }

    func cmdNextSubpass2(pSubpassBeginInfo: SubpassBeginInfo, pSubpassEndInfo: SubpassEndInfo) -> Void {
        pSubpassBeginInfo.withCStruct { ptr_pSubpassBeginInfo in
            pSubpassEndInfo.withCStruct { ptr_pSubpassEndInfo in
                vkCmdNextSubpass2(self.handle, ptr_pSubpassBeginInfo, ptr_pSubpassEndInfo)
            }
        }
    }

    func cmdEndRenderPass2(pSubpassEndInfo: SubpassEndInfo) -> Void {
        pSubpassEndInfo.withCStruct { ptr_pSubpassEndInfo in
            vkCmdEndRenderPass2(self.handle, ptr_pSubpassEndInfo)
        }
    }

    func cmdDrawIndirectCount(buffer: Buffer, offset: VkDeviceSize, countBuffer: Buffer, countBufferOffset: VkDeviceSize, maxDrawCount: UInt32, stride: UInt32) -> Void {
        vkCmdDrawIndirectCount(self.handle, buffer.handle, offset, countBuffer.handle, countBufferOffset, maxDrawCount, stride)
    }

    func cmdDrawIndexedIndirectCount(buffer: Buffer, offset: VkDeviceSize, countBuffer: Buffer, countBufferOffset: VkDeviceSize, maxDrawCount: UInt32, stride: UInt32) -> Void {
        vkCmdDrawIndexedIndirectCount(self.handle, buffer.handle, offset, countBuffer.handle, countBufferOffset, maxDrawCount, stride)
    }

    func cmdSetCheckpointNV(pCheckpointMarker: UnsafeRawPointer) -> Void {
        vkCmdSetCheckpointNV(self.handle, pCheckpointMarker)
    }

    func cmdBindTransformFeedbackBuffersEXT(firstBinding: UInt32, pBuffers: Array<Buffer>, pOffsets: Array<VkDeviceSize>, pSizes: Array<VkDeviceSize>?) -> Void {
        pBuffers.map{ $0.handle }.withUnsafeBufferPointer { ptr_pBuffers in
            pOffsets.withUnsafeBufferPointer { ptr_pOffsets in
                pSizes.withOptionalUnsafeBufferPointer { ptr_pSizes in
                    vkCmdBindTransformFeedbackBuffersEXT(self.handle, firstBinding, UInt32(ptr_pBuffers.count), ptr_pBuffers.baseAddress, ptr_pOffsets.baseAddress, ptr_pSizes.baseAddress)
                }
            }
        }
    }

    func cmdBeginTransformFeedbackEXT(firstCounterBuffer: UInt32, pCounterBuffers: Array<Buffer>, pCounterBufferOffsets: Array<VkDeviceSize>?) -> Void {
        pCounterBuffers.map{ $0.handle }.withUnsafeBufferPointer { ptr_pCounterBuffers in
            pCounterBufferOffsets.withOptionalUnsafeBufferPointer { ptr_pCounterBufferOffsets in
                vkCmdBeginTransformFeedbackEXT(self.handle, firstCounterBuffer, UInt32(ptr_pCounterBuffers.count), ptr_pCounterBuffers.baseAddress, ptr_pCounterBufferOffsets.baseAddress)
            }
        }
    }

    func cmdEndTransformFeedbackEXT(firstCounterBuffer: UInt32, pCounterBuffers: Array<Buffer>, pCounterBufferOffsets: Array<VkDeviceSize>?) -> Void {
        pCounterBuffers.map{ $0.handle }.withUnsafeBufferPointer { ptr_pCounterBuffers in
            pCounterBufferOffsets.withOptionalUnsafeBufferPointer { ptr_pCounterBufferOffsets in
                vkCmdEndTransformFeedbackEXT(self.handle, firstCounterBuffer, UInt32(ptr_pCounterBuffers.count), ptr_pCounterBuffers.baseAddress, ptr_pCounterBufferOffsets.baseAddress)
            }
        }
    }

    func cmdBeginQueryIndexedEXT(queryPool: QueryPool, query: UInt32, flags: QueryControlFlags, index: UInt32) -> Void {
        vkCmdBeginQueryIndexedEXT(self.handle, queryPool.handle, query, flags.rawValue, index)
    }

    func cmdEndQueryIndexedEXT(queryPool: QueryPool, query: UInt32, index: UInt32) -> Void {
        vkCmdEndQueryIndexedEXT(self.handle, queryPool.handle, query, index)
    }

    func cmdDrawIndirectByteCountEXT(instanceCount: UInt32, firstInstance: UInt32, counterBuffer: Buffer, counterBufferOffset: VkDeviceSize, counterOffset: UInt32, vertexStride: UInt32) -> Void {
        vkCmdDrawIndirectByteCountEXT(self.handle, instanceCount, firstInstance, counterBuffer.handle, counterBufferOffset, counterOffset, vertexStride)
    }

    func cmdSetExclusiveScissorNV(firstExclusiveScissor: UInt32, pExclusiveScissors: Array<Rect2D>) -> Void {
        pExclusiveScissors.withCStructBufferPointer { ptr_pExclusiveScissors in
            vkCmdSetExclusiveScissorNV(self.handle, firstExclusiveScissor, UInt32(ptr_pExclusiveScissors.count), ptr_pExclusiveScissors.baseAddress)
        }
    }

    func cmdBindShadingRateImageNV(imageView: ImageView?, imageLayout: ImageLayout) -> Void {
        vkCmdBindShadingRateImageNV(self.handle, imageView?.handle, VkImageLayout(rawValue: imageLayout.rawValue))
    }

    func cmdSetViewportShadingRatePaletteNV(firstViewport: UInt32, pShadingRatePalettes: Array<ShadingRatePaletteNV>) -> Void {
        pShadingRatePalettes.withCStructBufferPointer { ptr_pShadingRatePalettes in
            vkCmdSetViewportShadingRatePaletteNV(self.handle, firstViewport, UInt32(ptr_pShadingRatePalettes.count), ptr_pShadingRatePalettes.baseAddress)
        }
    }

    func cmdSetCoarseSampleOrderNV(sampleOrderType: CoarseSampleOrderTypeNV, pCustomSampleOrders: Array<CoarseSampleOrderCustomNV>) -> Void {
        pCustomSampleOrders.withCStructBufferPointer { ptr_pCustomSampleOrders in
            vkCmdSetCoarseSampleOrderNV(self.handle, VkCoarseSampleOrderTypeNV(rawValue: sampleOrderType.rawValue), UInt32(ptr_pCustomSampleOrders.count), ptr_pCustomSampleOrders.baseAddress)
        }
    }

    func cmdDrawMeshTasksNV(taskCount: UInt32, firstTask: UInt32) -> Void {
        vkCmdDrawMeshTasksNV(self.handle, taskCount, firstTask)
    }

    func cmdDrawMeshTasksIndirectNV(buffer: Buffer, offset: VkDeviceSize, drawCount: UInt32, stride: UInt32) -> Void {
        vkCmdDrawMeshTasksIndirectNV(self.handle, buffer.handle, offset, drawCount, stride)
    }

    func cmdDrawMeshTasksIndirectCountNV(buffer: Buffer, offset: VkDeviceSize, countBuffer: Buffer, countBufferOffset: VkDeviceSize, maxDrawCount: UInt32, stride: UInt32) -> Void {
        vkCmdDrawMeshTasksIndirectCountNV(self.handle, buffer.handle, offset, countBuffer.handle, countBufferOffset, maxDrawCount, stride)
    }

    func cmdCopyAccelerationStructureNV(dst: VkAccelerationStructureKHR, src: VkAccelerationStructureKHR, mode: VkCopyAccelerationStructureModeKHR) -> Void {
        vkCmdCopyAccelerationStructureNV(self.handle, dst, src, mode)
    }

    func cmdBuildAccelerationStructureNV(pInfo: AccelerationStructureInfoNV, instanceData: Buffer?, instanceOffset: VkDeviceSize, update: Bool, dst: VkAccelerationStructureKHR, src: VkAccelerationStructureKHR, scratch: Buffer, scratchOffset: VkDeviceSize) -> Void {
        pInfo.withCStruct { ptr_pInfo in
            vkCmdBuildAccelerationStructureNV(self.handle, ptr_pInfo, instanceData?.handle, instanceOffset, VkBool32(update ? VK_TRUE : VK_FALSE), dst, src, scratch.handle, scratchOffset)
        }
    }

    func cmdTraceRaysNV(raygenShaderBindingTableBuffer: Buffer, raygenShaderBindingOffset: VkDeviceSize, missShaderBindingTableBuffer: Buffer?, missShaderBindingOffset: VkDeviceSize, missShaderBindingStride: VkDeviceSize, hitShaderBindingTableBuffer: Buffer?, hitShaderBindingOffset: VkDeviceSize, hitShaderBindingStride: VkDeviceSize, callableShaderBindingTableBuffer: Buffer?, callableShaderBindingOffset: VkDeviceSize, callableShaderBindingStride: VkDeviceSize, width: UInt32, height: UInt32, depth: UInt32) -> Void {
        vkCmdTraceRaysNV(self.handle, raygenShaderBindingTableBuffer.handle, raygenShaderBindingOffset, missShaderBindingTableBuffer?.handle, missShaderBindingOffset, missShaderBindingStride, hitShaderBindingTableBuffer?.handle, hitShaderBindingOffset, hitShaderBindingStride, callableShaderBindingTableBuffer?.handle, callableShaderBindingOffset, callableShaderBindingStride, width, height, depth)
    }

    func cmdSetPerformanceMarkerINTEL(pMarkerInfo: PerformanceMarkerInfoINTEL) throws -> Void {
        try pMarkerInfo.withCStruct { ptr_pMarkerInfo in
            try checkResult(
                vkCmdSetPerformanceMarkerINTEL(self.handle, ptr_pMarkerInfo)
            )
        }
    }

    func cmdSetPerformanceStreamMarkerINTEL(pMarkerInfo: PerformanceStreamMarkerInfoINTEL) throws -> Void {
        try pMarkerInfo.withCStruct { ptr_pMarkerInfo in
            try checkResult(
                vkCmdSetPerformanceStreamMarkerINTEL(self.handle, ptr_pMarkerInfo)
            )
        }
    }

    func cmdSetPerformanceOverrideINTEL(pOverrideInfo: PerformanceOverrideInfoINTEL) throws -> Void {
        try pOverrideInfo.withCStruct { ptr_pOverrideInfo in
            try checkResult(
                vkCmdSetPerformanceOverrideINTEL(self.handle, ptr_pOverrideInfo)
            )
        }
    }

    func cmdSetLineStippleEXT(lineStippleFactor: UInt32, lineStipplePattern: UInt16) -> Void {
        vkCmdSetLineStippleEXT(self.handle, lineStippleFactor, lineStipplePattern)
    }
}

class DeviceMemory {
    let handle: VkDeviceMemory!
    let device: Device

    init(handle: VkDeviceMemory!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func mapMemory(offset: VkDeviceSize, size: VkDeviceSize, flags: MemoryMapFlags, ppData: UnsafeMutablePointer<UnsafeMutableRawPointer?>) throws -> Void {
        try checkResult(
            vkMapMemory(self.device.handle, self.handle, offset, size, flags.rawValue, ppData)
        )
    }

    func unmapMemory() -> Void {
        vkUnmapMemory(self.device.handle, self.handle)
    }

    func getDeviceMemoryCommitment(pCommittedMemoryInBytes: UnsafeMutablePointer<VkDeviceSize>) -> Void {
        vkGetDeviceMemoryCommitment(self.device.handle, self.handle, pCommittedMemoryInBytes)
    }
}

class CommandPool {
    let handle: VkCommandPool!
    let device: Device

    init(handle: VkCommandPool!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func resetCommandPool(flags: CommandPoolResetFlags) throws -> Void {
        try checkResult(
            vkResetCommandPool(self.device.handle, self.handle, flags.rawValue)
        )
    }

    func freeCommandBuffers(pCommandBuffers: Array<CommandBuffer>) -> Void {
        pCommandBuffers.map{ $0.handle }.withUnsafeBufferPointer { ptr_pCommandBuffers in
            vkFreeCommandBuffers(self.device.handle, self.handle, UInt32(ptr_pCommandBuffers.count), ptr_pCommandBuffers.baseAddress)
        }
    }

    func trimCommandPool(flags: CommandPoolTrimFlags) -> Void {
        vkTrimCommandPool(self.device.handle, self.handle, flags.rawValue)
    }
}

class Buffer {
    let handle: VkBuffer!
    let device: Device

    init(handle: VkBuffer!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func getBufferMemoryRequirements(pMemoryRequirements: UnsafeMutablePointer<VkMemoryRequirements>) -> Void {
        vkGetBufferMemoryRequirements(self.device.handle, self.handle, pMemoryRequirements)
    }

    func bindBufferMemory(memory: DeviceMemory, memoryOffset: VkDeviceSize) throws -> Void {
        try checkResult(
            vkBindBufferMemory(self.device.handle, self.handle, memory.handle, memoryOffset)
        )
    }
}

class BufferView {
    let handle: VkBufferView!
    let device: Device

    init(handle: VkBufferView!, device: Device) {
        self.handle = handle
        self.device = device
    }
}

class Image {
    let handle: VkImage!
    let device: Device

    init(handle: VkImage!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func getImageMemoryRequirements(pMemoryRequirements: UnsafeMutablePointer<VkMemoryRequirements>) -> Void {
        vkGetImageMemoryRequirements(self.device.handle, self.handle, pMemoryRequirements)
    }

    func bindImageMemory(memory: DeviceMemory, memoryOffset: VkDeviceSize) throws -> Void {
        try checkResult(
            vkBindImageMemory(self.device.handle, self.handle, memory.handle, memoryOffset)
        )
    }

    func getImageSparseMemoryRequirements(pSparseMemoryRequirementCount: UnsafeMutablePointer<UInt32>, pSparseMemoryRequirements: UnsafeMutablePointer<VkSparseImageMemoryRequirements>) -> Void {
        vkGetImageSparseMemoryRequirements(self.device.handle, self.handle, pSparseMemoryRequirementCount, pSparseMemoryRequirements)
    }

    func getImageSubresourceLayout(pSubresource: ImageSubresource, pLayout: UnsafeMutablePointer<VkSubresourceLayout>) -> Void {
        pSubresource.withCStruct { ptr_pSubresource in
            vkGetImageSubresourceLayout(self.device.handle, self.handle, ptr_pSubresource, pLayout)
        }
    }

    func getImageDrmFormatModifierPropertiesEXT(pProperties: UnsafeMutablePointer<VkImageDrmFormatModifierPropertiesEXT>) throws -> Void {
        try checkResult(
            vkGetImageDrmFormatModifierPropertiesEXT(self.device.handle, self.handle, pProperties)
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
}

class ShaderModule {
    let handle: VkShaderModule!
    let device: Device

    init(handle: VkShaderModule!, device: Device) {
        self.handle = handle
        self.device = device
    }
}

class Pipeline {
    let handle: VkPipeline!
    let device: Device

    init(handle: VkPipeline!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func getShaderInfoAMD(shaderStage: ShaderStageFlags, infoType: ShaderInfoTypeAMD, pInfoSize: UnsafeMutablePointer<Int>, pInfo: UnsafeMutableRawPointer) throws -> Void {
        try checkResult(
            vkGetShaderInfoAMD(self.device.handle, self.handle, VkShaderStageFlagBits(rawValue: shaderStage.rawValue), VkShaderInfoTypeAMD(rawValue: infoType.rawValue), pInfoSize, pInfo)
        )
    }

    func compileDeferredNV(shader: UInt32) throws -> Void {
        try checkResult(
            vkCompileDeferredNV(self.device.handle, self.handle, shader)
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
}

class Sampler {
    let handle: VkSampler!
    let device: Device

    init(handle: VkSampler!, device: Device) {
        self.handle = handle
        self.device = device
    }
}

class DescriptorSet {
    let handle: VkDescriptorSet!
    let descriptorPool: DescriptorPool

    init(handle: VkDescriptorSet!, descriptorPool: DescriptorPool) {
        self.handle = handle
        self.descriptorPool = descriptorPool
    }

    func updateDescriptorSetWithTemplate(descriptorUpdateTemplate: DescriptorUpdateTemplate, pData: UnsafeRawPointer) -> Void {
        vkUpdateDescriptorSetWithTemplate(self.descriptorPool.device.handle, self.handle, descriptorUpdateTemplate.handle, pData)
    }
}

class DescriptorSetLayout {
    let handle: VkDescriptorSetLayout!
    let device: Device

    init(handle: VkDescriptorSetLayout!, device: Device) {
        self.handle = handle
        self.device = device
    }
}

class DescriptorPool {
    let handle: VkDescriptorPool!
    let device: Device

    init(handle: VkDescriptorPool!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func resetDescriptorPool(flags: DescriptorPoolResetFlags) throws -> Void {
        try checkResult(
            vkResetDescriptorPool(self.device.handle, self.handle, flags.rawValue)
        )
    }

    func freeDescriptorSets(pDescriptorSets: Array<DescriptorSet>) throws -> Void {
        try pDescriptorSets.map{ $0.handle }.withUnsafeBufferPointer { ptr_pDescriptorSets in
            try checkResult(
                vkFreeDescriptorSets(self.device.handle, self.handle, UInt32(ptr_pDescriptorSets.count), ptr_pDescriptorSets.baseAddress)
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

    func getFenceStatus() throws -> Void {
        try checkResult(
            vkGetFenceStatus(self.device.handle, self.handle)
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

    func getSemaphoreCounterValue(pValue: UnsafeMutablePointer<UInt64>) throws -> Void {
        try checkResult(
            vkGetSemaphoreCounterValue(self.device.handle, self.handle, pValue)
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

    func getEventStatus() throws -> Void {
        try checkResult(
            vkGetEventStatus(self.device.handle, self.handle)
        )
    }

    func setEvent() throws -> Void {
        try checkResult(
            vkSetEvent(self.device.handle, self.handle)
        )
    }

    func resetEvent() throws -> Void {
        try checkResult(
            vkResetEvent(self.device.handle, self.handle)
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

    func getQueryPoolResults(firstQuery: UInt32, queryCount: UInt32, dataSize: Int, pData: UnsafeMutableRawPointer, stride: VkDeviceSize, flags: QueryResultFlags) throws -> Void {
        try checkResult(
            vkGetQueryPoolResults(self.device.handle, self.handle, firstQuery, queryCount, dataSize, pData, stride, flags.rawValue)
        )
    }

    func resetQueryPool(firstQuery: UInt32, queryCount: UInt32) -> Void {
        vkResetQueryPool(self.device.handle, self.handle, firstQuery, queryCount)
    }
}

class Framebuffer {
    let handle: VkFramebuffer!
    let device: Device

    init(handle: VkFramebuffer!, device: Device) {
        self.handle = handle
        self.device = device
    }
}

class RenderPass {
    let handle: VkRenderPass!
    let device: Device

    init(handle: VkRenderPass!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func getRenderAreaGranularity(pGranularity: UnsafeMutablePointer<VkExtent2D>) -> Void {
        vkGetRenderAreaGranularity(self.device.handle, self.handle, pGranularity)
    }
}

class PipelineCache {
    let handle: VkPipelineCache!
    let device: Device

    init(handle: VkPipelineCache!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func getPipelineCacheData(pDataSize: UnsafeMutablePointer<Int>, pData: UnsafeMutableRawPointer) throws -> Void {
        try checkResult(
            vkGetPipelineCacheData(self.device.handle, self.handle, pDataSize, pData)
        )
    }

    func mergePipelineCaches(pSrcCaches: Array<PipelineCache>) throws -> Void {
        try pSrcCaches.map{ $0.handle }.withUnsafeBufferPointer { ptr_pSrcCaches in
            try checkResult(
                vkMergePipelineCaches(self.device.handle, self.handle, UInt32(ptr_pSrcCaches.count), ptr_pSrcCaches.baseAddress)
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

    func destroyIndirectCommandsLayoutNV() -> Void {
        vkDestroyIndirectCommandsLayoutNV(self.device.handle, self.handle, nil)
    }
}

class DescriptorUpdateTemplate {
    let handle: VkDescriptorUpdateTemplate!
    let device: Device

    init(handle: VkDescriptorUpdateTemplate!, device: Device) {
        self.handle = handle
        self.device = device
    }
}

class SamplerYcbcrConversion {
    let handle: VkSamplerYcbcrConversion!
    let device: Device

    init(handle: VkSamplerYcbcrConversion!, device: Device) {
        self.handle = handle
        self.device = device
    }
}

class ValidationCacheEXT {
    let handle: VkValidationCacheEXT!
    let device: Device

    init(handle: VkValidationCacheEXT!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func getValidationCacheDataEXT(pDataSize: UnsafeMutablePointer<Int>, pData: UnsafeMutableRawPointer) throws -> Void {
        try checkResult(
            vkGetValidationCacheDataEXT(self.device.handle, self.handle, pDataSize, pData)
        )
    }

    func mergeValidationCachesEXT(pSrcCaches: Array<ValidationCacheEXT>) throws -> Void {
        try pSrcCaches.map{ $0.handle }.withUnsafeBufferPointer { ptr_pSrcCaches in
            try checkResult(
                vkMergeValidationCachesEXT(self.device.handle, self.handle, UInt32(ptr_pSrcCaches.count), ptr_pSrcCaches.baseAddress)
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

    func releasePerformanceConfigurationINTEL() throws -> Void {
        try checkResult(
            vkReleasePerformanceConfigurationINTEL(self.device.handle, self.handle)
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

    func getDisplayModePropertiesKHR(pPropertyCount: UnsafeMutablePointer<UInt32>, pProperties: UnsafeMutablePointer<VkDisplayModePropertiesKHR>) throws -> Void {
        try checkResult(
            vkGetDisplayModePropertiesKHR(self.physicalDevice.handle, self.handle, pPropertyCount, pProperties)
        )
    }

    func createDisplayModeKHR(pCreateInfo: DisplayModeCreateInfoKHR, pMode: UnsafeMutablePointer<VkDisplayModeKHR?>) throws -> Void {
        try pCreateInfo.withCStruct { ptr_pCreateInfo in
            try checkResult(
                vkCreateDisplayModeKHR(self.physicalDevice.handle, self.handle, ptr_pCreateInfo, nil, pMode)
            )
        }
    }

    func releaseDisplayEXT() throws -> Void {
        try checkResult(
            vkReleaseDisplayEXT(self.physicalDevice.handle, self.handle)
        )
    }

    func getDisplayModeProperties2KHR(pPropertyCount: UnsafeMutablePointer<UInt32>, pProperties: UnsafeMutablePointer<VkDisplayModeProperties2KHR>) throws -> Void {
        try checkResult(
            vkGetDisplayModeProperties2KHR(self.physicalDevice.handle, self.handle, pPropertyCount, pProperties)
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

    func getDisplayPlaneCapabilitiesKHR(planeIndex: UInt32, pCapabilities: UnsafeMutablePointer<VkDisplayPlaneCapabilitiesKHR>) throws -> Void {
        try checkResult(
            vkGetDisplayPlaneCapabilitiesKHR(self.display.physicalDevice.handle, self.handle, planeIndex, pCapabilities)
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

    func destroyDebugReportCallbackEXT() -> Void {
        vkDestroyDebugReportCallbackEXT(self.instance.handle, self.handle, nil)
    }
}

class DebugUtilsMessengerEXT {
    let handle: VkDebugUtilsMessengerEXT!
    let instance: Instance

    init(handle: VkDebugUtilsMessengerEXT!, instance: Instance) {
        self.handle = handle
        self.instance = instance
    }

    func destroyDebugUtilsMessengerEXT() -> Void {
        vkDestroyDebugUtilsMessengerEXT(self.instance.handle, self.handle, nil)
    }
}

