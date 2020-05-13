import CVulkan

class Instance {
    let handle: VkInstance!

    init(handle: VkInstance!) {
        self.handle = handle
    }

    func createInstance(pCreateInfo: UnsafePointer<VkInstanceCreateInfo>, pAllocator: UnsafePointer<VkAllocationCallbacks>, pInstance: UnsafeMutablePointer<VkInstance?>) -> VkResult {
        return vkCreateInstance(pCreateInfo, pAllocator, pInstance)
    }

    func destroyInstance(instance: VkInstance, pAllocator: UnsafePointer<VkAllocationCallbacks>) -> Void {
        return vkDestroyInstance(instance, pAllocator)
    }

    func enumeratePhysicalDevices(instance: VkInstance, pPhysicalDeviceCount: UnsafeMutablePointer<UInt32>, pPhysicalDevices: UnsafeMutablePointer<VkPhysicalDevice?>) -> VkResult {
        return vkEnumeratePhysicalDevices(instance, pPhysicalDeviceCount, pPhysicalDevices)
    }

    func getInstanceProcAddr(instance: VkInstance, pName: UnsafePointer<CChar>) -> PFN_vkVoidFunction {
        return vkGetInstanceProcAddr(instance, pName)
    }

    func enumerateInstanceVersion(pApiVersion: UnsafeMutablePointer<UInt32>) -> VkResult {
        return vkEnumerateInstanceVersion(pApiVersion)
    }

    func enumerateInstanceLayerProperties(pPropertyCount: UnsafeMutablePointer<UInt32>, pProperties: UnsafeMutablePointer<VkLayerProperties>) -> VkResult {
        return vkEnumerateInstanceLayerProperties(pPropertyCount, pProperties)
    }

    func enumerateInstanceExtensionProperties(pLayerName: UnsafePointer<CChar>, pPropertyCount: UnsafeMutablePointer<UInt32>, pProperties: UnsafeMutablePointer<VkExtensionProperties>) -> VkResult {
        return vkEnumerateInstanceExtensionProperties(pLayerName, pPropertyCount, pProperties)
    }

    func createDisplayPlaneSurfaceKHR(instance: VkInstance, pCreateInfo: UnsafePointer<VkDisplaySurfaceCreateInfoKHR>, pAllocator: UnsafePointer<VkAllocationCallbacks>, pSurface: UnsafeMutablePointer<VkSurfaceKHR?>) -> VkResult {
        return vkCreateDisplayPlaneSurfaceKHR(instance, pCreateInfo, pAllocator, pSurface)
    }

    func createDebugReportCallbackEXT(instance: VkInstance, pCreateInfo: UnsafePointer<VkDebugReportCallbackCreateInfoEXT>, pAllocator: UnsafePointer<VkAllocationCallbacks>, pCallback: UnsafeMutablePointer<VkDebugReportCallbackEXT?>) -> VkResult {
        return vkCreateDebugReportCallbackEXT(instance, pCreateInfo, pAllocator, pCallback)
    }

    func debugReportMessageEXT(instance: VkInstance, flags: VkDebugReportFlagsEXT, objectType: VkDebugReportObjectTypeEXT, object: UInt64, location: Int, messageCode: Int32, pLayerPrefix: UnsafePointer<CChar>, pMessage: UnsafePointer<CChar>) -> Void {
        return vkDebugReportMessageEXT(instance, flags, objectType, object, location, messageCode, pLayerPrefix, pMessage)
    }

    func enumeratePhysicalDeviceGroups(instance: VkInstance, pPhysicalDeviceGroupCount: UnsafeMutablePointer<UInt32>, pPhysicalDeviceGroupProperties: UnsafeMutablePointer<VkPhysicalDeviceGroupProperties>) -> VkResult {
        return vkEnumeratePhysicalDeviceGroups(instance, pPhysicalDeviceGroupCount, pPhysicalDeviceGroupProperties)
    }

    func createDebugUtilsMessengerEXT(instance: VkInstance, pCreateInfo: UnsafePointer<VkDebugUtilsMessengerCreateInfoEXT>, pAllocator: UnsafePointer<VkAllocationCallbacks>, pMessenger: UnsafeMutablePointer<VkDebugUtilsMessengerEXT?>) -> VkResult {
        return vkCreateDebugUtilsMessengerEXT(instance, pCreateInfo, pAllocator, pMessenger)
    }

    func submitDebugUtilsMessageEXT(instance: VkInstance, messageSeverity: VkDebugUtilsMessageSeverityFlagBitsEXT, messageTypes: VkDebugUtilsMessageTypeFlagsEXT, pCallbackData: UnsafePointer<VkDebugUtilsMessengerCallbackDataEXT>) -> Void {
        return vkSubmitDebugUtilsMessageEXT(instance, messageSeverity, messageTypes, pCallbackData)
    }

    func createHeadlessSurfaceEXT(instance: VkInstance, pCreateInfo: UnsafePointer<VkHeadlessSurfaceCreateInfoEXT>, pAllocator: UnsafePointer<VkAllocationCallbacks>, pSurface: UnsafeMutablePointer<VkSurfaceKHR?>) -> VkResult {
        return vkCreateHeadlessSurfaceEXT(instance, pCreateInfo, pAllocator, pSurface)
    }
}

class PhysicalDevice {
    let handle: VkPhysicalDevice!
    let instance: Instance

    init(handle: VkPhysicalDevice!, instance: Instance) {
        self.handle = handle
        self.instance = instance
    }

    func getPhysicalDeviceProperties(physicalDevice: VkPhysicalDevice, pProperties: UnsafeMutablePointer<VkPhysicalDeviceProperties>) -> Void {
        return vkGetPhysicalDeviceProperties(physicalDevice, pProperties)
    }

    func getPhysicalDeviceQueueFamilyProperties(physicalDevice: VkPhysicalDevice, pQueueFamilyPropertyCount: UnsafeMutablePointer<UInt32>, pQueueFamilyProperties: UnsafeMutablePointer<VkQueueFamilyProperties>) -> Void {
        return vkGetPhysicalDeviceQueueFamilyProperties(physicalDevice, pQueueFamilyPropertyCount, pQueueFamilyProperties)
    }

    func getPhysicalDeviceMemoryProperties(physicalDevice: VkPhysicalDevice, pMemoryProperties: UnsafeMutablePointer<VkPhysicalDeviceMemoryProperties>) -> Void {
        return vkGetPhysicalDeviceMemoryProperties(physicalDevice, pMemoryProperties)
    }

    func getPhysicalDeviceFeatures(physicalDevice: VkPhysicalDevice, pFeatures: UnsafeMutablePointer<VkPhysicalDeviceFeatures>) -> Void {
        return vkGetPhysicalDeviceFeatures(physicalDevice, pFeatures)
    }

    func getPhysicalDeviceFormatProperties(physicalDevice: VkPhysicalDevice, format: VkFormat, pFormatProperties: UnsafeMutablePointer<VkFormatProperties>) -> Void {
        return vkGetPhysicalDeviceFormatProperties(physicalDevice, format, pFormatProperties)
    }

    func getPhysicalDeviceImageFormatProperties(physicalDevice: VkPhysicalDevice, format: VkFormat, type: VkImageType, tiling: VkImageTiling, usage: VkImageUsageFlags, flags: VkImageCreateFlags, pImageFormatProperties: UnsafeMutablePointer<VkImageFormatProperties>) -> VkResult {
        return vkGetPhysicalDeviceImageFormatProperties(physicalDevice, format, type, tiling, usage, flags, pImageFormatProperties)
    }

    func createDevice(physicalDevice: VkPhysicalDevice, pCreateInfo: UnsafePointer<VkDeviceCreateInfo>, pAllocator: UnsafePointer<VkAllocationCallbacks>, pDevice: UnsafeMutablePointer<VkDevice?>) -> VkResult {
        return vkCreateDevice(physicalDevice, pCreateInfo, pAllocator, pDevice)
    }

    func enumerateDeviceLayerProperties(physicalDevice: VkPhysicalDevice, pPropertyCount: UnsafeMutablePointer<UInt32>, pProperties: UnsafeMutablePointer<VkLayerProperties>) -> VkResult {
        return vkEnumerateDeviceLayerProperties(physicalDevice, pPropertyCount, pProperties)
    }

    func enumerateDeviceExtensionProperties(physicalDevice: VkPhysicalDevice, pLayerName: UnsafePointer<CChar>, pPropertyCount: UnsafeMutablePointer<UInt32>, pProperties: UnsafeMutablePointer<VkExtensionProperties>) -> VkResult {
        return vkEnumerateDeviceExtensionProperties(physicalDevice, pLayerName, pPropertyCount, pProperties)
    }

    func getPhysicalDeviceSparseImageFormatProperties(physicalDevice: VkPhysicalDevice, format: VkFormat, type: VkImageType, samples: VkSampleCountFlagBits, usage: VkImageUsageFlags, tiling: VkImageTiling, pPropertyCount: UnsafeMutablePointer<UInt32>, pProperties: UnsafeMutablePointer<VkSparseImageFormatProperties>) -> Void {
        return vkGetPhysicalDeviceSparseImageFormatProperties(physicalDevice, format, type, samples, usage, tiling, pPropertyCount, pProperties)
    }

    func getPhysicalDeviceDisplayPropertiesKHR(physicalDevice: VkPhysicalDevice, pPropertyCount: UnsafeMutablePointer<UInt32>, pProperties: UnsafeMutablePointer<VkDisplayPropertiesKHR>) -> VkResult {
        return vkGetPhysicalDeviceDisplayPropertiesKHR(physicalDevice, pPropertyCount, pProperties)
    }

    func getPhysicalDeviceDisplayPlanePropertiesKHR(physicalDevice: VkPhysicalDevice, pPropertyCount: UnsafeMutablePointer<UInt32>, pProperties: UnsafeMutablePointer<VkDisplayPlanePropertiesKHR>) -> VkResult {
        return vkGetPhysicalDeviceDisplayPlanePropertiesKHR(physicalDevice, pPropertyCount, pProperties)
    }

    func getDisplayPlaneSupportedDisplaysKHR(physicalDevice: VkPhysicalDevice, planeIndex: UInt32, pDisplayCount: UnsafeMutablePointer<UInt32>, pDisplays: UnsafeMutablePointer<VkDisplayKHR?>) -> VkResult {
        return vkGetDisplayPlaneSupportedDisplaysKHR(physicalDevice, planeIndex, pDisplayCount, pDisplays)
    }

    func getPhysicalDeviceSurfaceSupportKHR(physicalDevice: VkPhysicalDevice, queueFamilyIndex: UInt32, surface: VkSurfaceKHR, pSupported: UnsafeMutablePointer<VkBool32>) -> VkResult {
        return vkGetPhysicalDeviceSurfaceSupportKHR(physicalDevice, queueFamilyIndex, surface, pSupported)
    }

    func getPhysicalDeviceSurfaceCapabilitiesKHR(physicalDevice: VkPhysicalDevice, surface: VkSurfaceKHR, pSurfaceCapabilities: UnsafeMutablePointer<VkSurfaceCapabilitiesKHR>) -> VkResult {
        return vkGetPhysicalDeviceSurfaceCapabilitiesKHR(physicalDevice, surface, pSurfaceCapabilities)
    }

    func getPhysicalDeviceSurfaceFormatsKHR(physicalDevice: VkPhysicalDevice, surface: VkSurfaceKHR, pSurfaceFormatCount: UnsafeMutablePointer<UInt32>, pSurfaceFormats: UnsafeMutablePointer<VkSurfaceFormatKHR>) -> VkResult {
        return vkGetPhysicalDeviceSurfaceFormatsKHR(physicalDevice, surface, pSurfaceFormatCount, pSurfaceFormats)
    }

    func getPhysicalDeviceSurfacePresentModesKHR(physicalDevice: VkPhysicalDevice, surface: VkSurfaceKHR, pPresentModeCount: UnsafeMutablePointer<UInt32>, pPresentModes: UnsafeMutablePointer<VkPresentModeKHR>) -> VkResult {
        return vkGetPhysicalDeviceSurfacePresentModesKHR(physicalDevice, surface, pPresentModeCount, pPresentModes)
    }

    func getPhysicalDeviceExternalImageFormatPropertiesNV(physicalDevice: VkPhysicalDevice, format: VkFormat, type: VkImageType, tiling: VkImageTiling, usage: VkImageUsageFlags, flags: VkImageCreateFlags, externalHandleType: VkExternalMemoryHandleTypeFlagsNV, pExternalImageFormatProperties: UnsafeMutablePointer<VkExternalImageFormatPropertiesNV>) -> VkResult {
        return vkGetPhysicalDeviceExternalImageFormatPropertiesNV(physicalDevice, format, type, tiling, usage, flags, externalHandleType, pExternalImageFormatProperties)
    }

    func getPhysicalDeviceFeatures2(physicalDevice: VkPhysicalDevice, pFeatures: UnsafeMutablePointer<VkPhysicalDeviceFeatures2>) -> Void {
        return vkGetPhysicalDeviceFeatures2(physicalDevice, pFeatures)
    }

    func getPhysicalDeviceProperties2(physicalDevice: VkPhysicalDevice, pProperties: UnsafeMutablePointer<VkPhysicalDeviceProperties2>) -> Void {
        return vkGetPhysicalDeviceProperties2(physicalDevice, pProperties)
    }

    func getPhysicalDeviceFormatProperties2(physicalDevice: VkPhysicalDevice, format: VkFormat, pFormatProperties: UnsafeMutablePointer<VkFormatProperties2>) -> Void {
        return vkGetPhysicalDeviceFormatProperties2(physicalDevice, format, pFormatProperties)
    }

