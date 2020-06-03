import CVulkan

class Entry {
    let loader: Loader
    let dispatchTable: EntryDispatchTable

    init(loader: Loader) {
        self.loader = loader
        self.dispatchTable = EntryDispatchTable(vkGetInstanceProcAddr: vkGetInstanceProcAddr)
    }

    func createInstance(createInfo: InstanceCreateInfo) throws -> Instance {
        try createInfo.withCStruct { ptr_createInfo in
            var out: VkInstance!
            try checkResult(
                self.dispatchTable.vkCreateInstance(ptr_createInfo, nil, &out)
            )
            return Instance(handle: out, entry: self)
        }
    }

    func getInstanceProcAddr(instance: Instance?, name: String) -> PFN_vkVoidFunction {
        name.withCString { cString_name in
            self.loader.vkGetInstanceProcAddr(instance?.handle, cString_name)
        }
    }

    func getInstanceVersion() throws -> Version {
        var out = UInt32()
        try checkResult(
            self.dispatchTable.vkEnumerateInstanceVersion(&out)
        )
        return Version(rawValue: out)
    }

    func getInstanceLayerProperties() throws -> Array<LayerProperties> {
        try enumerate { pProperties, pPropertyCount in
            self.dispatchTable.vkEnumerateInstanceLayerProperties(pPropertyCount, pProperties)
        }.map { LayerProperties(cStruct: $0) }
    }

    func getInstanceExtensionProperties(layerName: String?) throws -> Array<ExtensionProperties> {
        try layerName.withOptionalCString { cString_layerName in
            try enumerate { pProperties, pPropertyCount in
                self.dispatchTable.vkEnumerateInstanceExtensionProperties(cString_layerName, pPropertyCount, pProperties)
            }.map { ExtensionProperties(cStruct: $0) }
        }
    }
}

class Instance {
    let handle: VkInstance!
    let entry: Entry
    let dispatchTable: InstanceDispatchTable

    init(handle: VkInstance!, entry: Entry) {
        self.handle = handle
        self.entry = entry
        self.dispatchTable = InstanceDispatchTable(vkGetInstanceProcAddr: vkGetInstanceProcAddr, instance: handle)
    }

    func destroy() -> Void {
        self.dispatchTable.vkDestroyInstance(self.handle, nil)
    }

    func getPhysicalDevices() throws -> Array<PhysicalDevice> {
        try enumerate { pPhysicalDevices, pPhysicalDeviceCount in
            self.dispatchTable.vkEnumeratePhysicalDevices(self.handle, pPhysicalDeviceCount, pPhysicalDevices)
        }.map { PhysicalDevice(handle: $0, instance: self) }
    }

    func createDisplayPlaneSurfaceKHR(createInfo: DisplaySurfaceCreateInfoKHR) throws -> SurfaceKHR {
        try createInfo.withCStruct { ptr_createInfo in
            var out: VkSurfaceKHR!
            try checkResult(
                self.dispatchTable.vkCreateDisplayPlaneSurfaceKHR(self.handle, ptr_createInfo, nil, &out)
            )
            return SurfaceKHR(handle: out, instance: self)
        }
    }

    func createDebugReportCallbackEXT(createInfo: DebugReportCallbackCreateInfoEXT) throws -> DebugReportCallbackEXT {
        try createInfo.withCStruct { ptr_createInfo in
            var out: VkDebugReportCallbackEXT!
            try checkResult(
                self.dispatchTable.vkCreateDebugReportCallbackEXT(self.handle, ptr_createInfo, nil, &out)
            )
            return DebugReportCallbackEXT(handle: out, instance: self)
        }
    }

    func debugReportMessageEXT(flags: DebugReportFlagsEXT, objectType: DebugReportObjectTypeEXT, object: UInt64, location: Int, messageCode: Int32, layerPrefix: String, message: String) -> Void {
        layerPrefix.withCString { cString_layerPrefix in
            message.withCString { cString_message in
                self.dispatchTable.vkDebugReportMessageEXT(self.handle, flags.rawValue, VkDebugReportObjectTypeEXT(rawValue: objectType.rawValue), object, location, messageCode, cString_layerPrefix, cString_message)
            }
        }
    }

    func getPhysicalDeviceGroups() throws -> Array<PhysicalDeviceGroupProperties> {
        try enumerate { pPhysicalDeviceGroupProperties, pPhysicalDeviceGroupCount in
            self.dispatchTable.vkEnumeratePhysicalDeviceGroups(self.handle, pPhysicalDeviceGroupCount, pPhysicalDeviceGroupProperties)
        }.map { PhysicalDeviceGroupProperties(cStruct: $0) }
    }

    func createDebugUtilsMessengerEXT(createInfo: DebugUtilsMessengerCreateInfoEXT) throws -> DebugUtilsMessengerEXT {
        try createInfo.withCStruct { ptr_createInfo in
            var out: VkDebugUtilsMessengerEXT!
            try checkResult(
                self.dispatchTable.vkCreateDebugUtilsMessengerEXT(self.handle, ptr_createInfo, nil, &out)
            )
            return DebugUtilsMessengerEXT(handle: out, instance: self)
        }
    }

    func submitDebugUtilsMessageEXT(messageSeverity: DebugUtilsMessageSeverityFlagsEXT, messageTypes: DebugUtilsMessageTypeFlagsEXT, callbackData: DebugUtilsMessengerCallbackDataEXT) -> Void {
        callbackData.withCStruct { ptr_callbackData in
            self.dispatchTable.vkSubmitDebugUtilsMessageEXT(self.handle, VkDebugUtilsMessageSeverityFlagBitsEXT(rawValue: messageSeverity.rawValue), messageTypes.rawValue, ptr_callbackData)
        }
    }

