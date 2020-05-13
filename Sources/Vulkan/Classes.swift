import CVulkan

class Instance {
    let handle: VkInstance!

    init(handle: VkInstance!) {
        self.handle = handle
    }

    func createInstance(pCreateInfo: InstanceCreateInfo, pAllocator: AllocationCallbacks?, pInstance: UnsafeMutablePointer<VkInstance?>) -> VkResult {
        pCreateInfo.withCStruct { ptr_pCreateInfo in
            pAllocator.withOptionalCStruct { ptr_pAllocator in
                vkCreateInstance(ptr_pCreateInfo, ptr_pAllocator, pInstance)
            }
        }
    }

    func destroyInstance(instance: Instance?, pAllocator: AllocationCallbacks?) -> Void {
        pAllocator.withOptionalCStruct { ptr_pAllocator in
            vkDestroyInstance(instance?.handle, ptr_pAllocator)
        }
    }

    func enumeratePhysicalDevices(instance: Instance, pPhysicalDeviceCount: UnsafeMutablePointer<UInt32>, pPhysicalDevices: UnsafeMutablePointer<VkPhysicalDevice?>) -> VkResult {
        vkEnumeratePhysicalDevices(instance.handle, pPhysicalDeviceCount, pPhysicalDevices)
    }

    func getInstanceProcAddr(instance: Instance?, pName: String) -> PFN_vkVoidFunction {
        pName.withCString { cString_pName in
            vkGetInstanceProcAddr(instance?.handle, cString_pName)
        }
    }

    func enumerateInstanceVersion(pApiVersion: UnsafeMutablePointer<UInt32>) -> VkResult {
        vkEnumerateInstanceVersion(pApiVersion)
    }

    func enumerateInstanceLayerProperties(pPropertyCount: UnsafeMutablePointer<UInt32>, pProperties: UnsafeMutablePointer<VkLayerProperties>) -> VkResult {
        vkEnumerateInstanceLayerProperties(pPropertyCount, pProperties)
    }

    func enumerateInstanceExtensionProperties(pLayerName: String?, pPropertyCount: UnsafeMutablePointer<UInt32>, pProperties: UnsafeMutablePointer<VkExtensionProperties>) -> VkResult {
        pLayerName.withOptionalCString { cString_pLayerName in
            vkEnumerateInstanceExtensionProperties(cString_pLayerName, pPropertyCount, pProperties)
        }
    }

    func createDisplayPlaneSurfaceKHR(instance: Instance, pCreateInfo: DisplaySurfaceCreateInfoKHR, pAllocator: AllocationCallbacks?, pSurface: UnsafeMutablePointer<VkSurfaceKHR?>) -> VkResult {
        pCreateInfo.withCStruct { ptr_pCreateInfo in
            pAllocator.withOptionalCStruct { ptr_pAllocator in
                vkCreateDisplayPlaneSurfaceKHR(instance.handle, ptr_pCreateInfo, ptr_pAllocator, pSurface)
            }
        }
    }

    func createDebugReportCallbackEXT(instance: Instance, pCreateInfo: DebugReportCallbackCreateInfoEXT, pAllocator: AllocationCallbacks?, pCallback: UnsafeMutablePointer<VkDebugReportCallbackEXT?>) -> VkResult {
        pCreateInfo.withCStruct { ptr_pCreateInfo in
            pAllocator.withOptionalCStruct { ptr_pAllocator in
                vkCreateDebugReportCallbackEXT(instance.handle, ptr_pCreateInfo, ptr_pAllocator, pCallback)
            }
        }
    }

    func debugReportMessageEXT(instance: Instance, flags: DebugReportFlagsEXT, objectType: DebugReportObjectTypeEXT, object: UInt64, location: Int, messageCode: Int32, pLayerPrefix: String, pMessage: String) -> Void {
        pLayerPrefix.withCString { cString_pLayerPrefix in
            pMessage.withCString { cString_pMessage in
                vkDebugReportMessageEXT(instance.handle, flags.rawValue, VkDebugReportObjectTypeEXT(rawValue: objectType.rawValue), object, location, messageCode, cString_pLayerPrefix, cString_pMessage)
            }
        }
    }

    func enumeratePhysicalDeviceGroups(instance: Instance, pPhysicalDeviceGroupCount: UnsafeMutablePointer<UInt32>, pPhysicalDeviceGroupProperties: UnsafeMutablePointer<VkPhysicalDeviceGroupProperties>) -> VkResult {
        vkEnumeratePhysicalDeviceGroups(instance.handle, pPhysicalDeviceGroupCount, pPhysicalDeviceGroupProperties)
    }

    func createDebugUtilsMessengerEXT(instance: Instance, pCreateInfo: DebugUtilsMessengerCreateInfoEXT, pAllocator: AllocationCallbacks?, pMessenger: UnsafeMutablePointer<VkDebugUtilsMessengerEXT?>) -> VkResult {
        pCreateInfo.withCStruct { ptr_pCreateInfo in
            pAllocator.withOptionalCStruct { ptr_pAllocator in
                vkCreateDebugUtilsMessengerEXT(instance.handle, ptr_pCreateInfo, ptr_pAllocator, pMessenger)
            }
        }
    }

    func submitDebugUtilsMessageEXT(instance: Instance, messageSeverity: DebugUtilsMessageSeverityFlagsEXT, messageTypes: DebugUtilsMessageTypeFlagsEXT, pCallbackData: DebugUtilsMessengerCallbackDataEXT) -> Void {
        pCallbackData.withCStruct { ptr_pCallbackData in
            vkSubmitDebugUtilsMessageEXT(instance.handle, VkDebugUtilsMessageSeverityFlagBitsEXT(rawValue: messageSeverity.rawValue), messageTypes.rawValue, ptr_pCallbackData)
        }
    }