    func getPhysicalDeviceImageFormatProperties2(physicalDevice: VkPhysicalDevice, pImageFormatInfo: UnsafePointer<VkPhysicalDeviceImageFormatInfo2>, pImageFormatProperties: UnsafeMutablePointer<VkImageFormatProperties2>) -> VkResult {
        return vkGetPhysicalDeviceImageFormatProperties2(physicalDevice, pImageFormatInfo, pImageFormatProperties)
    }

    func getPhysicalDeviceQueueFamilyProperties2(physicalDevice: VkPhysicalDevice, pQueueFamilyPropertyCount: UnsafeMutablePointer<UInt32>, pQueueFamilyProperties: UnsafeMutablePointer<VkQueueFamilyProperties2>) -> Void {
        return vkGetPhysicalDeviceQueueFamilyProperties2(physicalDevice, pQueueFamilyPropertyCount, pQueueFamilyProperties)
    }

    func getPhysicalDeviceMemoryProperties2(physicalDevice: VkPhysicalDevice, pMemoryProperties: UnsafeMutablePointer<VkPhysicalDeviceMemoryProperties2>) -> Void {
        return vkGetPhysicalDeviceMemoryProperties2(physicalDevice, pMemoryProperties)
    }

    func getPhysicalDeviceSparseImageFormatProperties2(physicalDevice: VkPhysicalDevice, pFormatInfo: UnsafePointer<VkPhysicalDeviceSparseImageFormatInfo2>, pPropertyCount: UnsafeMutablePointer<UInt32>, pProperties: UnsafeMutablePointer<VkSparseImageFormatProperties2>) -> Void {
        return vkGetPhysicalDeviceSparseImageFormatProperties2(physicalDevice, pFormatInfo, pPropertyCount, pProperties)
    }

    func getPhysicalDeviceExternalBufferProperties(physicalDevice: VkPhysicalDevice, pExternalBufferInfo: UnsafePointer<VkPhysicalDeviceExternalBufferInfo>, pExternalBufferProperties: UnsafeMutablePointer<VkExternalBufferProperties>) -> Void {
        return vkGetPhysicalDeviceExternalBufferProperties(physicalDevice, pExternalBufferInfo, pExternalBufferProperties)
    }

    func getPhysicalDeviceExternalSemaphoreProperties(physicalDevice: VkPhysicalDevice, pExternalSemaphoreInfo: UnsafePointer<VkPhysicalDeviceExternalSemaphoreInfo>, pExternalSemaphoreProperties: UnsafeMutablePointer<VkExternalSemaphoreProperties>) -> Void {
        return vkGetPhysicalDeviceExternalSemaphoreProperties(physicalDevice, pExternalSemaphoreInfo, pExternalSemaphoreProperties)
    }

    func getPhysicalDeviceExternalFenceProperties(physicalDevice: VkPhysicalDevice, pExternalFenceInfo: UnsafePointer<VkPhysicalDeviceExternalFenceInfo>, pExternalFenceProperties: UnsafeMutablePointer<VkExternalFenceProperties>) -> Void {
        return vkGetPhysicalDeviceExternalFenceProperties(physicalDevice, pExternalFenceInfo, pExternalFenceProperties)
    }

    func getPhysicalDeviceSurfaceCapabilities2EXT(physicalDevice: VkPhysicalDevice, surface: VkSurfaceKHR, pSurfaceCapabilities: UnsafeMutablePointer<VkSurfaceCapabilities2EXT>) -> VkResult {
        return vkGetPhysicalDeviceSurfaceCapabilities2EXT(physicalDevice, surface, pSurfaceCapabilities)
    }

    func getPhysicalDevicePresentRectanglesKHR(physicalDevice: VkPhysicalDevice, surface: VkSurfaceKHR, pRectCount: UnsafeMutablePointer<UInt32>, pRects: UnsafeMutablePointer<VkRect2D>) -> VkResult {
        return vkGetPhysicalDevicePresentRectanglesKHR(physicalDevice, surface, pRectCount, pRects)
    }

    func getPhysicalDeviceMultisamplePropertiesEXT(physicalDevice: VkPhysicalDevice, samples: VkSampleCountFlagBits, pMultisampleProperties: UnsafeMutablePointer<VkMultisamplePropertiesEXT>) -> Void {
        return vkGetPhysicalDeviceMultisamplePropertiesEXT(physicalDevice, samples, pMultisampleProperties)
    }

    func getPhysicalDeviceSurfaceCapabilities2KHR(physicalDevice: VkPhysicalDevice, pSurfaceInfo: UnsafePointer<VkPhysicalDeviceSurfaceInfo2KHR>, pSurfaceCapabilities: UnsafeMutablePointer<VkSurfaceCapabilities2KHR>) -> VkResult {
        return vkGetPhysicalDeviceSurfaceCapabilities2KHR(physicalDevice, pSurfaceInfo, pSurfaceCapabilities)
    }

    func getPhysicalDeviceSurfaceFormats2KHR(physicalDevice: VkPhysicalDevice, pSurfaceInfo: UnsafePointer<VkPhysicalDeviceSurfaceInfo2KHR>, pSurfaceFormatCount: UnsafeMutablePointer<UInt32>, pSurfaceFormats: UnsafeMutablePointer<VkSurfaceFormat2KHR>) -> VkResult {
        return vkGetPhysicalDeviceSurfaceFormats2KHR(physicalDevice, pSurfaceInfo, pSurfaceFormatCount, pSurfaceFormats)
    }

    func getPhysicalDeviceDisplayProperties2KHR(physicalDevice: VkPhysicalDevice, pPropertyCount: UnsafeMutablePointer<UInt32>, pProperties: UnsafeMutablePointer<VkDisplayProperties2KHR>) -> VkResult {
        return vkGetPhysicalDeviceDisplayProperties2KHR(physicalDevice, pPropertyCount, pProperties)
    }

    func getPhysicalDeviceDisplayPlaneProperties2KHR(physicalDevice: VkPhysicalDevice, pPropertyCount: UnsafeMutablePointer<UInt32>, pProperties: UnsafeMutablePointer<VkDisplayPlaneProperties2KHR>) -> VkResult {
        return vkGetPhysicalDeviceDisplayPlaneProperties2KHR(physicalDevice, pPropertyCount, pProperties)
    }

    func getDisplayPlaneCapabilities2KHR(physicalDevice: VkPhysicalDevice, pDisplayPlaneInfo: UnsafePointer<VkDisplayPlaneInfo2KHR>, pCapabilities: UnsafeMutablePointer<VkDisplayPlaneCapabilities2KHR>) -> VkResult {
        return vkGetDisplayPlaneCapabilities2KHR(physicalDevice, pDisplayPlaneInfo, pCapabilities)
    }

    func getPhysicalDeviceCalibrateableTimeDomainsEXT(physicalDevice: VkPhysicalDevice, pTimeDomainCount: UnsafeMutablePointer<UInt32>, pTimeDomains: UnsafeMutablePointer<VkTimeDomainEXT>) -> VkResult {
        return vkGetPhysicalDeviceCalibrateableTimeDomainsEXT(physicalDevice, pTimeDomainCount, pTimeDomains)
    }

    func getPhysicalDeviceCooperativeMatrixPropertiesNV(physicalDevice: VkPhysicalDevice, pPropertyCount: UnsafeMutablePointer<UInt32>, pProperties: UnsafeMutablePointer<VkCooperativeMatrixPropertiesNV>) -> VkResult {
        return vkGetPhysicalDeviceCooperativeMatrixPropertiesNV(physicalDevice, pPropertyCount, pProperties)
    }

    func enumeratePhysicalDeviceQueueFamilyPerformanceQueryCountersKHR(physicalDevice: VkPhysicalDevice, queueFamilyIndex: UInt32, pCounterCount: UnsafeMutablePointer<UInt32>, pCounters: UnsafeMutablePointer<VkPerformanceCounterKHR>, pCounterDescriptions: UnsafeMutablePointer<VkPerformanceCounterDescriptionKHR>) -> VkResult {
        return vkEnumeratePhysicalDeviceQueueFamilyPerformanceQueryCountersKHR(physicalDevice, queueFamilyIndex, pCounterCount, pCounters, pCounterDescriptions)
    }

    func getPhysicalDeviceQueueFamilyPerformanceQueryPassesKHR(physicalDevice: VkPhysicalDevice, pPerformanceQueryCreateInfo: UnsafePointer<VkQueryPoolPerformanceCreateInfoKHR>, pNumPasses: UnsafeMutablePointer<UInt32>) -> Void {
        return vkGetPhysicalDeviceQueueFamilyPerformanceQueryPassesKHR(physicalDevice, pPerformanceQueryCreateInfo, pNumPasses)
    }

    func getPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNV(physicalDevice: VkPhysicalDevice, pCombinationCount: UnsafeMutablePointer<UInt32>, pCombinations: UnsafeMutablePointer<VkFramebufferMixedSamplesCombinationNV>) -> VkResult {
        return vkGetPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNV(physicalDevice, pCombinationCount, pCombinations)
    }

    func getPhysicalDeviceToolPropertiesEXT(physicalDevice: VkPhysicalDevice, pToolCount: UnsafeMutablePointer<UInt32>, pToolProperties: UnsafeMutablePointer<VkPhysicalDeviceToolPropertiesEXT>) -> VkResult {
        return vkGetPhysicalDeviceToolPropertiesEXT(physicalDevice, pToolCount, pToolProperties)
    }
}

class Device {
    let handle: VkDevice!
    let physicalDevice: PhysicalDevice

    init(handle: VkDevice!, physicalDevice: PhysicalDevice) {
        self.handle = handle
        self.physicalDevice = physicalDevice
    }

    func getDeviceProcAddr(device: VkDevice, pName: UnsafePointer<CChar>) -> PFN_vkVoidFunction {
        return vkGetDeviceProcAddr(device, pName)
    }

    func destroyDevice(device: VkDevice, pAllocator: UnsafePointer<VkAllocationCallbacks>) -> Void {
        return vkDestroyDevice(device, pAllocator)
    }

    func getDeviceQueue(device: VkDevice, queueFamilyIndex: UInt32, queueIndex: UInt32, pQueue: UnsafeMutablePointer<VkQueue?>) -> Void {
        return vkGetDeviceQueue(device, queueFamilyIndex, queueIndex, pQueue)
    }

    func deviceWaitIdle(device: VkDevice) -> VkResult {
        return vkDeviceWaitIdle(device)
    }

    func allocateMemory(device: VkDevice, pAllocateInfo: UnsafePointer<VkMemoryAllocateInfo>, pAllocator: UnsafePointer<VkAllocationCallbacks>, pMemory: UnsafeMutablePointer<VkDeviceMemory?>) -> VkResult {
        return vkAllocateMemory(device, pAllocateInfo, pAllocator, pMemory)
    }

    func freeMemory(device: VkDevice, memory: VkDeviceMemory, pAllocator: UnsafePointer<VkAllocationCallbacks>) -> Void {
        return vkFreeMemory(device, memory, pAllocator)
    }

    func flushMappedMemoryRanges(device: VkDevice, memoryRangeCount: UInt32, pMemoryRanges: UnsafePointer<VkMappedMemoryRange>) -> VkResult {
        return vkFlushMappedMemoryRanges(device, memoryRangeCount, pMemoryRanges)
    }

    func invalidateMappedMemoryRanges(device: VkDevice, memoryRangeCount: UInt32, pMemoryRanges: UnsafePointer<VkMappedMemoryRange>) -> VkResult {
        return vkInvalidateMappedMemoryRanges(device, memoryRangeCount, pMemoryRanges)
    }

    func createFence(device: VkDevice, pCreateInfo: UnsafePointer<VkFenceCreateInfo>, pAllocator: UnsafePointer<VkAllocationCallbacks>, pFence: UnsafeMutablePointer<VkFence?>) -> VkResult {
        return vkCreateFence(device, pCreateInfo, pAllocator, pFence)
    }

    func resetFences(device: VkDevice, fenceCount: UInt32, pFences: UnsafePointer<VkFence?>) -> VkResult {
        return vkResetFences(device, fenceCount, pFences)
    }

    func waitForFences(device: VkDevice, fenceCount: UInt32, pFences: UnsafePointer<VkFence?>, waitAll: VkBool32, timeout: UInt64) -> VkResult {
        return vkWaitForFences(device, fenceCount, pFences, waitAll, timeout)
    }

    func createSemaphore(device: VkDevice, pCreateInfo: UnsafePointer<VkSemaphoreCreateInfo>, pAllocator: UnsafePointer<VkAllocationCallbacks>, pSemaphore: UnsafeMutablePointer<VkSemaphore?>) -> VkResult {
        return vkCreateSemaphore(device, pCreateInfo, pAllocator, pSemaphore)
    }

    func createEvent(device: VkDevice, pCreateInfo: UnsafePointer<VkEventCreateInfo>, pAllocator: UnsafePointer<VkAllocationCallbacks>, pEvent: UnsafeMutablePointer<VkEvent?>) -> VkResult {
        return vkCreateEvent(device, pCreateInfo, pAllocator, pEvent)
    }

    func createQueryPool(device: VkDevice, pCreateInfo: UnsafePointer<VkQueryPoolCreateInfo>, pAllocator: UnsafePointer<VkAllocationCallbacks>, pQueryPool: UnsafeMutablePointer<VkQueryPool?>) -> VkResult {
        return vkCreateQueryPool(device, pCreateInfo, pAllocator, pQueryPool)
    }

    func createBuffer(device: VkDevice, pCreateInfo: UnsafePointer<VkBufferCreateInfo>, pAllocator: UnsafePointer<VkAllocationCallbacks>, pBuffer: UnsafeMutablePointer<VkBuffer?>) -> VkResult {
        return vkCreateBuffer(device, pCreateInfo, pAllocator, pBuffer)
    }

