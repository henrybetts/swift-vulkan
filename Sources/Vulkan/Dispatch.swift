import CVulkan

struct EntryDispatchTable {
    let vkCreateInstance: PFN_vkCreateInstance!
    let vkEnumerateInstanceVersion: PFN_vkEnumerateInstanceVersion!
    let vkEnumerateInstanceLayerProperties: PFN_vkEnumerateInstanceLayerProperties!
    let vkEnumerateInstanceExtensionProperties: PFN_vkEnumerateInstanceExtensionProperties!

    init(vkGetInstanceProcAddr: PFN_vkGetInstanceProcAddr) {
        self.vkCreateInstance = unsafeBitCast(vkGetInstanceProcAddr(nil, "vkCreateInstance"), to: PFN_vkCreateInstance?.self)
        self.vkEnumerateInstanceVersion = unsafeBitCast(vkGetInstanceProcAddr(nil, "vkEnumerateInstanceVersion"), to: PFN_vkEnumerateInstanceVersion?.self)
        self.vkEnumerateInstanceLayerProperties = unsafeBitCast(vkGetInstanceProcAddr(nil, "vkEnumerateInstanceLayerProperties"), to: PFN_vkEnumerateInstanceLayerProperties?.self)
        self.vkEnumerateInstanceExtensionProperties = unsafeBitCast(vkGetInstanceProcAddr(nil, "vkEnumerateInstanceExtensionProperties"), to: PFN_vkEnumerateInstanceExtensionProperties?.self)
    }
}

struct InstanceDispatchTable {
    let vkDestroyInstance: PFN_vkDestroyInstance!
    let vkEnumeratePhysicalDevices: PFN_vkEnumeratePhysicalDevices!
    let vkGetDeviceProcAddr: PFN_vkGetDeviceProcAddr!
    let vkGetPhysicalDeviceProperties: PFN_vkGetPhysicalDeviceProperties!
    let vkGetPhysicalDeviceQueueFamilyProperties: PFN_vkGetPhysicalDeviceQueueFamilyProperties!
    let vkGetPhysicalDeviceMemoryProperties: PFN_vkGetPhysicalDeviceMemoryProperties!
    let vkGetPhysicalDeviceFeatures: PFN_vkGetPhysicalDeviceFeatures!
    let vkGetPhysicalDeviceFormatProperties: PFN_vkGetPhysicalDeviceFormatProperties!
    let vkGetPhysicalDeviceImageFormatProperties: PFN_vkGetPhysicalDeviceImageFormatProperties!
    let vkCreateDevice: PFN_vkCreateDevice!
    let vkEnumerateDeviceLayerProperties: PFN_vkEnumerateDeviceLayerProperties!
    let vkEnumerateDeviceExtensionProperties: PFN_vkEnumerateDeviceExtensionProperties!
    let vkGetPhysicalDeviceSparseImageFormatProperties: PFN_vkGetPhysicalDeviceSparseImageFormatProperties!
    let vkGetPhysicalDeviceDisplayPropertiesKHR: PFN_vkGetPhysicalDeviceDisplayPropertiesKHR!
    let vkGetPhysicalDeviceDisplayPlanePropertiesKHR: PFN_vkGetPhysicalDeviceDisplayPlanePropertiesKHR!
    let vkGetDisplayPlaneSupportedDisplaysKHR: PFN_vkGetDisplayPlaneSupportedDisplaysKHR!
    let vkGetDisplayModePropertiesKHR: PFN_vkGetDisplayModePropertiesKHR!
    let vkCreateDisplayModeKHR: PFN_vkCreateDisplayModeKHR!
    let vkGetDisplayPlaneCapabilitiesKHR: PFN_vkGetDisplayPlaneCapabilitiesKHR!
    let vkCreateDisplayPlaneSurfaceKHR: PFN_vkCreateDisplayPlaneSurfaceKHR!
    let vkDestroySurfaceKHR: PFN_vkDestroySurfaceKHR!
    let vkGetPhysicalDeviceSurfaceSupportKHR: PFN_vkGetPhysicalDeviceSurfaceSupportKHR!
    let vkGetPhysicalDeviceSurfaceCapabilitiesKHR: PFN_vkGetPhysicalDeviceSurfaceCapabilitiesKHR!
    let vkGetPhysicalDeviceSurfaceFormatsKHR: PFN_vkGetPhysicalDeviceSurfaceFormatsKHR!
    let vkGetPhysicalDeviceSurfacePresentModesKHR: PFN_vkGetPhysicalDeviceSurfacePresentModesKHR!
    let vkCreateDebugReportCallbackEXT: PFN_vkCreateDebugReportCallbackEXT!
    let vkDestroyDebugReportCallbackEXT: PFN_vkDestroyDebugReportCallbackEXT!
    let vkDebugReportMessageEXT: PFN_vkDebugReportMessageEXT!
    let vkGetPhysicalDeviceExternalImageFormatPropertiesNV: PFN_vkGetPhysicalDeviceExternalImageFormatPropertiesNV!
    let vkGetPhysicalDeviceFeatures2: PFN_vkGetPhysicalDeviceFeatures2!
    let vkGetPhysicalDeviceProperties2: PFN_vkGetPhysicalDeviceProperties2!
    let vkGetPhysicalDeviceFormatProperties2: PFN_vkGetPhysicalDeviceFormatProperties2!
    let vkGetPhysicalDeviceImageFormatProperties2: PFN_vkGetPhysicalDeviceImageFormatProperties2!
    let vkGetPhysicalDeviceQueueFamilyProperties2: PFN_vkGetPhysicalDeviceQueueFamilyProperties2!
    let vkGetPhysicalDeviceMemoryProperties2: PFN_vkGetPhysicalDeviceMemoryProperties2!
    let vkGetPhysicalDeviceSparseImageFormatProperties2: PFN_vkGetPhysicalDeviceSparseImageFormatProperties2!
    let vkGetPhysicalDeviceExternalBufferProperties: PFN_vkGetPhysicalDeviceExternalBufferProperties!
    let vkGetPhysicalDeviceExternalSemaphoreProperties: PFN_vkGetPhysicalDeviceExternalSemaphoreProperties!
    let vkGetPhysicalDeviceExternalFenceProperties: PFN_vkGetPhysicalDeviceExternalFenceProperties!
    let vkReleaseDisplayEXT: PFN_vkReleaseDisplayEXT!
    let vkGetPhysicalDeviceSurfaceCapabilities2EXT: PFN_vkGetPhysicalDeviceSurfaceCapabilities2EXT!
    let vkEnumeratePhysicalDeviceGroups: PFN_vkEnumeratePhysicalDeviceGroups!
    let vkGetPhysicalDevicePresentRectanglesKHR: PFN_vkGetPhysicalDevicePresentRectanglesKHR!
    let vkGetPhysicalDeviceMultisamplePropertiesEXT: PFN_vkGetPhysicalDeviceMultisamplePropertiesEXT!
    let vkGetPhysicalDeviceSurfaceCapabilities2KHR: PFN_vkGetPhysicalDeviceSurfaceCapabilities2KHR!
    let vkGetPhysicalDeviceSurfaceFormats2KHR: PFN_vkGetPhysicalDeviceSurfaceFormats2KHR!
    let vkGetPhysicalDeviceDisplayProperties2KHR: PFN_vkGetPhysicalDeviceDisplayProperties2KHR!
    let vkGetPhysicalDeviceDisplayPlaneProperties2KHR: PFN_vkGetPhysicalDeviceDisplayPlaneProperties2KHR!
    let vkGetDisplayModeProperties2KHR: PFN_vkGetDisplayModeProperties2KHR!
    let vkGetDisplayPlaneCapabilities2KHR: PFN_vkGetDisplayPlaneCapabilities2KHR!
    let vkGetPhysicalDeviceCalibrateableTimeDomainsEXT: PFN_vkGetPhysicalDeviceCalibrateableTimeDomainsEXT!
    let vkCreateDebugUtilsMessengerEXT: PFN_vkCreateDebugUtilsMessengerEXT!
    let vkDestroyDebugUtilsMessengerEXT: PFN_vkDestroyDebugUtilsMessengerEXT!
    let vkSubmitDebugUtilsMessageEXT: PFN_vkSubmitDebugUtilsMessageEXT!
    let vkGetPhysicalDeviceCooperativeMatrixPropertiesNV: PFN_vkGetPhysicalDeviceCooperativeMatrixPropertiesNV!
    let vkEnumeratePhysicalDeviceQueueFamilyPerformanceQueryCountersKHR: PFN_vkEnumeratePhysicalDeviceQueueFamilyPerformanceQueryCountersKHR!
    let vkGetPhysicalDeviceQueueFamilyPerformanceQueryPassesKHR: PFN_vkGetPhysicalDeviceQueueFamilyPerformanceQueryPassesKHR!
    let vkCreateHeadlessSurfaceEXT: PFN_vkCreateHeadlessSurfaceEXT!
    let vkGetPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNV: PFN_vkGetPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNV!
    let vkGetPhysicalDeviceToolPropertiesEXT: PFN_vkGetPhysicalDeviceToolPropertiesEXT!