    func createHeadlessSurfaceEXT(instance: Instance, pCreateInfo: HeadlessSurfaceCreateInfoEXT, pAllocator: AllocationCallbacks?, pSurface: UnsafeMutablePointer<VkSurfaceKHR?>) -> VkResult {
        pCreateInfo.withCStruct { ptr_pCreateInfo in
            pAllocator.withOptionalCStruct { ptr_pAllocator in
                vkCreateHeadlessSurfaceEXT(instance.handle, ptr_pCreateInfo, ptr_pAllocator, pSurface)
            }
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

    func getPhysicalDeviceImageFormatProperties(physicalDevice: PhysicalDevice, format: Format, type: ImageType, tiling: ImageTiling, usage: ImageUsageFlags, flags: ImageCreateFlags, pImageFormatProperties: UnsafeMutablePointer<VkImageFormatProperties>) -> VkResult {
        vkGetPhysicalDeviceImageFormatProperties(physicalDevice.handle, VkFormat(rawValue: format.rawValue), VkImageType(rawValue: type.rawValue), VkImageTiling(rawValue: tiling.rawValue), usage.rawValue, flags.rawValue, pImageFormatProperties)
    }

    func createDevice(physicalDevice: PhysicalDevice, pCreateInfo: DeviceCreateInfo, pAllocator: AllocationCallbacks?, pDevice: UnsafeMutablePointer<VkDevice?>) -> VkResult {
        pCreateInfo.withCStruct { ptr_pCreateInfo in
            pAllocator.withOptionalCStruct { ptr_pAllocator in
                vkCreateDevice(physicalDevice.handle, ptr_pCreateInfo, ptr_pAllocator, pDevice)
            }
        }
    }

    func enumerateDeviceLayerProperties(physicalDevice: PhysicalDevice, pPropertyCount: UnsafeMutablePointer<UInt32>, pProperties: UnsafeMutablePointer<VkLayerProperties>) -> VkResult {
        vkEnumerateDeviceLayerProperties(physicalDevice.handle, pPropertyCount, pProperties)
    }

    func enumerateDeviceExtensionProperties(physicalDevice: PhysicalDevice, pLayerName: String?, pPropertyCount: UnsafeMutablePointer<UInt32>, pProperties: UnsafeMutablePointer<VkExtensionProperties>) -> VkResult {
        pLayerName.withOptionalCString { cString_pLayerName in
            vkEnumerateDeviceExtensionProperties(physicalDevice.handle, cString_pLayerName, pPropertyCount, pProperties)
        }
    }

    func getPhysicalDeviceSparseImageFormatProperties(physicalDevice: PhysicalDevice, format: Format, type: ImageType, samples: SampleCountFlags, usage: ImageUsageFlags, tiling: ImageTiling, pPropertyCount: UnsafeMutablePointer<UInt32>, pProperties: UnsafeMutablePointer<VkSparseImageFormatProperties>) -> Void {
        vkGetPhysicalDeviceSparseImageFormatProperties(physicalDevice.handle, VkFormat(rawValue: format.rawValue), VkImageType(rawValue: type.rawValue), VkSampleCountFlagBits(rawValue: samples.rawValue), usage.rawValue, VkImageTiling(rawValue: tiling.rawValue), pPropertyCount, pProperties)
    }

    func getPhysicalDeviceDisplayPropertiesKHR(physicalDevice: PhysicalDevice, pPropertyCount: UnsafeMutablePointer<UInt32>, pProperties: UnsafeMutablePointer<VkDisplayPropertiesKHR>) -> VkResult {
        vkGetPhysicalDeviceDisplayPropertiesKHR(physicalDevice.handle, pPropertyCount, pProperties)
    }

    func getPhysicalDeviceDisplayPlanePropertiesKHR(physicalDevice: PhysicalDevice, pPropertyCount: UnsafeMutablePointer<UInt32>, pProperties: UnsafeMutablePointer<VkDisplayPlanePropertiesKHR>) -> VkResult {
        vkGetPhysicalDeviceDisplayPlanePropertiesKHR(physicalDevice.handle, pPropertyCount, pProperties)
    }

    func getDisplayPlaneSupportedDisplaysKHR(physicalDevice: PhysicalDevice, planeIndex: UInt32, pDisplayCount: UnsafeMutablePointer<UInt32>, pDisplays: UnsafeMutablePointer<VkDisplayKHR?>) -> VkResult {
        vkGetDisplayPlaneSupportedDisplaysKHR(physicalDevice.handle, planeIndex, pDisplayCount, pDisplays)
    }

    func getPhysicalDeviceSurfaceSupportKHR(physicalDevice: PhysicalDevice, queueFamilyIndex: UInt32, surface: SurfaceKHR, pSupported: UnsafeMutablePointer<VkBool32>) -> VkResult {
        vkGetPhysicalDeviceSurfaceSupportKHR(physicalDevice.handle, queueFamilyIndex, surface.handle, pSupported)
    }

    func getPhysicalDeviceSurfaceCapabilitiesKHR(physicalDevice: PhysicalDevice, surface: SurfaceKHR, pSurfaceCapabilities: UnsafeMutablePointer<VkSurfaceCapabilitiesKHR>) -> VkResult {
        vkGetPhysicalDeviceSurfaceCapabilitiesKHR(physicalDevice.handle, surface.handle, pSurfaceCapabilities)
    }

    func getPhysicalDeviceSurfaceFormatsKHR(physicalDevice: PhysicalDevice, surface: SurfaceKHR, pSurfaceFormatCount: UnsafeMutablePointer<UInt32>, pSurfaceFormats: UnsafeMutablePointer<VkSurfaceFormatKHR>) -> VkResult {
        vkGetPhysicalDeviceSurfaceFormatsKHR(physicalDevice.handle, surface.handle, pSurfaceFormatCount, pSurfaceFormats)
    }

    func getPhysicalDeviceSurfacePresentModesKHR(physicalDevice: PhysicalDevice, surface: SurfaceKHR, pPresentModeCount: UnsafeMutablePointer<UInt32>, pPresentModes: UnsafeMutablePointer<VkPresentModeKHR>) -> VkResult {
        vkGetPhysicalDeviceSurfacePresentModesKHR(physicalDevice.handle, surface.handle, pPresentModeCount, pPresentModes)
    }

    func getPhysicalDeviceExternalImageFormatPropertiesNV(physicalDevice: PhysicalDevice, format: Format, type: ImageType, tiling: ImageTiling, usage: ImageUsageFlags, flags: ImageCreateFlags, externalHandleType: ExternalMemoryHandleTypeFlagsNV, pExternalImageFormatProperties: UnsafeMutablePointer<VkExternalImageFormatPropertiesNV>) -> VkResult {
        vkGetPhysicalDeviceExternalImageFormatPropertiesNV(physicalDevice.handle, VkFormat(rawValue: format.rawValue), VkImageType(rawValue: type.rawValue), VkImageTiling(rawValue: tiling.rawValue), usage.rawValue, flags.rawValue, externalHandleType.rawValue, pExternalImageFormatProperties)
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

    func getPhysicalDeviceImageFormatProperties2(physicalDevice: PhysicalDevice, pImageFormatInfo: PhysicalDeviceImageFormatInfo2, pImageFormatProperties: UnsafeMutablePointer<VkImageFormatProperties2>) -> VkResult {
        pImageFormatInfo.withCStruct { ptr_pImageFormatInfo in
            vkGetPhysicalDeviceImageFormatProperties2(physicalDevice.handle, ptr_pImageFormatInfo, pImageFormatProperties)
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

    func getPhysicalDeviceSurfaceCapabilities2EXT(physicalDevice: PhysicalDevice, surface: SurfaceKHR, pSurfaceCapabilities: UnsafeMutablePointer<VkSurfaceCapabilities2EXT>) -> VkResult {
        vkGetPhysicalDeviceSurfaceCapabilities2EXT(physicalDevice.handle, surface.handle, pSurfaceCapabilities)
    }

    func getPhysicalDevicePresentRectanglesKHR(physicalDevice: PhysicalDevice, surface: SurfaceKHR, pRectCount: UnsafeMutablePointer<UInt32>, pRects: UnsafeMutablePointer<VkRect2D>) -> VkResult {
        vkGetPhysicalDevicePresentRectanglesKHR(physicalDevice.handle, surface.handle, pRectCount, pRects)
    }

    func getPhysicalDeviceMultisamplePropertiesEXT(physicalDevice: PhysicalDevice, samples: SampleCountFlags, pMultisampleProperties: UnsafeMutablePointer<VkMultisamplePropertiesEXT>) -> Void {
        vkGetPhysicalDeviceMultisamplePropertiesEXT(physicalDevice.handle, VkSampleCountFlagBits(rawValue: samples.rawValue), pMultisampleProperties)
    }

    func getPhysicalDeviceSurfaceCapabilities2KHR(physicalDevice: PhysicalDevice, pSurfaceInfo: PhysicalDeviceSurfaceInfo2KHR, pSurfaceCapabilities: UnsafeMutablePointer<VkSurfaceCapabilities2KHR>) -> VkResult {
        pSurfaceInfo.withCStruct { ptr_pSurfaceInfo in
            vkGetPhysicalDeviceSurfaceCapabilities2KHR(physicalDevice.handle, ptr_pSurfaceInfo, pSurfaceCapabilities)
        }
    }

    func getPhysicalDeviceSurfaceFormats2KHR(physicalDevice: PhysicalDevice, pSurfaceInfo: PhysicalDeviceSurfaceInfo2KHR, pSurfaceFormatCount: UnsafeMutablePointer<UInt32>, pSurfaceFormats: UnsafeMutablePointer<VkSurfaceFormat2KHR>) -> VkResult {
        pSurfaceInfo.withCStruct { ptr_pSurfaceInfo in
            vkGetPhysicalDeviceSurfaceFormats2KHR(physicalDevice.handle, ptr_pSurfaceInfo, pSurfaceFormatCount, pSurfaceFormats)
        }
    }

    func getPhysicalDeviceDisplayProperties2KHR(physicalDevice: PhysicalDevice, pPropertyCount: UnsafeMutablePointer<UInt32>, pProperties: UnsafeMutablePointer<VkDisplayProperties2KHR>) -> VkResult {
        vkGetPhysicalDeviceDisplayProperties2KHR(physicalDevice.handle, pPropertyCount, pProperties)
    }

    func getPhysicalDeviceDisplayPlaneProperties2KHR(physicalDevice: PhysicalDevice, pPropertyCount: UnsafeMutablePointer<UInt32>, pProperties: UnsafeMutablePointer<VkDisplayPlaneProperties2KHR>) -> VkResult {
        vkGetPhysicalDeviceDisplayPlaneProperties2KHR(physicalDevice.handle, pPropertyCount, pProperties)
    }

    func getDisplayPlaneCapabilities2KHR(physicalDevice: PhysicalDevice, pDisplayPlaneInfo: DisplayPlaneInfo2KHR, pCapabilities: UnsafeMutablePointer<VkDisplayPlaneCapabilities2KHR>) -> VkResult {
        pDisplayPlaneInfo.withCStruct { ptr_pDisplayPlaneInfo in
            vkGetDisplayPlaneCapabilities2KHR(physicalDevice.handle, ptr_pDisplayPlaneInfo, pCapabilities)
        }
    }

    func getPhysicalDeviceCalibrateableTimeDomainsEXT(physicalDevice: PhysicalDevice, pTimeDomainCount: UnsafeMutablePointer<UInt32>, pTimeDomains: UnsafeMutablePointer<VkTimeDomainEXT>) -> VkResult {
        vkGetPhysicalDeviceCalibrateableTimeDomainsEXT(physicalDevice.handle, pTimeDomainCount, pTimeDomains)
    }

    func getPhysicalDeviceCooperativeMatrixPropertiesNV(physicalDevice: PhysicalDevice, pPropertyCount: UnsafeMutablePointer<UInt32>, pProperties: UnsafeMutablePointer<VkCooperativeMatrixPropertiesNV>) -> VkResult {
        vkGetPhysicalDeviceCooperativeMatrixPropertiesNV(physicalDevice.handle, pPropertyCount, pProperties)
    }

    func enumeratePhysicalDeviceQueueFamilyPerformanceQueryCountersKHR(physicalDevice: PhysicalDevice, queueFamilyIndex: UInt32, pCounterCount: UnsafeMutablePointer<UInt32>, pCounters: UnsafeMutablePointer<VkPerformanceCounterKHR>, pCounterDescriptions: UnsafeMutablePointer<VkPerformanceCounterDescriptionKHR>) -> VkResult {
        vkEnumeratePhysicalDeviceQueueFamilyPerformanceQueryCountersKHR(physicalDevice.handle, queueFamilyIndex, pCounterCount, pCounters, pCounterDescriptions)
    }

    func getPhysicalDeviceQueueFamilyPerformanceQueryPassesKHR(physicalDevice: PhysicalDevice, pPerformanceQueryCreateInfo: QueryPoolPerformanceCreateInfoKHR, pNumPasses: UnsafeMutablePointer<UInt32>) -> Void {
        pPerformanceQueryCreateInfo.withCStruct { ptr_pPerformanceQueryCreateInfo in
            vkGetPhysicalDeviceQueueFamilyPerformanceQueryPassesKHR(physicalDevice.handle, ptr_pPerformanceQueryCreateInfo, pNumPasses)
        }
    }

    func getPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNV(physicalDevice: PhysicalDevice, pCombinationCount: UnsafeMutablePointer<UInt32>, pCombinations: UnsafeMutablePointer<VkFramebufferMixedSamplesCombinationNV>) -> VkResult {
        vkGetPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNV(physicalDevice.handle, pCombinationCount, pCombinations)
    }

    func getPhysicalDeviceToolPropertiesEXT(physicalDevice: PhysicalDevice, pToolCount: UnsafeMutablePointer<UInt32>, pToolProperties: UnsafeMutablePointer<VkPhysicalDeviceToolPropertiesEXT>) -> VkResult {
        vkGetPhysicalDeviceToolPropertiesEXT(physicalDevice.handle, pToolCount, pToolProperties)
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

    func destroyDevice(device: Device?, pAllocator: AllocationCallbacks?) -> Void {
        pAllocator.withOptionalCStruct { ptr_pAllocator in
            vkDestroyDevice(device?.handle, ptr_pAllocator)
        }
    }

    func getDeviceQueue(device: Device, queueFamilyIndex: UInt32, queueIndex: UInt32, pQueue: UnsafeMutablePointer<VkQueue?>) -> Void {
        vkGetDeviceQueue(device.handle, queueFamilyIndex, queueIndex, pQueue)
    }

    func deviceWaitIdle(device: Device) -> VkResult {
        vkDeviceWaitIdle(device.handle)
    }

    func allocateMemory(device: Device, pAllocateInfo: MemoryAllocateInfo, pAllocator: AllocationCallbacks?, pMemory: UnsafeMutablePointer<VkDeviceMemory?>) -> VkResult {
        pAllocateInfo.withCStruct { ptr_pAllocateInfo in
            pAllocator.withOptionalCStruct { ptr_pAllocator in
                vkAllocateMemory(device.handle, ptr_pAllocateInfo, ptr_pAllocator, pMemory)
            }
        }
    }

    func freeMemory(device: Device, memory: DeviceMemory?, pAllocator: AllocationCallbacks?) -> Void {
        pAllocator.withOptionalCStruct { ptr_pAllocator in
            vkFreeMemory(device.handle, memory?.handle, ptr_pAllocator)
        }
    }

    func flushMappedMemoryRanges(device: Device, pMemoryRanges: Array<MappedMemoryRange>) -> VkResult {
        pMemoryRanges.withCStructBufferPointer { ptr_pMemoryRanges in
            vkFlushMappedMemoryRanges(device.handle, UInt32(ptr_pMemoryRanges.count), ptr_pMemoryRanges.baseAddress)
        }
    }

    func invalidateMappedMemoryRanges(device: Device, pMemoryRanges: Array<MappedMemoryRange>) -> VkResult {
        pMemoryRanges.withCStructBufferPointer { ptr_pMemoryRanges in
            vkInvalidateMappedMemoryRanges(device.handle, UInt32(ptr_pMemoryRanges.count), ptr_pMemoryRanges.baseAddress)
        }
    }

    func createFence(device: Device, pCreateInfo: FenceCreateInfo, pAllocator: AllocationCallbacks?, pFence: UnsafeMutablePointer<VkFence?>) -> VkResult {
        pCreateInfo.withCStruct { ptr_pCreateInfo in
            pAllocator.withOptionalCStruct { ptr_pAllocator in
                vkCreateFence(device.handle, ptr_pCreateInfo, ptr_pAllocator, pFence)
            }
        }
    }

    func resetFences(device: Device, pFences: Array<Fence>) -> VkResult {
        pFences.map{ $0.handle }.withUnsafeBufferPointer { ptr_pFences in
            vkResetFences(device.handle, UInt32(ptr_pFences.count), ptr_pFences.baseAddress)
        }
    }

    func waitForFences(device: Device, pFences: Array<Fence>, waitAll: Bool, timeout: UInt64) -> VkResult {
        pFences.map{ $0.handle }.withUnsafeBufferPointer { ptr_pFences in
            vkWaitForFences(device.handle, UInt32(ptr_pFences.count), ptr_pFences.baseAddress, VkBool32(waitAll ? VK_TRUE : VK_FALSE), timeout)
        }
    }

    func createSemaphore(device: Device, pCreateInfo: SemaphoreCreateInfo, pAllocator: AllocationCallbacks?, pSemaphore: UnsafeMutablePointer<VkSemaphore?>) -> VkResult {
        pCreateInfo.withCStruct { ptr_pCreateInfo in
            pAllocator.withOptionalCStruct { ptr_pAllocator in
                vkCreateSemaphore(device.handle, ptr_pCreateInfo, ptr_pAllocator, pSemaphore)
            }
        }
    }

    func createEvent(device: Device, pCreateInfo: EventCreateInfo, pAllocator: AllocationCallbacks?, pEvent: UnsafeMutablePointer<VkEvent?>) -> VkResult {
        pCreateInfo.withCStruct { ptr_pCreateInfo in
            pAllocator.withOptionalCStruct { ptr_pAllocator in
                vkCreateEvent(device.handle, ptr_pCreateInfo, ptr_pAllocator, pEvent)
            }
        }
    }

    func createQueryPool(device: Device, pCreateInfo: QueryPoolCreateInfo, pAllocator: AllocationCallbacks?, pQueryPool: UnsafeMutablePointer<VkQueryPool?>) -> VkResult {
        pCreateInfo.withCStruct { ptr_pCreateInfo in
            pAllocator.withOptionalCStruct { ptr_pAllocator in
                vkCreateQueryPool(device.handle, ptr_pCreateInfo, ptr_pAllocator, pQueryPool)
            }
        }
    }

    func createBuffer(device: Device, pCreateInfo: BufferCreateInfo, pAllocator: AllocationCallbacks?, pBuffer: UnsafeMutablePointer<VkBuffer?>) -> VkResult {
        pCreateInfo.withCStruct { ptr_pCreateInfo in
            pAllocator.withOptionalCStruct { ptr_pAllocator in
                vkCreateBuffer(device.handle, ptr_pCreateInfo, ptr_pAllocator, pBuffer)
            }
        }
    }

    func createBufferView(device: Device, pCreateInfo: BufferViewCreateInfo, pAllocator: AllocationCallbacks?, pView: UnsafeMutablePointer<VkBufferView?>) -> VkResult {
        pCreateInfo.withCStruct { ptr_pCreateInfo in
            pAllocator.withOptionalCStruct { ptr_pAllocator in
                vkCreateBufferView(device.handle, ptr_pCreateInfo, ptr_pAllocator, pView)
            }
        }
    }

    func createImage(device: Device, pCreateInfo: ImageCreateInfo, pAllocator: AllocationCallbacks?, pImage: UnsafeMutablePointer<VkImage?>) -> VkResult {
        pCreateInfo.withCStruct { ptr_pCreateInfo in
            pAllocator.withOptionalCStruct { ptr_pAllocator in
                vkCreateImage(device.handle, ptr_pCreateInfo, ptr_pAllocator, pImage)
            }
        }
    }

    func createImageView(device: Device, pCreateInfo: ImageViewCreateInfo, pAllocator: AllocationCallbacks?, pView: UnsafeMutablePointer<VkImageView?>) -> VkResult {
        pCreateInfo.withCStruct { ptr_pCreateInfo in
            pAllocator.withOptionalCStruct { ptr_pAllocator in
                vkCreateImageView(device.handle, ptr_pCreateInfo, ptr_pAllocator, pView)
            }
        }
    }

    func createShaderModule(device: Device, pCreateInfo: ShaderModuleCreateInfo, pAllocator: AllocationCallbacks?, pShaderModule: UnsafeMutablePointer<VkShaderModule?>) -> VkResult {
        pCreateInfo.withCStruct { ptr_pCreateInfo in
            pAllocator.withOptionalCStruct { ptr_pAllocator in
                vkCreateShaderModule(device.handle, ptr_pCreateInfo, ptr_pAllocator, pShaderModule)
            }
        }
    }

    func createPipelineCache(device: Device, pCreateInfo: PipelineCacheCreateInfo, pAllocator: AllocationCallbacks?, pPipelineCache: UnsafeMutablePointer<VkPipelineCache?>) -> VkResult {
        pCreateInfo.withCStruct { ptr_pCreateInfo in
            pAllocator.withOptionalCStruct { ptr_pAllocator in
                vkCreatePipelineCache(device.handle, ptr_pCreateInfo, ptr_pAllocator, pPipelineCache)
            }
        }
    }

    func createGraphicsPipelines(device: Device, pipelineCache: PipelineCache?, pCreateInfos: Array<GraphicsPipelineCreateInfo>, pAllocator: AllocationCallbacks?, pPipelines: UnsafeMutablePointer<VkPipeline?>) -> VkResult {
        pCreateInfos.withCStructBufferPointer { ptr_pCreateInfos in
            pAllocator.withOptionalCStruct { ptr_pAllocator in
                vkCreateGraphicsPipelines(device.handle, pipelineCache?.handle, UInt32(ptr_pCreateInfos.count), ptr_pCreateInfos.baseAddress, ptr_pAllocator, pPipelines)
            }
        }
    }

    func createComputePipelines(device: Device, pipelineCache: PipelineCache?, pCreateInfos: Array<ComputePipelineCreateInfo>, pAllocator: AllocationCallbacks?, pPipelines: UnsafeMutablePointer<VkPipeline?>) -> VkResult {
        pCreateInfos.withCStructBufferPointer { ptr_pCreateInfos in
            pAllocator.withOptionalCStruct { ptr_pAllocator in
                vkCreateComputePipelines(device.handle, pipelineCache?.handle, UInt32(ptr_pCreateInfos.count), ptr_pCreateInfos.baseAddress, ptr_pAllocator, pPipelines)
            }
        }
    }

    func createPipelineLayout(device: Device, pCreateInfo: PipelineLayoutCreateInfo, pAllocator: AllocationCallbacks?, pPipelineLayout: UnsafeMutablePointer<VkPipelineLayout?>) -> VkResult {
        pCreateInfo.withCStruct { ptr_pCreateInfo in
            pAllocator.withOptionalCStruct { ptr_pAllocator in
                vkCreatePipelineLayout(device.handle, ptr_pCreateInfo, ptr_pAllocator, pPipelineLayout)
            }
        }
    }

    func createSampler(device: Device, pCreateInfo: SamplerCreateInfo, pAllocator: AllocationCallbacks?, pSampler: UnsafeMutablePointer<VkSampler?>) -> VkResult {
        pCreateInfo.withCStruct { ptr_pCreateInfo in
            pAllocator.withOptionalCStruct { ptr_pAllocator in
                vkCreateSampler(device.handle, ptr_pCreateInfo, ptr_pAllocator, pSampler)
            }
        }
    }

    func createDescriptorSetLayout(device: Device, pCreateInfo: DescriptorSetLayoutCreateInfo, pAllocator: AllocationCallbacks?, pSetLayout: UnsafeMutablePointer<VkDescriptorSetLayout?>) -> VkResult {
        pCreateInfo.withCStruct { ptr_pCreateInfo in
            pAllocator.withOptionalCStruct { ptr_pAllocator in
                vkCreateDescriptorSetLayout(device.handle, ptr_pCreateInfo, ptr_pAllocator, pSetLayout)
            }
        }
    }

    func createDescriptorPool(device: Device, pCreateInfo: DescriptorPoolCreateInfo, pAllocator: AllocationCallbacks?, pDescriptorPool: UnsafeMutablePointer<VkDescriptorPool?>) -> VkResult {
        pCreateInfo.withCStruct { ptr_pCreateInfo in
            pAllocator.withOptionalCStruct { ptr_pAllocator in
                vkCreateDescriptorPool(device.handle, ptr_pCreateInfo, ptr_pAllocator, pDescriptorPool)
            }
        }
    }

    func allocateDescriptorSets(device: Device, pAllocateInfo: DescriptorSetAllocateInfo, pDescriptorSets: UnsafeMutablePointer<VkDescriptorSet?>) -> VkResult {
        pAllocateInfo.withCStruct { ptr_pAllocateInfo in
            vkAllocateDescriptorSets(device.handle, ptr_pAllocateInfo, pDescriptorSets)
        }
    }

    func updateDescriptorSets(device: Device, pDescriptorWrites: Array<WriteDescriptorSet>, pDescriptorCopies: Array<CopyDescriptorSet>) -> Void {
        pDescriptorWrites.withCStructBufferPointer { ptr_pDescriptorWrites in
            pDescriptorCopies.withCStructBufferPointer { ptr_pDescriptorCopies in
                vkUpdateDescriptorSets(device.handle, UInt32(ptr_pDescriptorWrites.count), ptr_pDescriptorWrites.baseAddress, UInt32(ptr_pDescriptorCopies.count), ptr_pDescriptorCopies.baseAddress)
            }
        }
    }

    func createFramebuffer(device: Device, pCreateInfo: FramebufferCreateInfo, pAllocator: AllocationCallbacks?, pFramebuffer: UnsafeMutablePointer<VkFramebuffer?>) -> VkResult {
        pCreateInfo.withCStruct { ptr_pCreateInfo in
            pAllocator.withOptionalCStruct { ptr_pAllocator in
                vkCreateFramebuffer(device.handle, ptr_pCreateInfo, ptr_pAllocator, pFramebuffer)
            }
        }
    }

    func createRenderPass(device: Device, pCreateInfo: RenderPassCreateInfo, pAllocator: AllocationCallbacks?, pRenderPass: UnsafeMutablePointer<VkRenderPass?>) -> VkResult {
        pCreateInfo.withCStruct { ptr_pCreateInfo in
            pAllocator.withOptionalCStruct { ptr_pAllocator in
                vkCreateRenderPass(device.handle, ptr_pCreateInfo, ptr_pAllocator, pRenderPass)
            }
        }
    }

    func createCommandPool(device: Device, pCreateInfo: CommandPoolCreateInfo, pAllocator: AllocationCallbacks?, pCommandPool: UnsafeMutablePointer<VkCommandPool?>) -> VkResult {
        pCreateInfo.withCStruct { ptr_pCreateInfo in
            pAllocator.withOptionalCStruct { ptr_pAllocator in
                vkCreateCommandPool(device.handle, ptr_pCreateInfo, ptr_pAllocator, pCommandPool)
            }
        }
    }

    func allocateCommandBuffers(device: Device, pAllocateInfo: CommandBufferAllocateInfo, pCommandBuffers: UnsafeMutablePointer<VkCommandBuffer?>) -> VkResult {
        pAllocateInfo.withCStruct { ptr_pAllocateInfo in
            vkAllocateCommandBuffers(device.handle, ptr_pAllocateInfo, pCommandBuffers)
        }
    }

    func createSharedSwapchainsKHR(device: Device, pCreateInfos: Array<SwapchainCreateInfoKHR>, pAllocator: AllocationCallbacks?, pSwapchains: UnsafeMutablePointer<VkSwapchainKHR?>) -> VkResult {
        pCreateInfos.withCStructBufferPointer { ptr_pCreateInfos in
            pAllocator.withOptionalCStruct { ptr_pAllocator in
                vkCreateSharedSwapchainsKHR(device.handle, UInt32(ptr_pCreateInfos.count), ptr_pCreateInfos.baseAddress, ptr_pAllocator, pSwapchains)
            }
        }
    }

    func createSwapchainKHR(device: Device, pCreateInfo: SwapchainCreateInfoKHR, pAllocator: AllocationCallbacks?, pSwapchain: UnsafeMutablePointer<VkSwapchainKHR?>) -> VkResult {
        pCreateInfo.withCStruct { ptr_pCreateInfo in
            pAllocator.withOptionalCStruct { ptr_pAllocator in
                vkCreateSwapchainKHR(device.handle, ptr_pCreateInfo, ptr_pAllocator, pSwapchain)
            }
        }
    }

    func destroySwapchainKHR(device: Device, swapchain: SwapchainKHR?, pAllocator: AllocationCallbacks?) -> Void {
        pAllocator.withOptionalCStruct { ptr_pAllocator in
            vkDestroySwapchainKHR(device.handle, swapchain?.handle, ptr_pAllocator)
        }
    }

    func getSwapchainImagesKHR(device: Device, swapchain: SwapchainKHR, pSwapchainImageCount: UnsafeMutablePointer<UInt32>, pSwapchainImages: UnsafeMutablePointer<VkImage?>) -> VkResult {
        vkGetSwapchainImagesKHR(device.handle, swapchain.handle, pSwapchainImageCount, pSwapchainImages)
    }

    func acquireNextImageKHR(device: Device, swapchain: SwapchainKHR, timeout: UInt64, semaphore: Semaphore?, fence: Fence?, pImageIndex: UnsafeMutablePointer<UInt32>) -> VkResult {
        vkAcquireNextImageKHR(device.handle, swapchain.handle, timeout, semaphore?.handle, fence?.handle, pImageIndex)
    }

    func debugMarkerSetObjectNameEXT(device: Device, pNameInfo: DebugMarkerObjectNameInfoEXT) -> VkResult {
        pNameInfo.withCStruct { ptr_pNameInfo in
            vkDebugMarkerSetObjectNameEXT(device.handle, ptr_pNameInfo)
        }
    }

    func debugMarkerSetObjectTagEXT(device: Device, pTagInfo: DebugMarkerObjectTagInfoEXT) -> VkResult {
        pTagInfo.withCStruct { ptr_pTagInfo in
            vkDebugMarkerSetObjectTagEXT(device.handle, ptr_pTagInfo)
        }
    }

    func getGeneratedCommandsMemoryRequirementsNV(device: Device, pInfo: GeneratedCommandsMemoryRequirementsInfoNV, pMemoryRequirements: UnsafeMutablePointer<VkMemoryRequirements2>) -> Void {
        pInfo.withCStruct { ptr_pInfo in
            vkGetGeneratedCommandsMemoryRequirementsNV(device.handle, ptr_pInfo, pMemoryRequirements)
        }
    }

    func createIndirectCommandsLayoutNV(device: Device, pCreateInfo: IndirectCommandsLayoutCreateInfoNV, pAllocator: AllocationCallbacks?, pIndirectCommandsLayout: UnsafeMutablePointer<VkIndirectCommandsLayoutNV?>) -> VkResult {
        pCreateInfo.withCStruct { ptr_pCreateInfo in
            pAllocator.withOptionalCStruct { ptr_pAllocator in
                vkCreateIndirectCommandsLayoutNV(device.handle, ptr_pCreateInfo, ptr_pAllocator, pIndirectCommandsLayout)
            }
        }
    }

    func getMemoryFdKHR(device: Device, pGetFdInfo: MemoryGetFdInfoKHR, pFd: UnsafeMutablePointer<Int32>) -> VkResult {
        pGetFdInfo.withCStruct { ptr_pGetFdInfo in
            vkGetMemoryFdKHR(device.handle, ptr_pGetFdInfo, pFd)
        }
    }

    func getMemoryFdPropertiesKHR(device: Device, handleType: ExternalMemoryHandleTypeFlags, fd: Int32, pMemoryFdProperties: UnsafeMutablePointer<VkMemoryFdPropertiesKHR>) -> VkResult {
        vkGetMemoryFdPropertiesKHR(device.handle, VkExternalMemoryHandleTypeFlagBits(rawValue: handleType.rawValue), fd, pMemoryFdProperties)
    }

    func getSemaphoreFdKHR(device: Device, pGetFdInfo: SemaphoreGetFdInfoKHR, pFd: UnsafeMutablePointer<Int32>) -> VkResult {
        pGetFdInfo.withCStruct { ptr_pGetFdInfo in
            vkGetSemaphoreFdKHR(device.handle, ptr_pGetFdInfo, pFd)
        }
    }

    func importSemaphoreFdKHR(device: Device, pImportSemaphoreFdInfo: ImportSemaphoreFdInfoKHR) -> VkResult {
        pImportSemaphoreFdInfo.withCStruct { ptr_pImportSemaphoreFdInfo in
            vkImportSemaphoreFdKHR(device.handle, ptr_pImportSemaphoreFdInfo)
        }
    }

    func getFenceFdKHR(device: Device, pGetFdInfo: FenceGetFdInfoKHR, pFd: UnsafeMutablePointer<Int32>) -> VkResult {
        pGetFdInfo.withCStruct { ptr_pGetFdInfo in
            vkGetFenceFdKHR(device.handle, ptr_pGetFdInfo, pFd)
        }
    }

    func importFenceFdKHR(device: Device, pImportFenceFdInfo: ImportFenceFdInfoKHR) -> VkResult {
        pImportFenceFdInfo.withCStruct { ptr_pImportFenceFdInfo in
            vkImportFenceFdKHR(device.handle, ptr_pImportFenceFdInfo)
        }
    }

    func displayPowerControlEXT(device: Device, display: DisplayKHR, pDisplayPowerInfo: DisplayPowerInfoEXT) -> VkResult {
        pDisplayPowerInfo.withCStruct { ptr_pDisplayPowerInfo in
            vkDisplayPowerControlEXT(device.handle, display.handle, ptr_pDisplayPowerInfo)
        }
    }

    func registerDeviceEventEXT(device: Device, pDeviceEventInfo: DeviceEventInfoEXT, pAllocator: AllocationCallbacks?, pFence: UnsafeMutablePointer<VkFence?>) -> VkResult {
        pDeviceEventInfo.withCStruct { ptr_pDeviceEventInfo in
            pAllocator.withOptionalCStruct { ptr_pAllocator in
                vkRegisterDeviceEventEXT(device.handle, ptr_pDeviceEventInfo, ptr_pAllocator, pFence)
            }
        }
    }

    func registerDisplayEventEXT(device: Device, display: DisplayKHR, pDisplayEventInfo: DisplayEventInfoEXT, pAllocator: AllocationCallbacks?, pFence: UnsafeMutablePointer<VkFence?>) -> VkResult {
        pDisplayEventInfo.withCStruct { ptr_pDisplayEventInfo in
            pAllocator.withOptionalCStruct { ptr_pAllocator in
                vkRegisterDisplayEventEXT(device.handle, display.handle, ptr_pDisplayEventInfo, ptr_pAllocator, pFence)
            }
        }
    }

    func getSwapchainCounterEXT(device: Device, swapchain: SwapchainKHR, counter: SurfaceCounterFlagsEXT, pCounterValue: UnsafeMutablePointer<UInt64>) -> VkResult {
        vkGetSwapchainCounterEXT(device.handle, swapchain.handle, VkSurfaceCounterFlagBitsEXT(rawValue: counter.rawValue), pCounterValue)
    }

    func getDeviceGroupPeerMemoryFeatures(device: Device, heapIndex: UInt32, localDeviceIndex: UInt32, remoteDeviceIndex: UInt32, pPeerMemoryFeatures: UnsafeMutablePointer<VkPeerMemoryFeatureFlags>) -> Void {
        vkGetDeviceGroupPeerMemoryFeatures(device.handle, heapIndex, localDeviceIndex, remoteDeviceIndex, pPeerMemoryFeatures)
    }

    func bindBufferMemory2(device: Device, pBindInfos: Array<BindBufferMemoryInfo>) -> VkResult {
        pBindInfos.withCStructBufferPointer { ptr_pBindInfos in
            vkBindBufferMemory2(device.handle, UInt32(ptr_pBindInfos.count), ptr_pBindInfos.baseAddress)
        }
    }

    func bindImageMemory2(device: Device, pBindInfos: Array<BindImageMemoryInfo>) -> VkResult {
        pBindInfos.withCStructBufferPointer { ptr_pBindInfos in
            vkBindImageMemory2(device.handle, UInt32(ptr_pBindInfos.count), ptr_pBindInfos.baseAddress)
        }
    }

    func getDeviceGroupPresentCapabilitiesKHR(device: Device, pDeviceGroupPresentCapabilities: UnsafeMutablePointer<VkDeviceGroupPresentCapabilitiesKHR>) -> VkResult {
        vkGetDeviceGroupPresentCapabilitiesKHR(device.handle, pDeviceGroupPresentCapabilities)
    }

    func getDeviceGroupSurfacePresentModesKHR(device: Device, surface: SurfaceKHR, pModes: UnsafeMutablePointer<VkDeviceGroupPresentModeFlagsKHR>) -> VkResult {
        vkGetDeviceGroupSurfacePresentModesKHR(device.handle, surface.handle, pModes)
    }

    func acquireNextImage2KHR(device: Device, pAcquireInfo: AcquireNextImageInfoKHR, pImageIndex: UnsafeMutablePointer<UInt32>) -> VkResult {
        pAcquireInfo.withCStruct { ptr_pAcquireInfo in
            vkAcquireNextImage2KHR(device.handle, ptr_pAcquireInfo, pImageIndex)
        }
    }

    func createDescriptorUpdateTemplate(device: Device, pCreateInfo: DescriptorUpdateTemplateCreateInfo, pAllocator: AllocationCallbacks?, pDescriptorUpdateTemplate: UnsafeMutablePointer<VkDescriptorUpdateTemplate?>) -> VkResult {
        pCreateInfo.withCStruct { ptr_pCreateInfo in
            pAllocator.withOptionalCStruct { ptr_pAllocator in
                vkCreateDescriptorUpdateTemplate(device.handle, ptr_pCreateInfo, ptr_pAllocator, pDescriptorUpdateTemplate)
            }
        }
    }

    func setHdrMetadataEXT(device: Device, pSwapchains: Array<SwapchainKHR>, pMetadata: Array<HdrMetadataEXT>) -> Void {
        pSwapchains.map{ $0.handle }.withUnsafeBufferPointer { ptr_pSwapchains in
            pMetadata.withCStructBufferPointer { ptr_pMetadata in
                vkSetHdrMetadataEXT(device.handle, UInt32(ptr_pSwapchains.count), ptr_pSwapchains.baseAddress, ptr_pMetadata.baseAddress)
            }
        }
    }

    func getSwapchainStatusKHR(device: Device, swapchain: SwapchainKHR) -> VkResult {
        vkGetSwapchainStatusKHR(device.handle, swapchain.handle)
    }

    func getRefreshCycleDurationGOOGLE(device: Device, swapchain: SwapchainKHR, pDisplayTimingProperties: UnsafeMutablePointer<VkRefreshCycleDurationGOOGLE>) -> VkResult {
        vkGetRefreshCycleDurationGOOGLE(device.handle, swapchain.handle, pDisplayTimingProperties)
    }

    func getPastPresentationTimingGOOGLE(device: Device, swapchain: SwapchainKHR, pPresentationTimingCount: UnsafeMutablePointer<UInt32>, pPresentationTimings: UnsafeMutablePointer<VkPastPresentationTimingGOOGLE>) -> VkResult {
        vkGetPastPresentationTimingGOOGLE(device.handle, swapchain.handle, pPresentationTimingCount, pPresentationTimings)
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

    func createSamplerYcbcrConversion(device: Device, pCreateInfo: SamplerYcbcrConversionCreateInfo, pAllocator: AllocationCallbacks?, pYcbcrConversion: UnsafeMutablePointer<VkSamplerYcbcrConversion?>) -> VkResult {
        pCreateInfo.withCStruct { ptr_pCreateInfo in
            pAllocator.withOptionalCStruct { ptr_pAllocator in
                vkCreateSamplerYcbcrConversion(device.handle, ptr_pCreateInfo, ptr_pAllocator, pYcbcrConversion)
            }
        }
    }

    func getDeviceQueue2(device: Device, pQueueInfo: DeviceQueueInfo2, pQueue: UnsafeMutablePointer<VkQueue?>) -> Void {
        pQueueInfo.withCStruct { ptr_pQueueInfo in
            vkGetDeviceQueue2(device.handle, ptr_pQueueInfo, pQueue)
        }
    }

    func createValidationCacheEXT(device: Device, pCreateInfo: ValidationCacheCreateInfoEXT, pAllocator: AllocationCallbacks?, pValidationCache: UnsafeMutablePointer<VkValidationCacheEXT?>) -> VkResult {
        pCreateInfo.withCStruct { ptr_pCreateInfo in
            pAllocator.withOptionalCStruct { ptr_pAllocator in
                vkCreateValidationCacheEXT(device.handle, ptr_pCreateInfo, ptr_pAllocator, pValidationCache)
            }
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

    func getCalibratedTimestampsEXT(device: Device, pTimestampInfos: Array<CalibratedTimestampInfoEXT>, pTimestamps: UnsafeMutablePointer<UInt64>, pMaxDeviation: UnsafeMutablePointer<UInt64>) -> VkResult {
        pTimestampInfos.withCStructBufferPointer { ptr_pTimestampInfos in
            vkGetCalibratedTimestampsEXT(device.handle, UInt32(ptr_pTimestampInfos.count), ptr_pTimestampInfos.baseAddress, pTimestamps, pMaxDeviation)
        }
    }

    func setDebugUtilsObjectNameEXT(device: Device, pNameInfo: DebugUtilsObjectNameInfoEXT) -> VkResult {
        pNameInfo.withCStruct { ptr_pNameInfo in
            vkSetDebugUtilsObjectNameEXT(device.handle, ptr_pNameInfo)
        }
    }

    func setDebugUtilsObjectTagEXT(device: Device, pTagInfo: DebugUtilsObjectTagInfoEXT) -> VkResult {
        pTagInfo.withCStruct { ptr_pTagInfo in
            vkSetDebugUtilsObjectTagEXT(device.handle, ptr_pTagInfo)
        }
    }

    func getMemoryHostPointerPropertiesEXT(device: Device, handleType: ExternalMemoryHandleTypeFlags, pHostPointer: UnsafeRawPointer, pMemoryHostPointerProperties: UnsafeMutablePointer<VkMemoryHostPointerPropertiesEXT>) -> VkResult {
        vkGetMemoryHostPointerPropertiesEXT(device.handle, VkExternalMemoryHandleTypeFlagBits(rawValue: handleType.rawValue), pHostPointer, pMemoryHostPointerProperties)
    }

    func createRenderPass2(device: Device, pCreateInfo: RenderPassCreateInfo2, pAllocator: AllocationCallbacks?, pRenderPass: UnsafeMutablePointer<VkRenderPass?>) -> VkResult {
        pCreateInfo.withCStruct { ptr_pCreateInfo in
            pAllocator.withOptionalCStruct { ptr_pAllocator in
                vkCreateRenderPass2(device.handle, ptr_pCreateInfo, ptr_pAllocator, pRenderPass)
            }
        }
    }

    func waitSemaphores(device: Device, pWaitInfo: SemaphoreWaitInfo, timeout: UInt64) -> VkResult {
        pWaitInfo.withCStruct { ptr_pWaitInfo in
            vkWaitSemaphores(device.handle, ptr_pWaitInfo, timeout)
        }
    }

    func signalSemaphore(device: Device, pSignalInfo: SemaphoreSignalInfo) -> VkResult {
        pSignalInfo.withCStruct { ptr_pSignalInfo in
            vkSignalSemaphore(device.handle, ptr_pSignalInfo)
        }
    }

    func createAccelerationStructureNV(device: Device, pCreateInfo: AccelerationStructureCreateInfoNV, pAllocator: AllocationCallbacks?, pAccelerationStructure: UnsafeMutablePointer<VkAccelerationStructureNV>) -> VkResult {
        pCreateInfo.withCStruct { ptr_pCreateInfo in
            pAllocator.withOptionalCStruct { ptr_pAllocator in
                vkCreateAccelerationStructureNV(device.handle, ptr_pCreateInfo, ptr_pAllocator, pAccelerationStructure)
            }
        }
    }

    func getAccelerationStructureMemoryRequirementsNV(device: Device, pInfo: AccelerationStructureMemoryRequirementsInfoNV, pMemoryRequirements: UnsafeMutablePointer<VkMemoryRequirements2KHR>) -> Void {
        pInfo.withCStruct { ptr_pInfo in
            vkGetAccelerationStructureMemoryRequirementsNV(device.handle, ptr_pInfo, pMemoryRequirements)
        }
    }

    func getAccelerationStructureHandleNV(device: Device, accelerationStructure: VkAccelerationStructureKHR, dataSize: Int, pData: UnsafeMutableRawPointer) -> VkResult {
        vkGetAccelerationStructureHandleNV(device.handle, accelerationStructure, dataSize, pData)
    }

    func createRayTracingPipelinesNV(device: Device, pipelineCache: PipelineCache?, pCreateInfos: Array<RayTracingPipelineCreateInfoNV>, pAllocator: AllocationCallbacks?, pPipelines: UnsafeMutablePointer<VkPipeline?>) -> VkResult {
        pCreateInfos.withCStructBufferPointer { ptr_pCreateInfos in
            pAllocator.withOptionalCStruct { ptr_pAllocator in
                vkCreateRayTracingPipelinesNV(device.handle, pipelineCache?.handle, UInt32(ptr_pCreateInfos.count), ptr_pCreateInfos.baseAddress, ptr_pAllocator, pPipelines)
            }
        }
    }

    func getImageViewHandleNVX(device: Device, pInfo: ImageViewHandleInfoNVX) -> UInt32 {
        pInfo.withCStruct { ptr_pInfo in
            vkGetImageViewHandleNVX(device.handle, ptr_pInfo)
        }
    }

    func acquireProfilingLockKHR(device: Device, pInfo: AcquireProfilingLockInfoKHR) -> VkResult {
        pInfo.withCStruct { ptr_pInfo in
            vkAcquireProfilingLockKHR(device.handle, ptr_pInfo)
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

    func initializePerformanceApiINTEL(device: Device, pInitializeInfo: InitializePerformanceApiInfoINTEL) -> VkResult {
        pInitializeInfo.withCStruct { ptr_pInitializeInfo in
            vkInitializePerformanceApiINTEL(device.handle, ptr_pInitializeInfo)
        }
    }

    func uninitializePerformanceApiINTEL(device: Device) -> Void {
        vkUninitializePerformanceApiINTEL(device.handle)
    }

    func acquirePerformanceConfigurationINTEL(device: Device, pAcquireInfo: PerformanceConfigurationAcquireInfoINTEL, pConfiguration: UnsafeMutablePointer<VkPerformanceConfigurationINTEL?>) -> VkResult {
        pAcquireInfo.withCStruct { ptr_pAcquireInfo in
            vkAcquirePerformanceConfigurationINTEL(device.handle, ptr_pAcquireInfo, pConfiguration)
        }
    }

    func getPerformanceParameterINTEL(device: Device, parameter: PerformanceParameterTypeINTEL, pValue: UnsafeMutablePointer<VkPerformanceValueINTEL>) -> VkResult {
        vkGetPerformanceParameterINTEL(device.handle, VkPerformanceParameterTypeINTEL(rawValue: parameter.rawValue), pValue)
    }

    func getDeviceMemoryOpaqueCaptureAddress(device: Device, pInfo: DeviceMemoryOpaqueCaptureAddressInfo) -> UInt64 {
        pInfo.withCStruct { ptr_pInfo in
            vkGetDeviceMemoryOpaqueCaptureAddress(device.handle, ptr_pInfo)
        }
    }

    func getPipelineExecutablePropertiesKHR(device: Device, pPipelineInfo: PipelineInfoKHR, pExecutableCount: UnsafeMutablePointer<UInt32>, pProperties: UnsafeMutablePointer<VkPipelineExecutablePropertiesKHR>) -> VkResult {
        pPipelineInfo.withCStruct { ptr_pPipelineInfo in
            vkGetPipelineExecutablePropertiesKHR(device.handle, ptr_pPipelineInfo, pExecutableCount, pProperties)
        }
    }

    func getPipelineExecutableStatisticsKHR(device: Device, pExecutableInfo: PipelineExecutableInfoKHR, pStatisticCount: UnsafeMutablePointer<UInt32>, pStatistics: UnsafeMutablePointer<VkPipelineExecutableStatisticKHR>) -> VkResult {
        pExecutableInfo.withCStruct { ptr_pExecutableInfo in
            vkGetPipelineExecutableStatisticsKHR(device.handle, ptr_pExecutableInfo, pStatisticCount, pStatistics)
        }
    }

    func getPipelineExecutableInternalRepresentationsKHR(device: Device, pExecutableInfo: PipelineExecutableInfoKHR, pInternalRepresentationCount: UnsafeMutablePointer<UInt32>, pInternalRepresentations: UnsafeMutablePointer<VkPipelineExecutableInternalRepresentationKHR>) -> VkResult {
        pExecutableInfo.withCStruct { ptr_pExecutableInfo in
            vkGetPipelineExecutableInternalRepresentationsKHR(device.handle, ptr_pExecutableInfo, pInternalRepresentationCount, pInternalRepresentations)
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

    func queueSubmit(queue: Queue, pSubmits: Array<SubmitInfo>, fence: Fence?) -> VkResult {
        pSubmits.withCStructBufferPointer { ptr_pSubmits in
            vkQueueSubmit(queue.handle, UInt32(ptr_pSubmits.count), ptr_pSubmits.baseAddress, fence?.handle)
        }
    }

    func queueWaitIdle(queue: Queue) -> VkResult {
        vkQueueWaitIdle(queue.handle)
    }

    func queueBindSparse(queue: Queue, pBindInfo: Array<BindSparseInfo>, fence: Fence?) -> VkResult {
        pBindInfo.withCStructBufferPointer { ptr_pBindInfo in
            vkQueueBindSparse(queue.handle, UInt32(ptr_pBindInfo.count), ptr_pBindInfo.baseAddress, fence?.handle)
        }
    }

    func queuePresentKHR(queue: Queue, pPresentInfo: PresentInfoKHR) -> VkResult {
        pPresentInfo.withCStruct { ptr_pPresentInfo in
            vkQueuePresentKHR(queue.handle, ptr_pPresentInfo)
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

    func queueSetPerformanceConfigurationINTEL(queue: Queue, configuration: PerformanceConfigurationINTEL) -> VkResult {
        vkQueueSetPerformanceConfigurationINTEL(queue.handle, configuration.handle)
    }
}

class CommandBuffer {
    let handle: VkCommandBuffer!
    let commandPool: CommandPool

    init(handle: VkCommandBuffer!, commandPool: CommandPool) {
        self.handle = handle
        self.commandPool = commandPool
    }

    func beginCommandBuffer(commandBuffer: CommandBuffer, pBeginInfo: CommandBufferBeginInfo) -> VkResult {
        pBeginInfo.withCStruct { ptr_pBeginInfo in
            vkBeginCommandBuffer(commandBuffer.handle, ptr_pBeginInfo)
        }
    }

    func endCommandBuffer(commandBuffer: CommandBuffer) -> VkResult {
        vkEndCommandBuffer(commandBuffer.handle)
    }

    func resetCommandBuffer(commandBuffer: CommandBuffer, flags: CommandBufferResetFlags) -> VkResult {
        vkResetCommandBuffer(commandBuffer.handle, flags.rawValue)
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

    func cmdSetPerformanceMarkerINTEL(commandBuffer: CommandBuffer, pMarkerInfo: PerformanceMarkerInfoINTEL) -> VkResult {
        pMarkerInfo.withCStruct { ptr_pMarkerInfo in
            vkCmdSetPerformanceMarkerINTEL(commandBuffer.handle, ptr_pMarkerInfo)
        }
    }

    func cmdSetPerformanceStreamMarkerINTEL(commandBuffer: CommandBuffer, pMarkerInfo: PerformanceStreamMarkerInfoINTEL) -> VkResult {
        pMarkerInfo.withCStruct { ptr_pMarkerInfo in
            vkCmdSetPerformanceStreamMarkerINTEL(commandBuffer.handle, ptr_pMarkerInfo)
        }
    }

    func cmdSetPerformanceOverrideINTEL(commandBuffer: CommandBuffer, pOverrideInfo: PerformanceOverrideInfoINTEL) -> VkResult {
        pOverrideInfo.withCStruct { ptr_pOverrideInfo in
            vkCmdSetPerformanceOverrideINTEL(commandBuffer.handle, ptr_pOverrideInfo)
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

    func mapMemory(device: Device, memory: DeviceMemory, offset: VkDeviceSize, size: VkDeviceSize, flags: MemoryMapFlags, ppData: UnsafeMutablePointer<UnsafeMutableRawPointer?>) -> VkResult {
        vkMapMemory(device.handle, memory.handle, offset, size, flags.rawValue, ppData)
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

    func destroyCommandPool(device: Device, commandPool: CommandPool?, pAllocator: AllocationCallbacks?) -> Void {
        pAllocator.withOptionalCStruct { ptr_pAllocator in
            vkDestroyCommandPool(device.handle, commandPool?.handle, ptr_pAllocator)
        }
    }

    func resetCommandPool(device: Device, commandPool: CommandPool, flags: CommandPoolResetFlags) -> VkResult {
        vkResetCommandPool(device.handle, commandPool.handle, flags.rawValue)
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

    func bindBufferMemory(device: Device, buffer: Buffer, memory: DeviceMemory, memoryOffset: VkDeviceSize) -> VkResult {
        vkBindBufferMemory(device.handle, buffer.handle, memory.handle, memoryOffset)
    }

    func destroyBuffer(device: Device, buffer: Buffer?, pAllocator: AllocationCallbacks?) -> Void {
        pAllocator.withOptionalCStruct { ptr_pAllocator in
            vkDestroyBuffer(device.handle, buffer?.handle, ptr_pAllocator)
        }
    }
}

class BufferView {
    let handle: VkBufferView!
    let device: Device

    init(handle: VkBufferView!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func destroyBufferView(device: Device, bufferView: BufferView?, pAllocator: AllocationCallbacks?) -> Void {
        pAllocator.withOptionalCStruct { ptr_pAllocator in
            vkDestroyBufferView(device.handle, bufferView?.handle, ptr_pAllocator)
        }
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

    func bindImageMemory(device: Device, image: Image, memory: DeviceMemory, memoryOffset: VkDeviceSize) -> VkResult {
        vkBindImageMemory(device.handle, image.handle, memory.handle, memoryOffset)
    }

    func getImageSparseMemoryRequirements(device: Device, image: Image, pSparseMemoryRequirementCount: UnsafeMutablePointer<UInt32>, pSparseMemoryRequirements: UnsafeMutablePointer<VkSparseImageMemoryRequirements>) -> Void {
        vkGetImageSparseMemoryRequirements(device.handle, image.handle, pSparseMemoryRequirementCount, pSparseMemoryRequirements)
    }

    func destroyImage(device: Device, image: Image?, pAllocator: AllocationCallbacks?) -> Void {
        pAllocator.withOptionalCStruct { ptr_pAllocator in
            vkDestroyImage(device.handle, image?.handle, ptr_pAllocator)
        }
    }

    func getImageSubresourceLayout(device: Device, image: Image, pSubresource: ImageSubresource, pLayout: UnsafeMutablePointer<VkSubresourceLayout>) -> Void {
        pSubresource.withCStruct { ptr_pSubresource in
            vkGetImageSubresourceLayout(device.handle, image.handle, ptr_pSubresource, pLayout)
        }
    }

    func getImageDrmFormatModifierPropertiesEXT(device: Device, image: Image, pProperties: UnsafeMutablePointer<VkImageDrmFormatModifierPropertiesEXT>) -> VkResult {
        vkGetImageDrmFormatModifierPropertiesEXT(device.handle, image.handle, pProperties)
    }
}

class ImageView {
    let handle: VkImageView!
    let device: Device

    init(handle: VkImageView!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func destroyImageView(device: Device, imageView: ImageView?, pAllocator: AllocationCallbacks?) -> Void {
        pAllocator.withOptionalCStruct { ptr_pAllocator in
            vkDestroyImageView(device.handle, imageView?.handle, ptr_pAllocator)
        }
    }
}

class ShaderModule {
    let handle: VkShaderModule!
    let device: Device

    init(handle: VkShaderModule!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func destroyShaderModule(device: Device, shaderModule: ShaderModule?, pAllocator: AllocationCallbacks?) -> Void {
        pAllocator.withOptionalCStruct { ptr_pAllocator in
            vkDestroyShaderModule(device.handle, shaderModule?.handle, ptr_pAllocator)
        }
    }
}

class Pipeline {
    let handle: VkPipeline!
    let device: Device

    init(handle: VkPipeline!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func destroyPipeline(device: Device, pipeline: Pipeline?, pAllocator: AllocationCallbacks?) -> Void {
        pAllocator.withOptionalCStruct { ptr_pAllocator in
            vkDestroyPipeline(device.handle, pipeline?.handle, ptr_pAllocator)
        }
    }

    func getShaderInfoAMD(device: Device, pipeline: Pipeline, shaderStage: ShaderStageFlags, infoType: ShaderInfoTypeAMD, pInfoSize: UnsafeMutablePointer<Int>, pInfo: UnsafeMutableRawPointer) -> VkResult {
        vkGetShaderInfoAMD(device.handle, pipeline.handle, VkShaderStageFlagBits(rawValue: shaderStage.rawValue), VkShaderInfoTypeAMD(rawValue: infoType.rawValue), pInfoSize, pInfo)
    }

    func compileDeferredNV(device: Device, pipeline: Pipeline, shader: UInt32) -> VkResult {
        vkCompileDeferredNV(device.handle, pipeline.handle, shader)
    }
}

class PipelineLayout {
    let handle: VkPipelineLayout!
    let device: Device

    init(handle: VkPipelineLayout!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func destroyPipelineLayout(device: Device, pipelineLayout: PipelineLayout?, pAllocator: AllocationCallbacks?) -> Void {
        pAllocator.withOptionalCStruct { ptr_pAllocator in
            vkDestroyPipelineLayout(device.handle, pipelineLayout?.handle, ptr_pAllocator)
        }
    }
}

class Sampler {
    let handle: VkSampler!
    let device: Device

    init(handle: VkSampler!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func destroySampler(device: Device, sampler: Sampler?, pAllocator: AllocationCallbacks?) -> Void {
        pAllocator.withOptionalCStruct { ptr_pAllocator in
            vkDestroySampler(device.handle, sampler?.handle, ptr_pAllocator)
        }
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

    func destroyDescriptorSetLayout(device: Device, descriptorSetLayout: DescriptorSetLayout?, pAllocator: AllocationCallbacks?) -> Void {
        pAllocator.withOptionalCStruct { ptr_pAllocator in
            vkDestroyDescriptorSetLayout(device.handle, descriptorSetLayout?.handle, ptr_pAllocator)
        }
    }
}

class DescriptorPool {
    let handle: VkDescriptorPool!
    let device: Device

    init(handle: VkDescriptorPool!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func destroyDescriptorPool(device: Device, descriptorPool: DescriptorPool?, pAllocator: AllocationCallbacks?) -> Void {
        pAllocator.withOptionalCStruct { ptr_pAllocator in
            vkDestroyDescriptorPool(device.handle, descriptorPool?.handle, ptr_pAllocator)
        }
    }

    func resetDescriptorPool(device: Device, descriptorPool: DescriptorPool, flags: DescriptorPoolResetFlags) -> VkResult {
        vkResetDescriptorPool(device.handle, descriptorPool.handle, flags.rawValue)
    }

    func freeDescriptorSets(device: Device, descriptorPool: DescriptorPool, pDescriptorSets: Array<DescriptorSet>) -> VkResult {
        pDescriptorSets.map{ $0.handle }.withUnsafeBufferPointer { ptr_pDescriptorSets in
            vkFreeDescriptorSets(device.handle, descriptorPool.handle, UInt32(ptr_pDescriptorSets.count), ptr_pDescriptorSets.baseAddress)
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

    func destroyFence(device: Device, fence: Fence?, pAllocator: AllocationCallbacks?) -> Void {
        pAllocator.withOptionalCStruct { ptr_pAllocator in
            vkDestroyFence(device.handle, fence?.handle, ptr_pAllocator)
        }
    }

    func getFenceStatus(device: Device, fence: Fence) -> VkResult {
        vkGetFenceStatus(device.handle, fence.handle)
    }
}

class Semaphore {
    let handle: VkSemaphore!
    let device: Device

    init(handle: VkSemaphore!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func destroySemaphore(device: Device, semaphore: Semaphore?, pAllocator: AllocationCallbacks?) -> Void {
        pAllocator.withOptionalCStruct { ptr_pAllocator in
            vkDestroySemaphore(device.handle, semaphore?.handle, ptr_pAllocator)
        }
    }

    func getSemaphoreCounterValue(device: Device, semaphore: Semaphore, pValue: UnsafeMutablePointer<UInt64>) -> VkResult {
        vkGetSemaphoreCounterValue(device.handle, semaphore.handle, pValue)
    }
}

class Event {
    let handle: VkEvent!
    let device: Device

    init(handle: VkEvent!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func destroyEvent(device: Device, event: Event?, pAllocator: AllocationCallbacks?) -> Void {
        pAllocator.withOptionalCStruct { ptr_pAllocator in
            vkDestroyEvent(device.handle, event?.handle, ptr_pAllocator)
        }
    }

    func getEventStatus(device: Device, event: Event) -> VkResult {
        vkGetEventStatus(device.handle, event.handle)
    }

    func setEvent(device: Device, event: Event) -> VkResult {
        vkSetEvent(device.handle, event.handle)
    }

    func resetEvent(device: Device, event: Event) -> VkResult {
        vkResetEvent(device.handle, event.handle)
    }
}

class QueryPool {
    let handle: VkQueryPool!
    let device: Device

    init(handle: VkQueryPool!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func destroyQueryPool(device: Device, queryPool: QueryPool?, pAllocator: AllocationCallbacks?) -> Void {
        pAllocator.withOptionalCStruct { ptr_pAllocator in
            vkDestroyQueryPool(device.handle, queryPool?.handle, ptr_pAllocator)
        }
    }

    func getQueryPoolResults(device: Device, queryPool: QueryPool, firstQuery: UInt32, queryCount: UInt32, dataSize: Int, pData: UnsafeMutableRawPointer, stride: VkDeviceSize, flags: QueryResultFlags) -> VkResult {
        vkGetQueryPoolResults(device.handle, queryPool.handle, firstQuery, queryCount, dataSize, pData, stride, flags.rawValue)
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

    func destroyFramebuffer(device: Device, framebuffer: Framebuffer?, pAllocator: AllocationCallbacks?) -> Void {
        pAllocator.withOptionalCStruct { ptr_pAllocator in
            vkDestroyFramebuffer(device.handle, framebuffer?.handle, ptr_pAllocator)
        }
    }
}

class RenderPass {
    let handle: VkRenderPass!
    let device: Device

    init(handle: VkRenderPass!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func destroyRenderPass(device: Device, renderPass: RenderPass?, pAllocator: AllocationCallbacks?) -> Void {
        pAllocator.withOptionalCStruct { ptr_pAllocator in
            vkDestroyRenderPass(device.handle, renderPass?.handle, ptr_pAllocator)
        }
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

    func destroyPipelineCache(device: Device, pipelineCache: PipelineCache?, pAllocator: AllocationCallbacks?) -> Void {
        pAllocator.withOptionalCStruct { ptr_pAllocator in
            vkDestroyPipelineCache(device.handle, pipelineCache?.handle, ptr_pAllocator)
        }
    }

    func getPipelineCacheData(device: Device, pipelineCache: PipelineCache, pDataSize: UnsafeMutablePointer<Int>, pData: UnsafeMutableRawPointer) -> VkResult {
        vkGetPipelineCacheData(device.handle, pipelineCache.handle, pDataSize, pData)
    }

    func mergePipelineCaches(device: Device, dstCache: PipelineCache, pSrcCaches: Array<PipelineCache>) -> VkResult {
        pSrcCaches.map{ $0.handle }.withUnsafeBufferPointer { ptr_pSrcCaches in
            vkMergePipelineCaches(device.handle, dstCache.handle, UInt32(ptr_pSrcCaches.count), ptr_pSrcCaches.baseAddress)
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

    func destroyIndirectCommandsLayoutNV(device: Device, indirectCommandsLayout: IndirectCommandsLayoutNV, pAllocator: AllocationCallbacks?) -> Void {
        pAllocator.withOptionalCStruct { ptr_pAllocator in
            vkDestroyIndirectCommandsLayoutNV(device.handle, indirectCommandsLayout.handle, ptr_pAllocator)
        }
    }
}

class DescriptorUpdateTemplate {
    let handle: VkDescriptorUpdateTemplate!
    let device: Device

    init(handle: VkDescriptorUpdateTemplate!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func destroyDescriptorUpdateTemplate(device: Device, descriptorUpdateTemplate: DescriptorUpdateTemplate?, pAllocator: AllocationCallbacks?) -> Void {
        pAllocator.withOptionalCStruct { ptr_pAllocator in
            vkDestroyDescriptorUpdateTemplate(device.handle, descriptorUpdateTemplate?.handle, ptr_pAllocator)
        }
    }
}

class SamplerYcbcrConversion {
    let handle: VkSamplerYcbcrConversion!
    let device: Device

    init(handle: VkSamplerYcbcrConversion!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func destroySamplerYcbcrConversion(device: Device, ycbcrConversion: SamplerYcbcrConversion?, pAllocator: AllocationCallbacks?) -> Void {
        pAllocator.withOptionalCStruct { ptr_pAllocator in
            vkDestroySamplerYcbcrConversion(device.handle, ycbcrConversion?.handle, ptr_pAllocator)
        }
    }
}

class ValidationCacheEXT {
    let handle: VkValidationCacheEXT!
    let device: Device

    init(handle: VkValidationCacheEXT!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func destroyValidationCacheEXT(device: Device, validationCache: ValidationCacheEXT?, pAllocator: AllocationCallbacks?) -> Void {
        pAllocator.withOptionalCStruct { ptr_pAllocator in
            vkDestroyValidationCacheEXT(device.handle, validationCache?.handle, ptr_pAllocator)
        }
    }

    func getValidationCacheDataEXT(device: Device, validationCache: ValidationCacheEXT, pDataSize: UnsafeMutablePointer<Int>, pData: UnsafeMutableRawPointer) -> VkResult {
        vkGetValidationCacheDataEXT(device.handle, validationCache.handle, pDataSize, pData)
    }

    func mergeValidationCachesEXT(device: Device, dstCache: ValidationCacheEXT, pSrcCaches: Array<ValidationCacheEXT>) -> VkResult {
        pSrcCaches.map{ $0.handle }.withUnsafeBufferPointer { ptr_pSrcCaches in
            vkMergeValidationCachesEXT(device.handle, dstCache.handle, UInt32(ptr_pSrcCaches.count), ptr_pSrcCaches.baseAddress)
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

    func releasePerformanceConfigurationINTEL(device: Device, configuration: PerformanceConfigurationINTEL) -> VkResult {
        vkReleasePerformanceConfigurationINTEL(device.handle, configuration.handle)
    }
}

class DisplayKHR {
    let handle: VkDisplayKHR!
    let physicalDevice: PhysicalDevice

    init(handle: VkDisplayKHR!, physicalDevice: PhysicalDevice) {
        self.handle = handle
        self.physicalDevice = physicalDevice
    }

    func getDisplayModePropertiesKHR(physicalDevice: PhysicalDevice, display: DisplayKHR, pPropertyCount: UnsafeMutablePointer<UInt32>, pProperties: UnsafeMutablePointer<VkDisplayModePropertiesKHR>) -> VkResult {
        vkGetDisplayModePropertiesKHR(physicalDevice.handle, display.handle, pPropertyCount, pProperties)
    }

    func createDisplayModeKHR(physicalDevice: PhysicalDevice, display: DisplayKHR, pCreateInfo: DisplayModeCreateInfoKHR, pAllocator: AllocationCallbacks?, pMode: UnsafeMutablePointer<VkDisplayModeKHR?>) -> VkResult {
        pCreateInfo.withCStruct { ptr_pCreateInfo in
            pAllocator.withOptionalCStruct { ptr_pAllocator in
                vkCreateDisplayModeKHR(physicalDevice.handle, display.handle, ptr_pCreateInfo, ptr_pAllocator, pMode)
            }
        }
    }

    func releaseDisplayEXT(physicalDevice: PhysicalDevice, display: DisplayKHR) -> VkResult {
        vkReleaseDisplayEXT(physicalDevice.handle, display.handle)
    }

    func getDisplayModeProperties2KHR(physicalDevice: PhysicalDevice, display: DisplayKHR, pPropertyCount: UnsafeMutablePointer<UInt32>, pProperties: UnsafeMutablePointer<VkDisplayModeProperties2KHR>) -> VkResult {
        vkGetDisplayModeProperties2KHR(physicalDevice.handle, display.handle, pPropertyCount, pProperties)
    }
}

class DisplayModeKHR {
    let handle: VkDisplayModeKHR!
    let display: DisplayKHR

    init(handle: VkDisplayModeKHR!, display: DisplayKHR) {
        self.handle = handle
        self.display = display
    }

    func getDisplayPlaneCapabilitiesKHR(physicalDevice: PhysicalDevice, mode: DisplayModeKHR, planeIndex: UInt32, pCapabilities: UnsafeMutablePointer<VkDisplayPlaneCapabilitiesKHR>) -> VkResult {
        vkGetDisplayPlaneCapabilitiesKHR(physicalDevice.handle, mode.handle, planeIndex, pCapabilities)
    }
}

class SurfaceKHR {
    let handle: VkSurfaceKHR!
    let instance: Instance

    init(handle: VkSurfaceKHR!, instance: Instance) {
        self.handle = handle
        self.instance = instance
    }

    func destroySurfaceKHR(instance: Instance, surface: SurfaceKHR?, pAllocator: AllocationCallbacks?) -> Void {
        pAllocator.withOptionalCStruct { ptr_pAllocator in
            vkDestroySurfaceKHR(instance.handle, surface?.handle, ptr_pAllocator)
        }
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

    func destroyDebugReportCallbackEXT(instance: Instance, callback: DebugReportCallbackEXT, pAllocator: AllocationCallbacks?) -> Void {
        pAllocator.withOptionalCStruct { ptr_pAllocator in
            vkDestroyDebugReportCallbackEXT(instance.handle, callback.handle, ptr_pAllocator)
        }
    }
}

class DebugUtilsMessengerEXT {
    let handle: VkDebugUtilsMessengerEXT!
    let instance: Instance

    init(handle: VkDebugUtilsMessengerEXT!, instance: Instance) {
        self.handle = handle
        self.instance = instance
    }

    func destroyDebugUtilsMessengerEXT(instance: Instance, messenger: DebugUtilsMessengerEXT, pAllocator: AllocationCallbacks?) -> Void {
        pAllocator.withOptionalCStruct { ptr_pAllocator in
            vkDestroyDebugUtilsMessengerEXT(instance.handle, messenger.handle, ptr_pAllocator)
        }
    }
}