    func createBufferView(device: VkDevice, pCreateInfo: UnsafePointer<VkBufferViewCreateInfo>, pAllocator: UnsafePointer<VkAllocationCallbacks>, pView: UnsafeMutablePointer<VkBufferView?>) -> VkResult {
        return vkCreateBufferView(device, pCreateInfo, pAllocator, pView)
    }

    func createImage(device: VkDevice, pCreateInfo: UnsafePointer<VkImageCreateInfo>, pAllocator: UnsafePointer<VkAllocationCallbacks>, pImage: UnsafeMutablePointer<VkImage?>) -> VkResult {
        return vkCreateImage(device, pCreateInfo, pAllocator, pImage)
    }

    func createImageView(device: VkDevice, pCreateInfo: UnsafePointer<VkImageViewCreateInfo>, pAllocator: UnsafePointer<VkAllocationCallbacks>, pView: UnsafeMutablePointer<VkImageView?>) -> VkResult {
        return vkCreateImageView(device, pCreateInfo, pAllocator, pView)
    }

    func createShaderModule(device: VkDevice, pCreateInfo: UnsafePointer<VkShaderModuleCreateInfo>, pAllocator: UnsafePointer<VkAllocationCallbacks>, pShaderModule: UnsafeMutablePointer<VkShaderModule?>) -> VkResult {
        return vkCreateShaderModule(device, pCreateInfo, pAllocator, pShaderModule)
    }

    func createPipelineCache(device: VkDevice, pCreateInfo: UnsafePointer<VkPipelineCacheCreateInfo>, pAllocator: UnsafePointer<VkAllocationCallbacks>, pPipelineCache: UnsafeMutablePointer<VkPipelineCache?>) -> VkResult {
        return vkCreatePipelineCache(device, pCreateInfo, pAllocator, pPipelineCache)
    }

    func createGraphicsPipelines(device: VkDevice, pipelineCache: VkPipelineCache, createInfoCount: UInt32, pCreateInfos: UnsafePointer<VkGraphicsPipelineCreateInfo>, pAllocator: UnsafePointer<VkAllocationCallbacks>, pPipelines: UnsafeMutablePointer<VkPipeline?>) -> VkResult {
        return vkCreateGraphicsPipelines(device, pipelineCache, createInfoCount, pCreateInfos, pAllocator, pPipelines)
    }

    func createComputePipelines(device: VkDevice, pipelineCache: VkPipelineCache, createInfoCount: UInt32, pCreateInfos: UnsafePointer<VkComputePipelineCreateInfo>, pAllocator: UnsafePointer<VkAllocationCallbacks>, pPipelines: UnsafeMutablePointer<VkPipeline?>) -> VkResult {
        return vkCreateComputePipelines(device, pipelineCache, createInfoCount, pCreateInfos, pAllocator, pPipelines)
    }

    func createPipelineLayout(device: VkDevice, pCreateInfo: UnsafePointer<VkPipelineLayoutCreateInfo>, pAllocator: UnsafePointer<VkAllocationCallbacks>, pPipelineLayout: UnsafeMutablePointer<VkPipelineLayout?>) -> VkResult {
        return vkCreatePipelineLayout(device, pCreateInfo, pAllocator, pPipelineLayout)
    }

    func createSampler(device: VkDevice, pCreateInfo: UnsafePointer<VkSamplerCreateInfo>, pAllocator: UnsafePointer<VkAllocationCallbacks>, pSampler: UnsafeMutablePointer<VkSampler?>) -> VkResult {
        return vkCreateSampler(device, pCreateInfo, pAllocator, pSampler)
    }

    func createDescriptorSetLayout(device: VkDevice, pCreateInfo: UnsafePointer<VkDescriptorSetLayoutCreateInfo>, pAllocator: UnsafePointer<VkAllocationCallbacks>, pSetLayout: UnsafeMutablePointer<VkDescriptorSetLayout?>) -> VkResult {
        return vkCreateDescriptorSetLayout(device, pCreateInfo, pAllocator, pSetLayout)
    }

    func createDescriptorPool(device: VkDevice, pCreateInfo: UnsafePointer<VkDescriptorPoolCreateInfo>, pAllocator: UnsafePointer<VkAllocationCallbacks>, pDescriptorPool: UnsafeMutablePointer<VkDescriptorPool?>) -> VkResult {
        return vkCreateDescriptorPool(device, pCreateInfo, pAllocator, pDescriptorPool)
    }

    func allocateDescriptorSets(device: VkDevice, pAllocateInfo: UnsafePointer<VkDescriptorSetAllocateInfo>, pDescriptorSets: UnsafeMutablePointer<VkDescriptorSet?>) -> VkResult {
        return vkAllocateDescriptorSets(device, pAllocateInfo, pDescriptorSets)
    }

    func updateDescriptorSets(device: VkDevice, descriptorWriteCount: UInt32, pDescriptorWrites: UnsafePointer<VkWriteDescriptorSet>, descriptorCopyCount: UInt32, pDescriptorCopies: UnsafePointer<VkCopyDescriptorSet>) -> Void {
        return vkUpdateDescriptorSets(device, descriptorWriteCount, pDescriptorWrites, descriptorCopyCount, pDescriptorCopies)
    }

    func createFramebuffer(device: VkDevice, pCreateInfo: UnsafePointer<VkFramebufferCreateInfo>, pAllocator: UnsafePointer<VkAllocationCallbacks>, pFramebuffer: UnsafeMutablePointer<VkFramebuffer?>) -> VkResult {
        return vkCreateFramebuffer(device, pCreateInfo, pAllocator, pFramebuffer)
    }

    func createRenderPass(device: VkDevice, pCreateInfo: UnsafePointer<VkRenderPassCreateInfo>, pAllocator: UnsafePointer<VkAllocationCallbacks>, pRenderPass: UnsafeMutablePointer<VkRenderPass?>) -> VkResult {
        return vkCreateRenderPass(device, pCreateInfo, pAllocator, pRenderPass)
    }

    func createCommandPool(device: VkDevice, pCreateInfo: UnsafePointer<VkCommandPoolCreateInfo>, pAllocator: UnsafePointer<VkAllocationCallbacks>, pCommandPool: UnsafeMutablePointer<VkCommandPool?>) -> VkResult {
        return vkCreateCommandPool(device, pCreateInfo, pAllocator, pCommandPool)
    }

    func allocateCommandBuffers(device: VkDevice, pAllocateInfo: UnsafePointer<VkCommandBufferAllocateInfo>, pCommandBuffers: UnsafeMutablePointer<VkCommandBuffer?>) -> VkResult {
        return vkAllocateCommandBuffers(device, pAllocateInfo, pCommandBuffers)
    }

    func createSharedSwapchainsKHR(device: VkDevice, swapchainCount: UInt32, pCreateInfos: UnsafePointer<VkSwapchainCreateInfoKHR>, pAllocator: UnsafePointer<VkAllocationCallbacks>, pSwapchains: UnsafeMutablePointer<VkSwapchainKHR?>) -> VkResult {
        return vkCreateSharedSwapchainsKHR(device, swapchainCount, pCreateInfos, pAllocator, pSwapchains)
    }

    func createSwapchainKHR(device: VkDevice, pCreateInfo: UnsafePointer<VkSwapchainCreateInfoKHR>, pAllocator: UnsafePointer<VkAllocationCallbacks>, pSwapchain: UnsafeMutablePointer<VkSwapchainKHR?>) -> VkResult {
        return vkCreateSwapchainKHR(device, pCreateInfo, pAllocator, pSwapchain)
    }

    func destroySwapchainKHR(device: VkDevice, swapchain: VkSwapchainKHR, pAllocator: UnsafePointer<VkAllocationCallbacks>) -> Void {
        return vkDestroySwapchainKHR(device, swapchain, pAllocator)
    }

    func getSwapchainImagesKHR(device: VkDevice, swapchain: VkSwapchainKHR, pSwapchainImageCount: UnsafeMutablePointer<UInt32>, pSwapchainImages: UnsafeMutablePointer<VkImage?>) -> VkResult {
        return vkGetSwapchainImagesKHR(device, swapchain, pSwapchainImageCount, pSwapchainImages)
    }

    func acquireNextImageKHR(device: VkDevice, swapchain: VkSwapchainKHR, timeout: UInt64, semaphore: VkSemaphore, fence: VkFence, pImageIndex: UnsafeMutablePointer<UInt32>) -> VkResult {
        return vkAcquireNextImageKHR(device, swapchain, timeout, semaphore, fence, pImageIndex)
    }

    func debugMarkerSetObjectNameEXT(device: VkDevice, pNameInfo: UnsafePointer<VkDebugMarkerObjectNameInfoEXT>) -> VkResult {
        return vkDebugMarkerSetObjectNameEXT(device, pNameInfo)
    }

    func debugMarkerSetObjectTagEXT(device: VkDevice, pTagInfo: UnsafePointer<VkDebugMarkerObjectTagInfoEXT>) -> VkResult {
        return vkDebugMarkerSetObjectTagEXT(device, pTagInfo)
    }

    func getGeneratedCommandsMemoryRequirementsNV(device: VkDevice, pInfo: UnsafePointer<VkGeneratedCommandsMemoryRequirementsInfoNV>, pMemoryRequirements: UnsafeMutablePointer<VkMemoryRequirements2>) -> Void {
        return vkGetGeneratedCommandsMemoryRequirementsNV(device, pInfo, pMemoryRequirements)
    }

    func createIndirectCommandsLayoutNV(device: VkDevice, pCreateInfo: UnsafePointer<VkIndirectCommandsLayoutCreateInfoNV>, pAllocator: UnsafePointer<VkAllocationCallbacks>, pIndirectCommandsLayout: UnsafeMutablePointer<VkIndirectCommandsLayoutNV?>) -> VkResult {
        return vkCreateIndirectCommandsLayoutNV(device, pCreateInfo, pAllocator, pIndirectCommandsLayout)
    }

    func getMemoryFdKHR(device: VkDevice, pGetFdInfo: UnsafePointer<VkMemoryGetFdInfoKHR>, pFd: UnsafeMutablePointer<Int32>) -> VkResult {
        return vkGetMemoryFdKHR(device, pGetFdInfo, pFd)
    }

    func getMemoryFdPropertiesKHR(device: VkDevice, handleType: VkExternalMemoryHandleTypeFlagBits, fd: Int32, pMemoryFdProperties: UnsafeMutablePointer<VkMemoryFdPropertiesKHR>) -> VkResult {
        return vkGetMemoryFdPropertiesKHR(device, handleType, fd, pMemoryFdProperties)
    }

    func getSemaphoreFdKHR(device: VkDevice, pGetFdInfo: UnsafePointer<VkSemaphoreGetFdInfoKHR>, pFd: UnsafeMutablePointer<Int32>) -> VkResult {
        return vkGetSemaphoreFdKHR(device, pGetFdInfo, pFd)
    }

    func importSemaphoreFdKHR(device: VkDevice, pImportSemaphoreFdInfo: UnsafePointer<VkImportSemaphoreFdInfoKHR>) -> VkResult {
        return vkImportSemaphoreFdKHR(device, pImportSemaphoreFdInfo)
    }

    func getFenceFdKHR(device: VkDevice, pGetFdInfo: UnsafePointer<VkFenceGetFdInfoKHR>, pFd: UnsafeMutablePointer<Int32>) -> VkResult {
        return vkGetFenceFdKHR(device, pGetFdInfo, pFd)
    }

    func importFenceFdKHR(device: VkDevice, pImportFenceFdInfo: UnsafePointer<VkImportFenceFdInfoKHR>) -> VkResult {
        return vkImportFenceFdKHR(device, pImportFenceFdInfo)
    }

    func displayPowerControlEXT(device: VkDevice, display: VkDisplayKHR, pDisplayPowerInfo: UnsafePointer<VkDisplayPowerInfoEXT>) -> VkResult {
        return vkDisplayPowerControlEXT(device, display, pDisplayPowerInfo)
    }

    func registerDeviceEventEXT(device: VkDevice, pDeviceEventInfo: UnsafePointer<VkDeviceEventInfoEXT>, pAllocator: UnsafePointer<VkAllocationCallbacks>, pFence: UnsafeMutablePointer<VkFence?>) -> VkResult {
        return vkRegisterDeviceEventEXT(device, pDeviceEventInfo, pAllocator, pFence)
    }

    func registerDisplayEventEXT(device: VkDevice, display: VkDisplayKHR, pDisplayEventInfo: UnsafePointer<VkDisplayEventInfoEXT>, pAllocator: UnsafePointer<VkAllocationCallbacks>, pFence: UnsafeMutablePointer<VkFence?>) -> VkResult {
        return vkRegisterDisplayEventEXT(device, display, pDisplayEventInfo, pAllocator, pFence)
    }

    func getSwapchainCounterEXT(device: VkDevice, swapchain: VkSwapchainKHR, counter: VkSurfaceCounterFlagBitsEXT, pCounterValue: UnsafeMutablePointer<UInt64>) -> VkResult {
        return vkGetSwapchainCounterEXT(device, swapchain, counter, pCounterValue)
    }

    func getDeviceGroupPeerMemoryFeatures(device: VkDevice, heapIndex: UInt32, localDeviceIndex: UInt32, remoteDeviceIndex: UInt32, pPeerMemoryFeatures: UnsafeMutablePointer<VkPeerMemoryFeatureFlags>) -> Void {
        return vkGetDeviceGroupPeerMemoryFeatures(device, heapIndex, localDeviceIndex, remoteDeviceIndex, pPeerMemoryFeatures)
    }

    func bindBufferMemory2(device: VkDevice, bindInfoCount: UInt32, pBindInfos: UnsafePointer<VkBindBufferMemoryInfo>) -> VkResult {
        return vkBindBufferMemory2(device, bindInfoCount, pBindInfos)
    }