    func createHeadlessSurfaceEXT(createInfo: HeadlessSurfaceCreateInfoEXT) throws -> SurfaceKHR {
        try createInfo.withCStruct { ptr_createInfo in
            var out: VkSurfaceKHR!
            try checkResult(
                self.dispatchTable.vkCreateHeadlessSurfaceEXT(self.handle, ptr_createInfo, nil, &out)
            )
            return SurfaceKHR(handle: out, instance: self)
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

    func getProperties() -> PhysicalDeviceProperties {
        var out = VkPhysicalDeviceProperties()
        self.instance.dispatchTable.vkGetPhysicalDeviceProperties(self.handle, &out)
        return PhysicalDeviceProperties(cStruct: out)
    }

    func getQueueFamilyProperties() -> Array<QueueFamilyProperties> {
        enumerate { pQueueFamilyProperties, pQueueFamilyPropertyCount in
            self.instance.dispatchTable.vkGetPhysicalDeviceQueueFamilyProperties(self.handle, pQueueFamilyPropertyCount, pQueueFamilyProperties)
        }.map { QueueFamilyProperties(cStruct: $0) }
    }

    func getMemoryProperties() -> PhysicalDeviceMemoryProperties {
        var out = VkPhysicalDeviceMemoryProperties()
        self.instance.dispatchTable.vkGetPhysicalDeviceMemoryProperties(self.handle, &out)
        return PhysicalDeviceMemoryProperties(cStruct: out)
    }

    func getFeatures() -> PhysicalDeviceFeatures {
        var out = VkPhysicalDeviceFeatures()
        self.instance.dispatchTable.vkGetPhysicalDeviceFeatures(self.handle, &out)
        return PhysicalDeviceFeatures(cStruct: out)
    }

    func getFormatProperties(format: Format) -> FormatProperties {
        var out = VkFormatProperties()
        self.instance.dispatchTable.vkGetPhysicalDeviceFormatProperties(self.handle, VkFormat(rawValue: format.rawValue), &out)
        return FormatProperties(cStruct: out)
    }

    func getImageFormatProperties(format: Format, type: ImageType, tiling: ImageTiling, usage: ImageUsageFlags, flags: ImageCreateFlags) throws -> ImageFormatProperties {
        var out = VkImageFormatProperties()
        try checkResult(
            self.instance.dispatchTable.vkGetPhysicalDeviceImageFormatProperties(self.handle, VkFormat(rawValue: format.rawValue), VkImageType(rawValue: type.rawValue), VkImageTiling(rawValue: tiling.rawValue), usage.rawValue, flags.rawValue, &out)
        )
        return ImageFormatProperties(cStruct: out)
    }

    func createDevice(createInfo: DeviceCreateInfo) throws -> Device {
        try createInfo.withCStruct { ptr_createInfo in
            var out: VkDevice!
            try checkResult(
                self.instance.dispatchTable.vkCreateDevice(self.handle, ptr_createInfo, nil, &out)
            )
            return Device(handle: out, physicalDevice: self)
        }
    }

    func getDeviceLayerProperties() throws -> Array<LayerProperties> {
        try enumerate { pProperties, pPropertyCount in
            self.instance.dispatchTable.vkEnumerateDeviceLayerProperties(self.handle, pPropertyCount, pProperties)
        }.map { LayerProperties(cStruct: $0) }
    }

    func getDeviceExtensionProperties(layerName: String?) throws -> Array<ExtensionProperties> {
        try layerName.withOptionalCString { cString_layerName in
            try enumerate { pProperties, pPropertyCount in
                self.instance.dispatchTable.vkEnumerateDeviceExtensionProperties(self.handle, cString_layerName, pPropertyCount, pProperties)
            }.map { ExtensionProperties(cStruct: $0) }
        }
    }

    func getSparseImageFormatProperties(format: Format, type: ImageType, samples: SampleCountFlags, usage: ImageUsageFlags, tiling: ImageTiling) -> Array<SparseImageFormatProperties> {
        enumerate { pProperties, pPropertyCount in
            self.instance.dispatchTable.vkGetPhysicalDeviceSparseImageFormatProperties(self.handle, VkFormat(rawValue: format.rawValue), VkImageType(rawValue: type.rawValue), VkSampleCountFlagBits(rawValue: samples.rawValue), usage.rawValue, VkImageTiling(rawValue: tiling.rawValue), pPropertyCount, pProperties)
        }.map { SparseImageFormatProperties(cStruct: $0) }
    }

    func getDisplayPropertiesKHR() throws -> Array<DisplayPropertiesKHR> {
        try enumerate { pProperties, pPropertyCount in
            self.instance.dispatchTable.vkGetPhysicalDeviceDisplayPropertiesKHR(self.handle, pPropertyCount, pProperties)
        }.map { DisplayPropertiesKHR(cStruct: $0) }
    }

    func getDisplayPlanePropertiesKHR() throws -> Array<DisplayPlanePropertiesKHR> {
        try enumerate { pProperties, pPropertyCount in
            self.instance.dispatchTable.vkGetPhysicalDeviceDisplayPlanePropertiesKHR(self.handle, pPropertyCount, pProperties)
        }.map { DisplayPlanePropertiesKHR(cStruct: $0) }
    }

    func getDisplayPlaneSupportedDisplaysKHR(planeIndex: UInt32) throws -> Array<DisplayKHR> {
        try enumerate { pDisplays, pDisplayCount in
            self.instance.dispatchTable.vkGetDisplayPlaneSupportedDisplaysKHR(self.handle, planeIndex, pDisplayCount, pDisplays)
        }.map { DisplayKHR(handle: $0, physicalDevice: self) }
    }

    func getSurfaceSupportKHR(queueFamilyIndex: UInt32, surface: SurfaceKHR) throws -> Bool {
        var out = VkBool32()
        try checkResult(
            self.instance.dispatchTable.vkGetPhysicalDeviceSurfaceSupportKHR(self.handle, queueFamilyIndex, surface.handle, &out)
        )
        return out == VK_TRUE
    }

    func getSurfaceCapabilitiesKHR(surface: SurfaceKHR) throws -> SurfaceCapabilitiesKHR {
        var out = VkSurfaceCapabilitiesKHR()
        try checkResult(
            self.instance.dispatchTable.vkGetPhysicalDeviceSurfaceCapabilitiesKHR(self.handle, surface.handle, &out)
        )
        return SurfaceCapabilitiesKHR(cStruct: out)
    }

    func getSurfaceFormatsKHR(surface: SurfaceKHR) throws -> Array<SurfaceFormatKHR> {
        try enumerate { pSurfaceFormats, pSurfaceFormatCount in
            self.instance.dispatchTable.vkGetPhysicalDeviceSurfaceFormatsKHR(self.handle, surface.handle, pSurfaceFormatCount, pSurfaceFormats)
        }.map { SurfaceFormatKHR(cStruct: $0) }
    }

    func getSurfacePresentModesKHR(surface: SurfaceKHR) throws -> Array<PresentModeKHR> {
        try enumerate { pPresentModes, pPresentModeCount in
            self.instance.dispatchTable.vkGetPhysicalDeviceSurfacePresentModesKHR(self.handle, surface.handle, pPresentModeCount, pPresentModes)
        }.map { PresentModeKHR(rawValue: $0.rawValue)! }
    }

    func getExternalImageFormatPropertiesNV(format: Format, type: ImageType, tiling: ImageTiling, usage: ImageUsageFlags, flags: ImageCreateFlags, externalHandleType: ExternalMemoryHandleTypeFlagsNV) throws -> ExternalImageFormatPropertiesNV {
        var out = VkExternalImageFormatPropertiesNV()
        try checkResult(
            self.instance.dispatchTable.vkGetPhysicalDeviceExternalImageFormatPropertiesNV(self.handle, VkFormat(rawValue: format.rawValue), VkImageType(rawValue: type.rawValue), VkImageTiling(rawValue: tiling.rawValue), usage.rawValue, flags.rawValue, externalHandleType.rawValue, &out)
        )
        return ExternalImageFormatPropertiesNV(cStruct: out)
    }

    func getFeatures2() -> PhysicalDeviceFeatures2 {
        var out = VkPhysicalDeviceFeatures2()
        self.instance.dispatchTable.vkGetPhysicalDeviceFeatures2(self.handle, &out)
        return PhysicalDeviceFeatures2(cStruct: out)
    }

    func getProperties2() -> PhysicalDeviceProperties2 {
        var out = VkPhysicalDeviceProperties2()
        self.instance.dispatchTable.vkGetPhysicalDeviceProperties2(self.handle, &out)
        return PhysicalDeviceProperties2(cStruct: out)
    }

    func getFormatProperties2(format: Format) -> FormatProperties2 {
        var out = VkFormatProperties2()
        self.instance.dispatchTable.vkGetPhysicalDeviceFormatProperties2(self.handle, VkFormat(rawValue: format.rawValue), &out)
        return FormatProperties2(cStruct: out)
    }

    func getImageFormatProperties2(imageFormatInfo: PhysicalDeviceImageFormatInfo2) throws -> ImageFormatProperties2 {
        try imageFormatInfo.withCStruct { ptr_imageFormatInfo in
            var out = VkImageFormatProperties2()
            try checkResult(
                self.instance.dispatchTable.vkGetPhysicalDeviceImageFormatProperties2(self.handle, ptr_imageFormatInfo, &out)
            )
            return ImageFormatProperties2(cStruct: out)
        }
    }

    func getQueueFamilyProperties2() -> Array<QueueFamilyProperties2> {
        enumerate { pQueueFamilyProperties, pQueueFamilyPropertyCount in
            self.instance.dispatchTable.vkGetPhysicalDeviceQueueFamilyProperties2(self.handle, pQueueFamilyPropertyCount, pQueueFamilyProperties)
        }.map { QueueFamilyProperties2(cStruct: $0) }
    }

    func getMemoryProperties2() -> PhysicalDeviceMemoryProperties2 {
        var out = VkPhysicalDeviceMemoryProperties2()
        self.instance.dispatchTable.vkGetPhysicalDeviceMemoryProperties2(self.handle, &out)
        return PhysicalDeviceMemoryProperties2(cStruct: out)
    }

    func getSparseImageFormatProperties2(formatInfo: PhysicalDeviceSparseImageFormatInfo2) -> Array<SparseImageFormatProperties2> {
        formatInfo.withCStruct { ptr_formatInfo in
            enumerate { pProperties, pPropertyCount in
                self.instance.dispatchTable.vkGetPhysicalDeviceSparseImageFormatProperties2(self.handle, ptr_formatInfo, pPropertyCount, pProperties)
            }.map { SparseImageFormatProperties2(cStruct: $0) }
        }
    }

    func getExternalBufferProperties(externalBufferInfo: PhysicalDeviceExternalBufferInfo) -> ExternalBufferProperties {
        externalBufferInfo.withCStruct { ptr_externalBufferInfo in
            var out = VkExternalBufferProperties()
            self.instance.dispatchTable.vkGetPhysicalDeviceExternalBufferProperties(self.handle, ptr_externalBufferInfo, &out)
            return ExternalBufferProperties(cStruct: out)
        }
    }

    func getExternalSemaphoreProperties(externalSemaphoreInfo: PhysicalDeviceExternalSemaphoreInfo) -> ExternalSemaphoreProperties {
        externalSemaphoreInfo.withCStruct { ptr_externalSemaphoreInfo in
            var out = VkExternalSemaphoreProperties()
            self.instance.dispatchTable.vkGetPhysicalDeviceExternalSemaphoreProperties(self.handle, ptr_externalSemaphoreInfo, &out)
            return ExternalSemaphoreProperties(cStruct: out)
        }
    }

    func getExternalFenceProperties(externalFenceInfo: PhysicalDeviceExternalFenceInfo) -> ExternalFenceProperties {
        externalFenceInfo.withCStruct { ptr_externalFenceInfo in
            var out = VkExternalFenceProperties()
            self.instance.dispatchTable.vkGetPhysicalDeviceExternalFenceProperties(self.handle, ptr_externalFenceInfo, &out)
            return ExternalFenceProperties(cStruct: out)
        }
    }

    func getSurfaceCapabilities2EXT(surface: SurfaceKHR) throws -> SurfaceCapabilities2EXT {
        var out = VkSurfaceCapabilities2EXT()
        try checkResult(
            self.instance.dispatchTable.vkGetPhysicalDeviceSurfaceCapabilities2EXT(self.handle, surface.handle, &out)
        )
        return SurfaceCapabilities2EXT(cStruct: out)
    }

    func getPresentRectanglesKHR(surface: SurfaceKHR) throws -> Array<Rect2D> {
        try enumerate { pRects, pRectCount in
            self.instance.dispatchTable.vkGetPhysicalDevicePresentRectanglesKHR(self.handle, surface.handle, pRectCount, pRects)
        }.map { Rect2D(cStruct: $0) }
    }

    func getMultisamplePropertiesEXT(samples: SampleCountFlags) -> MultisamplePropertiesEXT {
        var out = VkMultisamplePropertiesEXT()
        self.instance.dispatchTable.vkGetPhysicalDeviceMultisamplePropertiesEXT(self.handle, VkSampleCountFlagBits(rawValue: samples.rawValue), &out)
        return MultisamplePropertiesEXT(cStruct: out)
    }

    func getSurfaceCapabilities2KHR(surfaceInfo: PhysicalDeviceSurfaceInfo2KHR) throws -> SurfaceCapabilities2KHR {
        try surfaceInfo.withCStruct { ptr_surfaceInfo in
            var out = VkSurfaceCapabilities2KHR()
            try checkResult(
                self.instance.dispatchTable.vkGetPhysicalDeviceSurfaceCapabilities2KHR(self.handle, ptr_surfaceInfo, &out)
            )
            return SurfaceCapabilities2KHR(cStruct: out)
        }
    }

    func getSurfaceFormats2KHR(surfaceInfo: PhysicalDeviceSurfaceInfo2KHR) throws -> Array<SurfaceFormat2KHR> {
        try surfaceInfo.withCStruct { ptr_surfaceInfo in
            try enumerate { pSurfaceFormats, pSurfaceFormatCount in
                self.instance.dispatchTable.vkGetPhysicalDeviceSurfaceFormats2KHR(self.handle, ptr_surfaceInfo, pSurfaceFormatCount, pSurfaceFormats)
            }.map { SurfaceFormat2KHR(cStruct: $0) }
        }
    }

    func getDisplayProperties2KHR() throws -> Array<DisplayProperties2KHR> {
        try enumerate { pProperties, pPropertyCount in
            self.instance.dispatchTable.vkGetPhysicalDeviceDisplayProperties2KHR(self.handle, pPropertyCount, pProperties)
        }.map { DisplayProperties2KHR(cStruct: $0) }
    }

    func getDisplayPlaneProperties2KHR() throws -> Array<DisplayPlaneProperties2KHR> {
        try enumerate { pProperties, pPropertyCount in
            self.instance.dispatchTable.vkGetPhysicalDeviceDisplayPlaneProperties2KHR(self.handle, pPropertyCount, pProperties)
        }.map { DisplayPlaneProperties2KHR(cStruct: $0) }
    }

    func getDisplayPlaneCapabilities2KHR(displayPlaneInfo: DisplayPlaneInfo2KHR) throws -> DisplayPlaneCapabilities2KHR {
        try displayPlaneInfo.withCStruct { ptr_displayPlaneInfo in
            var out = VkDisplayPlaneCapabilities2KHR()
            try checkResult(
                self.instance.dispatchTable.vkGetDisplayPlaneCapabilities2KHR(self.handle, ptr_displayPlaneInfo, &out)
            )
            return DisplayPlaneCapabilities2KHR(cStruct: out)
        }
    }

    func getCalibrateableTimeDomainsEXT() throws -> Array<TimeDomainEXT> {
        try enumerate { pTimeDomains, pTimeDomainCount in
            self.instance.dispatchTable.vkGetPhysicalDeviceCalibrateableTimeDomainsEXT(self.handle, pTimeDomainCount, pTimeDomains)
        }.map { TimeDomainEXT(rawValue: $0.rawValue)! }
    }

    func getCooperativeMatrixPropertiesNV() throws -> Array<CooperativeMatrixPropertiesNV> {
        try enumerate { pProperties, pPropertyCount in
            self.instance.dispatchTable.vkGetPhysicalDeviceCooperativeMatrixPropertiesNV(self.handle, pPropertyCount, pProperties)
        }.map { CooperativeMatrixPropertiesNV(cStruct: $0) }
    }

    func getQueueFamilyPerformanceQueryCountersKHR(queueFamilyIndex: UInt32, counterCount: UnsafeMutablePointer<UInt32>, counters: UnsafeMutablePointer<VkPerformanceCounterKHR>, counterDescriptions: UnsafeMutablePointer<VkPerformanceCounterDescriptionKHR>) throws -> Void {
        try checkResult(
            self.instance.dispatchTable.vkEnumeratePhysicalDeviceQueueFamilyPerformanceQueryCountersKHR(self.handle, queueFamilyIndex, counterCount, counters, counterDescriptions)
        )
    }

    func getQueueFamilyPerformanceQueryPassesKHR(performanceQueryCreateInfo: QueryPoolPerformanceCreateInfoKHR) -> UInt32 {
        performanceQueryCreateInfo.withCStruct { ptr_performanceQueryCreateInfo in
            var out = UInt32()
            self.instance.dispatchTable.vkGetPhysicalDeviceQueueFamilyPerformanceQueryPassesKHR(self.handle, ptr_performanceQueryCreateInfo, &out)
            return out
        }
    }

    func getSupportedFramebufferMixedSamplesCombinationsNV() throws -> Array<FramebufferMixedSamplesCombinationNV> {
        try enumerate { pCombinations, pCombinationCount in
            self.instance.dispatchTable.vkGetPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNV(self.handle, pCombinationCount, pCombinations)
        }.map { FramebufferMixedSamplesCombinationNV(cStruct: $0) }
    }

    func getToolPropertiesEXT() throws -> Array<PhysicalDeviceToolPropertiesEXT> {
        try enumerate { pToolProperties, pToolCount in
            self.instance.dispatchTable.vkGetPhysicalDeviceToolPropertiesEXT(self.handle, pToolCount, pToolProperties)
        }.map { PhysicalDeviceToolPropertiesEXT(cStruct: $0) }
    }
}

class Device {
    let handle: VkDevice!
    let physicalDevice: PhysicalDevice
    let dispatchTable: DeviceDispatchTable

    init(handle: VkDevice!, physicalDevice: PhysicalDevice) {
        self.handle = handle
        self.physicalDevice = physicalDevice
        self.dispatchTable = DeviceDispatchTable(vkGetDeviceProcAddr: vkGetDeviceProcAddr, device: handle)
    }

    func getProcAddr(name: String) -> PFN_vkVoidFunction {
        name.withCString { cString_name in
            self.physicalDevice.instance.dispatchTable.vkGetDeviceProcAddr(self.handle, cString_name)
        }
    }

    func destroy() -> Void {
        self.dispatchTable.vkDestroyDevice(self.handle, nil)
    }

    func getQueue(queueFamilyIndex: UInt32, queueIndex: UInt32) -> Queue {
        var out: VkQueue!
        self.dispatchTable.vkGetDeviceQueue(self.handle, queueFamilyIndex, queueIndex, &out)
        return Queue(handle: out, device: self)
    }

    func waitIdle() throws -> Void {
        try checkResult(
            self.dispatchTable.vkDeviceWaitIdle(self.handle)
        )
    }

    func allocateMemory(allocateInfo: MemoryAllocateInfo) throws -> DeviceMemory {
        try allocateInfo.withCStruct { ptr_allocateInfo in
            var out: VkDeviceMemory!
            try checkResult(
                self.dispatchTable.vkAllocateMemory(self.handle, ptr_allocateInfo, nil, &out)
            )
            return DeviceMemory(handle: out, device: self)
        }
    }

    func flushMappedMemoryRanges(memoryRanges: Array<MappedMemoryRange>) throws -> Void {
        try memoryRanges.withCStructBufferPointer { ptr_memoryRanges in
            try checkResult(
                self.dispatchTable.vkFlushMappedMemoryRanges(self.handle, UInt32(ptr_memoryRanges.count), ptr_memoryRanges.baseAddress)
            )
        }
    }

    func invalidateMappedMemoryRanges(memoryRanges: Array<MappedMemoryRange>) throws -> Void {
        try memoryRanges.withCStructBufferPointer { ptr_memoryRanges in
            try checkResult(
                self.dispatchTable.vkInvalidateMappedMemoryRanges(self.handle, UInt32(ptr_memoryRanges.count), ptr_memoryRanges.baseAddress)
            )
        }
    }

    func createFence(createInfo: FenceCreateInfo) throws -> Fence {
        try createInfo.withCStruct { ptr_createInfo in
            var out: VkFence!
            try checkResult(
                self.dispatchTable.vkCreateFence(self.handle, ptr_createInfo, nil, &out)
            )
            return Fence(handle: out, device: self)
        }
    }

    func resetFences(fences: Array<Fence>) throws -> Void {
        try fences.map{ $0.handle }.withUnsafeBufferPointer { ptr_fences in
            try checkResult(
                self.dispatchTable.vkResetFences(self.handle, UInt32(ptr_fences.count), ptr_fences.baseAddress)
            )
        }
    }

    func waitForFences(fences: Array<Fence>, waitAll: Bool, timeout: UInt64) throws -> Void {
        try fences.map{ $0.handle }.withUnsafeBufferPointer { ptr_fences in
            try checkResult(
                self.dispatchTable.vkWaitForFences(self.handle, UInt32(ptr_fences.count), ptr_fences.baseAddress, VkBool32(waitAll ? VK_TRUE : VK_FALSE), timeout)
            )
        }
    }

    func createSemaphore(createInfo: SemaphoreCreateInfo) throws -> Semaphore {
        try createInfo.withCStruct { ptr_createInfo in
            var out: VkSemaphore!
            try checkResult(
                self.dispatchTable.vkCreateSemaphore(self.handle, ptr_createInfo, nil, &out)
            )
            return Semaphore(handle: out, device: self)
        }
    }

    func createEvent(createInfo: EventCreateInfo) throws -> Event {
        try createInfo.withCStruct { ptr_createInfo in
            var out: VkEvent!
            try checkResult(
                self.dispatchTable.vkCreateEvent(self.handle, ptr_createInfo, nil, &out)
            )
            return Event(handle: out, device: self)
        }
    }

    func createQueryPool(createInfo: QueryPoolCreateInfo) throws -> QueryPool {
        try createInfo.withCStruct { ptr_createInfo in
            var out: VkQueryPool!
            try checkResult(
                self.dispatchTable.vkCreateQueryPool(self.handle, ptr_createInfo, nil, &out)
            )
            return QueryPool(handle: out, device: self)
        }
    }

    func createBuffer(createInfo: BufferCreateInfo) throws -> Buffer {
        try createInfo.withCStruct { ptr_createInfo in
            var out: VkBuffer!
            try checkResult(
                self.dispatchTable.vkCreateBuffer(self.handle, ptr_createInfo, nil, &out)
            )
            return Buffer(handle: out, device: self)
        }
    }

    func createBufferView(createInfo: BufferViewCreateInfo) throws -> BufferView {
        try createInfo.withCStruct { ptr_createInfo in
            var out: VkBufferView!
            try checkResult(
                self.dispatchTable.vkCreateBufferView(self.handle, ptr_createInfo, nil, &out)
            )
            return BufferView(handle: out, device: self)
        }
    }

    func createImage(createInfo: ImageCreateInfo) throws -> Image {
        try createInfo.withCStruct { ptr_createInfo in
            var out: VkImage!
            try checkResult(
                self.dispatchTable.vkCreateImage(self.handle, ptr_createInfo, nil, &out)
            )
            return Image(handle: out, device: self)
        }
    }

    func createImageView(createInfo: ImageViewCreateInfo) throws -> ImageView {
        try createInfo.withCStruct { ptr_createInfo in
            var out: VkImageView!
            try checkResult(
                self.dispatchTable.vkCreateImageView(self.handle, ptr_createInfo, nil, &out)
            )
            return ImageView(handle: out, device: self)
        }
    }

    func createShaderModule(createInfo: ShaderModuleCreateInfo) throws -> ShaderModule {
        try createInfo.withCStruct { ptr_createInfo in
            var out: VkShaderModule!
            try checkResult(
                self.dispatchTable.vkCreateShaderModule(self.handle, ptr_createInfo, nil, &out)
            )
            return ShaderModule(handle: out, device: self)
        }
    }

    func createPipelineCache(createInfo: PipelineCacheCreateInfo) throws -> PipelineCache {
        try createInfo.withCStruct { ptr_createInfo in
            var out: VkPipelineCache!
            try checkResult(
                self.dispatchTable.vkCreatePipelineCache(self.handle, ptr_createInfo, nil, &out)
            )
            return PipelineCache(handle: out, device: self)
        }
    }

    func createGraphicsPipelines(pipelineCache: PipelineCache?, createInfos: Array<GraphicsPipelineCreateInfo>) throws -> Array<Pipeline> {
        try createInfos.withCStructBufferPointer { ptr_createInfos in
            try Array<VkPipeline?>(unsafeUninitializedCapacity: Int(UInt32(ptr_createInfos.count))) { out, initializedCount in
                try checkResult(
                    self.dispatchTable.vkCreateGraphicsPipelines(self.handle, pipelineCache?.handle, UInt32(ptr_createInfos.count), ptr_createInfos.baseAddress, nil, out.baseAddress)
                )
            }.map { Pipeline(handle: $0, device: self) }
        }
    }

    func createComputePipelines(pipelineCache: PipelineCache?, createInfos: Array<ComputePipelineCreateInfo>) throws -> Array<Pipeline> {
        try createInfos.withCStructBufferPointer { ptr_createInfos in
            try Array<VkPipeline?>(unsafeUninitializedCapacity: Int(UInt32(ptr_createInfos.count))) { out, initializedCount in
                try checkResult(
                    self.dispatchTable.vkCreateComputePipelines(self.handle, pipelineCache?.handle, UInt32(ptr_createInfos.count), ptr_createInfos.baseAddress, nil, out.baseAddress)
                )
            }.map { Pipeline(handle: $0, device: self) }
        }
    }

    func createPipelineLayout(createInfo: PipelineLayoutCreateInfo) throws -> PipelineLayout {
        try createInfo.withCStruct { ptr_createInfo in
            var out: VkPipelineLayout!
            try checkResult(
                self.dispatchTable.vkCreatePipelineLayout(self.handle, ptr_createInfo, nil, &out)
            )
            return PipelineLayout(handle: out, device: self)
        }
    }

    func createSampler(createInfo: SamplerCreateInfo) throws -> Sampler {
        try createInfo.withCStruct { ptr_createInfo in
            var out: VkSampler!
            try checkResult(
                self.dispatchTable.vkCreateSampler(self.handle, ptr_createInfo, nil, &out)
            )
            return Sampler(handle: out, device: self)
        }
    }

    func createDescriptorSetLayout(createInfo: DescriptorSetLayoutCreateInfo) throws -> DescriptorSetLayout {
        try createInfo.withCStruct { ptr_createInfo in
            var out: VkDescriptorSetLayout!
            try checkResult(
                self.dispatchTable.vkCreateDescriptorSetLayout(self.handle, ptr_createInfo, nil, &out)
            )
            return DescriptorSetLayout(handle: out, device: self)
        }
    }

    func createDescriptorPool(createInfo: DescriptorPoolCreateInfo) throws -> DescriptorPool {
        try createInfo.withCStruct { ptr_createInfo in
            var out: VkDescriptorPool!
            try checkResult(
                self.dispatchTable.vkCreateDescriptorPool(self.handle, ptr_createInfo, nil, &out)
            )
            return DescriptorPool(handle: out, device: self)
        }
    }

    func allocateDescriptorSets(allocateInfo: DescriptorSetAllocateInfo) throws -> Array<DescriptorSet> {
        try allocateInfo.withCStruct { ptr_allocateInfo in
            try Array<VkDescriptorSet?>(unsafeUninitializedCapacity: Int(ptr_allocateInfo.pointee.descriptorSetCount)) { out, initializedCount in
                try checkResult(
                    self.dispatchTable.vkAllocateDescriptorSets(self.handle, ptr_allocateInfo, out.baseAddress)
                )
            }.map { DescriptorSet(handle: $0, descriptorPool: allocateInfo.descriptorPool) }
        }
    }

    func updateDescriptorSets(descriptorWrites: Array<WriteDescriptorSet>, descriptorCopies: Array<CopyDescriptorSet>) -> Void {
        descriptorWrites.withCStructBufferPointer { ptr_descriptorWrites in
            descriptorCopies.withCStructBufferPointer { ptr_descriptorCopies in
                self.dispatchTable.vkUpdateDescriptorSets(self.handle, UInt32(ptr_descriptorWrites.count), ptr_descriptorWrites.baseAddress, UInt32(ptr_descriptorCopies.count), ptr_descriptorCopies.baseAddress)
            }
        }
    }

    func createFramebuffer(createInfo: FramebufferCreateInfo) throws -> Framebuffer {
        try createInfo.withCStruct { ptr_createInfo in
            var out: VkFramebuffer!
            try checkResult(
                self.dispatchTable.vkCreateFramebuffer(self.handle, ptr_createInfo, nil, &out)
            )
            return Framebuffer(handle: out, device: self)
        }
    }

    func createRenderPass(createInfo: RenderPassCreateInfo) throws -> RenderPass {
        try createInfo.withCStruct { ptr_createInfo in
            var out: VkRenderPass!
            try checkResult(
                self.dispatchTable.vkCreateRenderPass(self.handle, ptr_createInfo, nil, &out)
            )
            return RenderPass(handle: out, device: self)
        }
    }

    func createCommandPool(createInfo: CommandPoolCreateInfo) throws -> CommandPool {
        try createInfo.withCStruct { ptr_createInfo in
            var out: VkCommandPool!
            try checkResult(
                self.dispatchTable.vkCreateCommandPool(self.handle, ptr_createInfo, nil, &out)
            )
            return CommandPool(handle: out, device: self)
        }
    }

    func allocateCommandBuffers(allocateInfo: CommandBufferAllocateInfo) throws -> Array<CommandBuffer> {
        try allocateInfo.withCStruct { ptr_allocateInfo in
            try Array<VkCommandBuffer?>(unsafeUninitializedCapacity: Int(ptr_allocateInfo.pointee.commandBufferCount)) { out, initializedCount in
                try checkResult(
                    self.dispatchTable.vkAllocateCommandBuffers(self.handle, ptr_allocateInfo, out.baseAddress)
                )
            }.map { CommandBuffer(handle: $0, commandPool: allocateInfo.commandPool) }
        }
    }

    func createSharedSwapchainsKHR(createInfos: Array<SwapchainCreateInfoKHR>) throws -> Array<SwapchainKHR> {
        try createInfos.withCStructBufferPointer { ptr_createInfos in
            try Array<VkSwapchainKHR?>(unsafeUninitializedCapacity: Int(UInt32(ptr_createInfos.count))) { out, initializedCount in
                try checkResult(
                    self.dispatchTable.vkCreateSharedSwapchainsKHR(self.handle, UInt32(ptr_createInfos.count), ptr_createInfos.baseAddress, nil, out.baseAddress)
                )
            }.map { SwapchainKHR(handle: $0, device: self) }
        }
    }

    func createSwapchainKHR(createInfo: SwapchainCreateInfoKHR) throws -> SwapchainKHR {
        try createInfo.withCStruct { ptr_createInfo in
            var out: VkSwapchainKHR!
            try checkResult(
                self.dispatchTable.vkCreateSwapchainKHR(self.handle, ptr_createInfo, nil, &out)
            )
            return SwapchainKHR(handle: out, device: self)
        }
    }

    func debugMarkerSetObjectNameEXT(nameInfo: DebugMarkerObjectNameInfoEXT) throws -> Void {
        try nameInfo.withCStruct { ptr_nameInfo in
            try checkResult(
                self.dispatchTable.vkDebugMarkerSetObjectNameEXT(self.handle, ptr_nameInfo)
            )
        }
    }

    func debugMarkerSetObjectTagEXT(tagInfo: DebugMarkerObjectTagInfoEXT) throws -> Void {
        try tagInfo.withCStruct { ptr_tagInfo in
            try checkResult(
                self.dispatchTable.vkDebugMarkerSetObjectTagEXT(self.handle, ptr_tagInfo)
            )
        }
    }

    func getGeneratedCommandsMemoryRequirementsNV(info: GeneratedCommandsMemoryRequirementsInfoNV) -> MemoryRequirements2 {
        info.withCStruct { ptr_info in
            var out = VkMemoryRequirements2()
            self.dispatchTable.vkGetGeneratedCommandsMemoryRequirementsNV(self.handle, ptr_info, &out)
            return MemoryRequirements2(cStruct: out)
        }
    }

    func createIndirectCommandsLayoutNV(createInfo: IndirectCommandsLayoutCreateInfoNV) throws -> IndirectCommandsLayoutNV {
        try createInfo.withCStruct { ptr_createInfo in
            var out: VkIndirectCommandsLayoutNV!
            try checkResult(
                self.dispatchTable.vkCreateIndirectCommandsLayoutNV(self.handle, ptr_createInfo, nil, &out)
            )
            return IndirectCommandsLayoutNV(handle: out, device: self)
        }
    }

    func getMemoryFdKHR(getFdInfo: MemoryGetFdInfoKHR) throws -> Int32 {
        try getFdInfo.withCStruct { ptr_getFdInfo in
            var out = Int32()
            try checkResult(
                self.dispatchTable.vkGetMemoryFdKHR(self.handle, ptr_getFdInfo, &out)
            )
            return out
        }
    }

    func getMemoryFdPropertiesKHR(handleType: ExternalMemoryHandleTypeFlags, fd: Int32) throws -> MemoryFdPropertiesKHR {
        var out = VkMemoryFdPropertiesKHR()
        try checkResult(
            self.dispatchTable.vkGetMemoryFdPropertiesKHR(self.handle, VkExternalMemoryHandleTypeFlagBits(rawValue: handleType.rawValue), fd, &out)
        )
        return MemoryFdPropertiesKHR(cStruct: out)
    }

    func getSemaphoreFdKHR(getFdInfo: SemaphoreGetFdInfoKHR) throws -> Int32 {
        try getFdInfo.withCStruct { ptr_getFdInfo in
            var out = Int32()
            try checkResult(
                self.dispatchTable.vkGetSemaphoreFdKHR(self.handle, ptr_getFdInfo, &out)
            )
            return out
        }
    }

    func importSemaphoreFdKHR(importSemaphoreFdInfo: ImportSemaphoreFdInfoKHR) throws -> Void {
        try importSemaphoreFdInfo.withCStruct { ptr_importSemaphoreFdInfo in
            try checkResult(
                self.dispatchTable.vkImportSemaphoreFdKHR(self.handle, ptr_importSemaphoreFdInfo)
            )
        }
    }

    func getFenceFdKHR(getFdInfo: FenceGetFdInfoKHR) throws -> Int32 {
        try getFdInfo.withCStruct { ptr_getFdInfo in
            var out = Int32()
            try checkResult(
                self.dispatchTable.vkGetFenceFdKHR(self.handle, ptr_getFdInfo, &out)
            )
            return out
        }
    }

    func importFenceFdKHR(importFenceFdInfo: ImportFenceFdInfoKHR) throws -> Void {
        try importFenceFdInfo.withCStruct { ptr_importFenceFdInfo in
            try checkResult(
                self.dispatchTable.vkImportFenceFdKHR(self.handle, ptr_importFenceFdInfo)
            )
        }
    }

    func displayPowerControlEXT(display: DisplayKHR, displayPowerInfo: DisplayPowerInfoEXT) throws -> Void {
        try displayPowerInfo.withCStruct { ptr_displayPowerInfo in
            try checkResult(
                self.dispatchTable.vkDisplayPowerControlEXT(self.handle, display.handle, ptr_displayPowerInfo)
            )
        }
    }

    func registerEventEXT(deviceEventInfo: DeviceEventInfoEXT) throws -> Fence {
        try deviceEventInfo.withCStruct { ptr_deviceEventInfo in
            var out: VkFence!
            try checkResult(
                self.dispatchTable.vkRegisterDeviceEventEXT(self.handle, ptr_deviceEventInfo, nil, &out)
            )
            return Fence(handle: out, device: self)
        }
    }

    func registerDisplayEventEXT(display: DisplayKHR, displayEventInfo: DisplayEventInfoEXT) throws -> Fence {
        try displayEventInfo.withCStruct { ptr_displayEventInfo in
            var out: VkFence!
            try checkResult(
                self.dispatchTable.vkRegisterDisplayEventEXT(self.handle, display.handle, ptr_displayEventInfo, nil, &out)
            )
            return Fence(handle: out, device: self)
        }
    }

    func getGroupPeerMemoryFeatures(heapIndex: UInt32, localDeviceIndex: UInt32, remoteDeviceIndex: UInt32) -> PeerMemoryFeatureFlags {
        var out = VkPeerMemoryFeatureFlags()
        self.dispatchTable.vkGetDeviceGroupPeerMemoryFeatures(self.handle, heapIndex, localDeviceIndex, remoteDeviceIndex, &out)
        return PeerMemoryFeatureFlags(rawValue: out)
    }

    func bindBufferMemory2(bindInfos: Array<BindBufferMemoryInfo>) throws -> Void {
        try bindInfos.withCStructBufferPointer { ptr_bindInfos in
            try checkResult(
                self.dispatchTable.vkBindBufferMemory2(self.handle, UInt32(ptr_bindInfos.count), ptr_bindInfos.baseAddress)
            )
        }
    }

    func bindImageMemory2(bindInfos: Array<BindImageMemoryInfo>) throws -> Void {
        try bindInfos.withCStructBufferPointer { ptr_bindInfos in
            try checkResult(
                self.dispatchTable.vkBindImageMemory2(self.handle, UInt32(ptr_bindInfos.count), ptr_bindInfos.baseAddress)
            )
        }
    }

    func getGroupPresentCapabilitiesKHR() throws -> DeviceGroupPresentCapabilitiesKHR {
        var out = VkDeviceGroupPresentCapabilitiesKHR()
        try checkResult(
            self.dispatchTable.vkGetDeviceGroupPresentCapabilitiesKHR(self.handle, &out)
        )
        return DeviceGroupPresentCapabilitiesKHR(cStruct: out)
    }

    func getGroupSurfacePresentModesKHR(surface: SurfaceKHR) throws -> DeviceGroupPresentModeFlagsKHR {
        var out = VkDeviceGroupPresentModeFlagsKHR()
        try checkResult(
            self.dispatchTable.vkGetDeviceGroupSurfacePresentModesKHR(self.handle, surface.handle, &out)
        )
        return DeviceGroupPresentModeFlagsKHR(rawValue: out)
    }

    func acquireNextImage2KHR(acquireInfo: AcquireNextImageInfoKHR) throws -> UInt32 {
        try acquireInfo.withCStruct { ptr_acquireInfo in
            var out = UInt32()
            try checkResult(
                self.dispatchTable.vkAcquireNextImage2KHR(self.handle, ptr_acquireInfo, &out)
            )
            return out
        }
    }

    func createDescriptorUpdateTemplate(createInfo: DescriptorUpdateTemplateCreateInfo) throws -> DescriptorUpdateTemplate {
        try createInfo.withCStruct { ptr_createInfo in
            var out: VkDescriptorUpdateTemplate!
            try checkResult(
                self.dispatchTable.vkCreateDescriptorUpdateTemplate(self.handle, ptr_createInfo, nil, &out)
            )
            return DescriptorUpdateTemplate(handle: out, device: self)
        }
    }

    func setHdrMetadataEXT(swapchains: Array<SwapchainKHR>, metadata: Array<HdrMetadataEXT>) -> Void {
        swapchains.map{ $0.handle }.withUnsafeBufferPointer { ptr_swapchains in
            metadata.withCStructBufferPointer { ptr_metadata in
                self.dispatchTable.vkSetHdrMetadataEXT(self.handle, UInt32(ptr_swapchains.count), ptr_swapchains.baseAddress, ptr_metadata.baseAddress)
            }
        }
    }

    func getBufferMemoryRequirements2(info: BufferMemoryRequirementsInfo2) -> MemoryRequirements2 {
        info.withCStruct { ptr_info in
            var out = VkMemoryRequirements2()
            self.dispatchTable.vkGetBufferMemoryRequirements2(self.handle, ptr_info, &out)
            return MemoryRequirements2(cStruct: out)
        }
    }

    func getImageMemoryRequirements2(info: ImageMemoryRequirementsInfo2) -> MemoryRequirements2 {
        info.withCStruct { ptr_info in
            var out = VkMemoryRequirements2()
            self.dispatchTable.vkGetImageMemoryRequirements2(self.handle, ptr_info, &out)
            return MemoryRequirements2(cStruct: out)
        }
    }

    func getImageSparseMemoryRequirements2(info: ImageSparseMemoryRequirementsInfo2) -> Array<SparseImageMemoryRequirements2> {
        info.withCStruct { ptr_info in
            enumerate { pSparseMemoryRequirements, pSparseMemoryRequirementCount in
                self.dispatchTable.vkGetImageSparseMemoryRequirements2(self.handle, ptr_info, pSparseMemoryRequirementCount, pSparseMemoryRequirements)
            }.map { SparseImageMemoryRequirements2(cStruct: $0) }
        }
    }

    func createSamplerYcbcrConversion(createInfo: SamplerYcbcrConversionCreateInfo) throws -> SamplerYcbcrConversion {
        try createInfo.withCStruct { ptr_createInfo in
            var out: VkSamplerYcbcrConversion!
            try checkResult(
                self.dispatchTable.vkCreateSamplerYcbcrConversion(self.handle, ptr_createInfo, nil, &out)
            )
            return SamplerYcbcrConversion(handle: out, device: self)
        }
    }

    func getQueue2(queueInfo: DeviceQueueInfo2) -> Queue {
        queueInfo.withCStruct { ptr_queueInfo in
            var out: VkQueue!
            self.dispatchTable.vkGetDeviceQueue2(self.handle, ptr_queueInfo, &out)
            return Queue(handle: out, device: self)
        }
    }

    func createValidationCacheEXT(createInfo: ValidationCacheCreateInfoEXT) throws -> ValidationCacheEXT {
        try createInfo.withCStruct { ptr_createInfo in
            var out: VkValidationCacheEXT!
            try checkResult(
                self.dispatchTable.vkCreateValidationCacheEXT(self.handle, ptr_createInfo, nil, &out)
            )
            return ValidationCacheEXT(handle: out, device: self)
        }
    }

    func getDescriptorSetLayoutSupport(createInfo: DescriptorSetLayoutCreateInfo) -> DescriptorSetLayoutSupport {
        createInfo.withCStruct { ptr_createInfo in
            var out = VkDescriptorSetLayoutSupport()
            self.dispatchTable.vkGetDescriptorSetLayoutSupport(self.handle, ptr_createInfo, &out)
            return DescriptorSetLayoutSupport(cStruct: out)
        }
    }

    func getCalibratedTimestampsEXT(timestampInfos: Array<CalibratedTimestampInfoEXT>, timestamps: UnsafeMutablePointer<UInt64>, maxDeviation: UnsafeMutablePointer<UInt64>) throws -> Void {
        try timestampInfos.withCStructBufferPointer { ptr_timestampInfos in
            try checkResult(
                self.dispatchTable.vkGetCalibratedTimestampsEXT(self.handle, UInt32(ptr_timestampInfos.count), ptr_timestampInfos.baseAddress, timestamps, maxDeviation)
            )
        }
    }

    func setDebugUtilsObjectNameEXT(nameInfo: DebugUtilsObjectNameInfoEXT) throws -> Void {
        try nameInfo.withCStruct { ptr_nameInfo in
            try checkResult(
                self.dispatchTable.vkSetDebugUtilsObjectNameEXT(self.handle, ptr_nameInfo)
            )
        }
    }

    func setDebugUtilsObjectTagEXT(tagInfo: DebugUtilsObjectTagInfoEXT) throws -> Void {
        try tagInfo.withCStruct { ptr_tagInfo in
            try checkResult(
                self.dispatchTable.vkSetDebugUtilsObjectTagEXT(self.handle, ptr_tagInfo)
            )
        }
    }

    func getMemoryHostPointerPropertiesEXT(handleType: ExternalMemoryHandleTypeFlags, hostPointer: UnsafeRawPointer) throws -> MemoryHostPointerPropertiesEXT {
        var out = VkMemoryHostPointerPropertiesEXT()
        try checkResult(
            self.dispatchTable.vkGetMemoryHostPointerPropertiesEXT(self.handle, VkExternalMemoryHandleTypeFlagBits(rawValue: handleType.rawValue), hostPointer, &out)
        )
        return MemoryHostPointerPropertiesEXT(cStruct: out)
    }

    func createRenderPass2(createInfo: RenderPassCreateInfo2) throws -> RenderPass {
        try createInfo.withCStruct { ptr_createInfo in
            var out: VkRenderPass!
            try checkResult(
                self.dispatchTable.vkCreateRenderPass2(self.handle, ptr_createInfo, nil, &out)
            )
            return RenderPass(handle: out, device: self)
        }
    }

    func waitSemaphores(waitInfo: SemaphoreWaitInfo, timeout: UInt64) throws -> Void {
        try waitInfo.withCStruct { ptr_waitInfo in
            try checkResult(
                self.dispatchTable.vkWaitSemaphores(self.handle, ptr_waitInfo, timeout)
            )
        }
    }

    func signalSemaphore(signalInfo: SemaphoreSignalInfo) throws -> Void {
        try signalInfo.withCStruct { ptr_signalInfo in
            try checkResult(
                self.dispatchTable.vkSignalSemaphore(self.handle, ptr_signalInfo)
            )
        }
    }

    func createAccelerationStructureNV(createInfo: AccelerationStructureCreateInfoNV) throws -> AccelerationStructureNV {
        try createInfo.withCStruct { ptr_createInfo in
            var out: VkAccelerationStructureNV!
            try checkResult(
                self.dispatchTable.vkCreateAccelerationStructureNV(self.handle, ptr_createInfo, nil, &out)
            )
            return AccelerationStructureNV(handle: out, device: self)
        }
    }

    func getAccelerationStructureMemoryRequirementsNV(info: AccelerationStructureMemoryRequirementsInfoNV) -> VkMemoryRequirements2KHR {
        info.withCStruct { ptr_info in
            var out = VkMemoryRequirements2KHR()
            self.dispatchTable.vkGetAccelerationStructureMemoryRequirementsNV(self.handle, ptr_info, &out)
            return out
        }
    }

    func createRayTracingPipelinesNV(pipelineCache: PipelineCache?, createInfos: Array<RayTracingPipelineCreateInfoNV>) throws -> Array<Pipeline> {
        try createInfos.withCStructBufferPointer { ptr_createInfos in
            try Array<VkPipeline?>(unsafeUninitializedCapacity: Int(UInt32(ptr_createInfos.count))) { out, initializedCount in
                try checkResult(
                    self.dispatchTable.vkCreateRayTracingPipelinesNV(self.handle, pipelineCache?.handle, UInt32(ptr_createInfos.count), ptr_createInfos.baseAddress, nil, out.baseAddress)
                )
            }.map { Pipeline(handle: $0, device: self) }
        }
    }

    func getImageViewHandleNVX(info: ImageViewHandleInfoNVX) -> UInt32 {
        info.withCStruct { ptr_info in
            self.dispatchTable.vkGetImageViewHandleNVX(self.handle, ptr_info)
        }
    }

    func acquireProfilingLockKHR(info: AcquireProfilingLockInfoKHR) throws -> Void {
        try info.withCStruct { ptr_info in
            try checkResult(
                self.dispatchTable.vkAcquireProfilingLockKHR(self.handle, ptr_info)
            )
        }
    }

    func releaseProfilingLockKHR() -> Void {
        self.dispatchTable.vkReleaseProfilingLockKHR(self.handle)
    }

    func getBufferOpaqueCaptureAddress(info: BufferDeviceAddressInfo) -> UInt64 {
        info.withCStruct { ptr_info in
            self.dispatchTable.vkGetBufferOpaqueCaptureAddress(self.handle, ptr_info)
        }
    }

    func getBufferAddress(info: BufferDeviceAddressInfo) -> VkDeviceAddress {
        info.withCStruct { ptr_info in
            self.dispatchTable.vkGetBufferDeviceAddress(self.handle, ptr_info)
        }
    }

    func initializePerformanceApiINTEL(initializeInfo: InitializePerformanceApiInfoINTEL) throws -> Void {
        try initializeInfo.withCStruct { ptr_initializeInfo in
            try checkResult(
                self.dispatchTable.vkInitializePerformanceApiINTEL(self.handle, ptr_initializeInfo)
            )
        }
    }

    func uninitializePerformanceApiINTEL() -> Void {
        self.dispatchTable.vkUninitializePerformanceApiINTEL(self.handle)
    }

    func acquirePerformanceConfigurationINTEL(acquireInfo: PerformanceConfigurationAcquireInfoINTEL) throws -> PerformanceConfigurationINTEL {
        try acquireInfo.withCStruct { ptr_acquireInfo in
            var out: VkPerformanceConfigurationINTEL!
            try checkResult(
                self.dispatchTable.vkAcquirePerformanceConfigurationINTEL(self.handle, ptr_acquireInfo, &out)
            )
            return PerformanceConfigurationINTEL(handle: out, device: self)
        }
    }

    func getPerformanceParameterINTEL(parameter: PerformanceParameterTypeINTEL) throws -> PerformanceValueINTEL {
        var out = VkPerformanceValueINTEL()
        try checkResult(
            self.dispatchTable.vkGetPerformanceParameterINTEL(self.handle, VkPerformanceParameterTypeINTEL(rawValue: parameter.rawValue), &out)
        )
        return PerformanceValueINTEL(cStruct: out)
    }

    func getMemoryOpaqueCaptureAddress(info: DeviceMemoryOpaqueCaptureAddressInfo) -> UInt64 {
        info.withCStruct { ptr_info in
            self.dispatchTable.vkGetDeviceMemoryOpaqueCaptureAddress(self.handle, ptr_info)
        }
    }

    func getPipelineExecutablePropertiesKHR(pipelineInfo: PipelineInfoKHR) throws -> Array<PipelineExecutablePropertiesKHR> {
        try pipelineInfo.withCStruct { ptr_pipelineInfo in
            try enumerate { pProperties, pExecutableCount in
                self.dispatchTable.vkGetPipelineExecutablePropertiesKHR(self.handle, ptr_pipelineInfo, pExecutableCount, pProperties)
            }.map { PipelineExecutablePropertiesKHR(cStruct: $0) }
        }
    }

    func getPipelineExecutableStatisticsKHR(executableInfo: PipelineExecutableInfoKHR) throws -> Array<PipelineExecutableStatisticKHR> {
        try executableInfo.withCStruct { ptr_executableInfo in
            try enumerate { pStatistics, pStatisticCount in
                self.dispatchTable.vkGetPipelineExecutableStatisticsKHR(self.handle, ptr_executableInfo, pStatisticCount, pStatistics)
            }.map { PipelineExecutableStatisticKHR(cStruct: $0) }
        }
    }

    func getPipelineExecutableInternalRepresentationsKHR(executableInfo: PipelineExecutableInfoKHR) throws -> Array<PipelineExecutableInternalRepresentationKHR> {
        try executableInfo.withCStruct { ptr_executableInfo in
            try enumerate { pInternalRepresentations, pInternalRepresentationCount in
                self.dispatchTable.vkGetPipelineExecutableInternalRepresentationsKHR(self.handle, ptr_executableInfo, pInternalRepresentationCount, pInternalRepresentations)
            }.map { PipelineExecutableInternalRepresentationKHR(cStruct: $0) }
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

    func submit(submits: Array<SubmitInfo>, fence: Fence?) throws -> Void {
        try submits.withCStructBufferPointer { ptr_submits in
            try checkResult(
                self.device.dispatchTable.vkQueueSubmit(self.handle, UInt32(ptr_submits.count), ptr_submits.baseAddress, fence?.handle)
            )
        }
    }

    func waitIdle() throws -> Void {
        try checkResult(
            self.device.dispatchTable.vkQueueWaitIdle(self.handle)
        )
    }

    func bindSparse(bindInfo: Array<BindSparseInfo>, fence: Fence?) throws -> Void {
        try bindInfo.withCStructBufferPointer { ptr_bindInfo in
            try checkResult(
                self.device.dispatchTable.vkQueueBindSparse(self.handle, UInt32(ptr_bindInfo.count), ptr_bindInfo.baseAddress, fence?.handle)
            )
        }
    }

    func presentKHR(presentInfo: PresentInfoKHR) throws -> Void {
        try presentInfo.withCStruct { ptr_presentInfo in
            try checkResult(
                self.device.dispatchTable.vkQueuePresentKHR(self.handle, ptr_presentInfo)
            )
        }
    }

    func beginDebugUtilsLabelEXT(labelInfo: DebugUtilsLabelEXT) -> Void {
        labelInfo.withCStruct { ptr_labelInfo in
            self.device.dispatchTable.vkQueueBeginDebugUtilsLabelEXT(self.handle, ptr_labelInfo)
        }
    }

    func endDebugUtilsLabelEXT() -> Void {
        self.device.dispatchTable.vkQueueEndDebugUtilsLabelEXT(self.handle)
    }

    func insertDebugUtilsLabelEXT(labelInfo: DebugUtilsLabelEXT) -> Void {
        labelInfo.withCStruct { ptr_labelInfo in
            self.device.dispatchTable.vkQueueInsertDebugUtilsLabelEXT(self.handle, ptr_labelInfo)
        }
    }

    func getCheckpointDataNV() -> Array<CheckpointDataNV> {
        enumerate { pCheckpointData, pCheckpointDataCount in
            self.device.dispatchTable.vkGetQueueCheckpointDataNV(self.handle, pCheckpointDataCount, pCheckpointData)
        }.map { CheckpointDataNV(cStruct: $0) }
    }

    func setPerformanceConfigurationINTEL(configuration: PerformanceConfigurationINTEL) throws -> Void {
        try checkResult(
            self.device.dispatchTable.vkQueueSetPerformanceConfigurationINTEL(self.handle, configuration.handle)
        )
    }
}

class CommandPool {
    let handle: VkCommandPool!
    let device: Device

    init(handle: VkCommandPool!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func destroy() -> Void {
        self.device.dispatchTable.vkDestroyCommandPool(self.device.handle, self.handle, nil)
    }

    func reset(flags: CommandPoolResetFlags) throws -> Void {
        try checkResult(
            self.device.dispatchTable.vkResetCommandPool(self.device.handle, self.handle, flags.rawValue)
        )
    }

    func freeCommandBuffers(commandBuffers: Array<CommandBuffer>) -> Void {
        commandBuffers.map{ $0.handle }.withUnsafeBufferPointer { ptr_commandBuffers in
            self.device.dispatchTable.vkFreeCommandBuffers(self.device.handle, self.handle, UInt32(ptr_commandBuffers.count), ptr_commandBuffers.baseAddress)
        }
    }

    func trim(flags: CommandPoolTrimFlags) -> Void {
        self.device.dispatchTable.vkTrimCommandPool(self.device.handle, self.handle, flags.rawValue)
    }
}

class CommandBuffer {
    let handle: VkCommandBuffer!
    let commandPool: CommandPool

    init(handle: VkCommandBuffer!, commandPool: CommandPool) {
        self.handle = handle
        self.commandPool = commandPool
    }

    func begin(beginInfo: CommandBufferBeginInfo) throws -> Void {
        try beginInfo.withCStruct { ptr_beginInfo in
            try checkResult(
                self.commandPool.device.dispatchTable.vkBeginCommandBuffer(self.handle, ptr_beginInfo)
            )
        }
    }

    func end() throws -> Void {
        try checkResult(
            self.commandPool.device.dispatchTable.vkEndCommandBuffer(self.handle)
        )
    }

    func reset(flags: CommandBufferResetFlags) throws -> Void {
        try checkResult(
            self.commandPool.device.dispatchTable.vkResetCommandBuffer(self.handle, flags.rawValue)
        )
    }

    func cmdBindPipeline(pipelineBindPoint: PipelineBindPoint, pipeline: Pipeline) -> Void {
        self.commandPool.device.dispatchTable.vkCmdBindPipeline(self.handle, VkPipelineBindPoint(rawValue: pipelineBindPoint.rawValue), pipeline.handle)
    }

    func cmdSetViewport(firstViewport: UInt32, viewports: Array<Viewport>) -> Void {
        viewports.withCStructBufferPointer { ptr_viewports in
            self.commandPool.device.dispatchTable.vkCmdSetViewport(self.handle, firstViewport, UInt32(ptr_viewports.count), ptr_viewports.baseAddress)
        }
    }

    func cmdSetScissor(firstScissor: UInt32, scissors: Array<Rect2D>) -> Void {
        scissors.withCStructBufferPointer { ptr_scissors in
            self.commandPool.device.dispatchTable.vkCmdSetScissor(self.handle, firstScissor, UInt32(ptr_scissors.count), ptr_scissors.baseAddress)
        }
    }

    func cmdSetLineWidth(lineWidth: Float) -> Void {
        self.commandPool.device.dispatchTable.vkCmdSetLineWidth(self.handle, lineWidth)
    }

    func cmdSetDepthBias(depthBiasConstantFactor: Float, depthBiasClamp: Float, depthBiasSlopeFactor: Float) -> Void {
        self.commandPool.device.dispatchTable.vkCmdSetDepthBias(self.handle, depthBiasConstantFactor, depthBiasClamp, depthBiasSlopeFactor)
    }

    func cmdSetBlendConstants(blendConstants: (Float, Float, Float, Float)) -> Void {
        withUnsafeBytes(of: blendConstants) { ptr_blendConstants in
            self.commandPool.device.dispatchTable.vkCmdSetBlendConstants(self.handle, ptr_blendConstants.bindMemory(to: Float.self).baseAddress)
        }
    }

    func cmdSetDepthBounds(minDepthBounds: Float, maxDepthBounds: Float) -> Void {
        self.commandPool.device.dispatchTable.vkCmdSetDepthBounds(self.handle, minDepthBounds, maxDepthBounds)
    }

    func cmdSetStencilCompareMask(faceMask: StencilFaceFlags, compareMask: UInt32) -> Void {
        self.commandPool.device.dispatchTable.vkCmdSetStencilCompareMask(self.handle, faceMask.rawValue, compareMask)
    }

    func cmdSetStencilWriteMask(faceMask: StencilFaceFlags, writeMask: UInt32) -> Void {
        self.commandPool.device.dispatchTable.vkCmdSetStencilWriteMask(self.handle, faceMask.rawValue, writeMask)
    }

    func cmdSetStencilReference(faceMask: StencilFaceFlags, reference: UInt32) -> Void {
        self.commandPool.device.dispatchTable.vkCmdSetStencilReference(self.handle, faceMask.rawValue, reference)
    }

    func cmdBindDescriptorSets(pipelineBindPoint: PipelineBindPoint, layout: PipelineLayout, firstSet: UInt32, descriptorSets: Array<DescriptorSet>, dynamicOffsets: Array<UInt32>) -> Void {
        descriptorSets.map{ $0.handle }.withUnsafeBufferPointer { ptr_descriptorSets in
            dynamicOffsets.withUnsafeBufferPointer { ptr_dynamicOffsets in
                self.commandPool.device.dispatchTable.vkCmdBindDescriptorSets(self.handle, VkPipelineBindPoint(rawValue: pipelineBindPoint.rawValue), layout.handle, firstSet, UInt32(ptr_descriptorSets.count), ptr_descriptorSets.baseAddress, UInt32(ptr_dynamicOffsets.count), ptr_dynamicOffsets.baseAddress)
            }
        }
    }

    func cmdBindIndexBuffer(buffer: Buffer, offset: VkDeviceSize, indexType: IndexType) -> Void {
        self.commandPool.device.dispatchTable.vkCmdBindIndexBuffer(self.handle, buffer.handle, offset, VkIndexType(rawValue: indexType.rawValue))
    }

    func cmdBindVertexBuffers(firstBinding: UInt32, buffers: Array<Buffer>, offsets: Array<VkDeviceSize>) -> Void {
        buffers.map{ $0.handle }.withUnsafeBufferPointer { ptr_buffers in
            offsets.withUnsafeBufferPointer { ptr_offsets in
                self.commandPool.device.dispatchTable.vkCmdBindVertexBuffers(self.handle, firstBinding, UInt32(ptr_buffers.count), ptr_buffers.baseAddress, ptr_offsets.baseAddress)
            }
        }
    }

    func cmdDraw(vertexCount: UInt32, instanceCount: UInt32, firstVertex: UInt32, firstInstance: UInt32) -> Void {
        self.commandPool.device.dispatchTable.vkCmdDraw(self.handle, vertexCount, instanceCount, firstVertex, firstInstance)
    }

    func cmdDrawIndexed(indexCount: UInt32, instanceCount: UInt32, firstIndex: UInt32, vertexOffset: Int32, firstInstance: UInt32) -> Void {
        self.commandPool.device.dispatchTable.vkCmdDrawIndexed(self.handle, indexCount, instanceCount, firstIndex, vertexOffset, firstInstance)
    }

    func cmdDrawIndirect(buffer: Buffer, offset: VkDeviceSize, drawCount: UInt32, stride: UInt32) -> Void {
        self.commandPool.device.dispatchTable.vkCmdDrawIndirect(self.handle, buffer.handle, offset, drawCount, stride)
    }

    func cmdDrawIndexedIndirect(buffer: Buffer, offset: VkDeviceSize, drawCount: UInt32, stride: UInt32) -> Void {
        self.commandPool.device.dispatchTable.vkCmdDrawIndexedIndirect(self.handle, buffer.handle, offset, drawCount, stride)
    }

    func cmdDispatch(groupCountX: UInt32, groupCountY: UInt32, groupCountZ: UInt32) -> Void {
        self.commandPool.device.dispatchTable.vkCmdDispatch(self.handle, groupCountX, groupCountY, groupCountZ)
    }

    func cmdDispatchIndirect(buffer: Buffer, offset: VkDeviceSize) -> Void {
        self.commandPool.device.dispatchTable.vkCmdDispatchIndirect(self.handle, buffer.handle, offset)
    }

    func cmdCopyBuffer(srcBuffer: Buffer, dstBuffer: Buffer, regions: Array<BufferCopy>) -> Void {
        regions.withCStructBufferPointer { ptr_regions in
            self.commandPool.device.dispatchTable.vkCmdCopyBuffer(self.handle, srcBuffer.handle, dstBuffer.handle, UInt32(ptr_regions.count), ptr_regions.baseAddress)
        }
    }

    func cmdCopyImage(srcImage: Image, srcImageLayout: ImageLayout, dstImage: Image, dstImageLayout: ImageLayout, regions: Array<ImageCopy>) -> Void {
        regions.withCStructBufferPointer { ptr_regions in
            self.commandPool.device.dispatchTable.vkCmdCopyImage(self.handle, srcImage.handle, VkImageLayout(rawValue: srcImageLayout.rawValue), dstImage.handle, VkImageLayout(rawValue: dstImageLayout.rawValue), UInt32(ptr_regions.count), ptr_regions.baseAddress)
        }
    }

    func cmdBlitImage(srcImage: Image, srcImageLayout: ImageLayout, dstImage: Image, dstImageLayout: ImageLayout, regions: Array<ImageBlit>, filter: Filter) -> Void {
        regions.withCStructBufferPointer { ptr_regions in
            self.commandPool.device.dispatchTable.vkCmdBlitImage(self.handle, srcImage.handle, VkImageLayout(rawValue: srcImageLayout.rawValue), dstImage.handle, VkImageLayout(rawValue: dstImageLayout.rawValue), UInt32(ptr_regions.count), ptr_regions.baseAddress, VkFilter(rawValue: filter.rawValue))
        }
    }

    func cmdCopyBufferToImage(srcBuffer: Buffer, dstImage: Image, dstImageLayout: ImageLayout, regions: Array<BufferImageCopy>) -> Void {
        regions.withCStructBufferPointer { ptr_regions in
            self.commandPool.device.dispatchTable.vkCmdCopyBufferToImage(self.handle, srcBuffer.handle, dstImage.handle, VkImageLayout(rawValue: dstImageLayout.rawValue), UInt32(ptr_regions.count), ptr_regions.baseAddress)
        }
    }

    func cmdCopyImageToBuffer(srcImage: Image, srcImageLayout: ImageLayout, dstBuffer: Buffer, regions: Array<BufferImageCopy>) -> Void {
        regions.withCStructBufferPointer { ptr_regions in
            self.commandPool.device.dispatchTable.vkCmdCopyImageToBuffer(self.handle, srcImage.handle, VkImageLayout(rawValue: srcImageLayout.rawValue), dstBuffer.handle, UInt32(ptr_regions.count), ptr_regions.baseAddress)
        }
    }

    func cmdUpdateBuffer(dstBuffer: Buffer, dstOffset: VkDeviceSize, dataSize: VkDeviceSize, data: UnsafeRawPointer) -> Void {
        self.commandPool.device.dispatchTable.vkCmdUpdateBuffer(self.handle, dstBuffer.handle, dstOffset, dataSize, data)
    }

    func cmdFillBuffer(dstBuffer: Buffer, dstOffset: VkDeviceSize, size: VkDeviceSize, data: UInt32) -> Void {
        self.commandPool.device.dispatchTable.vkCmdFillBuffer(self.handle, dstBuffer.handle, dstOffset, size, data)
    }

    func cmdClearColorImage(image: Image, imageLayout: ImageLayout, color: UnsafePointer<VkClearColorValue>, ranges: Array<ImageSubresourceRange>) -> Void {
        ranges.withCStructBufferPointer { ptr_ranges in
            self.commandPool.device.dispatchTable.vkCmdClearColorImage(self.handle, image.handle, VkImageLayout(rawValue: imageLayout.rawValue), color, UInt32(ptr_ranges.count), ptr_ranges.baseAddress)
        }
    }

    func cmdClearDepthStencilImage(image: Image, imageLayout: ImageLayout, depthStencil: ClearDepthStencilValue, ranges: Array<ImageSubresourceRange>) -> Void {
        depthStencil.withCStruct { ptr_depthStencil in
            ranges.withCStructBufferPointer { ptr_ranges in
                self.commandPool.device.dispatchTable.vkCmdClearDepthStencilImage(self.handle, image.handle, VkImageLayout(rawValue: imageLayout.rawValue), ptr_depthStencil, UInt32(ptr_ranges.count), ptr_ranges.baseAddress)
            }
        }
    }

    func cmdClearAttachments(attachments: Array<ClearAttachment>, rects: Array<ClearRect>) -> Void {
        attachments.withCStructBufferPointer { ptr_attachments in
            rects.withCStructBufferPointer { ptr_rects in
                self.commandPool.device.dispatchTable.vkCmdClearAttachments(self.handle, UInt32(ptr_attachments.count), ptr_attachments.baseAddress, UInt32(ptr_rects.count), ptr_rects.baseAddress)
            }
        }
    }

    func cmdResolveImage(srcImage: Image, srcImageLayout: ImageLayout, dstImage: Image, dstImageLayout: ImageLayout, regions: Array<ImageResolve>) -> Void {
        regions.withCStructBufferPointer { ptr_regions in
            self.commandPool.device.dispatchTable.vkCmdResolveImage(self.handle, srcImage.handle, VkImageLayout(rawValue: srcImageLayout.rawValue), dstImage.handle, VkImageLayout(rawValue: dstImageLayout.rawValue), UInt32(ptr_regions.count), ptr_regions.baseAddress)
        }
    }

    func cmdSetEvent(event: Event, stageMask: PipelineStageFlags) -> Void {
        self.commandPool.device.dispatchTable.vkCmdSetEvent(self.handle, event.handle, stageMask.rawValue)
    }

    func cmdResetEvent(event: Event, stageMask: PipelineStageFlags) -> Void {
        self.commandPool.device.dispatchTable.vkCmdResetEvent(self.handle, event.handle, stageMask.rawValue)
    }

    func cmdWaitEvents(events: Array<Event>, srcStageMask: PipelineStageFlags, dstStageMask: PipelineStageFlags, memoryBarriers: Array<MemoryBarrier>, bufferMemoryBarriers: Array<BufferMemoryBarrier>, imageMemoryBarriers: Array<ImageMemoryBarrier>) -> Void {
        events.map{ $0.handle }.withUnsafeBufferPointer { ptr_events in
            memoryBarriers.withCStructBufferPointer { ptr_memoryBarriers in
                bufferMemoryBarriers.withCStructBufferPointer { ptr_bufferMemoryBarriers in
                    imageMemoryBarriers.withCStructBufferPointer { ptr_imageMemoryBarriers in
                        self.commandPool.device.dispatchTable.vkCmdWaitEvents(self.handle, UInt32(ptr_events.count), ptr_events.baseAddress, srcStageMask.rawValue, dstStageMask.rawValue, UInt32(ptr_memoryBarriers.count), ptr_memoryBarriers.baseAddress, UInt32(ptr_bufferMemoryBarriers.count), ptr_bufferMemoryBarriers.baseAddress, UInt32(ptr_imageMemoryBarriers.count), ptr_imageMemoryBarriers.baseAddress)
                    }
                }
            }
        }
    }

    func cmdPipelineBarrier(srcStageMask: PipelineStageFlags, dstStageMask: PipelineStageFlags, dependencyFlags: DependencyFlags, memoryBarriers: Array<MemoryBarrier>, bufferMemoryBarriers: Array<BufferMemoryBarrier>, imageMemoryBarriers: Array<ImageMemoryBarrier>) -> Void {
        memoryBarriers.withCStructBufferPointer { ptr_memoryBarriers in
            bufferMemoryBarriers.withCStructBufferPointer { ptr_bufferMemoryBarriers in
                imageMemoryBarriers.withCStructBufferPointer { ptr_imageMemoryBarriers in
                    self.commandPool.device.dispatchTable.vkCmdPipelineBarrier(self.handle, srcStageMask.rawValue, dstStageMask.rawValue, dependencyFlags.rawValue, UInt32(ptr_memoryBarriers.count), ptr_memoryBarriers.baseAddress, UInt32(ptr_bufferMemoryBarriers.count), ptr_bufferMemoryBarriers.baseAddress, UInt32(ptr_imageMemoryBarriers.count), ptr_imageMemoryBarriers.baseAddress)
                }
            }
        }
    }

    func cmdBeginQuery(queryPool: QueryPool, query: UInt32, flags: QueryControlFlags) -> Void {
        self.commandPool.device.dispatchTable.vkCmdBeginQuery(self.handle, queryPool.handle, query, flags.rawValue)
    }

    func cmdEndQuery(queryPool: QueryPool, query: UInt32) -> Void {
        self.commandPool.device.dispatchTable.vkCmdEndQuery(self.handle, queryPool.handle, query)
    }

    func cmdBeginConditionalRenderingEXT(conditionalRenderingBegin: ConditionalRenderingBeginInfoEXT) -> Void {
        conditionalRenderingBegin.withCStruct { ptr_conditionalRenderingBegin in
            self.commandPool.device.dispatchTable.vkCmdBeginConditionalRenderingEXT(self.handle, ptr_conditionalRenderingBegin)
        }
    }

    func cmdEndConditionalRenderingEXT() -> Void {
        self.commandPool.device.dispatchTable.vkCmdEndConditionalRenderingEXT(self.handle)
    }

    func cmdResetQueryPool(queryPool: QueryPool, firstQuery: UInt32, queryCount: UInt32) -> Void {
        self.commandPool.device.dispatchTable.vkCmdResetQueryPool(self.handle, queryPool.handle, firstQuery, queryCount)
    }

    func cmdWriteTimestamp(pipelineStage: PipelineStageFlags, queryPool: QueryPool, query: UInt32) -> Void {
        self.commandPool.device.dispatchTable.vkCmdWriteTimestamp(self.handle, VkPipelineStageFlagBits(rawValue: pipelineStage.rawValue), queryPool.handle, query)
    }

    func cmdCopyQueryPoolResults(queryPool: QueryPool, firstQuery: UInt32, queryCount: UInt32, dstBuffer: Buffer, dstOffset: VkDeviceSize, stride: VkDeviceSize, flags: QueryResultFlags) -> Void {
        self.commandPool.device.dispatchTable.vkCmdCopyQueryPoolResults(self.handle, queryPool.handle, firstQuery, queryCount, dstBuffer.handle, dstOffset, stride, flags.rawValue)
    }

    func cmdPushConstants(layout: PipelineLayout, stageFlags: ShaderStageFlags, offset: UInt32, size: UInt32, values: UnsafeRawPointer) -> Void {
        self.commandPool.device.dispatchTable.vkCmdPushConstants(self.handle, layout.handle, stageFlags.rawValue, offset, size, values)
    }

    func cmdBeginRenderPass(renderPassBegin: RenderPassBeginInfo, contents: SubpassContents) -> Void {
        renderPassBegin.withCStruct { ptr_renderPassBegin in
            self.commandPool.device.dispatchTable.vkCmdBeginRenderPass(self.handle, ptr_renderPassBegin, VkSubpassContents(rawValue: contents.rawValue))
        }
    }

    func cmdNextSubpass(contents: SubpassContents) -> Void {
        self.commandPool.device.dispatchTable.vkCmdNextSubpass(self.handle, VkSubpassContents(rawValue: contents.rawValue))
    }

    func cmdEndRenderPass() -> Void {
        self.commandPool.device.dispatchTable.vkCmdEndRenderPass(self.handle)
    }

    func cmdExecuteCommands(commandBuffers: Array<CommandBuffer>) -> Void {
        commandBuffers.map{ $0.handle }.withUnsafeBufferPointer { ptr_commandBuffers in
            self.commandPool.device.dispatchTable.vkCmdExecuteCommands(self.handle, UInt32(ptr_commandBuffers.count), ptr_commandBuffers.baseAddress)
        }
    }

    func cmdDebugMarkerBeginEXT(markerInfo: DebugMarkerMarkerInfoEXT) -> Void {
        markerInfo.withCStruct { ptr_markerInfo in
            self.commandPool.device.dispatchTable.vkCmdDebugMarkerBeginEXT(self.handle, ptr_markerInfo)
        }
    }

    func cmdDebugMarkerEndEXT() -> Void {
        self.commandPool.device.dispatchTable.vkCmdDebugMarkerEndEXT(self.handle)
    }

    func cmdDebugMarkerInsertEXT(markerInfo: DebugMarkerMarkerInfoEXT) -> Void {
        markerInfo.withCStruct { ptr_markerInfo in
            self.commandPool.device.dispatchTable.vkCmdDebugMarkerInsertEXT(self.handle, ptr_markerInfo)
        }
    }

    func cmdExecuteGeneratedCommandsNV(isPreprocessed: Bool, generatedCommandsInfo: GeneratedCommandsInfoNV) -> Void {
        generatedCommandsInfo.withCStruct { ptr_generatedCommandsInfo in
            self.commandPool.device.dispatchTable.vkCmdExecuteGeneratedCommandsNV(self.handle, VkBool32(isPreprocessed ? VK_TRUE : VK_FALSE), ptr_generatedCommandsInfo)
        }
    }

    func cmdPreprocessGeneratedCommandsNV(generatedCommandsInfo: GeneratedCommandsInfoNV) -> Void {
        generatedCommandsInfo.withCStruct { ptr_generatedCommandsInfo in
            self.commandPool.device.dispatchTable.vkCmdPreprocessGeneratedCommandsNV(self.handle, ptr_generatedCommandsInfo)
        }
    }

    func cmdBindPipelineShaderGroupNV(pipelineBindPoint: PipelineBindPoint, pipeline: Pipeline, groupIndex: UInt32) -> Void {
        self.commandPool.device.dispatchTable.vkCmdBindPipelineShaderGroupNV(self.handle, VkPipelineBindPoint(rawValue: pipelineBindPoint.rawValue), pipeline.handle, groupIndex)
    }

    func cmdPushDescriptorSetKHR(pipelineBindPoint: PipelineBindPoint, layout: PipelineLayout, set: UInt32, descriptorWrites: Array<WriteDescriptorSet>) -> Void {
        descriptorWrites.withCStructBufferPointer { ptr_descriptorWrites in
            self.commandPool.device.dispatchTable.vkCmdPushDescriptorSetKHR(self.handle, VkPipelineBindPoint(rawValue: pipelineBindPoint.rawValue), layout.handle, set, UInt32(ptr_descriptorWrites.count), ptr_descriptorWrites.baseAddress)
        }
    }

    func cmdSetDeviceMask(deviceMask: UInt32) -> Void {
        self.commandPool.device.dispatchTable.vkCmdSetDeviceMask(self.handle, deviceMask)
    }

    func cmdDispatchBase(baseGroupX: UInt32, baseGroupY: UInt32, baseGroupZ: UInt32, groupCountX: UInt32, groupCountY: UInt32, groupCountZ: UInt32) -> Void {
        self.commandPool.device.dispatchTable.vkCmdDispatchBase(self.handle, baseGroupX, baseGroupY, baseGroupZ, groupCountX, groupCountY, groupCountZ)
    }

    func cmdPushDescriptorSetWithTemplateKHR(descriptorUpdateTemplate: DescriptorUpdateTemplate, layout: PipelineLayout, set: UInt32, data: UnsafeRawPointer) -> Void {
        self.commandPool.device.dispatchTable.vkCmdPushDescriptorSetWithTemplateKHR(self.handle, descriptorUpdateTemplate.handle, layout.handle, set, data)
    }

    func cmdSetViewportWScalingNV(firstViewport: UInt32, viewportWScalings: Array<ViewportWScalingNV>) -> Void {
        viewportWScalings.withCStructBufferPointer { ptr_viewportWScalings in
            self.commandPool.device.dispatchTable.vkCmdSetViewportWScalingNV(self.handle, firstViewport, UInt32(ptr_viewportWScalings.count), ptr_viewportWScalings.baseAddress)
        }
    }

    func cmdSetDiscardRectangleEXT(firstDiscardRectangle: UInt32, discardRectangles: Array<Rect2D>) -> Void {
        discardRectangles.withCStructBufferPointer { ptr_discardRectangles in
            self.commandPool.device.dispatchTable.vkCmdSetDiscardRectangleEXT(self.handle, firstDiscardRectangle, UInt32(ptr_discardRectangles.count), ptr_discardRectangles.baseAddress)
        }
    }

    func cmdSetSampleLocationsEXT(sampleLocationsInfo: SampleLocationsInfoEXT) -> Void {
        sampleLocationsInfo.withCStruct { ptr_sampleLocationsInfo in
            self.commandPool.device.dispatchTable.vkCmdSetSampleLocationsEXT(self.handle, ptr_sampleLocationsInfo)
        }
    }

    func cmdBeginDebugUtilsLabelEXT(labelInfo: DebugUtilsLabelEXT) -> Void {
        labelInfo.withCStruct { ptr_labelInfo in
            self.commandPool.device.dispatchTable.vkCmdBeginDebugUtilsLabelEXT(self.handle, ptr_labelInfo)
        }
    }

    func cmdEndDebugUtilsLabelEXT() -> Void {
        self.commandPool.device.dispatchTable.vkCmdEndDebugUtilsLabelEXT(self.handle)
    }

    func cmdInsertDebugUtilsLabelEXT(labelInfo: DebugUtilsLabelEXT) -> Void {
        labelInfo.withCStruct { ptr_labelInfo in
            self.commandPool.device.dispatchTable.vkCmdInsertDebugUtilsLabelEXT(self.handle, ptr_labelInfo)
        }
    }

    func cmdWriteBufferMarkerAMD(pipelineStage: PipelineStageFlags, dstBuffer: Buffer, dstOffset: VkDeviceSize, marker: UInt32) -> Void {
        self.commandPool.device.dispatchTable.vkCmdWriteBufferMarkerAMD(self.handle, VkPipelineStageFlagBits(rawValue: pipelineStage.rawValue), dstBuffer.handle, dstOffset, marker)
    }

    func cmdBeginRenderPass2(renderPassBegin: RenderPassBeginInfo, subpassBeginInfo: SubpassBeginInfo) -> Void {
        renderPassBegin.withCStruct { ptr_renderPassBegin in
            subpassBeginInfo.withCStruct { ptr_subpassBeginInfo in
                self.commandPool.device.dispatchTable.vkCmdBeginRenderPass2(self.handle, ptr_renderPassBegin, ptr_subpassBeginInfo)
            }
        }
    }

    func cmdNextSubpass2(subpassBeginInfo: SubpassBeginInfo, subpassEndInfo: SubpassEndInfo) -> Void {
        subpassBeginInfo.withCStruct { ptr_subpassBeginInfo in
            subpassEndInfo.withCStruct { ptr_subpassEndInfo in
                self.commandPool.device.dispatchTable.vkCmdNextSubpass2(self.handle, ptr_subpassBeginInfo, ptr_subpassEndInfo)
            }
        }
    }

    func cmdEndRenderPass2(subpassEndInfo: SubpassEndInfo) -> Void {
        subpassEndInfo.withCStruct { ptr_subpassEndInfo in
            self.commandPool.device.dispatchTable.vkCmdEndRenderPass2(self.handle, ptr_subpassEndInfo)
        }
    }

    func cmdDrawIndirectCount(buffer: Buffer, offset: VkDeviceSize, countBuffer: Buffer, countBufferOffset: VkDeviceSize, maxDrawCount: UInt32, stride: UInt32) -> Void {
        self.commandPool.device.dispatchTable.vkCmdDrawIndirectCount(self.handle, buffer.handle, offset, countBuffer.handle, countBufferOffset, maxDrawCount, stride)
    }

    func cmdDrawIndexedIndirectCount(buffer: Buffer, offset: VkDeviceSize, countBuffer: Buffer, countBufferOffset: VkDeviceSize, maxDrawCount: UInt32, stride: UInt32) -> Void {
        self.commandPool.device.dispatchTable.vkCmdDrawIndexedIndirectCount(self.handle, buffer.handle, offset, countBuffer.handle, countBufferOffset, maxDrawCount, stride)
    }

    func cmdSetCheckpointNV(checkpointMarker: UnsafeRawPointer) -> Void {
        self.commandPool.device.dispatchTable.vkCmdSetCheckpointNV(self.handle, checkpointMarker)
    }

    func cmdBindTransformFeedbackBuffersEXT(firstBinding: UInt32, buffers: Array<Buffer>, offsets: Array<VkDeviceSize>, sizes: Array<VkDeviceSize>?) -> Void {
        buffers.map{ $0.handle }.withUnsafeBufferPointer { ptr_buffers in
            offsets.withUnsafeBufferPointer { ptr_offsets in
                sizes.withOptionalUnsafeBufferPointer { ptr_sizes in
                    self.commandPool.device.dispatchTable.vkCmdBindTransformFeedbackBuffersEXT(self.handle, firstBinding, UInt32(ptr_buffers.count), ptr_buffers.baseAddress, ptr_offsets.baseAddress, ptr_sizes.baseAddress)
                }
            }
        }
    }

    func cmdBeginTransformFeedbackEXT(firstCounterBuffer: UInt32, counterBuffers: Array<Buffer>, counterBufferOffsets: Array<VkDeviceSize>?) -> Void {
        counterBuffers.map{ $0.handle }.withUnsafeBufferPointer { ptr_counterBuffers in
            counterBufferOffsets.withOptionalUnsafeBufferPointer { ptr_counterBufferOffsets in
                self.commandPool.device.dispatchTable.vkCmdBeginTransformFeedbackEXT(self.handle, firstCounterBuffer, UInt32(ptr_counterBuffers.count), ptr_counterBuffers.baseAddress, ptr_counterBufferOffsets.baseAddress)
            }
        }
    }

    func cmdEndTransformFeedbackEXT(firstCounterBuffer: UInt32, counterBuffers: Array<Buffer>, counterBufferOffsets: Array<VkDeviceSize>?) -> Void {
        counterBuffers.map{ $0.handle }.withUnsafeBufferPointer { ptr_counterBuffers in
            counterBufferOffsets.withOptionalUnsafeBufferPointer { ptr_counterBufferOffsets in
                self.commandPool.device.dispatchTable.vkCmdEndTransformFeedbackEXT(self.handle, firstCounterBuffer, UInt32(ptr_counterBuffers.count), ptr_counterBuffers.baseAddress, ptr_counterBufferOffsets.baseAddress)
            }
        }
    }

    func cmdBeginQueryIndexedEXT(queryPool: QueryPool, query: UInt32, flags: QueryControlFlags, index: UInt32) -> Void {
        self.commandPool.device.dispatchTable.vkCmdBeginQueryIndexedEXT(self.handle, queryPool.handle, query, flags.rawValue, index)
    }

    func cmdEndQueryIndexedEXT(queryPool: QueryPool, query: UInt32, index: UInt32) -> Void {
        self.commandPool.device.dispatchTable.vkCmdEndQueryIndexedEXT(self.handle, queryPool.handle, query, index)
    }

    func cmdDrawIndirectByteCountEXT(instanceCount: UInt32, firstInstance: UInt32, counterBuffer: Buffer, counterBufferOffset: VkDeviceSize, counterOffset: UInt32, vertexStride: UInt32) -> Void {
        self.commandPool.device.dispatchTable.vkCmdDrawIndirectByteCountEXT(self.handle, instanceCount, firstInstance, counterBuffer.handle, counterBufferOffset, counterOffset, vertexStride)
    }

    func cmdSetExclusiveScissorNV(firstExclusiveScissor: UInt32, exclusiveScissors: Array<Rect2D>) -> Void {
        exclusiveScissors.withCStructBufferPointer { ptr_exclusiveScissors in
            self.commandPool.device.dispatchTable.vkCmdSetExclusiveScissorNV(self.handle, firstExclusiveScissor, UInt32(ptr_exclusiveScissors.count), ptr_exclusiveScissors.baseAddress)
        }
    }

    func cmdBindShadingRateImageNV(imageView: ImageView?, imageLayout: ImageLayout) -> Void {
        self.commandPool.device.dispatchTable.vkCmdBindShadingRateImageNV(self.handle, imageView?.handle, VkImageLayout(rawValue: imageLayout.rawValue))
    }

    func cmdSetViewportShadingRatePaletteNV(firstViewport: UInt32, shadingRatePalettes: Array<ShadingRatePaletteNV>) -> Void {
        shadingRatePalettes.withCStructBufferPointer { ptr_shadingRatePalettes in
            self.commandPool.device.dispatchTable.vkCmdSetViewportShadingRatePaletteNV(self.handle, firstViewport, UInt32(ptr_shadingRatePalettes.count), ptr_shadingRatePalettes.baseAddress)
        }
    }

    func cmdSetCoarseSampleOrderNV(sampleOrderType: CoarseSampleOrderTypeNV, customSampleOrders: Array<CoarseSampleOrderCustomNV>) -> Void {
        customSampleOrders.withCStructBufferPointer { ptr_customSampleOrders in
            self.commandPool.device.dispatchTable.vkCmdSetCoarseSampleOrderNV(self.handle, VkCoarseSampleOrderTypeNV(rawValue: sampleOrderType.rawValue), UInt32(ptr_customSampleOrders.count), ptr_customSampleOrders.baseAddress)
        }
    }

    func cmdDrawMeshTasksNV(taskCount: UInt32, firstTask: UInt32) -> Void {
        self.commandPool.device.dispatchTable.vkCmdDrawMeshTasksNV(self.handle, taskCount, firstTask)
    }

    func cmdDrawMeshTasksIndirectNV(buffer: Buffer, offset: VkDeviceSize, drawCount: UInt32, stride: UInt32) -> Void {
        self.commandPool.device.dispatchTable.vkCmdDrawMeshTasksIndirectNV(self.handle, buffer.handle, offset, drawCount, stride)
    }

    func cmdDrawMeshTasksIndirectCountNV(buffer: Buffer, offset: VkDeviceSize, countBuffer: Buffer, countBufferOffset: VkDeviceSize, maxDrawCount: UInt32, stride: UInt32) -> Void {
        self.commandPool.device.dispatchTable.vkCmdDrawMeshTasksIndirectCountNV(self.handle, buffer.handle, offset, countBuffer.handle, countBufferOffset, maxDrawCount, stride)
    }

    func cmdCopyAccelerationStructureNV(dst: AccelerationStructureKHR, src: AccelerationStructureKHR, mode: VkCopyAccelerationStructureModeKHR) -> Void {
        self.commandPool.device.dispatchTable.vkCmdCopyAccelerationStructureNV(self.handle, dst.handle, src.handle, mode)
    }

    func cmdBuildAccelerationStructureNV(info: AccelerationStructureInfoNV, instanceData: Buffer?, instanceOffset: VkDeviceSize, update: Bool, dst: AccelerationStructureKHR, src: AccelerationStructureKHR?, scratch: Buffer, scratchOffset: VkDeviceSize) -> Void {
        info.withCStruct { ptr_info in
            self.commandPool.device.dispatchTable.vkCmdBuildAccelerationStructureNV(self.handle, ptr_info, instanceData?.handle, instanceOffset, VkBool32(update ? VK_TRUE : VK_FALSE), dst.handle, src?.handle, scratch.handle, scratchOffset)
        }
    }

    func cmdTraceRaysNV(raygenShaderBindingTableBuffer: Buffer, raygenShaderBindingOffset: VkDeviceSize, missShaderBindingTableBuffer: Buffer?, missShaderBindingOffset: VkDeviceSize, missShaderBindingStride: VkDeviceSize, hitShaderBindingTableBuffer: Buffer?, hitShaderBindingOffset: VkDeviceSize, hitShaderBindingStride: VkDeviceSize, callableShaderBindingTableBuffer: Buffer?, callableShaderBindingOffset: VkDeviceSize, callableShaderBindingStride: VkDeviceSize, width: UInt32, height: UInt32, depth: UInt32) -> Void {
        self.commandPool.device.dispatchTable.vkCmdTraceRaysNV(self.handle, raygenShaderBindingTableBuffer.handle, raygenShaderBindingOffset, missShaderBindingTableBuffer?.handle, missShaderBindingOffset, missShaderBindingStride, hitShaderBindingTableBuffer?.handle, hitShaderBindingOffset, hitShaderBindingStride, callableShaderBindingTableBuffer?.handle, callableShaderBindingOffset, callableShaderBindingStride, width, height, depth)
    }

    func cmdSetPerformanceMarkerINTEL(markerInfo: PerformanceMarkerInfoINTEL) throws -> Void {
        try markerInfo.withCStruct { ptr_markerInfo in
            try checkResult(
                self.commandPool.device.dispatchTable.vkCmdSetPerformanceMarkerINTEL(self.handle, ptr_markerInfo)
            )
        }
    }

    func cmdSetPerformanceStreamMarkerINTEL(markerInfo: PerformanceStreamMarkerInfoINTEL) throws -> Void {
        try markerInfo.withCStruct { ptr_markerInfo in
            try checkResult(
                self.commandPool.device.dispatchTable.vkCmdSetPerformanceStreamMarkerINTEL(self.handle, ptr_markerInfo)
            )
        }
    }

    func cmdSetPerformanceOverrideINTEL(overrideInfo: PerformanceOverrideInfoINTEL) throws -> Void {
        try overrideInfo.withCStruct { ptr_overrideInfo in
            try checkResult(
                self.commandPool.device.dispatchTable.vkCmdSetPerformanceOverrideINTEL(self.handle, ptr_overrideInfo)
            )
        }
    }

    func cmdSetLineStippleEXT(lineStippleFactor: UInt32, lineStipplePattern: UInt16) -> Void {
        self.commandPool.device.dispatchTable.vkCmdSetLineStippleEXT(self.handle, lineStippleFactor, lineStipplePattern)
    }
}

class DeviceMemory {
    let handle: VkDeviceMemory!
    let device: Device

    init(handle: VkDeviceMemory!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func freeMemory() -> Void {
        self.device.dispatchTable.vkFreeMemory(self.device.handle, self.handle, nil)
    }

    func mapMemory(offset: VkDeviceSize, size: VkDeviceSize, flags: MemoryMapFlags) throws -> UnsafeMutableRawPointer {
        var out: UnsafeMutableRawPointer!
        try checkResult(
            self.device.dispatchTable.vkMapMemory(self.device.handle, self.handle, offset, size, flags.rawValue, &out)
        )
        return out
    }

    func unmapMemory() -> Void {
        self.device.dispatchTable.vkUnmapMemory(self.device.handle, self.handle)
    }

    func getCommitment() -> VkDeviceSize {
        var out = VkDeviceSize()
        self.device.dispatchTable.vkGetDeviceMemoryCommitment(self.device.handle, self.handle, &out)
        return out
    }
}

class Buffer {
    let handle: VkBuffer!
    let device: Device

    init(handle: VkBuffer!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func getMemoryRequirements() -> MemoryRequirements {
        var out = VkMemoryRequirements()
        self.device.dispatchTable.vkGetBufferMemoryRequirements(self.device.handle, self.handle, &out)
        return MemoryRequirements(cStruct: out)
    }

    func bindMemory(memory: DeviceMemory, memoryOffset: VkDeviceSize) throws -> Void {
        try checkResult(
            self.device.dispatchTable.vkBindBufferMemory(self.device.handle, self.handle, memory.handle, memoryOffset)
        )
    }

    func destroy() -> Void {
        self.device.dispatchTable.vkDestroyBuffer(self.device.handle, self.handle, nil)
    }
}

class BufferView {
    let handle: VkBufferView!
    let device: Device

    init(handle: VkBufferView!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func destroy() -> Void {
        self.device.dispatchTable.vkDestroyBufferView(self.device.handle, self.handle, nil)
    }
}

class Image {
    let handle: VkImage!
    let device: Device

    init(handle: VkImage!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func getMemoryRequirements() -> MemoryRequirements {
        var out = VkMemoryRequirements()
        self.device.dispatchTable.vkGetImageMemoryRequirements(self.device.handle, self.handle, &out)
        return MemoryRequirements(cStruct: out)
    }

    func bindMemory(memory: DeviceMemory, memoryOffset: VkDeviceSize) throws -> Void {
        try checkResult(
            self.device.dispatchTable.vkBindImageMemory(self.device.handle, self.handle, memory.handle, memoryOffset)
        )
    }

    func getSparseMemoryRequirements() -> Array<SparseImageMemoryRequirements> {
        enumerate { pSparseMemoryRequirements, pSparseMemoryRequirementCount in
            self.device.dispatchTable.vkGetImageSparseMemoryRequirements(self.device.handle, self.handle, pSparseMemoryRequirementCount, pSparseMemoryRequirements)
        }.map { SparseImageMemoryRequirements(cStruct: $0) }
    }

    func destroy() -> Void {
        self.device.dispatchTable.vkDestroyImage(self.device.handle, self.handle, nil)
    }

    func getSubresourceLayout(subresource: ImageSubresource) -> SubresourceLayout {
        subresource.withCStruct { ptr_subresource in
            var out = VkSubresourceLayout()
            self.device.dispatchTable.vkGetImageSubresourceLayout(self.device.handle, self.handle, ptr_subresource, &out)
            return SubresourceLayout(cStruct: out)
        }
    }

    func getDrmFormatModifierPropertiesEXT() throws -> ImageDrmFormatModifierPropertiesEXT {
        var out = VkImageDrmFormatModifierPropertiesEXT()
        try checkResult(
            self.device.dispatchTable.vkGetImageDrmFormatModifierPropertiesEXT(self.device.handle, self.handle, &out)
        )
        return ImageDrmFormatModifierPropertiesEXT(cStruct: out)
    }
}

class ImageView {
    let handle: VkImageView!
    let device: Device

    init(handle: VkImageView!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func destroy() -> Void {
        self.device.dispatchTable.vkDestroyImageView(self.device.handle, self.handle, nil)
    }
}

class ShaderModule {
    let handle: VkShaderModule!
    let device: Device

    init(handle: VkShaderModule!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func destroy() -> Void {
        self.device.dispatchTable.vkDestroyShaderModule(self.device.handle, self.handle, nil)
    }
}

class Pipeline {
    let handle: VkPipeline!
    let device: Device

    init(handle: VkPipeline!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func destroy() -> Void {
        self.device.dispatchTable.vkDestroyPipeline(self.device.handle, self.handle, nil)
    }

    func getShaderInfoAMD(shaderStage: ShaderStageFlags, infoType: ShaderInfoTypeAMD, info: UnsafeMutableRawPointer) throws -> Int {
        var out = Int()
        try checkResult(
            self.device.dispatchTable.vkGetShaderInfoAMD(self.device.handle, self.handle, VkShaderStageFlagBits(rawValue: shaderStage.rawValue), VkShaderInfoTypeAMD(rawValue: infoType.rawValue), &out, info)
        )
        return out
    }

    func compileDeferredNV(shader: UInt32) throws -> Void {
        try checkResult(
            self.device.dispatchTable.vkCompileDeferredNV(self.device.handle, self.handle, shader)
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

    func destroy() -> Void {
        self.device.dispatchTable.vkDestroyPipelineLayout(self.device.handle, self.handle, nil)
    }
}

class Sampler {
    let handle: VkSampler!
    let device: Device

    init(handle: VkSampler!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func destroy() -> Void {
        self.device.dispatchTable.vkDestroySampler(self.device.handle, self.handle, nil)
    }
}

class DescriptorPool {
    let handle: VkDescriptorPool!
    let device: Device

    init(handle: VkDescriptorPool!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func destroy() -> Void {
        self.device.dispatchTable.vkDestroyDescriptorPool(self.device.handle, self.handle, nil)
    }

    func reset(flags: DescriptorPoolResetFlags) throws -> Void {
        try checkResult(
            self.device.dispatchTable.vkResetDescriptorPool(self.device.handle, self.handle, flags.rawValue)
        )
    }

    func freeDescriptorSets(descriptorSets: Array<DescriptorSet>) throws -> Void {
        try descriptorSets.map{ $0.handle }.withUnsafeBufferPointer { ptr_descriptorSets in
            try checkResult(
                self.device.dispatchTable.vkFreeDescriptorSets(self.device.handle, self.handle, UInt32(ptr_descriptorSets.count), ptr_descriptorSets.baseAddress)
            )
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

    func updateWithTemplate(descriptorUpdateTemplate: DescriptorUpdateTemplate, data: UnsafeRawPointer) -> Void {
        self.descriptorPool.device.dispatchTable.vkUpdateDescriptorSetWithTemplate(self.descriptorPool.device.handle, self.handle, descriptorUpdateTemplate.handle, data)
    }
}

class DescriptorSetLayout {
    let handle: VkDescriptorSetLayout!
    let device: Device

    init(handle: VkDescriptorSetLayout!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func destroy() -> Void {
        self.device.dispatchTable.vkDestroyDescriptorSetLayout(self.device.handle, self.handle, nil)
    }
}

class Fence {
    let handle: VkFence!
    let device: Device

    init(handle: VkFence!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func destroy() -> Void {
        self.device.dispatchTable.vkDestroyFence(self.device.handle, self.handle, nil)
    }

    func getStatus() throws -> Void {
        try checkResult(
            self.device.dispatchTable.vkGetFenceStatus(self.device.handle, self.handle)
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

    func destroy() -> Void {
        self.device.dispatchTable.vkDestroySemaphore(self.device.handle, self.handle, nil)
    }

    func getCounterValue() throws -> UInt64 {
        var out = UInt64()
        try checkResult(
            self.device.dispatchTable.vkGetSemaphoreCounterValue(self.device.handle, self.handle, &out)
        )
        return out
    }
}

class Event {
    let handle: VkEvent!
    let device: Device

    init(handle: VkEvent!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func destroy() -> Void {
        self.device.dispatchTable.vkDestroyEvent(self.device.handle, self.handle, nil)
    }

    func getStatus() throws -> Void {
        try checkResult(
            self.device.dispatchTable.vkGetEventStatus(self.device.handle, self.handle)
        )
    }

    func set() throws -> Void {
        try checkResult(
            self.device.dispatchTable.vkSetEvent(self.device.handle, self.handle)
        )
    }

    func reset() throws -> Void {
        try checkResult(
            self.device.dispatchTable.vkResetEvent(self.device.handle, self.handle)
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

    func destroy() -> Void {
        self.device.dispatchTable.vkDestroyQueryPool(self.device.handle, self.handle, nil)
    }

    func getResults(firstQuery: UInt32, queryCount: UInt32, dataSize: Int, data: UnsafeMutableRawPointer, stride: VkDeviceSize, flags: QueryResultFlags) throws -> Void {
        try checkResult(
            self.device.dispatchTable.vkGetQueryPoolResults(self.device.handle, self.handle, firstQuery, queryCount, dataSize, data, stride, flags.rawValue)
        )
    }

    func reset(firstQuery: UInt32, queryCount: UInt32) -> Void {
        self.device.dispatchTable.vkResetQueryPool(self.device.handle, self.handle, firstQuery, queryCount)
    }
}

class Framebuffer {
    let handle: VkFramebuffer!
    let device: Device

    init(handle: VkFramebuffer!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func destroy() -> Void {
        self.device.dispatchTable.vkDestroyFramebuffer(self.device.handle, self.handle, nil)
    }
}

class RenderPass {
    let handle: VkRenderPass!
    let device: Device

    init(handle: VkRenderPass!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func destroy() -> Void {
        self.device.dispatchTable.vkDestroyRenderPass(self.device.handle, self.handle, nil)
    }

    func getRenderAreaGranularity() -> Extent2D {
        var out = VkExtent2D()
        self.device.dispatchTable.vkGetRenderAreaGranularity(self.device.handle, self.handle, &out)
        return Extent2D(cStruct: out)
    }
}

class PipelineCache {
    let handle: VkPipelineCache!
    let device: Device

    init(handle: VkPipelineCache!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func destroy() -> Void {
        self.device.dispatchTable.vkDestroyPipelineCache(self.device.handle, self.handle, nil)
    }

    func getData(data: UnsafeMutableRawPointer) throws -> Int {
        var out = Int()
        try checkResult(
            self.device.dispatchTable.vkGetPipelineCacheData(self.device.handle, self.handle, &out, data)
        )
        return out
    }

    func mergePipelineCaches(srcCaches: Array<PipelineCache>) throws -> Void {
        try srcCaches.map{ $0.handle }.withUnsafeBufferPointer { ptr_srcCaches in
            try checkResult(
                self.device.dispatchTable.vkMergePipelineCaches(self.device.handle, self.handle, UInt32(ptr_srcCaches.count), ptr_srcCaches.baseAddress)
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

    func destroyNV() -> Void {
        self.device.dispatchTable.vkDestroyIndirectCommandsLayoutNV(self.device.handle, self.handle, nil)
    }
}

class DescriptorUpdateTemplate {
    let handle: VkDescriptorUpdateTemplate!
    let device: Device

    init(handle: VkDescriptorUpdateTemplate!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func destroy() -> Void {
        self.device.dispatchTable.vkDestroyDescriptorUpdateTemplate(self.device.handle, self.handle, nil)
    }
}

class SamplerYcbcrConversion {
    let handle: VkSamplerYcbcrConversion!
    let device: Device

    init(handle: VkSamplerYcbcrConversion!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func destroy() -> Void {
        self.device.dispatchTable.vkDestroySamplerYcbcrConversion(self.device.handle, self.handle, nil)
    }
}

class ValidationCacheEXT {
    let handle: VkValidationCacheEXT!
    let device: Device

    init(handle: VkValidationCacheEXT!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func destroyEXT() -> Void {
        self.device.dispatchTable.vkDestroyValidationCacheEXT(self.device.handle, self.handle, nil)
    }

    func getDataEXT(data: UnsafeMutableRawPointer) throws -> Int {
        var out = Int()
        try checkResult(
            self.device.dispatchTable.vkGetValidationCacheDataEXT(self.device.handle, self.handle, &out, data)
        )
        return out
    }

    func mergeValidationCachesEXT(srcCaches: Array<ValidationCacheEXT>) throws -> Void {
        try srcCaches.map{ $0.handle }.withUnsafeBufferPointer { ptr_srcCaches in
            try checkResult(
                self.device.dispatchTable.vkMergeValidationCachesEXT(self.device.handle, self.handle, UInt32(ptr_srcCaches.count), ptr_srcCaches.baseAddress)
            )
        }
    }
}

class AccelerationStructureKHR {
    let handle: VkAccelerationStructureKHR!
    let device: Device

    init(handle: VkAccelerationStructureKHR!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func getHandleNV(dataSize: Int, data: UnsafeMutableRawPointer) throws -> Void {
        try checkResult(
            self.device.dispatchTable.vkGetAccelerationStructureHandleNV(self.device.handle, self.handle, dataSize, data)
        )
    }
}

class PerformanceConfigurationINTEL {
    let handle: VkPerformanceConfigurationINTEL!
    let device: Device

    init(handle: VkPerformanceConfigurationINTEL!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func releaseINTEL() throws -> Void {
        try checkResult(
            self.device.dispatchTable.vkReleasePerformanceConfigurationINTEL(self.device.handle, self.handle)
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

    func getModePropertiesKHR() throws -> Array<DisplayModePropertiesKHR> {
        try enumerate { pProperties, pPropertyCount in
            self.physicalDevice.instance.dispatchTable.vkGetDisplayModePropertiesKHR(self.physicalDevice.handle, self.handle, pPropertyCount, pProperties)
        }.map { DisplayModePropertiesKHR(cStruct: $0) }
    }

    func createModeKHR(createInfo: DisplayModeCreateInfoKHR) throws -> DisplayModeKHR {
        try createInfo.withCStruct { ptr_createInfo in
            var out: VkDisplayModeKHR!
            try checkResult(
                self.physicalDevice.instance.dispatchTable.vkCreateDisplayModeKHR(self.physicalDevice.handle, self.handle, ptr_createInfo, nil, &out)
            )
            return DisplayModeKHR(handle: out, display: self)
        }
    }

    func releaseEXT() throws -> Void {
        try checkResult(
            self.physicalDevice.instance.dispatchTable.vkReleaseDisplayEXT(self.physicalDevice.handle, self.handle)
        )
    }

    func getModeProperties2KHR() throws -> Array<DisplayModeProperties2KHR> {
        try enumerate { pProperties, pPropertyCount in
            self.physicalDevice.instance.dispatchTable.vkGetDisplayModeProperties2KHR(self.physicalDevice.handle, self.handle, pPropertyCount, pProperties)
        }.map { DisplayModeProperties2KHR(cStruct: $0) }
    }
}

class DisplayModeKHR {
    let handle: VkDisplayModeKHR!
    let display: DisplayKHR

    init(handle: VkDisplayModeKHR!, display: DisplayKHR) {
        self.handle = handle
        self.display = display
    }

    func getDisplayPlaneCapabilitiesKHR(planeIndex: UInt32) throws -> DisplayPlaneCapabilitiesKHR {
        var out = VkDisplayPlaneCapabilitiesKHR()
        try checkResult(
            self.display.physicalDevice.instance.dispatchTable.vkGetDisplayPlaneCapabilitiesKHR(self.display.physicalDevice.handle, self.handle, planeIndex, &out)
        )
        return DisplayPlaneCapabilitiesKHR(cStruct: out)
    }
}

class SurfaceKHR {
    let handle: VkSurfaceKHR!
    let instance: Instance

    init(handle: VkSurfaceKHR!, instance: Instance) {
        self.handle = handle
        self.instance = instance
    }

    func destroyKHR() -> Void {
        self.instance.dispatchTable.vkDestroySurfaceKHR(self.instance.handle, self.handle, nil)
    }
}

class SwapchainKHR {
    let handle: VkSwapchainKHR!
    let device: Device

    init(handle: VkSwapchainKHR!, device: Device) {
        self.handle = handle
        self.device = device
    }

    func destroyKHR() -> Void {
        self.device.dispatchTable.vkDestroySwapchainKHR(self.device.handle, self.handle, nil)
    }

    func getImagesKHR() throws -> Array<Image> {
        try enumerate { pSwapchainImages, pSwapchainImageCount in
            self.device.dispatchTable.vkGetSwapchainImagesKHR(self.device.handle, self.handle, pSwapchainImageCount, pSwapchainImages)
        }.map { Image(handle: $0, device: self.device) }
    }

    func acquireNextImageKHR(timeout: UInt64, semaphore: Semaphore?, fence: Fence?) throws -> UInt32 {
        var out = UInt32()
        try checkResult(
            self.device.dispatchTable.vkAcquireNextImageKHR(self.device.handle, self.handle, timeout, semaphore?.handle, fence?.handle, &out)
        )
        return out
    }

    func getCounterEXT(counter: SurfaceCounterFlagsEXT) throws -> UInt64 {
        var out = UInt64()
        try checkResult(
            self.device.dispatchTable.vkGetSwapchainCounterEXT(self.device.handle, self.handle, VkSurfaceCounterFlagBitsEXT(rawValue: counter.rawValue), &out)
        )
        return out
    }

    func getStatusKHR() throws -> Void {
        try checkResult(
            self.device.dispatchTable.vkGetSwapchainStatusKHR(self.device.handle, self.handle)
        )
    }

    func getRefreshCycleDurationGOOGLE() throws -> RefreshCycleDurationGOOGLE {
        var out = VkRefreshCycleDurationGOOGLE()
        try checkResult(
            self.device.dispatchTable.vkGetRefreshCycleDurationGOOGLE(self.device.handle, self.handle, &out)
        )
        return RefreshCycleDurationGOOGLE(cStruct: out)
    }

    func getPastPresentationTimingGOOGLE() throws -> Array<PastPresentationTimingGOOGLE> {
        try enumerate { pPresentationTimings, pPresentationTimingCount in
            self.device.dispatchTable.vkGetPastPresentationTimingGOOGLE(self.device.handle, self.handle, pPresentationTimingCount, pPresentationTimings)
        }.map { PastPresentationTimingGOOGLE(cStruct: $0) }
    }

    func setLocalDimmingAMD(localDimmingEnable: Bool) -> Void {
        self.device.dispatchTable.vkSetLocalDimmingAMD(self.device.handle, self.handle, VkBool32(localDimmingEnable ? VK_TRUE : VK_FALSE))
    }
}

class DebugReportCallbackEXT {
    let handle: VkDebugReportCallbackEXT!
    let instance: Instance

    init(handle: VkDebugReportCallbackEXT!, instance: Instance) {
        self.handle = handle
        self.instance = instance
    }

    func destroyEXT() -> Void {
        self.instance.dispatchTable.vkDestroyDebugReportCallbackEXT(self.instance.handle, self.handle, nil)
    }
}

class DebugUtilsMessengerEXT {
    let handle: VkDebugUtilsMessengerEXT!
    let instance: Instance

    init(handle: VkDebugUtilsMessengerEXT!, instance: Instance) {
        self.handle = handle
        self.instance = instance
    }

    func destroyEXT() -> Void {
        self.instance.dispatchTable.vkDestroyDebugUtilsMessengerEXT(self.instance.handle, self.handle, nil)
    }
}