    init(vkGetInstanceProcAddr: PFN_vkGetInstanceProcAddr, instance: VkInstance) {
        self.vkDestroyInstance = unsafeBitCast(vkGetInstanceProcAddr(instance, "vkDestroyInstance"), to: PFN_vkDestroyInstance?.self)
        self.vkEnumeratePhysicalDevices = unsafeBitCast(vkGetInstanceProcAddr(instance, "vkEnumeratePhysicalDevices"), to: PFN_vkEnumeratePhysicalDevices?.self)
        self.vkGetDeviceProcAddr = unsafeBitCast(vkGetInstanceProcAddr(instance, "vkGetDeviceProcAddr"), to: PFN_vkGetDeviceProcAddr?.self)
        self.vkGetPhysicalDeviceProperties = unsafeBitCast(vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceProperties"), to: PFN_vkGetPhysicalDeviceProperties?.self)
        self.vkGetPhysicalDeviceQueueFamilyProperties = unsafeBitCast(vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceQueueFamilyProperties"), to: PFN_vkGetPhysicalDeviceQueueFamilyProperties?.self)
        self.vkGetPhysicalDeviceMemoryProperties = unsafeBitCast(vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceMemoryProperties"), to: PFN_vkGetPhysicalDeviceMemoryProperties?.self)
        self.vkGetPhysicalDeviceFeatures = unsafeBitCast(vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceFeatures"), to: PFN_vkGetPhysicalDeviceFeatures?.self)
        self.vkGetPhysicalDeviceFormatProperties = unsafeBitCast(vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceFormatProperties"), to: PFN_vkGetPhysicalDeviceFormatProperties?.self)
        self.vkGetPhysicalDeviceImageFormatProperties = unsafeBitCast(vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceImageFormatProperties"), to: PFN_vkGetPhysicalDeviceImageFormatProperties?.self)
        self.vkCreateDevice = unsafeBitCast(vkGetInstanceProcAddr(instance, "vkCreateDevice"), to: PFN_vkCreateDevice?.self)
        self.vkEnumerateDeviceLayerProperties = unsafeBitCast(vkGetInstanceProcAddr(instance, "vkEnumerateDeviceLayerProperties"), to: PFN_vkEnumerateDeviceLayerProperties?.self)
        self.vkEnumerateDeviceExtensionProperties = unsafeBitCast(vkGetInstanceProcAddr(instance, "vkEnumerateDeviceExtensionProperties"), to: PFN_vkEnumerateDeviceExtensionProperties?.self)
        self.vkGetPhysicalDeviceSparseImageFormatProperties = unsafeBitCast(vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceSparseImageFormatProperties"), to: PFN_vkGetPhysicalDeviceSparseImageFormatProperties?.self)
        self.vkGetPhysicalDeviceDisplayPropertiesKHR = unsafeBitCast(vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceDisplayPropertiesKHR"), to: PFN_vkGetPhysicalDeviceDisplayPropertiesKHR?.self)
        self.vkGetPhysicalDeviceDisplayPlanePropertiesKHR = unsafeBitCast(vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceDisplayPlanePropertiesKHR"), to: PFN_vkGetPhysicalDeviceDisplayPlanePropertiesKHR?.self)
        self.vkGetDisplayPlaneSupportedDisplaysKHR = unsafeBitCast(vkGetInstanceProcAddr(instance, "vkGetDisplayPlaneSupportedDisplaysKHR"), to: PFN_vkGetDisplayPlaneSupportedDisplaysKHR?.self)
        self.vkGetDisplayModePropertiesKHR = unsafeBitCast(vkGetInstanceProcAddr(instance, "vkGetDisplayModePropertiesKHR"), to: PFN_vkGetDisplayModePropertiesKHR?.self)
        self.vkCreateDisplayModeKHR = unsafeBitCast(vkGetInstanceProcAddr(instance, "vkCreateDisplayModeKHR"), to: PFN_vkCreateDisplayModeKHR?.self)
        self.vkGetDisplayPlaneCapabilitiesKHR = unsafeBitCast(vkGetInstanceProcAddr(instance, "vkGetDisplayPlaneCapabilitiesKHR"), to: PFN_vkGetDisplayPlaneCapabilitiesKHR?.self)
        self.vkCreateDisplayPlaneSurfaceKHR = unsafeBitCast(vkGetInstanceProcAddr(instance, "vkCreateDisplayPlaneSurfaceKHR"), to: PFN_vkCreateDisplayPlaneSurfaceKHR?.self)
        self.vkDestroySurfaceKHR = unsafeBitCast(vkGetInstanceProcAddr(instance, "vkDestroySurfaceKHR"), to: PFN_vkDestroySurfaceKHR?.self)
        self.vkGetPhysicalDeviceSurfaceSupportKHR = unsafeBitCast(vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceSurfaceSupportKHR"), to: PFN_vkGetPhysicalDeviceSurfaceSupportKHR?.self)
        self.vkGetPhysicalDeviceSurfaceCapabilitiesKHR = unsafeBitCast(vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceSurfaceCapabilitiesKHR"), to: PFN_vkGetPhysicalDeviceSurfaceCapabilitiesKHR?.self)
        self.vkGetPhysicalDeviceSurfaceFormatsKHR = unsafeBitCast(vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceSurfaceFormatsKHR"), to: PFN_vkGetPhysicalDeviceSurfaceFormatsKHR?.self)
        self.vkGetPhysicalDeviceSurfacePresentModesKHR = unsafeBitCast(vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceSurfacePresentModesKHR"), to: PFN_vkGetPhysicalDeviceSurfacePresentModesKHR?.self)
        self.vkCreateDebugReportCallbackEXT = unsafeBitCast(vkGetInstanceProcAddr(instance, "vkCreateDebugReportCallbackEXT"), to: PFN_vkCreateDebugReportCallbackEXT?.self)
        self.vkDestroyDebugReportCallbackEXT = unsafeBitCast(vkGetInstanceProcAddr(instance, "vkDestroyDebugReportCallbackEXT"), to: PFN_vkDestroyDebugReportCallbackEXT?.self)
        self.vkDebugReportMessageEXT = unsafeBitCast(vkGetInstanceProcAddr(instance, "vkDebugReportMessageEXT"), to: PFN_vkDebugReportMessageEXT?.self)
        self.vkGetPhysicalDeviceExternalImageFormatPropertiesNV = unsafeBitCast(vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceExternalImageFormatPropertiesNV"), to: PFN_vkGetPhysicalDeviceExternalImageFormatPropertiesNV?.self)
        self.vkGetPhysicalDeviceFeatures2 = unsafeBitCast(vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceFeatures2"), to: PFN_vkGetPhysicalDeviceFeatures2?.self)
        self.vkGetPhysicalDeviceProperties2 = unsafeBitCast(vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceProperties2"), to: PFN_vkGetPhysicalDeviceProperties2?.self)
        self.vkGetPhysicalDeviceFormatProperties2 = unsafeBitCast(vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceFormatProperties2"), to: PFN_vkGetPhysicalDeviceFormatProperties2?.self)
        self.vkGetPhysicalDeviceImageFormatProperties2 = unsafeBitCast(vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceImageFormatProperties2"), to: PFN_vkGetPhysicalDeviceImageFormatProperties2?.self)
        self.vkGetPhysicalDeviceQueueFamilyProperties2 = unsafeBitCast(vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceQueueFamilyProperties2"), to: PFN_vkGetPhysicalDeviceQueueFamilyProperties2?.self)
        self.vkGetPhysicalDeviceMemoryProperties2 = unsafeBitCast(vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceMemoryProperties2"), to: PFN_vkGetPhysicalDeviceMemoryProperties2?.self)
        self.vkGetPhysicalDeviceSparseImageFormatProperties2 = unsafeBitCast(vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceSparseImageFormatProperties2"), to: PFN_vkGetPhysicalDeviceSparseImageFormatProperties2?.self)
        self.vkGetPhysicalDeviceExternalBufferProperties = unsafeBitCast(vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceExternalBufferProperties"), to: PFN_vkGetPhysicalDeviceExternalBufferProperties?.self)
        self.vkGetPhysicalDeviceExternalSemaphoreProperties = unsafeBitCast(vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceExternalSemaphoreProperties"), to: PFN_vkGetPhysicalDeviceExternalSemaphoreProperties?.self)
        self.vkGetPhysicalDeviceExternalFenceProperties = unsafeBitCast(vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceExternalFenceProperties"), to: PFN_vkGetPhysicalDeviceExternalFenceProperties?.self)
        self.vkReleaseDisplayEXT = unsafeBitCast(vkGetInstanceProcAddr(instance, "vkReleaseDisplayEXT"), to: PFN_vkReleaseDisplayEXT?.self)
        self.vkGetPhysicalDeviceSurfaceCapabilities2EXT = unsafeBitCast(vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceSurfaceCapabilities2EXT"), to: PFN_vkGetPhysicalDeviceSurfaceCapabilities2EXT?.self)
        self.vkEnumeratePhysicalDeviceGroups = unsafeBitCast(vkGetInstanceProcAddr(instance, "vkEnumeratePhysicalDeviceGroups"), to: PFN_vkEnumeratePhysicalDeviceGroups?.self)
        self.vkGetPhysicalDevicePresentRectanglesKHR = unsafeBitCast(vkGetInstanceProcAddr(instance, "vkGetPhysicalDevicePresentRectanglesKHR"), to: PFN_vkGetPhysicalDevicePresentRectanglesKHR?.self)
        self.vkGetPhysicalDeviceMultisamplePropertiesEXT = unsafeBitCast(vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceMultisamplePropertiesEXT"), to: PFN_vkGetPhysicalDeviceMultisamplePropertiesEXT?.self)
        self.vkGetPhysicalDeviceSurfaceCapabilities2KHR = unsafeBitCast(vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceSurfaceCapabilities2KHR"), to: PFN_vkGetPhysicalDeviceSurfaceCapabilities2KHR?.self)
        self.vkGetPhysicalDeviceSurfaceFormats2KHR = unsafeBitCast(vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceSurfaceFormats2KHR"), to: PFN_vkGetPhysicalDeviceSurfaceFormats2KHR?.self)
        self.vkGetPhysicalDeviceDisplayProperties2KHR = unsafeBitCast(vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceDisplayProperties2KHR"), to: PFN_vkGetPhysicalDeviceDisplayProperties2KHR?.self)
        self.vkGetPhysicalDeviceDisplayPlaneProperties2KHR = unsafeBitCast(vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceDisplayPlaneProperties2KHR"), to: PFN_vkGetPhysicalDeviceDisplayPlaneProperties2KHR?.self)
        self.vkGetDisplayModeProperties2KHR = unsafeBitCast(vkGetInstanceProcAddr(instance, "vkGetDisplayModeProperties2KHR"), to: PFN_vkGetDisplayModeProperties2KHR?.self)
        self.vkGetDisplayPlaneCapabilities2KHR = unsafeBitCast(vkGetInstanceProcAddr(instance, "vkGetDisplayPlaneCapabilities2KHR"), to: PFN_vkGetDisplayPlaneCapabilities2KHR?.self)
        self.vkGetPhysicalDeviceCalibrateableTimeDomainsEXT = unsafeBitCast(vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceCalibrateableTimeDomainsEXT"), to: PFN_vkGetPhysicalDeviceCalibrateableTimeDomainsEXT?.self)
        self.vkCreateDebugUtilsMessengerEXT = unsafeBitCast(vkGetInstanceProcAddr(instance, "vkCreateDebugUtilsMessengerEXT"), to: PFN_vkCreateDebugUtilsMessengerEXT?.self)
        self.vkDestroyDebugUtilsMessengerEXT = unsafeBitCast(vkGetInstanceProcAddr(instance, "vkDestroyDebugUtilsMessengerEXT"), to: PFN_vkDestroyDebugUtilsMessengerEXT?.self)
        self.vkSubmitDebugUtilsMessageEXT = unsafeBitCast(vkGetInstanceProcAddr(instance, "vkSubmitDebugUtilsMessageEXT"), to: PFN_vkSubmitDebugUtilsMessageEXT?.self)
        self.vkGetPhysicalDeviceCooperativeMatrixPropertiesNV = unsafeBitCast(vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceCooperativeMatrixPropertiesNV"), to: PFN_vkGetPhysicalDeviceCooperativeMatrixPropertiesNV?.self)
        self.vkEnumeratePhysicalDeviceQueueFamilyPerformanceQueryCountersKHR = unsafeBitCast(vkGetInstanceProcAddr(instance, "vkEnumeratePhysicalDeviceQueueFamilyPerformanceQueryCountersKHR"), to: PFN_vkEnumeratePhysicalDeviceQueueFamilyPerformanceQueryCountersKHR?.self)
        self.vkGetPhysicalDeviceQueueFamilyPerformanceQueryPassesKHR = unsafeBitCast(vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceQueueFamilyPerformanceQueryPassesKHR"), to: PFN_vkGetPhysicalDeviceQueueFamilyPerformanceQueryPassesKHR?.self)
        self.vkCreateHeadlessSurfaceEXT = unsafeBitCast(vkGetInstanceProcAddr(instance, "vkCreateHeadlessSurfaceEXT"), to: PFN_vkCreateHeadlessSurfaceEXT?.self)
        self.vkGetPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNV = unsafeBitCast(vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNV"), to: PFN_vkGetPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNV?.self)
        self.vkGetPhysicalDeviceToolPropertiesEXT = unsafeBitCast(vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceToolPropertiesEXT"), to: PFN_vkGetPhysicalDeviceToolPropertiesEXT?.self)
    }
}

struct DeviceDispatchTable {
    let vkDestroyDevice: PFN_vkDestroyDevice!
    let vkGetDeviceQueue: PFN_vkGetDeviceQueue!
    let vkQueueSubmit: PFN_vkQueueSubmit!
    let vkQueueWaitIdle: PFN_vkQueueWaitIdle!
    let vkDeviceWaitIdle: PFN_vkDeviceWaitIdle!
    let vkAllocateMemory: PFN_vkAllocateMemory!
    let vkFreeMemory: PFN_vkFreeMemory!
    let vkMapMemory: PFN_vkMapMemory!
    let vkUnmapMemory: PFN_vkUnmapMemory!
    let vkFlushMappedMemoryRanges: PFN_vkFlushMappedMemoryRanges!
    let vkInvalidateMappedMemoryRanges: PFN_vkInvalidateMappedMemoryRanges!
    let vkGetDeviceMemoryCommitment: PFN_vkGetDeviceMemoryCommitment!
    let vkGetBufferMemoryRequirements: PFN_vkGetBufferMemoryRequirements!
    let vkBindBufferMemory: PFN_vkBindBufferMemory!
    let vkGetImageMemoryRequirements: PFN_vkGetImageMemoryRequirements!
    let vkBindImageMemory: PFN_vkBindImageMemory!
    let vkGetImageSparseMemoryRequirements: PFN_vkGetImageSparseMemoryRequirements!
    let vkQueueBindSparse: PFN_vkQueueBindSparse!
    let vkCreateFence: PFN_vkCreateFence!
    let vkDestroyFence: PFN_vkDestroyFence!
    let vkResetFences: PFN_vkResetFences!
    let vkGetFenceStatus: PFN_vkGetFenceStatus!
    let vkWaitForFences: PFN_vkWaitForFences!
    let vkCreateSemaphore: PFN_vkCreateSemaphore!
    let vkDestroySemaphore: PFN_vkDestroySemaphore!
    let vkCreateEvent: PFN_vkCreateEvent!
    let vkDestroyEvent: PFN_vkDestroyEvent!
    let vkGetEventStatus: PFN_vkGetEventStatus!
    let vkSetEvent: PFN_vkSetEvent!
    let vkResetEvent: PFN_vkResetEvent!
    let vkCreateQueryPool: PFN_vkCreateQueryPool!
    let vkDestroyQueryPool: PFN_vkDestroyQueryPool!
    let vkGetQueryPoolResults: PFN_vkGetQueryPoolResults!
    let vkResetQueryPool: PFN_vkResetQueryPool!
    let vkCreateBuffer: PFN_vkCreateBuffer!
    let vkDestroyBuffer: PFN_vkDestroyBuffer!
    let vkCreateBufferView: PFN_vkCreateBufferView!
    let vkDestroyBufferView: PFN_vkDestroyBufferView!
    let vkCreateImage: PFN_vkCreateImage!
    let vkDestroyImage: PFN_vkDestroyImage!
    let vkGetImageSubresourceLayout: PFN_vkGetImageSubresourceLayout!
    let vkCreateImageView: PFN_vkCreateImageView!
    let vkDestroyImageView: PFN_vkDestroyImageView!
    let vkCreateShaderModule: PFN_vkCreateShaderModule!
    let vkDestroyShaderModule: PFN_vkDestroyShaderModule!
    let vkCreatePipelineCache: PFN_vkCreatePipelineCache!
    let vkDestroyPipelineCache: PFN_vkDestroyPipelineCache!
    let vkGetPipelineCacheData: PFN_vkGetPipelineCacheData!
    let vkMergePipelineCaches: PFN_vkMergePipelineCaches!
    let vkCreateGraphicsPipelines: PFN_vkCreateGraphicsPipelines!
    let vkCreateComputePipelines: PFN_vkCreateComputePipelines!
    let vkDestroyPipeline: PFN_vkDestroyPipeline!
    let vkCreatePipelineLayout: PFN_vkCreatePipelineLayout!
    let vkDestroyPipelineLayout: PFN_vkDestroyPipelineLayout!
    let vkCreateSampler: PFN_vkCreateSampler!
    let vkDestroySampler: PFN_vkDestroySampler!
    let vkCreateDescriptorSetLayout: PFN_vkCreateDescriptorSetLayout!
    let vkDestroyDescriptorSetLayout: PFN_vkDestroyDescriptorSetLayout!
    let vkCreateDescriptorPool: PFN_vkCreateDescriptorPool!
    let vkDestroyDescriptorPool: PFN_vkDestroyDescriptorPool!
    let vkResetDescriptorPool: PFN_vkResetDescriptorPool!
    let vkAllocateDescriptorSets: PFN_vkAllocateDescriptorSets!
    let vkFreeDescriptorSets: PFN_vkFreeDescriptorSets!
    let vkUpdateDescriptorSets: PFN_vkUpdateDescriptorSets!
    let vkCreateFramebuffer: PFN_vkCreateFramebuffer!
    let vkDestroyFramebuffer: PFN_vkDestroyFramebuffer!
    let vkCreateRenderPass: PFN_vkCreateRenderPass!
    let vkDestroyRenderPass: PFN_vkDestroyRenderPass!
    let vkGetRenderAreaGranularity: PFN_vkGetRenderAreaGranularity!
    let vkCreateCommandPool: PFN_vkCreateCommandPool!
    let vkDestroyCommandPool: PFN_vkDestroyCommandPool!
    let vkResetCommandPool: PFN_vkResetCommandPool!
    let vkAllocateCommandBuffers: PFN_vkAllocateCommandBuffers!
    let vkFreeCommandBuffers: PFN_vkFreeCommandBuffers!
    let vkBeginCommandBuffer: PFN_vkBeginCommandBuffer!
    let vkEndCommandBuffer: PFN_vkEndCommandBuffer!
    let vkResetCommandBuffer: PFN_vkResetCommandBuffer!
    let vkCmdBindPipeline: PFN_vkCmdBindPipeline!
    let vkCmdSetViewport: PFN_vkCmdSetViewport!
    let vkCmdSetScissor: PFN_vkCmdSetScissor!
    let vkCmdSetLineWidth: PFN_vkCmdSetLineWidth!
    let vkCmdSetDepthBias: PFN_vkCmdSetDepthBias!
    let vkCmdSetBlendConstants: PFN_vkCmdSetBlendConstants!
    let vkCmdSetDepthBounds: PFN_vkCmdSetDepthBounds!
    let vkCmdSetStencilCompareMask: PFN_vkCmdSetStencilCompareMask!
    let vkCmdSetStencilWriteMask: PFN_vkCmdSetStencilWriteMask!
    let vkCmdSetStencilReference: PFN_vkCmdSetStencilReference!
    let vkCmdBindDescriptorSets: PFN_vkCmdBindDescriptorSets!
    let vkCmdBindIndexBuffer: PFN_vkCmdBindIndexBuffer!
    let vkCmdBindVertexBuffers: PFN_vkCmdBindVertexBuffers!
    let vkCmdDraw: PFN_vkCmdDraw!
    let vkCmdDrawIndexed: PFN_vkCmdDrawIndexed!
    let vkCmdDrawIndirect: PFN_vkCmdDrawIndirect!
    let vkCmdDrawIndexedIndirect: PFN_vkCmdDrawIndexedIndirect!
    let vkCmdDispatch: PFN_vkCmdDispatch!
    let vkCmdDispatchIndirect: PFN_vkCmdDispatchIndirect!
    let vkCmdCopyBuffer: PFN_vkCmdCopyBuffer!
    let vkCmdCopyImage: PFN_vkCmdCopyImage!
    let vkCmdBlitImage: PFN_vkCmdBlitImage!
    let vkCmdCopyBufferToImage: PFN_vkCmdCopyBufferToImage!
    let vkCmdCopyImageToBuffer: PFN_vkCmdCopyImageToBuffer!
    let vkCmdUpdateBuffer: PFN_vkCmdUpdateBuffer!
    let vkCmdFillBuffer: PFN_vkCmdFillBuffer!
    let vkCmdClearColorImage: PFN_vkCmdClearColorImage!
    let vkCmdClearDepthStencilImage: PFN_vkCmdClearDepthStencilImage!
    let vkCmdClearAttachments: PFN_vkCmdClearAttachments!
    let vkCmdResolveImage: PFN_vkCmdResolveImage!
    let vkCmdSetEvent: PFN_vkCmdSetEvent!
    let vkCmdResetEvent: PFN_vkCmdResetEvent!
    let vkCmdWaitEvents: PFN_vkCmdWaitEvents!
    let vkCmdPipelineBarrier: PFN_vkCmdPipelineBarrier!
    let vkCmdBeginQuery: PFN_vkCmdBeginQuery!
    let vkCmdEndQuery: PFN_vkCmdEndQuery!
    let vkCmdBeginConditionalRenderingEXT: PFN_vkCmdBeginConditionalRenderingEXT!
    let vkCmdEndConditionalRenderingEXT: PFN_vkCmdEndConditionalRenderingEXT!
    let vkCmdResetQueryPool: PFN_vkCmdResetQueryPool!
    let vkCmdWriteTimestamp: PFN_vkCmdWriteTimestamp!
    let vkCmdCopyQueryPoolResults: PFN_vkCmdCopyQueryPoolResults!
    let vkCmdPushConstants: PFN_vkCmdPushConstants!
    let vkCmdBeginRenderPass: PFN_vkCmdBeginRenderPass!
    let vkCmdNextSubpass: PFN_vkCmdNextSubpass!
    let vkCmdEndRenderPass: PFN_vkCmdEndRenderPass!
    let vkCmdExecuteCommands: PFN_vkCmdExecuteCommands!
    let vkCreateSharedSwapchainsKHR: PFN_vkCreateSharedSwapchainsKHR!
    let vkCreateSwapchainKHR: PFN_vkCreateSwapchainKHR!
    let vkDestroySwapchainKHR: PFN_vkDestroySwapchainKHR!
    let vkGetSwapchainImagesKHR: PFN_vkGetSwapchainImagesKHR!
    let vkAcquireNextImageKHR: PFN_vkAcquireNextImageKHR!
    let vkQueuePresentKHR: PFN_vkQueuePresentKHR!
    let vkDebugMarkerSetObjectNameEXT: PFN_vkDebugMarkerSetObjectNameEXT!
    let vkDebugMarkerSetObjectTagEXT: PFN_vkDebugMarkerSetObjectTagEXT!
    let vkCmdDebugMarkerBeginEXT: PFN_vkCmdDebugMarkerBeginEXT!
    let vkCmdDebugMarkerEndEXT: PFN_vkCmdDebugMarkerEndEXT!
    let vkCmdDebugMarkerInsertEXT: PFN_vkCmdDebugMarkerInsertEXT!
    let vkCmdExecuteGeneratedCommandsNV: PFN_vkCmdExecuteGeneratedCommandsNV!
    let vkCmdPreprocessGeneratedCommandsNV: PFN_vkCmdPreprocessGeneratedCommandsNV!
    let vkCmdBindPipelineShaderGroupNV: PFN_vkCmdBindPipelineShaderGroupNV!
    let vkGetGeneratedCommandsMemoryRequirementsNV: PFN_vkGetGeneratedCommandsMemoryRequirementsNV!
    let vkCreateIndirectCommandsLayoutNV: PFN_vkCreateIndirectCommandsLayoutNV!
    let vkDestroyIndirectCommandsLayoutNV: PFN_vkDestroyIndirectCommandsLayoutNV!
    let vkCmdPushDescriptorSetKHR: PFN_vkCmdPushDescriptorSetKHR!
    let vkTrimCommandPool: PFN_vkTrimCommandPool!
    let vkGetMemoryFdKHR: PFN_vkGetMemoryFdKHR!
    let vkGetMemoryFdPropertiesKHR: PFN_vkGetMemoryFdPropertiesKHR!
    let vkGetSemaphoreFdKHR: PFN_vkGetSemaphoreFdKHR!
    let vkImportSemaphoreFdKHR: PFN_vkImportSemaphoreFdKHR!
    let vkGetFenceFdKHR: PFN_vkGetFenceFdKHR!
    let vkImportFenceFdKHR: PFN_vkImportFenceFdKHR!
    let vkDisplayPowerControlEXT: PFN_vkDisplayPowerControlEXT!
    let vkRegisterDeviceEventEXT: PFN_vkRegisterDeviceEventEXT!
    let vkRegisterDisplayEventEXT: PFN_vkRegisterDisplayEventEXT!
    let vkGetSwapchainCounterEXT: PFN_vkGetSwapchainCounterEXT!
    let vkGetDeviceGroupPeerMemoryFeatures: PFN_vkGetDeviceGroupPeerMemoryFeatures!
    let vkBindBufferMemory2: PFN_vkBindBufferMemory2!
    let vkBindImageMemory2: PFN_vkBindImageMemory2!
    let vkCmdSetDeviceMask: PFN_vkCmdSetDeviceMask!
    let vkGetDeviceGroupPresentCapabilitiesKHR: PFN_vkGetDeviceGroupPresentCapabilitiesKHR!
    let vkGetDeviceGroupSurfacePresentModesKHR: PFN_vkGetDeviceGroupSurfacePresentModesKHR!
    let vkAcquireNextImage2KHR: PFN_vkAcquireNextImage2KHR!
    let vkCmdDispatchBase: PFN_vkCmdDispatchBase!
    let vkCreateDescriptorUpdateTemplate: PFN_vkCreateDescriptorUpdateTemplate!
    let vkDestroyDescriptorUpdateTemplate: PFN_vkDestroyDescriptorUpdateTemplate!
    let vkUpdateDescriptorSetWithTemplate: PFN_vkUpdateDescriptorSetWithTemplate!
    let vkCmdPushDescriptorSetWithTemplateKHR: PFN_vkCmdPushDescriptorSetWithTemplateKHR!
    let vkSetHdrMetadataEXT: PFN_vkSetHdrMetadataEXT!
    let vkGetSwapchainStatusKHR: PFN_vkGetSwapchainStatusKHR!
    let vkGetRefreshCycleDurationGOOGLE: PFN_vkGetRefreshCycleDurationGOOGLE!
    let vkGetPastPresentationTimingGOOGLE: PFN_vkGetPastPresentationTimingGOOGLE!
    let vkCmdSetViewportWScalingNV: PFN_vkCmdSetViewportWScalingNV!
    let vkCmdSetDiscardRectangleEXT: PFN_vkCmdSetDiscardRectangleEXT!
    let vkCmdSetSampleLocationsEXT: PFN_vkCmdSetSampleLocationsEXT!
    let vkGetBufferMemoryRequirements2: PFN_vkGetBufferMemoryRequirements2!
    let vkGetImageMemoryRequirements2: PFN_vkGetImageMemoryRequirements2!
    let vkGetImageSparseMemoryRequirements2: PFN_vkGetImageSparseMemoryRequirements2!
    let vkCreateSamplerYcbcrConversion: PFN_vkCreateSamplerYcbcrConversion!
    let vkDestroySamplerYcbcrConversion: PFN_vkDestroySamplerYcbcrConversion!
    let vkGetDeviceQueue2: PFN_vkGetDeviceQueue2!
    let vkCreateValidationCacheEXT: PFN_vkCreateValidationCacheEXT!
    let vkDestroyValidationCacheEXT: PFN_vkDestroyValidationCacheEXT!
    let vkGetValidationCacheDataEXT: PFN_vkGetValidationCacheDataEXT!
    let vkMergeValidationCachesEXT: PFN_vkMergeValidationCachesEXT!
    let vkGetDescriptorSetLayoutSupport: PFN_vkGetDescriptorSetLayoutSupport!
    let vkGetShaderInfoAMD: PFN_vkGetShaderInfoAMD!
    let vkSetLocalDimmingAMD: PFN_vkSetLocalDimmingAMD!
    let vkGetCalibratedTimestampsEXT: PFN_vkGetCalibratedTimestampsEXT!
    let vkSetDebugUtilsObjectNameEXT: PFN_vkSetDebugUtilsObjectNameEXT!
    let vkSetDebugUtilsObjectTagEXT: PFN_vkSetDebugUtilsObjectTagEXT!
    let vkQueueBeginDebugUtilsLabelEXT: PFN_vkQueueBeginDebugUtilsLabelEXT!
    let vkQueueEndDebugUtilsLabelEXT: PFN_vkQueueEndDebugUtilsLabelEXT!
    let vkQueueInsertDebugUtilsLabelEXT: PFN_vkQueueInsertDebugUtilsLabelEXT!
    let vkCmdBeginDebugUtilsLabelEXT: PFN_vkCmdBeginDebugUtilsLabelEXT!
    let vkCmdEndDebugUtilsLabelEXT: PFN_vkCmdEndDebugUtilsLabelEXT!
    let vkCmdInsertDebugUtilsLabelEXT: PFN_vkCmdInsertDebugUtilsLabelEXT!
    let vkGetMemoryHostPointerPropertiesEXT: PFN_vkGetMemoryHostPointerPropertiesEXT!
    let vkCmdWriteBufferMarkerAMD: PFN_vkCmdWriteBufferMarkerAMD!
    let vkCreateRenderPass2: PFN_vkCreateRenderPass2!
    let vkCmdBeginRenderPass2: PFN_vkCmdBeginRenderPass2!
    let vkCmdNextSubpass2: PFN_vkCmdNextSubpass2!
    let vkCmdEndRenderPass2: PFN_vkCmdEndRenderPass2!
    let vkGetSemaphoreCounterValue: PFN_vkGetSemaphoreCounterValue!
    let vkWaitSemaphores: PFN_vkWaitSemaphores!
    let vkSignalSemaphore: PFN_vkSignalSemaphore!
    let vkCmdDrawIndirectCount: PFN_vkCmdDrawIndirectCount!
    let vkCmdDrawIndexedIndirectCount: PFN_vkCmdDrawIndexedIndirectCount!
    let vkCmdSetCheckpointNV: PFN_vkCmdSetCheckpointNV!
    let vkGetQueueCheckpointDataNV: PFN_vkGetQueueCheckpointDataNV!
    let vkCmdBindTransformFeedbackBuffersEXT: PFN_vkCmdBindTransformFeedbackBuffersEXT!
    let vkCmdBeginTransformFeedbackEXT: PFN_vkCmdBeginTransformFeedbackEXT!
    let vkCmdEndTransformFeedbackEXT: PFN_vkCmdEndTransformFeedbackEXT!
    let vkCmdBeginQueryIndexedEXT: PFN_vkCmdBeginQueryIndexedEXT!
    let vkCmdEndQueryIndexedEXT: PFN_vkCmdEndQueryIndexedEXT!
    let vkCmdDrawIndirectByteCountEXT: PFN_vkCmdDrawIndirectByteCountEXT!
    let vkCmdSetExclusiveScissorNV: PFN_vkCmdSetExclusiveScissorNV!
    let vkCmdBindShadingRateImageNV: PFN_vkCmdBindShadingRateImageNV!
    let vkCmdSetViewportShadingRatePaletteNV: PFN_vkCmdSetViewportShadingRatePaletteNV!
    let vkCmdSetCoarseSampleOrderNV: PFN_vkCmdSetCoarseSampleOrderNV!
    let vkCmdDrawMeshTasksNV: PFN_vkCmdDrawMeshTasksNV!
    let vkCmdDrawMeshTasksIndirectNV: PFN_vkCmdDrawMeshTasksIndirectNV!
    let vkCmdDrawMeshTasksIndirectCountNV: PFN_vkCmdDrawMeshTasksIndirectCountNV!
    let vkCompileDeferredNV: PFN_vkCompileDeferredNV!
    let vkCreateAccelerationStructureNV: PFN_vkCreateAccelerationStructureNV!
    let vkGetAccelerationStructureMemoryRequirementsNV: PFN_vkGetAccelerationStructureMemoryRequirementsNV!
    let vkCmdCopyAccelerationStructureNV: PFN_vkCmdCopyAccelerationStructureNV!
    let vkCmdBuildAccelerationStructureNV: PFN_vkCmdBuildAccelerationStructureNV!
    let vkCmdTraceRaysNV: PFN_vkCmdTraceRaysNV!
    let vkGetAccelerationStructureHandleNV: PFN_vkGetAccelerationStructureHandleNV!
    let vkCreateRayTracingPipelinesNV: PFN_vkCreateRayTracingPipelinesNV!
    let vkGetImageViewHandleNVX: PFN_vkGetImageViewHandleNVX!
    let vkAcquireProfilingLockKHR: PFN_vkAcquireProfilingLockKHR!
    let vkReleaseProfilingLockKHR: PFN_vkReleaseProfilingLockKHR!
    let vkGetImageDrmFormatModifierPropertiesEXT: PFN_vkGetImageDrmFormatModifierPropertiesEXT!
    let vkGetBufferOpaqueCaptureAddress: PFN_vkGetBufferOpaqueCaptureAddress!
    let vkGetBufferDeviceAddress: PFN_vkGetBufferDeviceAddress!
    let vkInitializePerformanceApiINTEL: PFN_vkInitializePerformanceApiINTEL!
    let vkUninitializePerformanceApiINTEL: PFN_vkUninitializePerformanceApiINTEL!
    let vkCmdSetPerformanceMarkerINTEL: PFN_vkCmdSetPerformanceMarkerINTEL!
    let vkCmdSetPerformanceStreamMarkerINTEL: PFN_vkCmdSetPerformanceStreamMarkerINTEL!
    let vkCmdSetPerformanceOverrideINTEL: PFN_vkCmdSetPerformanceOverrideINTEL!
    let vkAcquirePerformanceConfigurationINTEL: PFN_vkAcquirePerformanceConfigurationINTEL!
    let vkReleasePerformanceConfigurationINTEL: PFN_vkReleasePerformanceConfigurationINTEL!
    let vkQueueSetPerformanceConfigurationINTEL: PFN_vkQueueSetPerformanceConfigurationINTEL!
    let vkGetPerformanceParameterINTEL: PFN_vkGetPerformanceParameterINTEL!
    let vkGetDeviceMemoryOpaqueCaptureAddress: PFN_vkGetDeviceMemoryOpaqueCaptureAddress!
    let vkGetPipelineExecutablePropertiesKHR: PFN_vkGetPipelineExecutablePropertiesKHR!
    let vkGetPipelineExecutableStatisticsKHR: PFN_vkGetPipelineExecutableStatisticsKHR!
    let vkGetPipelineExecutableInternalRepresentationsKHR: PFN_vkGetPipelineExecutableInternalRepresentationsKHR!
    let vkCmdSetLineStippleEXT: PFN_vkCmdSetLineStippleEXT!

    init(vkGetDeviceProcAddr: PFN_vkGetDeviceProcAddr, device: VkDevice) {
        self.vkDestroyDevice = unsafeBitCast(vkGetDeviceProcAddr(device, "vkDestroyDevice"), to: PFN_vkDestroyDevice?.self)
        self.vkGetDeviceQueue = unsafeBitCast(vkGetDeviceProcAddr(device, "vkGetDeviceQueue"), to: PFN_vkGetDeviceQueue?.self)
        self.vkQueueSubmit = unsafeBitCast(vkGetDeviceProcAddr(device, "vkQueueSubmit"), to: PFN_vkQueueSubmit?.self)
        self.vkQueueWaitIdle = unsafeBitCast(vkGetDeviceProcAddr(device, "vkQueueWaitIdle"), to: PFN_vkQueueWaitIdle?.self)
        self.vkDeviceWaitIdle = unsafeBitCast(vkGetDeviceProcAddr(device, "vkDeviceWaitIdle"), to: PFN_vkDeviceWaitIdle?.self)
        self.vkAllocateMemory = unsafeBitCast(vkGetDeviceProcAddr(device, "vkAllocateMemory"), to: PFN_vkAllocateMemory?.self)
        self.vkFreeMemory = unsafeBitCast(vkGetDeviceProcAddr(device, "vkFreeMemory"), to: PFN_vkFreeMemory?.self)
        self.vkMapMemory = unsafeBitCast(vkGetDeviceProcAddr(device, "vkMapMemory"), to: PFN_vkMapMemory?.self)
        self.vkUnmapMemory = unsafeBitCast(vkGetDeviceProcAddr(device, "vkUnmapMemory"), to: PFN_vkUnmapMemory?.self)
        self.vkFlushMappedMemoryRanges = unsafeBitCast(vkGetDeviceProcAddr(device, "vkFlushMappedMemoryRanges"), to: PFN_vkFlushMappedMemoryRanges?.self)
        self.vkInvalidateMappedMemoryRanges = unsafeBitCast(vkGetDeviceProcAddr(device, "vkInvalidateMappedMemoryRanges"), to: PFN_vkInvalidateMappedMemoryRanges?.self)
        self.vkGetDeviceMemoryCommitment = unsafeBitCast(vkGetDeviceProcAddr(device, "vkGetDeviceMemoryCommitment"), to: PFN_vkGetDeviceMemoryCommitment?.self)
        self.vkGetBufferMemoryRequirements = unsafeBitCast(vkGetDeviceProcAddr(device, "vkGetBufferMemoryRequirements"), to: PFN_vkGetBufferMemoryRequirements?.self)
        self.vkBindBufferMemory = unsafeBitCast(vkGetDeviceProcAddr(device, "vkBindBufferMemory"), to: PFN_vkBindBufferMemory?.self)
        self.vkGetImageMemoryRequirements = unsafeBitCast(vkGetDeviceProcAddr(device, "vkGetImageMemoryRequirements"), to: PFN_vkGetImageMemoryRequirements?.self)
        self.vkBindImageMemory = unsafeBitCast(vkGetDeviceProcAddr(device, "vkBindImageMemory"), to: PFN_vkBindImageMemory?.self)
        self.vkGetImageSparseMemoryRequirements = unsafeBitCast(vkGetDeviceProcAddr(device, "vkGetImageSparseMemoryRequirements"), to: PFN_vkGetImageSparseMemoryRequirements?.self)
        self.vkQueueBindSparse = unsafeBitCast(vkGetDeviceProcAddr(device, "vkQueueBindSparse"), to: PFN_vkQueueBindSparse?.self)
        self.vkCreateFence = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCreateFence"), to: PFN_vkCreateFence?.self)
        self.vkDestroyFence = unsafeBitCast(vkGetDeviceProcAddr(device, "vkDestroyFence"), to: PFN_vkDestroyFence?.self)
        self.vkResetFences = unsafeBitCast(vkGetDeviceProcAddr(device, "vkResetFences"), to: PFN_vkResetFences?.self)
        self.vkGetFenceStatus = unsafeBitCast(vkGetDeviceProcAddr(device, "vkGetFenceStatus"), to: PFN_vkGetFenceStatus?.self)
        self.vkWaitForFences = unsafeBitCast(vkGetDeviceProcAddr(device, "vkWaitForFences"), to: PFN_vkWaitForFences?.self)
        self.vkCreateSemaphore = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCreateSemaphore"), to: PFN_vkCreateSemaphore?.self)
        self.vkDestroySemaphore = unsafeBitCast(vkGetDeviceProcAddr(device, "vkDestroySemaphore"), to: PFN_vkDestroySemaphore?.self)
        self.vkCreateEvent = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCreateEvent"), to: PFN_vkCreateEvent?.self)
        self.vkDestroyEvent = unsafeBitCast(vkGetDeviceProcAddr(device, "vkDestroyEvent"), to: PFN_vkDestroyEvent?.self)
        self.vkGetEventStatus = unsafeBitCast(vkGetDeviceProcAddr(device, "vkGetEventStatus"), to: PFN_vkGetEventStatus?.self)
        self.vkSetEvent = unsafeBitCast(vkGetDeviceProcAddr(device, "vkSetEvent"), to: PFN_vkSetEvent?.self)
        self.vkResetEvent = unsafeBitCast(vkGetDeviceProcAddr(device, "vkResetEvent"), to: PFN_vkResetEvent?.self)
        self.vkCreateQueryPool = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCreateQueryPool"), to: PFN_vkCreateQueryPool?.self)
        self.vkDestroyQueryPool = unsafeBitCast(vkGetDeviceProcAddr(device, "vkDestroyQueryPool"), to: PFN_vkDestroyQueryPool?.self)
        self.vkGetQueryPoolResults = unsafeBitCast(vkGetDeviceProcAddr(device, "vkGetQueryPoolResults"), to: PFN_vkGetQueryPoolResults?.self)
        self.vkResetQueryPool = unsafeBitCast(vkGetDeviceProcAddr(device, "vkResetQueryPool"), to: PFN_vkResetQueryPool?.self)
        self.vkCreateBuffer = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCreateBuffer"), to: PFN_vkCreateBuffer?.self)
        self.vkDestroyBuffer = unsafeBitCast(vkGetDeviceProcAddr(device, "vkDestroyBuffer"), to: PFN_vkDestroyBuffer?.self)
        self.vkCreateBufferView = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCreateBufferView"), to: PFN_vkCreateBufferView?.self)
        self.vkDestroyBufferView = unsafeBitCast(vkGetDeviceProcAddr(device, "vkDestroyBufferView"), to: PFN_vkDestroyBufferView?.self)
        self.vkCreateImage = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCreateImage"), to: PFN_vkCreateImage?.self)
        self.vkDestroyImage = unsafeBitCast(vkGetDeviceProcAddr(device, "vkDestroyImage"), to: PFN_vkDestroyImage?.self)
        self.vkGetImageSubresourceLayout = unsafeBitCast(vkGetDeviceProcAddr(device, "vkGetImageSubresourceLayout"), to: PFN_vkGetImageSubresourceLayout?.self)
        self.vkCreateImageView = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCreateImageView"), to: PFN_vkCreateImageView?.self)
        self.vkDestroyImageView = unsafeBitCast(vkGetDeviceProcAddr(device, "vkDestroyImageView"), to: PFN_vkDestroyImageView?.self)
        self.vkCreateShaderModule = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCreateShaderModule"), to: PFN_vkCreateShaderModule?.self)
        self.vkDestroyShaderModule = unsafeBitCast(vkGetDeviceProcAddr(device, "vkDestroyShaderModule"), to: PFN_vkDestroyShaderModule?.self)
        self.vkCreatePipelineCache = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCreatePipelineCache"), to: PFN_vkCreatePipelineCache?.self)
        self.vkDestroyPipelineCache = unsafeBitCast(vkGetDeviceProcAddr(device, "vkDestroyPipelineCache"), to: PFN_vkDestroyPipelineCache?.self)
        self.vkGetPipelineCacheData = unsafeBitCast(vkGetDeviceProcAddr(device, "vkGetPipelineCacheData"), to: PFN_vkGetPipelineCacheData?.self)
        self.vkMergePipelineCaches = unsafeBitCast(vkGetDeviceProcAddr(device, "vkMergePipelineCaches"), to: PFN_vkMergePipelineCaches?.self)
        self.vkCreateGraphicsPipelines = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCreateGraphicsPipelines"), to: PFN_vkCreateGraphicsPipelines?.self)
        self.vkCreateComputePipelines = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCreateComputePipelines"), to: PFN_vkCreateComputePipelines?.self)
        self.vkDestroyPipeline = unsafeBitCast(vkGetDeviceProcAddr(device, "vkDestroyPipeline"), to: PFN_vkDestroyPipeline?.self)
        self.vkCreatePipelineLayout = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCreatePipelineLayout"), to: PFN_vkCreatePipelineLayout?.self)
        self.vkDestroyPipelineLayout = unsafeBitCast(vkGetDeviceProcAddr(device, "vkDestroyPipelineLayout"), to: PFN_vkDestroyPipelineLayout?.self)
        self.vkCreateSampler = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCreateSampler"), to: PFN_vkCreateSampler?.self)
        self.vkDestroySampler = unsafeBitCast(vkGetDeviceProcAddr(device, "vkDestroySampler"), to: PFN_vkDestroySampler?.self)
        self.vkCreateDescriptorSetLayout = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCreateDescriptorSetLayout"), to: PFN_vkCreateDescriptorSetLayout?.self)
        self.vkDestroyDescriptorSetLayout = unsafeBitCast(vkGetDeviceProcAddr(device, "vkDestroyDescriptorSetLayout"), to: PFN_vkDestroyDescriptorSetLayout?.self)
        self.vkCreateDescriptorPool = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCreateDescriptorPool"), to: PFN_vkCreateDescriptorPool?.self)
        self.vkDestroyDescriptorPool = unsafeBitCast(vkGetDeviceProcAddr(device, "vkDestroyDescriptorPool"), to: PFN_vkDestroyDescriptorPool?.self)
        self.vkResetDescriptorPool = unsafeBitCast(vkGetDeviceProcAddr(device, "vkResetDescriptorPool"), to: PFN_vkResetDescriptorPool?.self)
        self.vkAllocateDescriptorSets = unsafeBitCast(vkGetDeviceProcAddr(device, "vkAllocateDescriptorSets"), to: PFN_vkAllocateDescriptorSets?.self)
        self.vkFreeDescriptorSets = unsafeBitCast(vkGetDeviceProcAddr(device, "vkFreeDescriptorSets"), to: PFN_vkFreeDescriptorSets?.self)
        self.vkUpdateDescriptorSets = unsafeBitCast(vkGetDeviceProcAddr(device, "vkUpdateDescriptorSets"), to: PFN_vkUpdateDescriptorSets?.self)
        self.vkCreateFramebuffer = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCreateFramebuffer"), to: PFN_vkCreateFramebuffer?.self)
        self.vkDestroyFramebuffer = unsafeBitCast(vkGetDeviceProcAddr(device, "vkDestroyFramebuffer"), to: PFN_vkDestroyFramebuffer?.self)
        self.vkCreateRenderPass = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCreateRenderPass"), to: PFN_vkCreateRenderPass?.self)
        self.vkDestroyRenderPass = unsafeBitCast(vkGetDeviceProcAddr(device, "vkDestroyRenderPass"), to: PFN_vkDestroyRenderPass?.self)
        self.vkGetRenderAreaGranularity = unsafeBitCast(vkGetDeviceProcAddr(device, "vkGetRenderAreaGranularity"), to: PFN_vkGetRenderAreaGranularity?.self)
        self.vkCreateCommandPool = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCreateCommandPool"), to: PFN_vkCreateCommandPool?.self)
        self.vkDestroyCommandPool = unsafeBitCast(vkGetDeviceProcAddr(device, "vkDestroyCommandPool"), to: PFN_vkDestroyCommandPool?.self)
        self.vkResetCommandPool = unsafeBitCast(vkGetDeviceProcAddr(device, "vkResetCommandPool"), to: PFN_vkResetCommandPool?.self)
        self.vkAllocateCommandBuffers = unsafeBitCast(vkGetDeviceProcAddr(device, "vkAllocateCommandBuffers"), to: PFN_vkAllocateCommandBuffers?.self)
        self.vkFreeCommandBuffers = unsafeBitCast(vkGetDeviceProcAddr(device, "vkFreeCommandBuffers"), to: PFN_vkFreeCommandBuffers?.self)
        self.vkBeginCommandBuffer = unsafeBitCast(vkGetDeviceProcAddr(device, "vkBeginCommandBuffer"), to: PFN_vkBeginCommandBuffer?.self)
        self.vkEndCommandBuffer = unsafeBitCast(vkGetDeviceProcAddr(device, "vkEndCommandBuffer"), to: PFN_vkEndCommandBuffer?.self)
        self.vkResetCommandBuffer = unsafeBitCast(vkGetDeviceProcAddr(device, "vkResetCommandBuffer"), to: PFN_vkResetCommandBuffer?.self)
        self.vkCmdBindPipeline = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdBindPipeline"), to: PFN_vkCmdBindPipeline?.self)
        self.vkCmdSetViewport = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdSetViewport"), to: PFN_vkCmdSetViewport?.self)
        self.vkCmdSetScissor = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdSetScissor"), to: PFN_vkCmdSetScissor?.self)
        self.vkCmdSetLineWidth = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdSetLineWidth"), to: PFN_vkCmdSetLineWidth?.self)
        self.vkCmdSetDepthBias = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdSetDepthBias"), to: PFN_vkCmdSetDepthBias?.self)
        self.vkCmdSetBlendConstants = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdSetBlendConstants"), to: PFN_vkCmdSetBlendConstants?.self)
        self.vkCmdSetDepthBounds = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdSetDepthBounds"), to: PFN_vkCmdSetDepthBounds?.self)
        self.vkCmdSetStencilCompareMask = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdSetStencilCompareMask"), to: PFN_vkCmdSetStencilCompareMask?.self)
        self.vkCmdSetStencilWriteMask = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdSetStencilWriteMask"), to: PFN_vkCmdSetStencilWriteMask?.self)
        self.vkCmdSetStencilReference = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdSetStencilReference"), to: PFN_vkCmdSetStencilReference?.self)
        self.vkCmdBindDescriptorSets = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdBindDescriptorSets"), to: PFN_vkCmdBindDescriptorSets?.self)
        self.vkCmdBindIndexBuffer = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdBindIndexBuffer"), to: PFN_vkCmdBindIndexBuffer?.self)
        self.vkCmdBindVertexBuffers = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdBindVertexBuffers"), to: PFN_vkCmdBindVertexBuffers?.self)
        self.vkCmdDraw = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdDraw"), to: PFN_vkCmdDraw?.self)
        self.vkCmdDrawIndexed = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdDrawIndexed"), to: PFN_vkCmdDrawIndexed?.self)
        self.vkCmdDrawIndirect = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdDrawIndirect"), to: PFN_vkCmdDrawIndirect?.self)
        self.vkCmdDrawIndexedIndirect = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdDrawIndexedIndirect"), to: PFN_vkCmdDrawIndexedIndirect?.self)
        self.vkCmdDispatch = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdDispatch"), to: PFN_vkCmdDispatch?.self)
        self.vkCmdDispatchIndirect = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdDispatchIndirect"), to: PFN_vkCmdDispatchIndirect?.self)
        self.vkCmdCopyBuffer = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdCopyBuffer"), to: PFN_vkCmdCopyBuffer?.self)
        self.vkCmdCopyImage = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdCopyImage"), to: PFN_vkCmdCopyImage?.self)
        self.vkCmdBlitImage = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdBlitImage"), to: PFN_vkCmdBlitImage?.self)
        self.vkCmdCopyBufferToImage = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdCopyBufferToImage"), to: PFN_vkCmdCopyBufferToImage?.self)
        self.vkCmdCopyImageToBuffer = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdCopyImageToBuffer"), to: PFN_vkCmdCopyImageToBuffer?.self)
        self.vkCmdUpdateBuffer = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdUpdateBuffer"), to: PFN_vkCmdUpdateBuffer?.self)
        self.vkCmdFillBuffer = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdFillBuffer"), to: PFN_vkCmdFillBuffer?.self)
        self.vkCmdClearColorImage = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdClearColorImage"), to: PFN_vkCmdClearColorImage?.self)
        self.vkCmdClearDepthStencilImage = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdClearDepthStencilImage"), to: PFN_vkCmdClearDepthStencilImage?.self)
        self.vkCmdClearAttachments = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdClearAttachments"), to: PFN_vkCmdClearAttachments?.self)
        self.vkCmdResolveImage = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdResolveImage"), to: PFN_vkCmdResolveImage?.self)
        self.vkCmdSetEvent = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdSetEvent"), to: PFN_vkCmdSetEvent?.self)
        self.vkCmdResetEvent = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdResetEvent"), to: PFN_vkCmdResetEvent?.self)
        self.vkCmdWaitEvents = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdWaitEvents"), to: PFN_vkCmdWaitEvents?.self)
        self.vkCmdPipelineBarrier = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdPipelineBarrier"), to: PFN_vkCmdPipelineBarrier?.self)
        self.vkCmdBeginQuery = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdBeginQuery"), to: PFN_vkCmdBeginQuery?.self)
        self.vkCmdEndQuery = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdEndQuery"), to: PFN_vkCmdEndQuery?.self)
        self.vkCmdBeginConditionalRenderingEXT = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdBeginConditionalRenderingEXT"), to: PFN_vkCmdBeginConditionalRenderingEXT?.self)
        self.vkCmdEndConditionalRenderingEXT = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdEndConditionalRenderingEXT"), to: PFN_vkCmdEndConditionalRenderingEXT?.self)
        self.vkCmdResetQueryPool = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdResetQueryPool"), to: PFN_vkCmdResetQueryPool?.self)
        self.vkCmdWriteTimestamp = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdWriteTimestamp"), to: PFN_vkCmdWriteTimestamp?.self)
        self.vkCmdCopyQueryPoolResults = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdCopyQueryPoolResults"), to: PFN_vkCmdCopyQueryPoolResults?.self)
        self.vkCmdPushConstants = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdPushConstants"), to: PFN_vkCmdPushConstants?.self)
        self.vkCmdBeginRenderPass = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdBeginRenderPass"), to: PFN_vkCmdBeginRenderPass?.self)
        self.vkCmdNextSubpass = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdNextSubpass"), to: PFN_vkCmdNextSubpass?.self)
        self.vkCmdEndRenderPass = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdEndRenderPass"), to: PFN_vkCmdEndRenderPass?.self)
        self.vkCmdExecuteCommands = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdExecuteCommands"), to: PFN_vkCmdExecuteCommands?.self)
        self.vkCreateSharedSwapchainsKHR = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCreateSharedSwapchainsKHR"), to: PFN_vkCreateSharedSwapchainsKHR?.self)
        self.vkCreateSwapchainKHR = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCreateSwapchainKHR"), to: PFN_vkCreateSwapchainKHR?.self)
        self.vkDestroySwapchainKHR = unsafeBitCast(vkGetDeviceProcAddr(device, "vkDestroySwapchainKHR"), to: PFN_vkDestroySwapchainKHR?.self)
        self.vkGetSwapchainImagesKHR = unsafeBitCast(vkGetDeviceProcAddr(device, "vkGetSwapchainImagesKHR"), to: PFN_vkGetSwapchainImagesKHR?.self)
        self.vkAcquireNextImageKHR = unsafeBitCast(vkGetDeviceProcAddr(device, "vkAcquireNextImageKHR"), to: PFN_vkAcquireNextImageKHR?.self)
        self.vkQueuePresentKHR = unsafeBitCast(vkGetDeviceProcAddr(device, "vkQueuePresentKHR"), to: PFN_vkQueuePresentKHR?.self)
        self.vkDebugMarkerSetObjectNameEXT = unsafeBitCast(vkGetDeviceProcAddr(device, "vkDebugMarkerSetObjectNameEXT"), to: PFN_vkDebugMarkerSetObjectNameEXT?.self)
        self.vkDebugMarkerSetObjectTagEXT = unsafeBitCast(vkGetDeviceProcAddr(device, "vkDebugMarkerSetObjectTagEXT"), to: PFN_vkDebugMarkerSetObjectTagEXT?.self)
        self.vkCmdDebugMarkerBeginEXT = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdDebugMarkerBeginEXT"), to: PFN_vkCmdDebugMarkerBeginEXT?.self)
        self.vkCmdDebugMarkerEndEXT = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdDebugMarkerEndEXT"), to: PFN_vkCmdDebugMarkerEndEXT?.self)
        self.vkCmdDebugMarkerInsertEXT = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdDebugMarkerInsertEXT"), to: PFN_vkCmdDebugMarkerInsertEXT?.self)
        self.vkCmdExecuteGeneratedCommandsNV = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdExecuteGeneratedCommandsNV"), to: PFN_vkCmdExecuteGeneratedCommandsNV?.self)
        self.vkCmdPreprocessGeneratedCommandsNV = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdPreprocessGeneratedCommandsNV"), to: PFN_vkCmdPreprocessGeneratedCommandsNV?.self)
        self.vkCmdBindPipelineShaderGroupNV = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdBindPipelineShaderGroupNV"), to: PFN_vkCmdBindPipelineShaderGroupNV?.self)
        self.vkGetGeneratedCommandsMemoryRequirementsNV = unsafeBitCast(vkGetDeviceProcAddr(device, "vkGetGeneratedCommandsMemoryRequirementsNV"), to: PFN_vkGetGeneratedCommandsMemoryRequirementsNV?.self)
        self.vkCreateIndirectCommandsLayoutNV = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCreateIndirectCommandsLayoutNV"), to: PFN_vkCreateIndirectCommandsLayoutNV?.self)
        self.vkDestroyIndirectCommandsLayoutNV = unsafeBitCast(vkGetDeviceProcAddr(device, "vkDestroyIndirectCommandsLayoutNV"), to: PFN_vkDestroyIndirectCommandsLayoutNV?.self)
        self.vkCmdPushDescriptorSetKHR = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdPushDescriptorSetKHR"), to: PFN_vkCmdPushDescriptorSetKHR?.self)
        self.vkTrimCommandPool = unsafeBitCast(vkGetDeviceProcAddr(device, "vkTrimCommandPool"), to: PFN_vkTrimCommandPool?.self)
        self.vkGetMemoryFdKHR = unsafeBitCast(vkGetDeviceProcAddr(device, "vkGetMemoryFdKHR"), to: PFN_vkGetMemoryFdKHR?.self)
        self.vkGetMemoryFdPropertiesKHR = unsafeBitCast(vkGetDeviceProcAddr(device, "vkGetMemoryFdPropertiesKHR"), to: PFN_vkGetMemoryFdPropertiesKHR?.self)
        self.vkGetSemaphoreFdKHR = unsafeBitCast(vkGetDeviceProcAddr(device, "vkGetSemaphoreFdKHR"), to: PFN_vkGetSemaphoreFdKHR?.self)
        self.vkImportSemaphoreFdKHR = unsafeBitCast(vkGetDeviceProcAddr(device, "vkImportSemaphoreFdKHR"), to: PFN_vkImportSemaphoreFdKHR?.self)
        self.vkGetFenceFdKHR = unsafeBitCast(vkGetDeviceProcAddr(device, "vkGetFenceFdKHR"), to: PFN_vkGetFenceFdKHR?.self)
        self.vkImportFenceFdKHR = unsafeBitCast(vkGetDeviceProcAddr(device, "vkImportFenceFdKHR"), to: PFN_vkImportFenceFdKHR?.self)
        self.vkDisplayPowerControlEXT = unsafeBitCast(vkGetDeviceProcAddr(device, "vkDisplayPowerControlEXT"), to: PFN_vkDisplayPowerControlEXT?.self)
        self.vkRegisterDeviceEventEXT = unsafeBitCast(vkGetDeviceProcAddr(device, "vkRegisterDeviceEventEXT"), to: PFN_vkRegisterDeviceEventEXT?.self)
        self.vkRegisterDisplayEventEXT = unsafeBitCast(vkGetDeviceProcAddr(device, "vkRegisterDisplayEventEXT"), to: PFN_vkRegisterDisplayEventEXT?.self)
        self.vkGetSwapchainCounterEXT = unsafeBitCast(vkGetDeviceProcAddr(device, "vkGetSwapchainCounterEXT"), to: PFN_vkGetSwapchainCounterEXT?.self)
        self.vkGetDeviceGroupPeerMemoryFeatures = unsafeBitCast(vkGetDeviceProcAddr(device, "vkGetDeviceGroupPeerMemoryFeatures"), to: PFN_vkGetDeviceGroupPeerMemoryFeatures?.self)
        self.vkBindBufferMemory2 = unsafeBitCast(vkGetDeviceProcAddr(device, "vkBindBufferMemory2"), to: PFN_vkBindBufferMemory2?.self)
        self.vkBindImageMemory2 = unsafeBitCast(vkGetDeviceProcAddr(device, "vkBindImageMemory2"), to: PFN_vkBindImageMemory2?.self)
        self.vkCmdSetDeviceMask = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdSetDeviceMask"), to: PFN_vkCmdSetDeviceMask?.self)
        self.vkGetDeviceGroupPresentCapabilitiesKHR = unsafeBitCast(vkGetDeviceProcAddr(device, "vkGetDeviceGroupPresentCapabilitiesKHR"), to: PFN_vkGetDeviceGroupPresentCapabilitiesKHR?.self)
        self.vkGetDeviceGroupSurfacePresentModesKHR = unsafeBitCast(vkGetDeviceProcAddr(device, "vkGetDeviceGroupSurfacePresentModesKHR"), to: PFN_vkGetDeviceGroupSurfacePresentModesKHR?.self)
        self.vkAcquireNextImage2KHR = unsafeBitCast(vkGetDeviceProcAddr(device, "vkAcquireNextImage2KHR"), to: PFN_vkAcquireNextImage2KHR?.self)
        self.vkCmdDispatchBase = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdDispatchBase"), to: PFN_vkCmdDispatchBase?.self)
        self.vkCreateDescriptorUpdateTemplate = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCreateDescriptorUpdateTemplate"), to: PFN_vkCreateDescriptorUpdateTemplate?.self)
        self.vkDestroyDescriptorUpdateTemplate = unsafeBitCast(vkGetDeviceProcAddr(device, "vkDestroyDescriptorUpdateTemplate"), to: PFN_vkDestroyDescriptorUpdateTemplate?.self)
        self.vkUpdateDescriptorSetWithTemplate = unsafeBitCast(vkGetDeviceProcAddr(device, "vkUpdateDescriptorSetWithTemplate"), to: PFN_vkUpdateDescriptorSetWithTemplate?.self)
        self.vkCmdPushDescriptorSetWithTemplateKHR = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdPushDescriptorSetWithTemplateKHR"), to: PFN_vkCmdPushDescriptorSetWithTemplateKHR?.self)
        self.vkSetHdrMetadataEXT = unsafeBitCast(vkGetDeviceProcAddr(device, "vkSetHdrMetadataEXT"), to: PFN_vkSetHdrMetadataEXT?.self)
        self.vkGetSwapchainStatusKHR = unsafeBitCast(vkGetDeviceProcAddr(device, "vkGetSwapchainStatusKHR"), to: PFN_vkGetSwapchainStatusKHR?.self)
        self.vkGetRefreshCycleDurationGOOGLE = unsafeBitCast(vkGetDeviceProcAddr(device, "vkGetRefreshCycleDurationGOOGLE"), to: PFN_vkGetRefreshCycleDurationGOOGLE?.self)
        self.vkGetPastPresentationTimingGOOGLE = unsafeBitCast(vkGetDeviceProcAddr(device, "vkGetPastPresentationTimingGOOGLE"), to: PFN_vkGetPastPresentationTimingGOOGLE?.self)
        self.vkCmdSetViewportWScalingNV = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdSetViewportWScalingNV"), to: PFN_vkCmdSetViewportWScalingNV?.self)
        self.vkCmdSetDiscardRectangleEXT = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdSetDiscardRectangleEXT"), to: PFN_vkCmdSetDiscardRectangleEXT?.self)
        self.vkCmdSetSampleLocationsEXT = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdSetSampleLocationsEXT"), to: PFN_vkCmdSetSampleLocationsEXT?.self)
        self.vkGetBufferMemoryRequirements2 = unsafeBitCast(vkGetDeviceProcAddr(device, "vkGetBufferMemoryRequirements2"), to: PFN_vkGetBufferMemoryRequirements2?.self)
        self.vkGetImageMemoryRequirements2 = unsafeBitCast(vkGetDeviceProcAddr(device, "vkGetImageMemoryRequirements2"), to: PFN_vkGetImageMemoryRequirements2?.self)
        self.vkGetImageSparseMemoryRequirements2 = unsafeBitCast(vkGetDeviceProcAddr(device, "vkGetImageSparseMemoryRequirements2"), to: PFN_vkGetImageSparseMemoryRequirements2?.self)
        self.vkCreateSamplerYcbcrConversion = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCreateSamplerYcbcrConversion"), to: PFN_vkCreateSamplerYcbcrConversion?.self)
        self.vkDestroySamplerYcbcrConversion = unsafeBitCast(vkGetDeviceProcAddr(device, "vkDestroySamplerYcbcrConversion"), to: PFN_vkDestroySamplerYcbcrConversion?.self)
        self.vkGetDeviceQueue2 = unsafeBitCast(vkGetDeviceProcAddr(device, "vkGetDeviceQueue2"), to: PFN_vkGetDeviceQueue2?.self)
        self.vkCreateValidationCacheEXT = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCreateValidationCacheEXT"), to: PFN_vkCreateValidationCacheEXT?.self)
        self.vkDestroyValidationCacheEXT = unsafeBitCast(vkGetDeviceProcAddr(device, "vkDestroyValidationCacheEXT"), to: PFN_vkDestroyValidationCacheEXT?.self)
        self.vkGetValidationCacheDataEXT = unsafeBitCast(vkGetDeviceProcAddr(device, "vkGetValidationCacheDataEXT"), to: PFN_vkGetValidationCacheDataEXT?.self)
        self.vkMergeValidationCachesEXT = unsafeBitCast(vkGetDeviceProcAddr(device, "vkMergeValidationCachesEXT"), to: PFN_vkMergeValidationCachesEXT?.self)
        self.vkGetDescriptorSetLayoutSupport = unsafeBitCast(vkGetDeviceProcAddr(device, "vkGetDescriptorSetLayoutSupport"), to: PFN_vkGetDescriptorSetLayoutSupport?.self)
        self.vkGetShaderInfoAMD = unsafeBitCast(vkGetDeviceProcAddr(device, "vkGetShaderInfoAMD"), to: PFN_vkGetShaderInfoAMD?.self)
        self.vkSetLocalDimmingAMD = unsafeBitCast(vkGetDeviceProcAddr(device, "vkSetLocalDimmingAMD"), to: PFN_vkSetLocalDimmingAMD?.self)
        self.vkGetCalibratedTimestampsEXT = unsafeBitCast(vkGetDeviceProcAddr(device, "vkGetCalibratedTimestampsEXT"), to: PFN_vkGetCalibratedTimestampsEXT?.self)
        self.vkSetDebugUtilsObjectNameEXT = unsafeBitCast(vkGetDeviceProcAddr(device, "vkSetDebugUtilsObjectNameEXT"), to: PFN_vkSetDebugUtilsObjectNameEXT?.self)
        self.vkSetDebugUtilsObjectTagEXT = unsafeBitCast(vkGetDeviceProcAddr(device, "vkSetDebugUtilsObjectTagEXT"), to: PFN_vkSetDebugUtilsObjectTagEXT?.self)
        self.vkQueueBeginDebugUtilsLabelEXT = unsafeBitCast(vkGetDeviceProcAddr(device, "vkQueueBeginDebugUtilsLabelEXT"), to: PFN_vkQueueBeginDebugUtilsLabelEXT?.self)
        self.vkQueueEndDebugUtilsLabelEXT = unsafeBitCast(vkGetDeviceProcAddr(device, "vkQueueEndDebugUtilsLabelEXT"), to: PFN_vkQueueEndDebugUtilsLabelEXT?.self)
        self.vkQueueInsertDebugUtilsLabelEXT = unsafeBitCast(vkGetDeviceProcAddr(device, "vkQueueInsertDebugUtilsLabelEXT"), to: PFN_vkQueueInsertDebugUtilsLabelEXT?.self)
        self.vkCmdBeginDebugUtilsLabelEXT = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdBeginDebugUtilsLabelEXT"), to: PFN_vkCmdBeginDebugUtilsLabelEXT?.self)
        self.vkCmdEndDebugUtilsLabelEXT = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdEndDebugUtilsLabelEXT"), to: PFN_vkCmdEndDebugUtilsLabelEXT?.self)
        self.vkCmdInsertDebugUtilsLabelEXT = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdInsertDebugUtilsLabelEXT"), to: PFN_vkCmdInsertDebugUtilsLabelEXT?.self)
        self.vkGetMemoryHostPointerPropertiesEXT = unsafeBitCast(vkGetDeviceProcAddr(device, "vkGetMemoryHostPointerPropertiesEXT"), to: PFN_vkGetMemoryHostPointerPropertiesEXT?.self)
        self.vkCmdWriteBufferMarkerAMD = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdWriteBufferMarkerAMD"), to: PFN_vkCmdWriteBufferMarkerAMD?.self)
        self.vkCreateRenderPass2 = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCreateRenderPass2"), to: PFN_vkCreateRenderPass2?.self)
        self.vkCmdBeginRenderPass2 = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdBeginRenderPass2"), to: PFN_vkCmdBeginRenderPass2?.self)
        self.vkCmdNextSubpass2 = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdNextSubpass2"), to: PFN_vkCmdNextSubpass2?.self)
        self.vkCmdEndRenderPass2 = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdEndRenderPass2"), to: PFN_vkCmdEndRenderPass2?.self)
        self.vkGetSemaphoreCounterValue = unsafeBitCast(vkGetDeviceProcAddr(device, "vkGetSemaphoreCounterValue"), to: PFN_vkGetSemaphoreCounterValue?.self)
        self.vkWaitSemaphores = unsafeBitCast(vkGetDeviceProcAddr(device, "vkWaitSemaphores"), to: PFN_vkWaitSemaphores?.self)
        self.vkSignalSemaphore = unsafeBitCast(vkGetDeviceProcAddr(device, "vkSignalSemaphore"), to: PFN_vkSignalSemaphore?.self)
        self.vkCmdDrawIndirectCount = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdDrawIndirectCount"), to: PFN_vkCmdDrawIndirectCount?.self)
        self.vkCmdDrawIndexedIndirectCount = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdDrawIndexedIndirectCount"), to: PFN_vkCmdDrawIndexedIndirectCount?.self)
        self.vkCmdSetCheckpointNV = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdSetCheckpointNV"), to: PFN_vkCmdSetCheckpointNV?.self)
        self.vkGetQueueCheckpointDataNV = unsafeBitCast(vkGetDeviceProcAddr(device, "vkGetQueueCheckpointDataNV"), to: PFN_vkGetQueueCheckpointDataNV?.self)
        self.vkCmdBindTransformFeedbackBuffersEXT = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdBindTransformFeedbackBuffersEXT"), to: PFN_vkCmdBindTransformFeedbackBuffersEXT?.self)
        self.vkCmdBeginTransformFeedbackEXT = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdBeginTransformFeedbackEXT"), to: PFN_vkCmdBeginTransformFeedbackEXT?.self)
        self.vkCmdEndTransformFeedbackEXT = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdEndTransformFeedbackEXT"), to: PFN_vkCmdEndTransformFeedbackEXT?.self)
        self.vkCmdBeginQueryIndexedEXT = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdBeginQueryIndexedEXT"), to: PFN_vkCmdBeginQueryIndexedEXT?.self)
        self.vkCmdEndQueryIndexedEXT = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdEndQueryIndexedEXT"), to: PFN_vkCmdEndQueryIndexedEXT?.self)
        self.vkCmdDrawIndirectByteCountEXT = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdDrawIndirectByteCountEXT"), to: PFN_vkCmdDrawIndirectByteCountEXT?.self)
        self.vkCmdSetExclusiveScissorNV = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdSetExclusiveScissorNV"), to: PFN_vkCmdSetExclusiveScissorNV?.self)
        self.vkCmdBindShadingRateImageNV = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdBindShadingRateImageNV"), to: PFN_vkCmdBindShadingRateImageNV?.self)
        self.vkCmdSetViewportShadingRatePaletteNV = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdSetViewportShadingRatePaletteNV"), to: PFN_vkCmdSetViewportShadingRatePaletteNV?.self)
        self.vkCmdSetCoarseSampleOrderNV = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdSetCoarseSampleOrderNV"), to: PFN_vkCmdSetCoarseSampleOrderNV?.self)
        self.vkCmdDrawMeshTasksNV = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdDrawMeshTasksNV"), to: PFN_vkCmdDrawMeshTasksNV?.self)
        self.vkCmdDrawMeshTasksIndirectNV = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdDrawMeshTasksIndirectNV"), to: PFN_vkCmdDrawMeshTasksIndirectNV?.self)
        self.vkCmdDrawMeshTasksIndirectCountNV = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdDrawMeshTasksIndirectCountNV"), to: PFN_vkCmdDrawMeshTasksIndirectCountNV?.self)
        self.vkCompileDeferredNV = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCompileDeferredNV"), to: PFN_vkCompileDeferredNV?.self)
        self.vkCreateAccelerationStructureNV = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCreateAccelerationStructureNV"), to: PFN_vkCreateAccelerationStructureNV?.self)
        self.vkGetAccelerationStructureMemoryRequirementsNV = unsafeBitCast(vkGetDeviceProcAddr(device, "vkGetAccelerationStructureMemoryRequirementsNV"), to: PFN_vkGetAccelerationStructureMemoryRequirementsNV?.self)
        self.vkCmdCopyAccelerationStructureNV = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdCopyAccelerationStructureNV"), to: PFN_vkCmdCopyAccelerationStructureNV?.self)
        self.vkCmdBuildAccelerationStructureNV = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdBuildAccelerationStructureNV"), to: PFN_vkCmdBuildAccelerationStructureNV?.self)
        self.vkCmdTraceRaysNV = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdTraceRaysNV"), to: PFN_vkCmdTraceRaysNV?.self)
        self.vkGetAccelerationStructureHandleNV = unsafeBitCast(vkGetDeviceProcAddr(device, "vkGetAccelerationStructureHandleNV"), to: PFN_vkGetAccelerationStructureHandleNV?.self)
        self.vkCreateRayTracingPipelinesNV = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCreateRayTracingPipelinesNV"), to: PFN_vkCreateRayTracingPipelinesNV?.self)
        self.vkGetImageViewHandleNVX = unsafeBitCast(vkGetDeviceProcAddr(device, "vkGetImageViewHandleNVX"), to: PFN_vkGetImageViewHandleNVX?.self)
        self.vkAcquireProfilingLockKHR = unsafeBitCast(vkGetDeviceProcAddr(device, "vkAcquireProfilingLockKHR"), to: PFN_vkAcquireProfilingLockKHR?.self)
        self.vkReleaseProfilingLockKHR = unsafeBitCast(vkGetDeviceProcAddr(device, "vkReleaseProfilingLockKHR"), to: PFN_vkReleaseProfilingLockKHR?.self)
        self.vkGetImageDrmFormatModifierPropertiesEXT = unsafeBitCast(vkGetDeviceProcAddr(device, "vkGetImageDrmFormatModifierPropertiesEXT"), to: PFN_vkGetImageDrmFormatModifierPropertiesEXT?.self)
        self.vkGetBufferOpaqueCaptureAddress = unsafeBitCast(vkGetDeviceProcAddr(device, "vkGetBufferOpaqueCaptureAddress"), to: PFN_vkGetBufferOpaqueCaptureAddress?.self)
        self.vkGetBufferDeviceAddress = unsafeBitCast(vkGetDeviceProcAddr(device, "vkGetBufferDeviceAddress"), to: PFN_vkGetBufferDeviceAddress?.self)
        self.vkInitializePerformanceApiINTEL = unsafeBitCast(vkGetDeviceProcAddr(device, "vkInitializePerformanceApiINTEL"), to: PFN_vkInitializePerformanceApiINTEL?.self)
        self.vkUninitializePerformanceApiINTEL = unsafeBitCast(vkGetDeviceProcAddr(device, "vkUninitializePerformanceApiINTEL"), to: PFN_vkUninitializePerformanceApiINTEL?.self)
        self.vkCmdSetPerformanceMarkerINTEL = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdSetPerformanceMarkerINTEL"), to: PFN_vkCmdSetPerformanceMarkerINTEL?.self)
        self.vkCmdSetPerformanceStreamMarkerINTEL = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdSetPerformanceStreamMarkerINTEL"), to: PFN_vkCmdSetPerformanceStreamMarkerINTEL?.self)
        self.vkCmdSetPerformanceOverrideINTEL = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdSetPerformanceOverrideINTEL"), to: PFN_vkCmdSetPerformanceOverrideINTEL?.self)
        self.vkAcquirePerformanceConfigurationINTEL = unsafeBitCast(vkGetDeviceProcAddr(device, "vkAcquirePerformanceConfigurationINTEL"), to: PFN_vkAcquirePerformanceConfigurationINTEL?.self)
        self.vkReleasePerformanceConfigurationINTEL = unsafeBitCast(vkGetDeviceProcAddr(device, "vkReleasePerformanceConfigurationINTEL"), to: PFN_vkReleasePerformanceConfigurationINTEL?.self)
        self.vkQueueSetPerformanceConfigurationINTEL = unsafeBitCast(vkGetDeviceProcAddr(device, "vkQueueSetPerformanceConfigurationINTEL"), to: PFN_vkQueueSetPerformanceConfigurationINTEL?.self)
        self.vkGetPerformanceParameterINTEL = unsafeBitCast(vkGetDeviceProcAddr(device, "vkGetPerformanceParameterINTEL"), to: PFN_vkGetPerformanceParameterINTEL?.self)
        self.vkGetDeviceMemoryOpaqueCaptureAddress = unsafeBitCast(vkGetDeviceProcAddr(device, "vkGetDeviceMemoryOpaqueCaptureAddress"), to: PFN_vkGetDeviceMemoryOpaqueCaptureAddress?.self)
        self.vkGetPipelineExecutablePropertiesKHR = unsafeBitCast(vkGetDeviceProcAddr(device, "vkGetPipelineExecutablePropertiesKHR"), to: PFN_vkGetPipelineExecutablePropertiesKHR?.self)
        self.vkGetPipelineExecutableStatisticsKHR = unsafeBitCast(vkGetDeviceProcAddr(device, "vkGetPipelineExecutableStatisticsKHR"), to: PFN_vkGetPipelineExecutableStatisticsKHR?.self)
        self.vkGetPipelineExecutableInternalRepresentationsKHR = unsafeBitCast(vkGetDeviceProcAddr(device, "vkGetPipelineExecutableInternalRepresentationsKHR"), to: PFN_vkGetPipelineExecutableInternalRepresentationsKHR?.self)
        self.vkCmdSetLineStippleEXT = unsafeBitCast(vkGetDeviceProcAddr(device, "vkCmdSetLineStippleEXT"), to: PFN_vkCmdSetLineStippleEXT?.self)
    }
}