    func bindImageMemory2(device: VkDevice, bindInfoCount: UInt32, pBindInfos: UnsafePointer<VkBindImageMemoryInfo>) -> VkResult {
        return vkBindImageMemory2(device, bindInfoCount, pBindInfos)
    }

    func getDeviceGroupPresentCapabilitiesKHR(device: VkDevice, pDeviceGroupPresentCapabilities: UnsafeMutablePointer<VkDeviceGroupPresentCapabilitiesKHR>) -> VkResult {
        return vkGetDeviceGroupPresentCapabilitiesKHR(device, pDeviceGroupPresentCapabilities)
    }

    func getDeviceGroupSurfacePresentModesKHR(device: VkDevice, surface: VkSurfaceKHR, pModes: UnsafeMutablePointer<VkDeviceGroupPresentModeFlagsKHR>) -> VkResult {
        return vkGetDeviceGroupSurfacePresentModesKHR(device, surface, pModes)
    }

    func acquireNextImage2KHR(device: VkDevice, pAcquireInfo: UnsafePointer<VkAcquireNextImageInfoKHR>, pImageIndex: UnsafeMutablePointer<UInt32>) -> VkResult {
        return vkAcquireNextImage2KHR(device, pAcquireInfo, pImageIndex)
    }

    func createDescriptorUpdateTemplate(device: VkDevice, pCreateInfo: UnsafePointer<VkDescriptorUpdateTemplateCreateInfo>, pAllocator: UnsafePointer<VkAllocationCallbacks>, pDescriptorUpdateTemplate: UnsafeMutablePointer<VkDescriptorUpdateTemplate?>) -> VkResult {
        return vkCreateDescriptorUpdateTemplate(device, pCreateInfo, pAllocator, pDescriptorUpdateTemplate)
    }

    func setHdrMetadataEXT(device: VkDevice, swapchainCount: UInt32, pSwapchains: UnsafePointer<VkSwapchainKHR?>, pMetadata: UnsafePointer<VkHdrMetadataEXT>) -> Void {
        return vkSetHdrMetadataEXT(device, swapchainCount, pSwapchains, pMetadata)
    }

    func getSwapchainStatusKHR(device: VkDevice, swapchain: VkSwapchainKHR) -> VkResult {
        return vkGetSwapchainStatusKHR(device, swapchain)
    }

    func getRefreshCycleDurationGOOGLE(device: VkDevice, swapchain: VkSwapchainKHR, pDisplayTimingProperties: UnsafeMutablePointer<VkRefreshCycleDurationGOOGLE>) -> VkResult {
        return vkGetRefreshCycleDurationGOOGLE(device, swapchain, pDisplayTimingProperties)
    }

    func getPastPresentationTimingGOOGLE(device: VkDevice, swapchain: VkSwapchainKHR, pPresentationTimingCount: UnsafeMutablePointer<UInt32>, pPresentationTimings: UnsafeMutablePointer<VkPastPresentationTimingGOOGLE>) -> VkResult {
        return vkGetPastPresentationTimingGOOGLE(device, swapchain, pPresentationTimingCount, pPresentationTimings)
    }

    func getBufferMemoryRequirements2(device: VkDevice, pInfo: UnsafePointer<VkBufferMemoryRequirementsInfo2>, pMemoryRequirements: UnsafeMutablePointer<VkMemoryRequirements2>) -> Void {
        return vkGetBufferMemoryRequirements2(device, pInfo, pMemoryRequirements)
    }

    func getImageMemoryRequirements2(device: VkDevice, pInfo: UnsafePointer<VkImageMemoryRequirementsInfo2>, pMemoryRequirements: UnsafeMutablePointer<VkMemoryRequirements2>) -> Void {
        return vkGetImageMemoryRequirements2(device, pInfo, pMemoryRequirements)
    }

    func getImageSparseMemoryRequirements2(device: VkDevice, pInfo: UnsafePointer<VkImageSparseMemoryRequirementsInfo2>, pSparseMemoryRequirementCount: UnsafeMutablePointer<UInt32>, pSparseMemoryRequirements: UnsafeMutablePointer<VkSparseImageMemoryRequirements2>) -> Void {
        return vkGetImageSparseMemoryRequirements2(device, pInfo, pSparseMemoryRequirementCount, pSparseMemoryRequirements)
    }

    func createSamplerYcbcrConversion(device: VkDevice, pCreateInfo: UnsafePointer<VkSamplerYcbcrConversionCreateInfo>, pAllocator: UnsafePointer<VkAllocationCallbacks>, pYcbcrConversion: UnsafeMutablePointer<VkSamplerYcbcrConversion?>) -> VkResult {
        return vkCreateSamplerYcbcrConversion(device, pCreateInfo, pAllocator, pYcbcrConversion)
    }

    func getDeviceQueue2(device: VkDevice, pQueueInfo: UnsafePointer<VkDeviceQueueInfo2>, pQueue: UnsafeMutablePointer<VkQueue?>) -> Void {
        return vkGetDeviceQueue2(device, pQueueInfo, pQueue)
    }

    func createValidationCacheEXT(device: VkDevice, pCreateInfo: UnsafePointer<VkValidationCacheCreateInfoEXT>, pAllocator: UnsafePointer<VkAllocationCallbacks>, pValidationCache: UnsafeMutablePointer<VkValidationCacheEXT?>) -> VkResult {
        return vkCreateValidationCacheEXT(device, pCreateInfo, pAllocator, pValidationCache)
    }

    func getDescriptorSetLayoutSupport(device: VkDevice, pCreateInfo: UnsafePointer<VkDescriptorSetLayoutCreateInfo>, pSupport: UnsafeMutablePointer<VkDescriptorSetLayoutSupport>) -> Void {
        return vkGetDescriptorSetLayoutSupport(device, pCreateInfo, pSupport)
    }

    func setLocalDimmingAMD(device: VkDevice, swapChain: VkSwapchainKHR, localDimmingEnable: VkBool32) -> Void {
        return vkSetLocalDimmingAMD(device, swapChain, localDimmingEnable)
    }

    func getCalibratedTimestampsEXT(device: VkDevice, timestampCount: UInt32, pTimestampInfos: UnsafePointer<VkCalibratedTimestampInfoEXT>, pTimestamps: UnsafeMutablePointer<UInt64>, pMaxDeviation: UnsafeMutablePointer<UInt64>) -> VkResult {
        return vkGetCalibratedTimestampsEXT(device, timestampCount, pTimestampInfos, pTimestamps, pMaxDeviation)
    }

    func setDebugUtilsObjectNameEXT(device: VkDevice, pNameInfo: UnsafePointer<VkDebugUtilsObjectNameInfoEXT>) -> VkResult {
        return vkSetDebugUtilsObjectNameEXT(device, pNameInfo)
    }

    func setDebugUtilsObjectTagEXT(device: VkDevice, pTagInfo: UnsafePointer<VkDebugUtilsObjectTagInfoEXT>) -> VkResult {
        return vkSetDebugUtilsObjectTagEXT(device, pTagInfo)
    }

    func getMemoryHostPointerPropertiesEXT(device: VkDevice, handleType: VkExternalMemoryHandleTypeFlagBits, pHostPointer: UnsafeRawPointer, pMemoryHostPointerProperties: UnsafeMutablePointer<VkMemoryHostPointerPropertiesEXT>) -> VkResult {
        return vkGetMemoryHostPointerPropertiesEXT(device, handleType, pHostPointer, pMemoryHostPointerProperties)
    }

    func createRenderPass2(device: VkDevice, pCreateInfo: UnsafePointer<VkRenderPassCreateInfo2>, pAllocator: UnsafePointer<VkAllocationCallbacks>, pRenderPass: UnsafeMutablePointer<VkRenderPass?>) -> VkResult {
        return vkCreateRenderPass2(device, pCreateInfo, pAllocator, pRenderPass)
    }

    func waitSemaphores(device: VkDevice, pWaitInfo: UnsafePointer<VkSemaphoreWaitInfo>, timeout: UInt64) -> VkResult {
        return vkWaitSemaphores(device, pWaitInfo, timeout)
    }

    func signalSemaphore(device: VkDevice, pSignalInfo: UnsafePointer<VkSemaphoreSignalInfo>) -> VkResult {
        return vkSignalSemaphore(device, pSignalInfo)
    }

    func createAccelerationStructureNV(device: VkDevice, pCreateInfo: UnsafePointer<VkAccelerationStructureCreateInfoNV>, pAllocator: UnsafePointer<VkAllocationCallbacks>, pAccelerationStructure: UnsafeMutablePointer<VkAccelerationStructureNV>) -> VkResult {
        return vkCreateAccelerationStructureNV(device, pCreateInfo, pAllocator, pAccelerationStructure)
    }

    func getAccelerationStructureMemoryRequirementsNV(device: VkDevice, pInfo: UnsafePointer<VkAccelerationStructureMemoryRequirementsInfoNV>, pMemoryRequirements: UnsafeMutablePointer<VkMemoryRequirements2KHR>) -> Void {
        return vkGetAccelerationStructureMemoryRequirementsNV(device, pInfo, pMemoryRequirements)
    }

    func getAccelerationStructureHandleNV(device: VkDevice, accelerationStructure: VkAccelerationStructureKHR, dataSize: Int, pData: UnsafeMutableRawPointer) -> VkResult {
        return vkGetAccelerationStructureHandleNV(device, accelerationStructure, dataSize, pData)
    }

    func createRayTracingPipelinesNV(device: VkDevice, pipelineCache: VkPipelineCache, createInfoCount: UInt32, pCreateInfos: UnsafePointer<VkRayTracingPipelineCreateInfoNV>, pAllocator: UnsafePointer<VkAllocationCallbacks>, pPipelines: UnsafeMutablePointer<VkPipeline?>) -> VkResult {
        return vkCreateRayTracingPipelinesNV(device, pipelineCache, createInfoCount, pCreateInfos, pAllocator, pPipelines)
    }

    func getImageViewHandleNVX(device: VkDevice, pInfo: UnsafePointer<VkImageViewHandleInfoNVX>) -> UInt32 {
        return vkGetImageViewHandleNVX(device, pInfo)
    }

    func acquireProfilingLockKHR(device: VkDevice, pInfo: UnsafePointer<VkAcquireProfilingLockInfoKHR>) -> VkResult {
        return vkAcquireProfilingLockKHR(device, pInfo)
    }

    func releaseProfilingLockKHR(device: VkDevice) -> Void {
        return vkReleaseProfilingLockKHR(device)
    }

    func getBufferOpaqueCaptureAddress(device: VkDevice, pInfo: UnsafePointer<VkBufferDeviceAddressInfo>) -> UInt64 {
        return vkGetBufferOpaqueCaptureAddress(device, pInfo)
    }

    func getBufferDeviceAddress(device: VkDevice, pInfo: UnsafePointer<VkBufferDeviceAddressInfo>) -> VkDeviceAddress {
        return vkGetBufferDeviceAddress(device, pInfo)
    }

    func initializePerformanceApiINTEL(device: VkDevice, pInitializeInfo: UnsafePointer<VkInitializePerformanceApiInfoINTEL>) -> VkResult {
        return vkInitializePerformanceApiINTEL(device, pInitializeInfo)
    }

    func uninitializePerformanceApiINTEL(device: VkDevice) -> Void {
        return vkUninitializePerformanceApiINTEL(device)
    }

    func acquirePerformanceConfigurationINTEL(device: VkDevice, pAcquireInfo: UnsafePointer<VkPerformanceConfigurationAcquireInfoINTEL>, pConfiguration: UnsafeMutablePointer<VkPerformanceConfigurationINTEL?>) -> VkResult {
        return vkAcquirePerformanceConfigurationINTEL(device, pAcquireInfo, pConfiguration)
    }

    func getPerformanceParameterINTEL(device: VkDevice, parameter: VkPerformanceParameterTypeINTEL, pValue: UnsafeMutablePointer<VkPerformanceValueINTEL>) -> VkResult {
        return vkGetPerformanceParameterINTEL(device, parameter, pValue)
    }

    func getDeviceMemoryOpaqueCaptureAddress(device: VkDevice, pInfo: UnsafePointer<VkDeviceMemoryOpaqueCaptureAddressInfo>) -> UInt64 {
        return vkGetDeviceMemoryOpaqueCaptureAddress(device, pInfo)
    }

    func getPipelineExecutablePropertiesKHR(device: VkDevice, pPipelineInfo: UnsafePointer<VkPipelineInfoKHR>, pExecutableCount: UnsafeMutablePointer<UInt32>, pProperties: UnsafeMutablePointer<VkPipelineExecutablePropertiesKHR>) -> VkResult {
        return vkGetPipelineExecutablePropertiesKHR(device, pPipelineInfo, pExecutableCount, pProperties)
    }

    func getPipelineExecutableStatisticsKHR(device: VkDevice, pExecutableInfo: UnsafePointer<VkPipelineExecutableInfoKHR>, pStatisticCount: UnsafeMutablePointer<UInt32>, pStatistics: UnsafeMutablePointer<VkPipelineExecutableStatisticKHR>) -> VkResult {
        return vkGetPipelineExecutableStatisticsKHR(device, pExecutableInfo, pStatisticCount, pStatistics)
    }

    func getPipelineExecutableInternalRepresentationsKHR(device: VkDevice, pExecutableInfo: UnsafePointer<VkPipelineExecutableInfoKHR>, pInternalRepresentationCount: UnsafeMutablePointer<UInt32>, pInternalRepresentations: UnsafeMutablePointer<VkPipelineExecutableInternalRepresentationKHR>) -> VkResult {
        return vkGetPipelineExecutableInternalRepresentationsKHR(device, pExecutableInfo, pInternalRepresentationCount, pInternalRepresentations)
    }
}

class Queue {
    let handle: VkQueue!
    let device: Device

    init(handle: VkQueue!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func queueSubmit(queue: VkQueue, submitCount: UInt32, pSubmits: UnsafePointer<VkSubmitInfo>, fence: VkFence) -> VkResult {
        return vkQueueSubmit(queue, submitCount, pSubmits, fence)
    }

    func queueWaitIdle(queue: VkQueue) -> VkResult {
        return vkQueueWaitIdle(queue)
    }

    func queueBindSparse(queue: VkQueue, bindInfoCount: UInt32, pBindInfo: UnsafePointer<VkBindSparseInfo>, fence: VkFence) -> VkResult {
        return vkQueueBindSparse(queue, bindInfoCount, pBindInfo, fence)
    }

    func queuePresentKHR(queue: VkQueue, pPresentInfo: UnsafePointer<VkPresentInfoKHR>) -> VkResult {
        return vkQueuePresentKHR(queue, pPresentInfo)
    }

    func queueBeginDebugUtilsLabelEXT(queue: VkQueue, pLabelInfo: UnsafePointer<VkDebugUtilsLabelEXT>) -> Void {
        return vkQueueBeginDebugUtilsLabelEXT(queue, pLabelInfo)
    }

    func queueEndDebugUtilsLabelEXT(queue: VkQueue) -> Void {
        return vkQueueEndDebugUtilsLabelEXT(queue)
    }

    func queueInsertDebugUtilsLabelEXT(queue: VkQueue, pLabelInfo: UnsafePointer<VkDebugUtilsLabelEXT>) -> Void {
        return vkQueueInsertDebugUtilsLabelEXT(queue, pLabelInfo)
    }

    func getQueueCheckpointDataNV(queue: VkQueue, pCheckpointDataCount: UnsafeMutablePointer<UInt32>, pCheckpointData: UnsafeMutablePointer<VkCheckpointDataNV>) -> Void {
        return vkGetQueueCheckpointDataNV(queue, pCheckpointDataCount, pCheckpointData)
    }

    func queueSetPerformanceConfigurationINTEL(queue: VkQueue, configuration: VkPerformanceConfigurationINTEL) -> VkResult {
        return vkQueueSetPerformanceConfigurationINTEL(queue, configuration)
    }
}

class CommandBuffer {
    let handle: VkCommandBuffer!
    let commandPool: CommandPool

    init(handle: VkCommandBuffer!, commandPool: CommandPool) {
        self.handle = handle
        self.commandPool = commandPool
    }

    func beginCommandBuffer(commandBuffer: VkCommandBuffer, pBeginInfo: UnsafePointer<VkCommandBufferBeginInfo>) -> VkResult {
        return vkBeginCommandBuffer(commandBuffer, pBeginInfo)
    }

    func endCommandBuffer(commandBuffer: VkCommandBuffer) -> VkResult {
        return vkEndCommandBuffer(commandBuffer)
    }

    func resetCommandBuffer(commandBuffer: VkCommandBuffer, flags: VkCommandBufferResetFlags) -> VkResult {
        return vkResetCommandBuffer(commandBuffer, flags)
    }

    func cmdBindPipeline(commandBuffer: VkCommandBuffer, pipelineBindPoint: VkPipelineBindPoint, pipeline: VkPipeline) -> Void {
        return vkCmdBindPipeline(commandBuffer, pipelineBindPoint, pipeline)
    }

    func cmdSetViewport(commandBuffer: VkCommandBuffer, firstViewport: UInt32, viewportCount: UInt32, pViewports: UnsafePointer<VkViewport>) -> Void {
        return vkCmdSetViewport(commandBuffer, firstViewport, viewportCount, pViewports)
    }

    func cmdSetScissor(commandBuffer: VkCommandBuffer, firstScissor: UInt32, scissorCount: UInt32, pScissors: UnsafePointer<VkRect2D>) -> Void {
        return vkCmdSetScissor(commandBuffer, firstScissor, scissorCount, pScissors)
    }

    func cmdSetLineWidth(commandBuffer: VkCommandBuffer, lineWidth: Float) -> Void {
        return vkCmdSetLineWidth(commandBuffer, lineWidth)
    }

    func cmdSetDepthBias(commandBuffer: VkCommandBuffer, depthBiasConstantFactor: Float, depthBiasClamp: Float, depthBiasSlopeFactor: Float) -> Void {
        return vkCmdSetDepthBias(commandBuffer, depthBiasConstantFactor, depthBiasClamp, depthBiasSlopeFactor)
    }

    func cmdSetBlendConstants(commandBuffer: VkCommandBuffer, blendConstants: (Float, Float, Float, Float)) -> Void {
        return vkCmdSetBlendConstants(commandBuffer, blendConstants)
    }

    func cmdSetDepthBounds(commandBuffer: VkCommandBuffer, minDepthBounds: Float, maxDepthBounds: Float) -> Void {
        return vkCmdSetDepthBounds(commandBuffer, minDepthBounds, maxDepthBounds)
    }

    func cmdSetStencilCompareMask(commandBuffer: VkCommandBuffer, faceMask: VkStencilFaceFlags, compareMask: UInt32) -> Void {
        return vkCmdSetStencilCompareMask(commandBuffer, faceMask, compareMask)
    }

    func cmdSetStencilWriteMask(commandBuffer: VkCommandBuffer, faceMask: VkStencilFaceFlags, writeMask: UInt32) -> Void {
        return vkCmdSetStencilWriteMask(commandBuffer, faceMask, writeMask)
    }

    func cmdSetStencilReference(commandBuffer: VkCommandBuffer, faceMask: VkStencilFaceFlags, reference: UInt32) -> Void {
        return vkCmdSetStencilReference(commandBuffer, faceMask, reference)
    }

    func cmdBindDescriptorSets(commandBuffer: VkCommandBuffer, pipelineBindPoint: VkPipelineBindPoint, layout: VkPipelineLayout, firstSet: UInt32, descriptorSetCount: UInt32, pDescriptorSets: UnsafePointer<VkDescriptorSet?>, dynamicOffsetCount: UInt32, pDynamicOffsets: UnsafePointer<UInt32>) -> Void {
        return vkCmdBindDescriptorSets(commandBuffer, pipelineBindPoint, layout, firstSet, descriptorSetCount, pDescriptorSets, dynamicOffsetCount, pDynamicOffsets)
    }

    func cmdBindIndexBuffer(commandBuffer: VkCommandBuffer, buffer: VkBuffer, offset: VkDeviceSize, indexType: VkIndexType) -> Void {
        return vkCmdBindIndexBuffer(commandBuffer, buffer, offset, indexType)
    }

    func cmdBindVertexBuffers(commandBuffer: VkCommandBuffer, firstBinding: UInt32, bindingCount: UInt32, pBuffers: UnsafePointer<VkBuffer?>, pOffsets: UnsafePointer<VkDeviceSize>) -> Void {
        return vkCmdBindVertexBuffers(commandBuffer, firstBinding, bindingCount, pBuffers, pOffsets)
    }

    func cmdDraw(commandBuffer: VkCommandBuffer, vertexCount: UInt32, instanceCount: UInt32, firstVertex: UInt32, firstInstance: UInt32) -> Void {
        return vkCmdDraw(commandBuffer, vertexCount, instanceCount, firstVertex, firstInstance)
    }

    func cmdDrawIndexed(commandBuffer: VkCommandBuffer, indexCount: UInt32, instanceCount: UInt32, firstIndex: UInt32, vertexOffset: Int32, firstInstance: UInt32) -> Void {
        return vkCmdDrawIndexed(commandBuffer, indexCount, instanceCount, firstIndex, vertexOffset, firstInstance)
    }

    func cmdDrawIndirect(commandBuffer: VkCommandBuffer, buffer: VkBuffer, offset: VkDeviceSize, drawCount: UInt32, stride: UInt32) -> Void {
        return vkCmdDrawIndirect(commandBuffer, buffer, offset, drawCount, stride)
    }

    func cmdDrawIndexedIndirect(commandBuffer: VkCommandBuffer, buffer: VkBuffer, offset: VkDeviceSize, drawCount: UInt32, stride: UInt32) -> Void {
        return vkCmdDrawIndexedIndirect(commandBuffer, buffer, offset, drawCount, stride)
    }

    func cmdDispatch(commandBuffer: VkCommandBuffer, groupCountX: UInt32, groupCountY: UInt32, groupCountZ: UInt32) -> Void {
        return vkCmdDispatch(commandBuffer, groupCountX, groupCountY, groupCountZ)
    }

    func cmdDispatchIndirect(commandBuffer: VkCommandBuffer, buffer: VkBuffer, offset: VkDeviceSize) -> Void {
        return vkCmdDispatchIndirect(commandBuffer, buffer, offset)
    }

    func cmdCopyBuffer(commandBuffer: VkCommandBuffer, srcBuffer: VkBuffer, dstBuffer: VkBuffer, regionCount: UInt32, pRegions: UnsafePointer<VkBufferCopy>) -> Void {
        return vkCmdCopyBuffer(commandBuffer, srcBuffer, dstBuffer, regionCount, pRegions)
    }

    func cmdCopyImage(commandBuffer: VkCommandBuffer, srcImage: VkImage, srcImageLayout: VkImageLayout, dstImage: VkImage, dstImageLayout: VkImageLayout, regionCount: UInt32, pRegions: UnsafePointer<VkImageCopy>) -> Void {
        return vkCmdCopyImage(commandBuffer, srcImage, srcImageLayout, dstImage, dstImageLayout, regionCount, pRegions)
    }

    func cmdBlitImage(commandBuffer: VkCommandBuffer, srcImage: VkImage, srcImageLayout: VkImageLayout, dstImage: VkImage, dstImageLayout: VkImageLayout, regionCount: UInt32, pRegions: UnsafePointer<VkImageBlit>, filter: VkFilter) -> Void {
        return vkCmdBlitImage(commandBuffer, srcImage, srcImageLayout, dstImage, dstImageLayout, regionCount, pRegions, filter)
    }

    func cmdCopyBufferToImage(commandBuffer: VkCommandBuffer, srcBuffer: VkBuffer, dstImage: VkImage, dstImageLayout: VkImageLayout, regionCount: UInt32, pRegions: UnsafePointer<VkBufferImageCopy>) -> Void {
        return vkCmdCopyBufferToImage(commandBuffer, srcBuffer, dstImage, dstImageLayout, regionCount, pRegions)
    }

    func cmdCopyImageToBuffer(commandBuffer: VkCommandBuffer, srcImage: VkImage, srcImageLayout: VkImageLayout, dstBuffer: VkBuffer, regionCount: UInt32, pRegions: UnsafePointer<VkBufferImageCopy>) -> Void {
        return vkCmdCopyImageToBuffer(commandBuffer, srcImage, srcImageLayout, dstBuffer, regionCount, pRegions)
    }

    func cmdUpdateBuffer(commandBuffer: VkCommandBuffer, dstBuffer: VkBuffer, dstOffset: VkDeviceSize, dataSize: VkDeviceSize, pData: UnsafeRawPointer) -> Void {
        return vkCmdUpdateBuffer(commandBuffer, dstBuffer, dstOffset, dataSize, pData)
    }

    func cmdFillBuffer(commandBuffer: VkCommandBuffer, dstBuffer: VkBuffer, dstOffset: VkDeviceSize, size: VkDeviceSize, data: UInt32) -> Void {
        return vkCmdFillBuffer(commandBuffer, dstBuffer, dstOffset, size, data)
    }

    func cmdClearColorImage(commandBuffer: VkCommandBuffer, image: VkImage, imageLayout: VkImageLayout, pColor: UnsafePointer<VkClearColorValue>, rangeCount: UInt32, pRanges: UnsafePointer<VkImageSubresourceRange>) -> Void {
        return vkCmdClearColorImage(commandBuffer, image, imageLayout, pColor, rangeCount, pRanges)
    }

    func cmdClearDepthStencilImage(commandBuffer: VkCommandBuffer, image: VkImage, imageLayout: VkImageLayout, pDepthStencil: UnsafePointer<VkClearDepthStencilValue>, rangeCount: UInt32, pRanges: UnsafePointer<VkImageSubresourceRange>) -> Void {
        return vkCmdClearDepthStencilImage(commandBuffer, image, imageLayout, pDepthStencil, rangeCount, pRanges)
    }

    func cmdClearAttachments(commandBuffer: VkCommandBuffer, attachmentCount: UInt32, pAttachments: UnsafePointer<VkClearAttachment>, rectCount: UInt32, pRects: UnsafePointer<VkClearRect>) -> Void {
        return vkCmdClearAttachments(commandBuffer, attachmentCount, pAttachments, rectCount, pRects)
    }

    func cmdResolveImage(commandBuffer: VkCommandBuffer, srcImage: VkImage, srcImageLayout: VkImageLayout, dstImage: VkImage, dstImageLayout: VkImageLayout, regionCount: UInt32, pRegions: UnsafePointer<VkImageResolve>) -> Void {
        return vkCmdResolveImage(commandBuffer, srcImage, srcImageLayout, dstImage, dstImageLayout, regionCount, pRegions)
    }

    func cmdSetEvent(commandBuffer: VkCommandBuffer, event: VkEvent, stageMask: VkPipelineStageFlags) -> Void {
        return vkCmdSetEvent(commandBuffer, event, stageMask)
    }

    func cmdResetEvent(commandBuffer: VkCommandBuffer, event: VkEvent, stageMask: VkPipelineStageFlags) -> Void {
        return vkCmdResetEvent(commandBuffer, event, stageMask)
    }

    func cmdWaitEvents(commandBuffer: VkCommandBuffer, eventCount: UInt32, pEvents: UnsafePointer<VkEvent?>, srcStageMask: VkPipelineStageFlags, dstStageMask: VkPipelineStageFlags, memoryBarrierCount: UInt32, pMemoryBarriers: UnsafePointer<VkMemoryBarrier>, bufferMemoryBarrierCount: UInt32, pBufferMemoryBarriers: UnsafePointer<VkBufferMemoryBarrier>, imageMemoryBarrierCount: UInt32, pImageMemoryBarriers: UnsafePointer<VkImageMemoryBarrier>) -> Void {
        return vkCmdWaitEvents(commandBuffer, eventCount, pEvents, srcStageMask, dstStageMask, memoryBarrierCount, pMemoryBarriers, bufferMemoryBarrierCount, pBufferMemoryBarriers, imageMemoryBarrierCount, pImageMemoryBarriers)
    }

    func cmdPipelineBarrier(commandBuffer: VkCommandBuffer, srcStageMask: VkPipelineStageFlags, dstStageMask: VkPipelineStageFlags, dependencyFlags: VkDependencyFlags, memoryBarrierCount: UInt32, pMemoryBarriers: UnsafePointer<VkMemoryBarrier>, bufferMemoryBarrierCount: UInt32, pBufferMemoryBarriers: UnsafePointer<VkBufferMemoryBarrier>, imageMemoryBarrierCount: UInt32, pImageMemoryBarriers: UnsafePointer<VkImageMemoryBarrier>) -> Void {
        return vkCmdPipelineBarrier(commandBuffer, srcStageMask, dstStageMask, dependencyFlags, memoryBarrierCount, pMemoryBarriers, bufferMemoryBarrierCount, pBufferMemoryBarriers, imageMemoryBarrierCount, pImageMemoryBarriers)
    }

    func cmdBeginQuery(commandBuffer: VkCommandBuffer, queryPool: VkQueryPool, query: UInt32, flags: VkQueryControlFlags) -> Void {
        return vkCmdBeginQuery(commandBuffer, queryPool, query, flags)
    }

    func cmdEndQuery(commandBuffer: VkCommandBuffer, queryPool: VkQueryPool, query: UInt32) -> Void {
        return vkCmdEndQuery(commandBuffer, queryPool, query)
    }

    func cmdBeginConditionalRenderingEXT(commandBuffer: VkCommandBuffer, pConditionalRenderingBegin: UnsafePointer<VkConditionalRenderingBeginInfoEXT>) -> Void {
        return vkCmdBeginConditionalRenderingEXT(commandBuffer, pConditionalRenderingBegin)
    }

    func cmdEndConditionalRenderingEXT(commandBuffer: VkCommandBuffer) -> Void {
        return vkCmdEndConditionalRenderingEXT(commandBuffer)
    }

    func cmdResetQueryPool(commandBuffer: VkCommandBuffer, queryPool: VkQueryPool, firstQuery: UInt32, queryCount: UInt32) -> Void {
        return vkCmdResetQueryPool(commandBuffer, queryPool, firstQuery, queryCount)
    }

    func cmdWriteTimestamp(commandBuffer: VkCommandBuffer, pipelineStage: VkPipelineStageFlagBits, queryPool: VkQueryPool, query: UInt32) -> Void {
        return vkCmdWriteTimestamp(commandBuffer, pipelineStage, queryPool, query)
    }

    func cmdCopyQueryPoolResults(commandBuffer: VkCommandBuffer, queryPool: VkQueryPool, firstQuery: UInt32, queryCount: UInt32, dstBuffer: VkBuffer, dstOffset: VkDeviceSize, stride: VkDeviceSize, flags: VkQueryResultFlags) -> Void {
        return vkCmdCopyQueryPoolResults(commandBuffer, queryPool, firstQuery, queryCount, dstBuffer, dstOffset, stride, flags)
    }

    func cmdPushConstants(commandBuffer: VkCommandBuffer, layout: VkPipelineLayout, stageFlags: VkShaderStageFlags, offset: UInt32, size: UInt32, pValues: UnsafeRawPointer) -> Void {
        return vkCmdPushConstants(commandBuffer, layout, stageFlags, offset, size, pValues)
    }

    func cmdBeginRenderPass(commandBuffer: VkCommandBuffer, pRenderPassBegin: UnsafePointer<VkRenderPassBeginInfo>, contents: VkSubpassContents) -> Void {
        return vkCmdBeginRenderPass(commandBuffer, pRenderPassBegin, contents)
    }

    func cmdNextSubpass(commandBuffer: VkCommandBuffer, contents: VkSubpassContents) -> Void {
        return vkCmdNextSubpass(commandBuffer, contents)
    }

    func cmdEndRenderPass(commandBuffer: VkCommandBuffer) -> Void {
        return vkCmdEndRenderPass(commandBuffer)
    }

    func cmdExecuteCommands(commandBuffer: VkCommandBuffer, commandBufferCount: UInt32, pCommandBuffers: UnsafePointer<VkCommandBuffer?>) -> Void {
        return vkCmdExecuteCommands(commandBuffer, commandBufferCount, pCommandBuffers)
    }

    func cmdDebugMarkerBeginEXT(commandBuffer: VkCommandBuffer, pMarkerInfo: UnsafePointer<VkDebugMarkerMarkerInfoEXT>) -> Void {
        return vkCmdDebugMarkerBeginEXT(commandBuffer, pMarkerInfo)
    }

    func cmdDebugMarkerEndEXT(commandBuffer: VkCommandBuffer) -> Void {
        return vkCmdDebugMarkerEndEXT(commandBuffer)
    }

    func cmdDebugMarkerInsertEXT(commandBuffer: VkCommandBuffer, pMarkerInfo: UnsafePointer<VkDebugMarkerMarkerInfoEXT>) -> Void {
        return vkCmdDebugMarkerInsertEXT(commandBuffer, pMarkerInfo)
    }

    func cmdExecuteGeneratedCommandsNV(commandBuffer: VkCommandBuffer, isPreprocessed: VkBool32, pGeneratedCommandsInfo: UnsafePointer<VkGeneratedCommandsInfoNV>) -> Void {
        return vkCmdExecuteGeneratedCommandsNV(commandBuffer, isPreprocessed, pGeneratedCommandsInfo)
    }

    func cmdPreprocessGeneratedCommandsNV(commandBuffer: VkCommandBuffer, pGeneratedCommandsInfo: UnsafePointer<VkGeneratedCommandsInfoNV>) -> Void {
        return vkCmdPreprocessGeneratedCommandsNV(commandBuffer, pGeneratedCommandsInfo)
    }

    func cmdBindPipelineShaderGroupNV(commandBuffer: VkCommandBuffer, pipelineBindPoint: VkPipelineBindPoint, pipeline: VkPipeline, groupIndex: UInt32) -> Void {
        return vkCmdBindPipelineShaderGroupNV(commandBuffer, pipelineBindPoint, pipeline, groupIndex)
    }

    func cmdPushDescriptorSetKHR(commandBuffer: VkCommandBuffer, pipelineBindPoint: VkPipelineBindPoint, layout: VkPipelineLayout, set: UInt32, descriptorWriteCount: UInt32, pDescriptorWrites: UnsafePointer<VkWriteDescriptorSet>) -> Void {
        return vkCmdPushDescriptorSetKHR(commandBuffer, pipelineBindPoint, layout, set, descriptorWriteCount, pDescriptorWrites)
    }

    func cmdSetDeviceMask(commandBuffer: VkCommandBuffer, deviceMask: UInt32) -> Void {
        return vkCmdSetDeviceMask(commandBuffer, deviceMask)
    }

    func cmdDispatchBase(commandBuffer: VkCommandBuffer, baseGroupX: UInt32, baseGroupY: UInt32, baseGroupZ: UInt32, groupCountX: UInt32, groupCountY: UInt32, groupCountZ: UInt32) -> Void {
        return vkCmdDispatchBase(commandBuffer, baseGroupX, baseGroupY, baseGroupZ, groupCountX, groupCountY, groupCountZ)
    }

    func cmdPushDescriptorSetWithTemplateKHR(commandBuffer: VkCommandBuffer, descriptorUpdateTemplate: VkDescriptorUpdateTemplate, layout: VkPipelineLayout, set: UInt32, pData: UnsafeRawPointer) -> Void {
        return vkCmdPushDescriptorSetWithTemplateKHR(commandBuffer, descriptorUpdateTemplate, layout, set, pData)
    }

    func cmdSetViewportWScalingNV(commandBuffer: VkCommandBuffer, firstViewport: UInt32, viewportCount: UInt32, pViewportWScalings: UnsafePointer<VkViewportWScalingNV>) -> Void {
        return vkCmdSetViewportWScalingNV(commandBuffer, firstViewport, viewportCount, pViewportWScalings)
    }

    func cmdSetDiscardRectangleEXT(commandBuffer: VkCommandBuffer, firstDiscardRectangle: UInt32, discardRectangleCount: UInt32, pDiscardRectangles: UnsafePointer<VkRect2D>) -> Void {
        return vkCmdSetDiscardRectangleEXT(commandBuffer, firstDiscardRectangle, discardRectangleCount, pDiscardRectangles)
    }

    func cmdSetSampleLocationsEXT(commandBuffer: VkCommandBuffer, pSampleLocationsInfo: UnsafePointer<VkSampleLocationsInfoEXT>) -> Void {
        return vkCmdSetSampleLocationsEXT(commandBuffer, pSampleLocationsInfo)
    }

    func cmdBeginDebugUtilsLabelEXT(commandBuffer: VkCommandBuffer, pLabelInfo: UnsafePointer<VkDebugUtilsLabelEXT>) -> Void {
        return vkCmdBeginDebugUtilsLabelEXT(commandBuffer, pLabelInfo)
    }

    func cmdEndDebugUtilsLabelEXT(commandBuffer: VkCommandBuffer) -> Void {
        return vkCmdEndDebugUtilsLabelEXT(commandBuffer)
    }

    func cmdInsertDebugUtilsLabelEXT(commandBuffer: VkCommandBuffer, pLabelInfo: UnsafePointer<VkDebugUtilsLabelEXT>) -> Void {
        return vkCmdInsertDebugUtilsLabelEXT(commandBuffer, pLabelInfo)
    }

    func cmdWriteBufferMarkerAMD(commandBuffer: VkCommandBuffer, pipelineStage: VkPipelineStageFlagBits, dstBuffer: VkBuffer, dstOffset: VkDeviceSize, marker: UInt32) -> Void {
        return vkCmdWriteBufferMarkerAMD(commandBuffer, pipelineStage, dstBuffer, dstOffset, marker)
    }

    func cmdBeginRenderPass2(commandBuffer: VkCommandBuffer, pRenderPassBegin: UnsafePointer<VkRenderPassBeginInfo>, pSubpassBeginInfo: UnsafePointer<VkSubpassBeginInfo>) -> Void {
        return vkCmdBeginRenderPass2(commandBuffer, pRenderPassBegin, pSubpassBeginInfo)
    }

    func cmdNextSubpass2(commandBuffer: VkCommandBuffer, pSubpassBeginInfo: UnsafePointer<VkSubpassBeginInfo>, pSubpassEndInfo: UnsafePointer<VkSubpassEndInfo>) -> Void {
        return vkCmdNextSubpass2(commandBuffer, pSubpassBeginInfo, pSubpassEndInfo)
    }

    func cmdEndRenderPass2(commandBuffer: VkCommandBuffer, pSubpassEndInfo: UnsafePointer<VkSubpassEndInfo>) -> Void {
        return vkCmdEndRenderPass2(commandBuffer, pSubpassEndInfo)
    }

    func cmdDrawIndirectCount(commandBuffer: VkCommandBuffer, buffer: VkBuffer, offset: VkDeviceSize, countBuffer: VkBuffer, countBufferOffset: VkDeviceSize, maxDrawCount: UInt32, stride: UInt32) -> Void {
        return vkCmdDrawIndirectCount(commandBuffer, buffer, offset, countBuffer, countBufferOffset, maxDrawCount, stride)
    }

    func cmdDrawIndexedIndirectCount(commandBuffer: VkCommandBuffer, buffer: VkBuffer, offset: VkDeviceSize, countBuffer: VkBuffer, countBufferOffset: VkDeviceSize, maxDrawCount: UInt32, stride: UInt32) -> Void {
        return vkCmdDrawIndexedIndirectCount(commandBuffer, buffer, offset, countBuffer, countBufferOffset, maxDrawCount, stride)
    }

    func cmdSetCheckpointNV(commandBuffer: VkCommandBuffer, pCheckpointMarker: UnsafeRawPointer) -> Void {
        return vkCmdSetCheckpointNV(commandBuffer, pCheckpointMarker)
    }

    func cmdBindTransformFeedbackBuffersEXT(commandBuffer: VkCommandBuffer, firstBinding: UInt32, bindingCount: UInt32, pBuffers: UnsafePointer<VkBuffer?>, pOffsets: UnsafePointer<VkDeviceSize>, pSizes: UnsafePointer<VkDeviceSize>) -> Void {
        return vkCmdBindTransformFeedbackBuffersEXT(commandBuffer, firstBinding, bindingCount, pBuffers, pOffsets, pSizes)
    }

    func cmdBeginTransformFeedbackEXT(commandBuffer: VkCommandBuffer, firstCounterBuffer: UInt32, counterBufferCount: UInt32, pCounterBuffers: UnsafePointer<VkBuffer?>, pCounterBufferOffsets: UnsafePointer<VkDeviceSize>) -> Void {
        return vkCmdBeginTransformFeedbackEXT(commandBuffer, firstCounterBuffer, counterBufferCount, pCounterBuffers, pCounterBufferOffsets)
    }

    func cmdEndTransformFeedbackEXT(commandBuffer: VkCommandBuffer, firstCounterBuffer: UInt32, counterBufferCount: UInt32, pCounterBuffers: UnsafePointer<VkBuffer?>, pCounterBufferOffsets: UnsafePointer<VkDeviceSize>) -> Void {
        return vkCmdEndTransformFeedbackEXT(commandBuffer, firstCounterBuffer, counterBufferCount, pCounterBuffers, pCounterBufferOffsets)
    }

    func cmdBeginQueryIndexedEXT(commandBuffer: VkCommandBuffer, queryPool: VkQueryPool, query: UInt32, flags: VkQueryControlFlags, index: UInt32) -> Void {
        return vkCmdBeginQueryIndexedEXT(commandBuffer, queryPool, query, flags, index)
    }

    func cmdEndQueryIndexedEXT(commandBuffer: VkCommandBuffer, queryPool: VkQueryPool, query: UInt32, index: UInt32) -> Void {
        return vkCmdEndQueryIndexedEXT(commandBuffer, queryPool, query, index)
    }

    func cmdDrawIndirectByteCountEXT(commandBuffer: VkCommandBuffer, instanceCount: UInt32, firstInstance: UInt32, counterBuffer: VkBuffer, counterBufferOffset: VkDeviceSize, counterOffset: UInt32, vertexStride: UInt32) -> Void {
        return vkCmdDrawIndirectByteCountEXT(commandBuffer, instanceCount, firstInstance, counterBuffer, counterBufferOffset, counterOffset, vertexStride)
    }

    func cmdSetExclusiveScissorNV(commandBuffer: VkCommandBuffer, firstExclusiveScissor: UInt32, exclusiveScissorCount: UInt32, pExclusiveScissors: UnsafePointer<VkRect2D>) -> Void {
        return vkCmdSetExclusiveScissorNV(commandBuffer, firstExclusiveScissor, exclusiveScissorCount, pExclusiveScissors)
    }

    func cmdBindShadingRateImageNV(commandBuffer: VkCommandBuffer, imageView: VkImageView, imageLayout: VkImageLayout) -> Void {
        return vkCmdBindShadingRateImageNV(commandBuffer, imageView, imageLayout)
    }

    func cmdSetViewportShadingRatePaletteNV(commandBuffer: VkCommandBuffer, firstViewport: UInt32, viewportCount: UInt32, pShadingRatePalettes: UnsafePointer<VkShadingRatePaletteNV>) -> Void {
        return vkCmdSetViewportShadingRatePaletteNV(commandBuffer, firstViewport, viewportCount, pShadingRatePalettes)
    }

    func cmdSetCoarseSampleOrderNV(commandBuffer: VkCommandBuffer, sampleOrderType: VkCoarseSampleOrderTypeNV, customSampleOrderCount: UInt32, pCustomSampleOrders: UnsafePointer<VkCoarseSampleOrderCustomNV>) -> Void {
        return vkCmdSetCoarseSampleOrderNV(commandBuffer, sampleOrderType, customSampleOrderCount, pCustomSampleOrders)
    }

    func cmdDrawMeshTasksNV(commandBuffer: VkCommandBuffer, taskCount: UInt32, firstTask: UInt32) -> Void {
        return vkCmdDrawMeshTasksNV(commandBuffer, taskCount, firstTask)
    }

    func cmdDrawMeshTasksIndirectNV(commandBuffer: VkCommandBuffer, buffer: VkBuffer, offset: VkDeviceSize, drawCount: UInt32, stride: UInt32) -> Void {
        return vkCmdDrawMeshTasksIndirectNV(commandBuffer, buffer, offset, drawCount, stride)
    }

    func cmdDrawMeshTasksIndirectCountNV(commandBuffer: VkCommandBuffer, buffer: VkBuffer, offset: VkDeviceSize, countBuffer: VkBuffer, countBufferOffset: VkDeviceSize, maxDrawCount: UInt32, stride: UInt32) -> Void {
        return vkCmdDrawMeshTasksIndirectCountNV(commandBuffer, buffer, offset, countBuffer, countBufferOffset, maxDrawCount, stride)
    }

    func cmdCopyAccelerationStructureNV(commandBuffer: VkCommandBuffer, dst: VkAccelerationStructureKHR, src: VkAccelerationStructureKHR, mode: VkCopyAccelerationStructureModeKHR) -> Void {
        return vkCmdCopyAccelerationStructureNV(commandBuffer, dst, src, mode)
    }

    func cmdBuildAccelerationStructureNV(commandBuffer: VkCommandBuffer, pInfo: UnsafePointer<VkAccelerationStructureInfoNV>, instanceData: VkBuffer, instanceOffset: VkDeviceSize, update: VkBool32, dst: VkAccelerationStructureKHR, src: VkAccelerationStructureKHR, scratch: VkBuffer, scratchOffset: VkDeviceSize) -> Void {
        return vkCmdBuildAccelerationStructureNV(commandBuffer, pInfo, instanceData, instanceOffset, update, dst, src, scratch, scratchOffset)
    }

    func cmdTraceRaysNV(commandBuffer: VkCommandBuffer, raygenShaderBindingTableBuffer: VkBuffer, raygenShaderBindingOffset: VkDeviceSize, missShaderBindingTableBuffer: VkBuffer, missShaderBindingOffset: VkDeviceSize, missShaderBindingStride: VkDeviceSize, hitShaderBindingTableBuffer: VkBuffer, hitShaderBindingOffset: VkDeviceSize, hitShaderBindingStride: VkDeviceSize, callableShaderBindingTableBuffer: VkBuffer, callableShaderBindingOffset: VkDeviceSize, callableShaderBindingStride: VkDeviceSize, width: UInt32, height: UInt32, depth: UInt32) -> Void {
        return vkCmdTraceRaysNV(commandBuffer, raygenShaderBindingTableBuffer, raygenShaderBindingOffset, missShaderBindingTableBuffer, missShaderBindingOffset, missShaderBindingStride, hitShaderBindingTableBuffer, hitShaderBindingOffset, hitShaderBindingStride, callableShaderBindingTableBuffer, callableShaderBindingOffset, callableShaderBindingStride, width, height, depth)
    }

    func cmdSetPerformanceMarkerINTEL(commandBuffer: VkCommandBuffer, pMarkerInfo: UnsafePointer<VkPerformanceMarkerInfoINTEL>) -> VkResult {
        return vkCmdSetPerformanceMarkerINTEL(commandBuffer, pMarkerInfo)
    }

    func cmdSetPerformanceStreamMarkerINTEL(commandBuffer: VkCommandBuffer, pMarkerInfo: UnsafePointer<VkPerformanceStreamMarkerInfoINTEL>) -> VkResult {
        return vkCmdSetPerformanceStreamMarkerINTEL(commandBuffer, pMarkerInfo)
    }

    func cmdSetPerformanceOverrideINTEL(commandBuffer: VkCommandBuffer, pOverrideInfo: UnsafePointer<VkPerformanceOverrideInfoINTEL>) -> VkResult {
        return vkCmdSetPerformanceOverrideINTEL(commandBuffer, pOverrideInfo)
    }

    func cmdSetLineStippleEXT(commandBuffer: VkCommandBuffer, lineStippleFactor: UInt32, lineStipplePattern: UInt16) -> Void {
        return vkCmdSetLineStippleEXT(commandBuffer, lineStippleFactor, lineStipplePattern)
    }
}

class DeviceMemory {
    let handle: VkDeviceMemory!
    let device: Device

    init(handle: VkDeviceMemory!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func mapMemory(device: VkDevice, memory: VkDeviceMemory, offset: VkDeviceSize, size: VkDeviceSize, flags: VkMemoryMapFlags, ppData: UnsafeMutablePointer<UnsafeMutableRawPointer?>) -> VkResult {
        return vkMapMemory(device, memory, offset, size, flags, ppData)
    }

    func unmapMemory(device: VkDevice, memory: VkDeviceMemory) -> Void {
        return vkUnmapMemory(device, memory)
    }

    func getDeviceMemoryCommitment(device: VkDevice, memory: VkDeviceMemory, pCommittedMemoryInBytes: UnsafeMutablePointer<VkDeviceSize>) -> Void {
        return vkGetDeviceMemoryCommitment(device, memory, pCommittedMemoryInBytes)
    }
}

class CommandPool {
    let handle: VkCommandPool!
    let device: Device

    init(handle: VkCommandPool!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func destroyCommandPool(device: VkDevice, commandPool: VkCommandPool, pAllocator: UnsafePointer<VkAllocationCallbacks>) -> Void {
        return vkDestroyCommandPool(device, commandPool, pAllocator)
    }

    func resetCommandPool(device: VkDevice, commandPool: VkCommandPool, flags: VkCommandPoolResetFlags) -> VkResult {
        return vkResetCommandPool(device, commandPool, flags)
    }

    func freeCommandBuffers(device: VkDevice, commandPool: VkCommandPool, commandBufferCount: UInt32, pCommandBuffers: UnsafePointer<VkCommandBuffer?>) -> Void {
        return vkFreeCommandBuffers(device, commandPool, commandBufferCount, pCommandBuffers)
    }

    func trimCommandPool(device: VkDevice, commandPool: VkCommandPool, flags: VkCommandPoolTrimFlags) -> Void {
        return vkTrimCommandPool(device, commandPool, flags)
    }
}

class Buffer {
    let handle: VkBuffer!
    let device: Device

    init(handle: VkBuffer!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func getBufferMemoryRequirements(device: VkDevice, buffer: VkBuffer, pMemoryRequirements: UnsafeMutablePointer<VkMemoryRequirements>) -> Void {
        return vkGetBufferMemoryRequirements(device, buffer, pMemoryRequirements)
    }

    func bindBufferMemory(device: VkDevice, buffer: VkBuffer, memory: VkDeviceMemory, memoryOffset: VkDeviceSize) -> VkResult {
        return vkBindBufferMemory(device, buffer, memory, memoryOffset)
    }

    func destroyBuffer(device: VkDevice, buffer: VkBuffer, pAllocator: UnsafePointer<VkAllocationCallbacks>) -> Void {
        return vkDestroyBuffer(device, buffer, pAllocator)
    }
}

class BufferView {
    let handle: VkBufferView!
    let device: Device

    init(handle: VkBufferView!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func destroyBufferView(device: VkDevice, bufferView: VkBufferView, pAllocator: UnsafePointer<VkAllocationCallbacks>) -> Void {
        return vkDestroyBufferView(device, bufferView, pAllocator)
    }
}

class Image {
    let handle: VkImage!
    let device: Device

    init(handle: VkImage!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func getImageMemoryRequirements(device: VkDevice, image: VkImage, pMemoryRequirements: UnsafeMutablePointer<VkMemoryRequirements>) -> Void {
        return vkGetImageMemoryRequirements(device, image, pMemoryRequirements)
    }

    func bindImageMemory(device: VkDevice, image: VkImage, memory: VkDeviceMemory, memoryOffset: VkDeviceSize) -> VkResult {
        return vkBindImageMemory(device, image, memory, memoryOffset)
    }

    func getImageSparseMemoryRequirements(device: VkDevice, image: VkImage, pSparseMemoryRequirementCount: UnsafeMutablePointer<UInt32>, pSparseMemoryRequirements: UnsafeMutablePointer<VkSparseImageMemoryRequirements>) -> Void {
        return vkGetImageSparseMemoryRequirements(device, image, pSparseMemoryRequirementCount, pSparseMemoryRequirements)
    }

    func destroyImage(device: VkDevice, image: VkImage, pAllocator: UnsafePointer<VkAllocationCallbacks>) -> Void {
        return vkDestroyImage(device, image, pAllocator)
    }

    func getImageSubresourceLayout(device: VkDevice, image: VkImage, pSubresource: UnsafePointer<VkImageSubresource>, pLayout: UnsafeMutablePointer<VkSubresourceLayout>) -> Void {
        return vkGetImageSubresourceLayout(device, image, pSubresource, pLayout)
    }

    func getImageDrmFormatModifierPropertiesEXT(device: VkDevice, image: VkImage, pProperties: UnsafeMutablePointer<VkImageDrmFormatModifierPropertiesEXT>) -> VkResult {
        return vkGetImageDrmFormatModifierPropertiesEXT(device, image, pProperties)
    }
}

class ImageView {
    let handle: VkImageView!
    let device: Device

    init(handle: VkImageView!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func destroyImageView(device: VkDevice, imageView: VkImageView, pAllocator: UnsafePointer<VkAllocationCallbacks>) -> Void {
        return vkDestroyImageView(device, imageView, pAllocator)
    }
}

class ShaderModule {
    let handle: VkShaderModule!
    let device: Device

    init(handle: VkShaderModule!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func destroyShaderModule(device: VkDevice, shaderModule: VkShaderModule, pAllocator: UnsafePointer<VkAllocationCallbacks>) -> Void {
        return vkDestroyShaderModule(device, shaderModule, pAllocator)
    }
}

class Pipeline {
    let handle: VkPipeline!
    let device: Device

    init(handle: VkPipeline!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func destroyPipeline(device: VkDevice, pipeline: VkPipeline, pAllocator: UnsafePointer<VkAllocationCallbacks>) -> Void {
        return vkDestroyPipeline(device, pipeline, pAllocator)
    }

    func getShaderInfoAMD(device: VkDevice, pipeline: VkPipeline, shaderStage: VkShaderStageFlagBits, infoType: VkShaderInfoTypeAMD, pInfoSize: UnsafeMutablePointer<Int>, pInfo: UnsafeMutableRawPointer) -> VkResult {
        return vkGetShaderInfoAMD(device, pipeline, shaderStage, infoType, pInfoSize, pInfo)
    }

    func compileDeferredNV(device: VkDevice, pipeline: VkPipeline, shader: UInt32) -> VkResult {
        return vkCompileDeferredNV(device, pipeline, shader)
    }
}

class PipelineLayout {
    let handle: VkPipelineLayout!
    let device: Device

    init(handle: VkPipelineLayout!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func destroyPipelineLayout(device: VkDevice, pipelineLayout: VkPipelineLayout, pAllocator: UnsafePointer<VkAllocationCallbacks>) -> Void {
        return vkDestroyPipelineLayout(device, pipelineLayout, pAllocator)
    }
}

class Sampler {
    let handle: VkSampler!
    let device: Device

    init(handle: VkSampler!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func destroySampler(device: VkDevice, sampler: VkSampler, pAllocator: UnsafePointer<VkAllocationCallbacks>) -> Void {
        return vkDestroySampler(device, sampler, pAllocator)
    }
}

class DescriptorSet {
    let handle: VkDescriptorSet!
    let descriptorPool: DescriptorPool

    init(handle: VkDescriptorSet!, descriptorPool: DescriptorPool) {
        self.handle = handle
        self.descriptorPool = descriptorPool
    }

    func updateDescriptorSetWithTemplate(device: VkDevice, descriptorSet: VkDescriptorSet, descriptorUpdateTemplate: VkDescriptorUpdateTemplate, pData: UnsafeRawPointer) -> Void {
        return vkUpdateDescriptorSetWithTemplate(device, descriptorSet, descriptorUpdateTemplate, pData)
    }
}

class DescriptorSetLayout {
    let handle: VkDescriptorSetLayout!
    let device: Device

    init(handle: VkDescriptorSetLayout!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func destroyDescriptorSetLayout(device: VkDevice, descriptorSetLayout: VkDescriptorSetLayout, pAllocator: UnsafePointer<VkAllocationCallbacks>) -> Void {
        return vkDestroyDescriptorSetLayout(device, descriptorSetLayout, pAllocator)
    }
}

class DescriptorPool {
    let handle: VkDescriptorPool!
    let device: Device

    init(handle: VkDescriptorPool!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func destroyDescriptorPool(device: VkDevice, descriptorPool: VkDescriptorPool, pAllocator: UnsafePointer<VkAllocationCallbacks>) -> Void {
        return vkDestroyDescriptorPool(device, descriptorPool, pAllocator)
    }

    func resetDescriptorPool(device: VkDevice, descriptorPool: VkDescriptorPool, flags: VkDescriptorPoolResetFlags) -> VkResult {
        return vkResetDescriptorPool(device, descriptorPool, flags)
    }

    func freeDescriptorSets(device: VkDevice, descriptorPool: VkDescriptorPool, descriptorSetCount: UInt32, pDescriptorSets: UnsafePointer<VkDescriptorSet?>) -> VkResult {
        return vkFreeDescriptorSets(device, descriptorPool, descriptorSetCount, pDescriptorSets)
    }
}

class Fence {
    let handle: VkFence!
    let device: Device

    init(handle: VkFence!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func destroyFence(device: VkDevice, fence: VkFence, pAllocator: UnsafePointer<VkAllocationCallbacks>) -> Void {
        return vkDestroyFence(device, fence, pAllocator)
    }

    func getFenceStatus(device: VkDevice, fence: VkFence) -> VkResult {
        return vkGetFenceStatus(device, fence)
    }
}

class Semaphore {
    let handle: VkSemaphore!
    let device: Device

    init(handle: VkSemaphore!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func destroySemaphore(device: VkDevice, semaphore: VkSemaphore, pAllocator: UnsafePointer<VkAllocationCallbacks>) -> Void {
        return vkDestroySemaphore(device, semaphore, pAllocator)
    }

    func getSemaphoreCounterValue(device: VkDevice, semaphore: VkSemaphore, pValue: UnsafeMutablePointer<UInt64>) -> VkResult {
        return vkGetSemaphoreCounterValue(device, semaphore, pValue)
    }
}

class Event {
    let handle: VkEvent!
    let device: Device

    init(handle: VkEvent!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func destroyEvent(device: VkDevice, event: VkEvent, pAllocator: UnsafePointer<VkAllocationCallbacks>) -> Void {
        return vkDestroyEvent(device, event, pAllocator)
    }

    func getEventStatus(device: VkDevice, event: VkEvent) -> VkResult {
        return vkGetEventStatus(device, event)
    }

    func setEvent(device: VkDevice, event: VkEvent) -> VkResult {
        return vkSetEvent(device, event)
    }

    func resetEvent(device: VkDevice, event: VkEvent) -> VkResult {
        return vkResetEvent(device, event)
    }
}

class QueryPool {
    let handle: VkQueryPool!
    let device: Device

    init(handle: VkQueryPool!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func destroyQueryPool(device: VkDevice, queryPool: VkQueryPool, pAllocator: UnsafePointer<VkAllocationCallbacks>) -> Void {
        return vkDestroyQueryPool(device, queryPool, pAllocator)
    }

    func getQueryPoolResults(device: VkDevice, queryPool: VkQueryPool, firstQuery: UInt32, queryCount: UInt32, dataSize: Int, pData: UnsafeMutableRawPointer, stride: VkDeviceSize, flags: VkQueryResultFlags) -> VkResult {
        return vkGetQueryPoolResults(device, queryPool, firstQuery, queryCount, dataSize, pData, stride, flags)
    }

    func resetQueryPool(device: VkDevice, queryPool: VkQueryPool, firstQuery: UInt32, queryCount: UInt32) -> Void {
        return vkResetQueryPool(device, queryPool, firstQuery, queryCount)
    }
}

class Framebuffer {
    let handle: VkFramebuffer!
    let device: Device

    init(handle: VkFramebuffer!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func destroyFramebuffer(device: VkDevice, framebuffer: VkFramebuffer, pAllocator: UnsafePointer<VkAllocationCallbacks>) -> Void {
        return vkDestroyFramebuffer(device, framebuffer, pAllocator)
    }
}

class RenderPass {
    let handle: VkRenderPass!
    let device: Device

    init(handle: VkRenderPass!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func destroyRenderPass(device: VkDevice, renderPass: VkRenderPass, pAllocator: UnsafePointer<VkAllocationCallbacks>) -> Void {
        return vkDestroyRenderPass(device, renderPass, pAllocator)
    }

    func getRenderAreaGranularity(device: VkDevice, renderPass: VkRenderPass, pGranularity: UnsafeMutablePointer<VkExtent2D>) -> Void {
        return vkGetRenderAreaGranularity(device, renderPass, pGranularity)
    }
}

class PipelineCache {
    let handle: VkPipelineCache!
    let device: Device

    init(handle: VkPipelineCache!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func destroyPipelineCache(device: VkDevice, pipelineCache: VkPipelineCache, pAllocator: UnsafePointer<VkAllocationCallbacks>) -> Void {
        return vkDestroyPipelineCache(device, pipelineCache, pAllocator)
    }

    func getPipelineCacheData(device: VkDevice, pipelineCache: VkPipelineCache, pDataSize: UnsafeMutablePointer<Int>, pData: UnsafeMutableRawPointer) -> VkResult {
        return vkGetPipelineCacheData(device, pipelineCache, pDataSize, pData)
    }

    func mergePipelineCaches(device: VkDevice, dstCache: VkPipelineCache, srcCacheCount: UInt32, pSrcCaches: UnsafePointer<VkPipelineCache?>) -> VkResult {
        return vkMergePipelineCaches(device, dstCache, srcCacheCount, pSrcCaches)
    }
}

class IndirectCommandsLayoutNV {
    let handle: VkIndirectCommandsLayoutNV!
    let device: Device

    init(handle: VkIndirectCommandsLayoutNV!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func destroyIndirectCommandsLayoutNV(device: VkDevice, indirectCommandsLayout: VkIndirectCommandsLayoutNV, pAllocator: UnsafePointer<VkAllocationCallbacks>) -> Void {
        return vkDestroyIndirectCommandsLayoutNV(device, indirectCommandsLayout, pAllocator)
    }
}

class DescriptorUpdateTemplate {
    let handle: VkDescriptorUpdateTemplate!
    let device: Device

    init(handle: VkDescriptorUpdateTemplate!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func destroyDescriptorUpdateTemplate(device: VkDevice, descriptorUpdateTemplate: VkDescriptorUpdateTemplate, pAllocator: UnsafePointer<VkAllocationCallbacks>) -> Void {
        return vkDestroyDescriptorUpdateTemplate(device, descriptorUpdateTemplate, pAllocator)
    }
}

class SamplerYcbcrConversion {
    let handle: VkSamplerYcbcrConversion!
    let device: Device

    init(handle: VkSamplerYcbcrConversion!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func destroySamplerYcbcrConversion(device: VkDevice, ycbcrConversion: VkSamplerYcbcrConversion, pAllocator: UnsafePointer<VkAllocationCallbacks>) -> Void {
        return vkDestroySamplerYcbcrConversion(device, ycbcrConversion, pAllocator)
    }
}

class ValidationCacheEXT {
    let handle: VkValidationCacheEXT!
    let device: Device

    init(handle: VkValidationCacheEXT!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func destroyValidationCacheEXT(device: VkDevice, validationCache: VkValidationCacheEXT, pAllocator: UnsafePointer<VkAllocationCallbacks>) -> Void {
        return vkDestroyValidationCacheEXT(device, validationCache, pAllocator)
    }

    func getValidationCacheDataEXT(device: VkDevice, validationCache: VkValidationCacheEXT, pDataSize: UnsafeMutablePointer<Int>, pData: UnsafeMutableRawPointer) -> VkResult {
        return vkGetValidationCacheDataEXT(device, validationCache, pDataSize, pData)
    }

    func mergeValidationCachesEXT(device: VkDevice, dstCache: VkValidationCacheEXT, srcCacheCount: UInt32, pSrcCaches: UnsafePointer<VkValidationCacheEXT?>) -> VkResult {
        return vkMergeValidationCachesEXT(device, dstCache, srcCacheCount, pSrcCaches)
    }
}

class PerformanceConfigurationINTEL {
    let handle: VkPerformanceConfigurationINTEL!
    let device: Device

    init(handle: VkPerformanceConfigurationINTEL!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func releasePerformanceConfigurationINTEL(device: VkDevice, configuration: VkPerformanceConfigurationINTEL) -> VkResult {
        return vkReleasePerformanceConfigurationINTEL(device, configuration)
    }
}

class DisplayKHR {
    let handle: VkDisplayKHR!
    let physicalDevice: PhysicalDevice

    init(handle: VkDisplayKHR!, physicalDevice: PhysicalDevice) {
        self.handle = handle
        self.physicalDevice = physicalDevice
    }

    func getDisplayModePropertiesKHR(physicalDevice: VkPhysicalDevice, display: VkDisplayKHR, pPropertyCount: UnsafeMutablePointer<UInt32>, pProperties: UnsafeMutablePointer<VkDisplayModePropertiesKHR>) -> VkResult {
        return vkGetDisplayModePropertiesKHR(physicalDevice, display, pPropertyCount, pProperties)
    }

    func createDisplayModeKHR(physicalDevice: VkPhysicalDevice, display: VkDisplayKHR, pCreateInfo: UnsafePointer<VkDisplayModeCreateInfoKHR>, pAllocator: UnsafePointer<VkAllocationCallbacks>, pMode: UnsafeMutablePointer<VkDisplayModeKHR?>) -> VkResult {
        return vkCreateDisplayModeKHR(physicalDevice, display, pCreateInfo, pAllocator, pMode)
    }

    func releaseDisplayEXT(physicalDevice: VkPhysicalDevice, display: VkDisplayKHR) -> VkResult {
        return vkReleaseDisplayEXT(physicalDevice, display)
    }

    func getDisplayModeProperties2KHR(physicalDevice: VkPhysicalDevice, display: VkDisplayKHR, pPropertyCount: UnsafeMutablePointer<UInt32>, pProperties: UnsafeMutablePointer<VkDisplayModeProperties2KHR>) -> VkResult {
        return vkGetDisplayModeProperties2KHR(physicalDevice, display, pPropertyCount, pProperties)
    }
}

class DisplayModeKHR {
    let handle: VkDisplayModeKHR!
    let display: DisplayKHR

    init(handle: VkDisplayModeKHR!, display: DisplayKHR) {
        self.handle = handle
        self.display = display
    }

    func getDisplayPlaneCapabilitiesKHR(physicalDevice: VkPhysicalDevice, mode: VkDisplayModeKHR, planeIndex: UInt32, pCapabilities: UnsafeMutablePointer<VkDisplayPlaneCapabilitiesKHR>) -> VkResult {
        return vkGetDisplayPlaneCapabilitiesKHR(physicalDevice, mode, planeIndex, pCapabilities)
    }
}

class SurfaceKHR {
    let handle: VkSurfaceKHR!
    let instance: Instance

    init(handle: VkSurfaceKHR!, instance: Instance) {
        self.handle = handle
        self.instance = instance
    }

    func destroySurfaceKHR(instance: VkInstance, surface: VkSurfaceKHR, pAllocator: UnsafePointer<VkAllocationCallbacks>) -> Void {
        return vkDestroySurfaceKHR(instance, surface, pAllocator)
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

    func destroyDebugReportCallbackEXT(instance: VkInstance, callback: VkDebugReportCallbackEXT, pAllocator: UnsafePointer<VkAllocationCallbacks>) -> Void {
        return vkDestroyDebugReportCallbackEXT(instance, callback, pAllocator)
    }
}

class DebugUtilsMessengerEXT {
    let handle: VkDebugUtilsMessengerEXT!
    let instance: Instance

    init(handle: VkDebugUtilsMessengerEXT!, instance: Instance) {
        self.handle = handle
        self.instance = instance
    }

    func destroyDebugUtilsMessengerEXT(instance: VkInstance, messenger: VkDebugUtilsMessengerEXT, pAllocator: UnsafePointer<VkAllocationCallbacks>) -> Void {
        return vkDestroyDebugUtilsMessengerEXT(instance, messenger, pAllocator)
    }
}

