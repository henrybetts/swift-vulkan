import CVulkan

struct BaseOutStructure {
    let sType: VkStructureType
    let pNext: UnsafeMutablePointer<VkBaseOutStructure>
}

struct BaseInStructure {
    let sType: VkStructureType
    let pNext: UnsafePointer<VkBaseInStructure>
}

struct Offset2D {
    let x: Int32
    let y: Int32
}

struct Offset3D {
    let x: Int32
    let y: Int32
    let z: Int32
}

struct Extent2D {
    let width: UInt32
    let height: UInt32
}

struct Extent3D {
    let width: UInt32
    let height: UInt32
    let depth: UInt32
}

struct Viewport {
    let x: Float
    let y: Float
    let width: Float
    let height: Float
    let minDepth: Float
    let maxDepth: Float
}

struct Rect2D {
    let offset: VkOffset2D
    let extent: VkExtent2D
}

struct ClearRect {
    let rect: VkRect2D
    let baseArrayLayer: UInt32
    let layerCount: UInt32
}

struct ComponentMapping {
    let r: VkComponentSwizzle
    let g: VkComponentSwizzle
    let b: VkComponentSwizzle
    let a: VkComponentSwizzle
}

struct PhysicalDeviceProperties {
    let apiVersion: UInt32
    let driverVersion: UInt32
    let vendorID: UInt32
    let deviceID: UInt32
    let deviceType: VkPhysicalDeviceType
    let deviceName: (CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar)
    let pipelineCacheUUID: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
    let limits: VkPhysicalDeviceLimits
    let sparseProperties: VkPhysicalDeviceSparseProperties
}

struct ExtensionProperties {
    let extensionName: (CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar)
    let specVersion: UInt32
}

struct LayerProperties {
    let layerName: (CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar)
    let specVersion: UInt32
    let implementationVersion: UInt32
    let description: (CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar)
}

struct ApplicationInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let pApplicationName: UnsafePointer<CChar>
    let applicationVersion: UInt32
    let pEngineName: UnsafePointer<CChar>
    let engineVersion: UInt32
    let apiVersion: UInt32
}

struct AllocationCallbacks {
    let pUserData: UnsafeMutableRawPointer
    let pfnAllocation: PFN_vkAllocationFunction
    let pfnReallocation: PFN_vkReallocationFunction
    let pfnFree: PFN_vkFreeFunction
    let pfnInternalAllocation: PFN_vkInternalAllocationNotification
    let pfnInternalFree: PFN_vkInternalFreeNotification
}

struct DeviceQueueCreateInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let flags: VkDeviceQueueCreateFlags
    let queueFamilyIndex: UInt32
    let queueCount: UInt32
    let pQueuePriorities: UnsafePointer<Float>
}

struct DeviceCreateInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let flags: VkDeviceCreateFlags
    let queueCreateInfoCount: UInt32
    let pQueueCreateInfos: UnsafePointer<VkDeviceQueueCreateInfo>
    let enabledLayerCount: UInt32
    let ppEnabledLayerNames: UnsafeMutablePointer<UnsafePointer<CChar>>
    let enabledExtensionCount: UInt32
    let ppEnabledExtensionNames: UnsafeMutablePointer<UnsafePointer<CChar>>
    let pEnabledFeatures: UnsafePointer<VkPhysicalDeviceFeatures>
}

struct InstanceCreateInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let flags: VkInstanceCreateFlags
    let pApplicationInfo: UnsafePointer<VkApplicationInfo>
    let enabledLayerCount: UInt32
    let ppEnabledLayerNames: UnsafeMutablePointer<UnsafePointer<CChar>>
    let enabledExtensionCount: UInt32
    let ppEnabledExtensionNames: UnsafeMutablePointer<UnsafePointer<CChar>>
}

struct QueueFamilyProperties {
    let queueFlags: VkQueueFlags
    let queueCount: UInt32
    let timestampValidBits: UInt32
    let minImageTransferGranularity: VkExtent3D
}

struct PhysicalDeviceMemoryProperties {
    let memoryTypeCount: UInt32
    let memoryTypes: (VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType)
    let memoryHeapCount: UInt32
    let memoryHeaps: (VkMemoryHeap, VkMemoryHeap, VkMemoryHeap, VkMemoryHeap, VkMemoryHeap, VkMemoryHeap, VkMemoryHeap, VkMemoryHeap, VkMemoryHeap, VkMemoryHeap, VkMemoryHeap, VkMemoryHeap, VkMemoryHeap, VkMemoryHeap, VkMemoryHeap, VkMemoryHeap)
}

struct MemoryAllocateInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let allocationSize: VkDeviceSize
    let memoryTypeIndex: UInt32
}

struct MemoryRequirements {
    let size: VkDeviceSize
    let alignment: VkDeviceSize
    let memoryTypeBits: UInt32
}

struct SparseImageFormatProperties {
    let aspectMask: VkImageAspectFlags
    let imageGranularity: VkExtent3D
    let flags: VkSparseImageFormatFlags
}

struct SparseImageMemoryRequirements {
    let formatProperties: VkSparseImageFormatProperties
    let imageMipTailFirstLod: UInt32
    let imageMipTailSize: VkDeviceSize
    let imageMipTailOffset: VkDeviceSize
    let imageMipTailStride: VkDeviceSize
}

struct MemoryType {
    let propertyFlags: VkMemoryPropertyFlags
    let heapIndex: UInt32
}

struct MemoryHeap {
    let size: VkDeviceSize
    let flags: VkMemoryHeapFlags
}

struct MappedMemoryRange {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let memory: VkDeviceMemory
    let offset: VkDeviceSize
    let size: VkDeviceSize
}

struct FormatProperties {
    let linearTilingFeatures: VkFormatFeatureFlags
    let optimalTilingFeatures: VkFormatFeatureFlags
    let bufferFeatures: VkFormatFeatureFlags
}

struct ImageFormatProperties {
    let maxExtent: VkExtent3D
    let maxMipLevels: UInt32
    let maxArrayLayers: UInt32
    let sampleCounts: VkSampleCountFlags
    let maxResourceSize: VkDeviceSize
}

struct DescriptorBufferInfo {
    let buffer: VkBuffer
    let offset: VkDeviceSize
    let range: VkDeviceSize
}

struct DescriptorImageInfo {
    let sampler: VkSampler
    let imageView: VkImageView
    let imageLayout: VkImageLayout
}

struct WriteDescriptorSet {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let dstSet: VkDescriptorSet
    let dstBinding: UInt32
    let dstArrayElement: UInt32
    let descriptorCount: UInt32
    let descriptorType: VkDescriptorType
    let pImageInfo: UnsafePointer<VkDescriptorImageInfo>
    let pBufferInfo: UnsafePointer<VkDescriptorBufferInfo>
    let pTexelBufferView: UnsafePointer<VkBufferView>
}

struct CopyDescriptorSet {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let srcSet: VkDescriptorSet
    let srcBinding: UInt32
    let srcArrayElement: UInt32
    let dstSet: VkDescriptorSet
    let dstBinding: UInt32
    let dstArrayElement: UInt32
    let descriptorCount: UInt32
}

struct BufferCreateInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let flags: VkBufferCreateFlags
    let size: VkDeviceSize
    let usage: VkBufferUsageFlags
    let sharingMode: VkSharingMode
    let queueFamilyIndexCount: UInt32
    let pQueueFamilyIndices: UnsafePointer<UInt32>
}

struct BufferViewCreateInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let flags: VkBufferViewCreateFlags
    let buffer: VkBuffer
    let format: VkFormat
    let offset: VkDeviceSize
    let range: VkDeviceSize
}

struct ImageSubresource {
    let aspectMask: VkImageAspectFlags
    let mipLevel: UInt32
    let arrayLayer: UInt32
}

struct ImageSubresourceLayers {
    let aspectMask: VkImageAspectFlags
    let mipLevel: UInt32
    let baseArrayLayer: UInt32
    let layerCount: UInt32
}

struct ImageSubresourceRange {
    let aspectMask: VkImageAspectFlags
    let baseMipLevel: UInt32
    let levelCount: UInt32
    let baseArrayLayer: UInt32
    let layerCount: UInt32
}

struct MemoryBarrier {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let srcAccessMask: VkAccessFlags
    let dstAccessMask: VkAccessFlags
}

struct BufferMemoryBarrier {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let srcAccessMask: VkAccessFlags
    let dstAccessMask: VkAccessFlags
    let srcQueueFamilyIndex: UInt32
    let dstQueueFamilyIndex: UInt32
    let buffer: VkBuffer
    let offset: VkDeviceSize
    let size: VkDeviceSize
}

struct ImageMemoryBarrier {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let srcAccessMask: VkAccessFlags
    let dstAccessMask: VkAccessFlags
    let oldLayout: VkImageLayout
    let newLayout: VkImageLayout
    let srcQueueFamilyIndex: UInt32
    let dstQueueFamilyIndex: UInt32
    let image: VkImage
    let subresourceRange: VkImageSubresourceRange
}

struct ImageCreateInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
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
}

struct SubresourceLayout {
    let offset: VkDeviceSize
    let size: VkDeviceSize
    let rowPitch: VkDeviceSize
    let arrayPitch: VkDeviceSize
    let depthPitch: VkDeviceSize
}

struct ImageViewCreateInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let flags: VkImageViewCreateFlags
    let image: VkImage
    let viewType: VkImageViewType
    let format: VkFormat
    let components: VkComponentMapping
    let subresourceRange: VkImageSubresourceRange
}

struct BufferCopy {
    let srcOffset: VkDeviceSize
    let dstOffset: VkDeviceSize
    let size: VkDeviceSize
}

struct SparseMemoryBind {
    let resourceOffset: VkDeviceSize
    let size: VkDeviceSize
    let memory: VkDeviceMemory
    let memoryOffset: VkDeviceSize
    let flags: VkSparseMemoryBindFlags
}

struct SparseImageMemoryBind {
    let subresource: VkImageSubresource
    let offset: VkOffset3D
    let extent: VkExtent3D
    let memory: VkDeviceMemory
    let memoryOffset: VkDeviceSize
    let flags: VkSparseMemoryBindFlags
}

struct SparseBufferMemoryBindInfo {
    let buffer: VkBuffer
    let bindCount: UInt32
    let pBinds: UnsafePointer<VkSparseMemoryBind>
}

struct SparseImageOpaqueMemoryBindInfo {
    let image: VkImage
    let bindCount: UInt32
    let pBinds: UnsafePointer<VkSparseMemoryBind>
}

struct SparseImageMemoryBindInfo {
    let image: VkImage
    let bindCount: UInt32
    let pBinds: UnsafePointer<VkSparseImageMemoryBind>
}

struct BindSparseInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let waitSemaphoreCount: UInt32
    let pWaitSemaphores: UnsafePointer<VkSemaphore>
    let bufferBindCount: UInt32
    let pBufferBinds: UnsafePointer<VkSparseBufferMemoryBindInfo>
    let imageOpaqueBindCount: UInt32
    let pImageOpaqueBinds: UnsafePointer<VkSparseImageOpaqueMemoryBindInfo>
    let imageBindCount: UInt32
    let pImageBinds: UnsafePointer<VkSparseImageMemoryBindInfo>
    let signalSemaphoreCount: UInt32
    let pSignalSemaphores: UnsafePointer<VkSemaphore>
}

struct ImageCopy {
    let srcSubresource: VkImageSubresourceLayers
    let srcOffset: VkOffset3D
    let dstSubresource: VkImageSubresourceLayers
    let dstOffset: VkOffset3D
    let extent: VkExtent3D
}

struct ImageBlit {
    let srcSubresource: VkImageSubresourceLayers
    let srcOffsets: (VkOffset3D, VkOffset3D)
    let dstSubresource: VkImageSubresourceLayers
    let dstOffsets: (VkOffset3D, VkOffset3D)
}

struct BufferImageCopy {
    let bufferOffset: VkDeviceSize
    let bufferRowLength: UInt32
    let bufferImageHeight: UInt32
    let imageSubresource: VkImageSubresourceLayers
    let imageOffset: VkOffset3D
    let imageExtent: VkExtent3D
}

struct ImageResolve {
    let srcSubresource: VkImageSubresourceLayers
    let srcOffset: VkOffset3D
    let dstSubresource: VkImageSubresourceLayers
    let dstOffset: VkOffset3D
    let extent: VkExtent3D
}

struct ShaderModuleCreateInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let flags: VkShaderModuleCreateFlags
    let codeSize: Int
    let pCode: UnsafePointer<UInt32>
}

struct DescriptorSetLayoutBinding {
    let binding: UInt32
    let descriptorType: VkDescriptorType
    let descriptorCount: UInt32
    let stageFlags: VkShaderStageFlags
    let pImmutableSamplers: UnsafePointer<VkSampler>
}

struct DescriptorSetLayoutCreateInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let flags: VkDescriptorSetLayoutCreateFlags
    let bindingCount: UInt32
    let pBindings: UnsafePointer<VkDescriptorSetLayoutBinding>
}

struct DescriptorPoolSize {
    let type: VkDescriptorType
    let descriptorCount: UInt32
}

struct DescriptorPoolCreateInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let flags: VkDescriptorPoolCreateFlags
    let maxSets: UInt32
    let poolSizeCount: UInt32
    let pPoolSizes: UnsafePointer<VkDescriptorPoolSize>
}

struct DescriptorSetAllocateInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let descriptorPool: VkDescriptorPool
    let descriptorSetCount: UInt32
    let pSetLayouts: UnsafePointer<VkDescriptorSetLayout>
}

struct SpecializationMapEntry {
    let constantID: UInt32
    let offset: UInt32
    let size: Int
}

struct SpecializationInfo {
    let mapEntryCount: UInt32
    let pMapEntries: UnsafePointer<VkSpecializationMapEntry>
    let dataSize: Int
    let pData: UnsafeRawPointer
}

struct PipelineShaderStageCreateInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let flags: VkPipelineShaderStageCreateFlags
    let stage: VkShaderStageFlagBits
    let module: VkShaderModule
    let pName: UnsafePointer<CChar>
    let pSpecializationInfo: UnsafePointer<VkSpecializationInfo>
}

struct ComputePipelineCreateInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let flags: VkPipelineCreateFlags
    let stage: VkPipelineShaderStageCreateInfo
    let layout: VkPipelineLayout
    let basePipelineHandle: VkPipeline
    let basePipelineIndex: Int32
}

struct VertexInputBindingDescription {
    let binding: UInt32
    let stride: UInt32
    let inputRate: VkVertexInputRate
}

struct VertexInputAttributeDescription {
    let location: UInt32
    let binding: UInt32
    let format: VkFormat
    let offset: UInt32
}

struct PipelineVertexInputStateCreateInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let flags: VkPipelineVertexInputStateCreateFlags
    let vertexBindingDescriptionCount: UInt32
    let pVertexBindingDescriptions: UnsafePointer<VkVertexInputBindingDescription>
    let vertexAttributeDescriptionCount: UInt32
    let pVertexAttributeDescriptions: UnsafePointer<VkVertexInputAttributeDescription>
}

struct PipelineInputAssemblyStateCreateInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let flags: VkPipelineInputAssemblyStateCreateFlags
    let topology: VkPrimitiveTopology
    let primitiveRestartEnable: VkBool32
}

struct PipelineTessellationStateCreateInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let flags: VkPipelineTessellationStateCreateFlags
    let patchControlPoints: UInt32
}

struct PipelineViewportStateCreateInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let flags: VkPipelineViewportStateCreateFlags
    let viewportCount: UInt32
    let pViewports: UnsafePointer<VkViewport>
    let scissorCount: UInt32
    let pScissors: UnsafePointer<VkRect2D>
}

struct PipelineRasterizationStateCreateInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
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
}

struct PipelineMultisampleStateCreateInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let flags: VkPipelineMultisampleStateCreateFlags
    let rasterizationSamples: VkSampleCountFlagBits
    let sampleShadingEnable: VkBool32
    let minSampleShading: Float
    let pSampleMask: UnsafePointer<VkSampleMask>
    let alphaToCoverageEnable: VkBool32
    let alphaToOneEnable: VkBool32
}

struct PipelineColorBlendAttachmentState {
    let blendEnable: VkBool32
    let srcColorBlendFactor: VkBlendFactor
    let dstColorBlendFactor: VkBlendFactor
    let colorBlendOp: VkBlendOp
    let srcAlphaBlendFactor: VkBlendFactor
    let dstAlphaBlendFactor: VkBlendFactor
    let alphaBlendOp: VkBlendOp
    let colorWriteMask: VkColorComponentFlags
}

struct PipelineColorBlendStateCreateInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let flags: VkPipelineColorBlendStateCreateFlags
    let logicOpEnable: VkBool32
    let logicOp: VkLogicOp
    let attachmentCount: UInt32
    let pAttachments: UnsafePointer<VkPipelineColorBlendAttachmentState>
    let blendConstants: (Float, Float, Float, Float)
}

struct PipelineDynamicStateCreateInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let flags: VkPipelineDynamicStateCreateFlags
    let dynamicStateCount: UInt32
    let pDynamicStates: UnsafePointer<VkDynamicState>
}

struct StencilOpState {
    let failOp: VkStencilOp
    let passOp: VkStencilOp
    let depthFailOp: VkStencilOp
    let compareOp: VkCompareOp
    let compareMask: UInt32
    let writeMask: UInt32
    let reference: UInt32
}

struct PipelineDepthStencilStateCreateInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
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
}

struct GraphicsPipelineCreateInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
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
}

struct PipelineCacheCreateInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let flags: VkPipelineCacheCreateFlags
    let initialDataSize: Int
    let pInitialData: UnsafeRawPointer
}

struct PushConstantRange {
    let stageFlags: VkShaderStageFlags
    let offset: UInt32
    let size: UInt32
}

struct PipelineLayoutCreateInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let flags: VkPipelineLayoutCreateFlags
    let setLayoutCount: UInt32
    let pSetLayouts: UnsafePointer<VkDescriptorSetLayout>
    let pushConstantRangeCount: UInt32
    let pPushConstantRanges: UnsafePointer<VkPushConstantRange>
}

struct SamplerCreateInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
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
}

struct CommandPoolCreateInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let flags: VkCommandPoolCreateFlags
    let queueFamilyIndex: UInt32
}

struct CommandBufferAllocateInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let commandPool: VkCommandPool
    let level: VkCommandBufferLevel
    let commandBufferCount: UInt32
}

struct CommandBufferInheritanceInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let renderPass: VkRenderPass
    let subpass: UInt32
    let framebuffer: VkFramebuffer
    let occlusionQueryEnable: VkBool32
    let queryFlags: VkQueryControlFlags
    let pipelineStatistics: VkQueryPipelineStatisticFlags
}

struct CommandBufferBeginInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let flags: VkCommandBufferUsageFlags
    let pInheritanceInfo: UnsafePointer<VkCommandBufferInheritanceInfo>
}

struct RenderPassBeginInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let renderPass: VkRenderPass
    let framebuffer: VkFramebuffer
    let renderArea: VkRect2D
    let clearValueCount: UInt32
    let pClearValues: UnsafePointer<VkClearValue>
}

struct ClearDepthStencilValue {
    let depth: Float
    let stencil: UInt32
}

struct ClearAttachment {
    let aspectMask: VkImageAspectFlags
    let colorAttachment: UInt32
    let clearValue: VkClearValue
}

struct AttachmentDescription {
    let flags: VkAttachmentDescriptionFlags
    let format: VkFormat
    let samples: VkSampleCountFlagBits
    let loadOp: VkAttachmentLoadOp
    let storeOp: VkAttachmentStoreOp
    let stencilLoadOp: VkAttachmentLoadOp
    let stencilStoreOp: VkAttachmentStoreOp
    let initialLayout: VkImageLayout
    let finalLayout: VkImageLayout
}

struct AttachmentReference {
    let attachment: UInt32
    let layout: VkImageLayout
}

struct SubpassDescription {
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
}

struct SubpassDependency {
    let srcSubpass: UInt32
    let dstSubpass: UInt32
    let srcStageMask: VkPipelineStageFlags
    let dstStageMask: VkPipelineStageFlags
    let srcAccessMask: VkAccessFlags
    let dstAccessMask: VkAccessFlags
    let dependencyFlags: VkDependencyFlags
}

struct RenderPassCreateInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let flags: VkRenderPassCreateFlags
    let attachmentCount: UInt32
    let pAttachments: UnsafePointer<VkAttachmentDescription>
    let subpassCount: UInt32
    let pSubpasses: UnsafePointer<VkSubpassDescription>
    let dependencyCount: UInt32
    let pDependencies: UnsafePointer<VkSubpassDependency>
}

struct EventCreateInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let flags: VkEventCreateFlags
}

struct FenceCreateInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let flags: VkFenceCreateFlags
}

struct PhysicalDeviceFeatures {
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
}

struct PhysicalDeviceSparseProperties {
    let residencyStandard2DBlockShape: VkBool32
    let residencyStandard2DMultisampleBlockShape: VkBool32
    let residencyStandard3DBlockShape: VkBool32
    let residencyAlignedMipSize: VkBool32
    let residencyNonResidentStrict: VkBool32
}

struct PhysicalDeviceLimits {
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
}

struct SemaphoreCreateInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let flags: VkSemaphoreCreateFlags
}

struct QueryPoolCreateInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let flags: VkQueryPoolCreateFlags
    let queryType: VkQueryType
    let queryCount: UInt32
    let pipelineStatistics: VkQueryPipelineStatisticFlags
}

struct FramebufferCreateInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let flags: VkFramebufferCreateFlags
    let renderPass: VkRenderPass
    let attachmentCount: UInt32
    let pAttachments: UnsafePointer<VkImageView>
    let width: UInt32
    let height: UInt32
    let layers: UInt32
}

struct DrawIndirectCommand {
    let vertexCount: UInt32
    let instanceCount: UInt32
    let firstVertex: UInt32
    let firstInstance: UInt32
}

struct DrawIndexedIndirectCommand {
    let indexCount: UInt32
    let instanceCount: UInt32
    let firstIndex: UInt32
    let vertexOffset: Int32
    let firstInstance: UInt32
}

struct DispatchIndirectCommand {
    let x: UInt32
    let y: UInt32
    let z: UInt32
}

struct SubmitInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let waitSemaphoreCount: UInt32
    let pWaitSemaphores: UnsafePointer<VkSemaphore>
    let pWaitDstStageMask: UnsafePointer<VkPipelineStageFlags>
    let commandBufferCount: UInt32
    let pCommandBuffers: UnsafePointer<VkCommandBuffer>
    let signalSemaphoreCount: UInt32
    let pSignalSemaphores: UnsafePointer<VkSemaphore>
}

struct DisplayPropertiesKHR {
    let display: VkDisplayKHR
    let displayName: UnsafePointer<CChar>
    let physicalDimensions: VkExtent2D
    let physicalResolution: VkExtent2D
    let supportedTransforms: VkSurfaceTransformFlagsKHR
    let planeReorderPossible: VkBool32
    let persistentContent: VkBool32
}

struct DisplayPlanePropertiesKHR {
    let currentDisplay: VkDisplayKHR
    let currentStackIndex: UInt32
}

struct DisplayModeParametersKHR {
    let visibleRegion: VkExtent2D
    let refreshRate: UInt32
}

struct DisplayModePropertiesKHR {
    let displayMode: VkDisplayModeKHR
    let parameters: VkDisplayModeParametersKHR
}

struct DisplayModeCreateInfoKHR {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let flags: VkDisplayModeCreateFlagsKHR
    let parameters: VkDisplayModeParametersKHR
}

struct DisplayPlaneCapabilitiesKHR {
    let supportedAlpha: VkDisplayPlaneAlphaFlagsKHR
    let minSrcPosition: VkOffset2D
    let maxSrcPosition: VkOffset2D
    let minSrcExtent: VkExtent2D
    let maxSrcExtent: VkExtent2D
    let minDstPosition: VkOffset2D
    let maxDstPosition: VkOffset2D
    let minDstExtent: VkExtent2D
    let maxDstExtent: VkExtent2D
}

struct DisplaySurfaceCreateInfoKHR {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let flags: VkDisplaySurfaceCreateFlagsKHR
    let displayMode: VkDisplayModeKHR
    let planeIndex: UInt32
    let planeStackIndex: UInt32
    let transform: VkSurfaceTransformFlagBitsKHR
    let globalAlpha: Float
    let alphaMode: VkDisplayPlaneAlphaFlagBitsKHR
    let imageExtent: VkExtent2D
}

struct DisplayPresentInfoKHR {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let srcRect: VkRect2D
    let dstRect: VkRect2D
    let persistent: VkBool32
}

struct SurfaceCapabilitiesKHR {
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
}

struct SurfaceFormatKHR {
    let format: VkFormat
    let colorSpace: VkColorSpaceKHR
}

struct SwapchainCreateInfoKHR {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
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
}

struct PresentInfoKHR {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let waitSemaphoreCount: UInt32
    let pWaitSemaphores: UnsafePointer<VkSemaphore>
    let swapchainCount: UInt32
    let pSwapchains: UnsafePointer<VkSwapchainKHR>
    let pImageIndices: UnsafePointer<UInt32>
    let pResults: UnsafeMutablePointer<VkResult>
}

struct DebugReportCallbackCreateInfoEXT {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let flags: VkDebugReportFlagsEXT
    let pfnCallback: PFN_vkDebugReportCallbackEXT
    let pUserData: UnsafeMutableRawPointer
}

struct ValidationFlagsEXT {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let disabledValidationCheckCount: UInt32
    let pDisabledValidationChecks: UnsafePointer<VkValidationCheckEXT>
}

struct ValidationFeaturesEXT {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let enabledValidationFeatureCount: UInt32
    let pEnabledValidationFeatures: UnsafePointer<VkValidationFeatureEnableEXT>
    let disabledValidationFeatureCount: UInt32
    let pDisabledValidationFeatures: UnsafePointer<VkValidationFeatureDisableEXT>
}

struct PipelineRasterizationStateRasterizationOrderAMD {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let rasterizationOrder: VkRasterizationOrderAMD
}

struct DebugMarkerObjectNameInfoEXT {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let objectType: VkDebugReportObjectTypeEXT
    let object: UInt64
    let pObjectName: UnsafePointer<CChar>
}

struct DebugMarkerObjectTagInfoEXT {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let objectType: VkDebugReportObjectTypeEXT
    let object: UInt64
    let tagName: UInt64
    let tagSize: Int
    let pTag: UnsafeRawPointer
}

struct DebugMarkerMarkerInfoEXT {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let pMarkerName: UnsafePointer<CChar>
    let color: (Float, Float, Float, Float)
}

struct DedicatedAllocationImageCreateInfoNV {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let dedicatedAllocation: VkBool32
}

struct DedicatedAllocationBufferCreateInfoNV {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let dedicatedAllocation: VkBool32
}

struct DedicatedAllocationMemoryAllocateInfoNV {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let image: VkImage
    let buffer: VkBuffer
}

struct ExternalImageFormatPropertiesNV {
    let imageFormatProperties: VkImageFormatProperties
    let externalMemoryFeatures: VkExternalMemoryFeatureFlagsNV
    let exportFromImportedHandleTypes: VkExternalMemoryHandleTypeFlagsNV
    let compatibleHandleTypes: VkExternalMemoryHandleTypeFlagsNV
}

struct ExternalMemoryImageCreateInfoNV {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let handleTypes: VkExternalMemoryHandleTypeFlagsNV
}

struct ExportMemoryAllocateInfoNV {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let handleTypes: VkExternalMemoryHandleTypeFlagsNV
}

struct PhysicalDeviceDeviceGeneratedCommandsFeaturesNV {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let deviceGeneratedCommands: VkBool32
}

struct PhysicalDeviceDeviceGeneratedCommandsPropertiesNV {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let maxGraphicsShaderGroupCount: UInt32
    let maxIndirectSequenceCount: UInt32
    let maxIndirectCommandsTokenCount: UInt32
    let maxIndirectCommandsStreamCount: UInt32
    let maxIndirectCommandsTokenOffset: UInt32
    let maxIndirectCommandsStreamStride: UInt32
    let minSequencesCountBufferOffsetAlignment: UInt32
    let minSequencesIndexBufferOffsetAlignment: UInt32
    let minIndirectCommandsBufferOffsetAlignment: UInt32
}

struct GraphicsShaderGroupCreateInfoNV {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let stageCount: UInt32
    let pStages: UnsafePointer<VkPipelineShaderStageCreateInfo>
    let pVertexInputState: UnsafePointer<VkPipelineVertexInputStateCreateInfo>
    let pTessellationState: UnsafePointer<VkPipelineTessellationStateCreateInfo>
}

struct GraphicsPipelineShaderGroupsCreateInfoNV {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let groupCount: UInt32
    let pGroups: UnsafePointer<VkGraphicsShaderGroupCreateInfoNV>
    let pipelineCount: UInt32
    let pPipelines: UnsafePointer<VkPipeline>
}

struct BindShaderGroupIndirectCommandNV {
    let groupIndex: UInt32
}

struct BindIndexBufferIndirectCommandNV {
    let bufferAddress: VkDeviceAddress
    let size: UInt32
    let indexType: VkIndexType
}

struct BindVertexBufferIndirectCommandNV {
    let bufferAddress: VkDeviceAddress
    let size: UInt32
    let stride: UInt32
}

struct SetStateFlagsIndirectCommandNV {
    let data: UInt32
}

struct IndirectCommandsStreamNV {
    let buffer: VkBuffer
    let offset: VkDeviceSize
}

struct IndirectCommandsLayoutTokenNV {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
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
}

struct IndirectCommandsLayoutCreateInfoNV {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let flags: VkIndirectCommandsLayoutUsageFlagsNV
    let pipelineBindPoint: VkPipelineBindPoint
    let tokenCount: UInt32
    let pTokens: UnsafePointer<VkIndirectCommandsLayoutTokenNV>
    let streamCount: UInt32
    let pStreamStrides: UnsafePointer<UInt32>
}

struct GeneratedCommandsInfoNV {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
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
}

struct GeneratedCommandsMemoryRequirementsInfoNV {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let pipelineBindPoint: VkPipelineBindPoint
    let pipeline: VkPipeline
    let indirectCommandsLayout: VkIndirectCommandsLayoutNV
    let maxSequencesCount: UInt32
}

struct PhysicalDeviceFeatures2 {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let features: VkPhysicalDeviceFeatures
}

struct PhysicalDeviceProperties2 {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let properties: VkPhysicalDeviceProperties
}

struct FormatProperties2 {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let formatProperties: VkFormatProperties
}

struct ImageFormatProperties2 {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let imageFormatProperties: VkImageFormatProperties
}

struct PhysicalDeviceImageFormatInfo2 {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let format: VkFormat
    let type: VkImageType
    let tiling: VkImageTiling
    let usage: VkImageUsageFlags
    let flags: VkImageCreateFlags
}

struct QueueFamilyProperties2 {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let queueFamilyProperties: VkQueueFamilyProperties
}

struct PhysicalDeviceMemoryProperties2 {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let memoryProperties: VkPhysicalDeviceMemoryProperties
}

struct SparseImageFormatProperties2 {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let properties: VkSparseImageFormatProperties
}

struct PhysicalDeviceSparseImageFormatInfo2 {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let format: VkFormat
    let type: VkImageType
    let samples: VkSampleCountFlagBits
    let usage: VkImageUsageFlags
    let tiling: VkImageTiling
}

struct PhysicalDevicePushDescriptorPropertiesKHR {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let maxPushDescriptors: UInt32
}

struct ConformanceVersion {
    let major: UInt8
    let minor: UInt8
    let subminor: UInt8
    let patch: UInt8
}

struct PhysicalDeviceDriverProperties {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let driverID: VkDriverId
    let driverName: (CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar)
    let driverInfo: (CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar)
    let conformanceVersion: VkConformanceVersion
}

struct PresentRegionsKHR {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let swapchainCount: UInt32
    let pRegions: UnsafePointer<VkPresentRegionKHR>
}

struct PresentRegionKHR {
    let rectangleCount: UInt32
    let pRectangles: UnsafePointer<VkRectLayerKHR>
}

struct RectLayerKHR {
    let offset: VkOffset2D
    let extent: VkExtent2D
    let layer: UInt32
}

struct PhysicalDeviceVariablePointersFeatures {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let variablePointersStorageBuffer: VkBool32
    let variablePointers: VkBool32
}

struct ExternalMemoryProperties {
    let externalMemoryFeatures: VkExternalMemoryFeatureFlags
    let exportFromImportedHandleTypes: VkExternalMemoryHandleTypeFlags
    let compatibleHandleTypes: VkExternalMemoryHandleTypeFlags
}

struct PhysicalDeviceExternalImageFormatInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let handleType: VkExternalMemoryHandleTypeFlagBits
}

struct ExternalImageFormatProperties {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let externalMemoryProperties: VkExternalMemoryProperties
}

struct PhysicalDeviceExternalBufferInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let flags: VkBufferCreateFlags
    let usage: VkBufferUsageFlags
    let handleType: VkExternalMemoryHandleTypeFlagBits
}

struct ExternalBufferProperties {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let externalMemoryProperties: VkExternalMemoryProperties
}

struct PhysicalDeviceIDProperties {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let deviceUUID: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
    let driverUUID: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
    let deviceLUID: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
    let deviceNodeMask: UInt32
    let deviceLUIDValid: VkBool32
}

struct ExternalMemoryImageCreateInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let handleTypes: VkExternalMemoryHandleTypeFlags
}

struct ExternalMemoryBufferCreateInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let handleTypes: VkExternalMemoryHandleTypeFlags
}

struct ExportMemoryAllocateInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let handleTypes: VkExternalMemoryHandleTypeFlags
}

struct ImportMemoryFdInfoKHR {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let handleType: VkExternalMemoryHandleTypeFlagBits
    let fd: Int32
}

struct MemoryFdPropertiesKHR {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let memoryTypeBits: UInt32
}

struct MemoryGetFdInfoKHR {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let memory: VkDeviceMemory
    let handleType: VkExternalMemoryHandleTypeFlagBits
}

struct PhysicalDeviceExternalSemaphoreInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let handleType: VkExternalSemaphoreHandleTypeFlagBits
}

struct ExternalSemaphoreProperties {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let exportFromImportedHandleTypes: VkExternalSemaphoreHandleTypeFlags
    let compatibleHandleTypes: VkExternalSemaphoreHandleTypeFlags
    let externalSemaphoreFeatures: VkExternalSemaphoreFeatureFlags
}

struct ExportSemaphoreCreateInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let handleTypes: VkExternalSemaphoreHandleTypeFlags
}

struct ImportSemaphoreFdInfoKHR {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let semaphore: VkSemaphore
    let flags: VkSemaphoreImportFlags
    let handleType: VkExternalSemaphoreHandleTypeFlagBits
    let fd: Int32
}

struct SemaphoreGetFdInfoKHR {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let semaphore: VkSemaphore
    let handleType: VkExternalSemaphoreHandleTypeFlagBits
}

struct PhysicalDeviceExternalFenceInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let handleType: VkExternalFenceHandleTypeFlagBits
}

struct ExternalFenceProperties {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let exportFromImportedHandleTypes: VkExternalFenceHandleTypeFlags
    let compatibleHandleTypes: VkExternalFenceHandleTypeFlags
    let externalFenceFeatures: VkExternalFenceFeatureFlags
}

struct ExportFenceCreateInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let handleTypes: VkExternalFenceHandleTypeFlags
}

struct ImportFenceFdInfoKHR {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let fence: VkFence
    let flags: VkFenceImportFlags
    let handleType: VkExternalFenceHandleTypeFlagBits
    let fd: Int32
}

struct FenceGetFdInfoKHR {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let fence: VkFence
    let handleType: VkExternalFenceHandleTypeFlagBits
}

struct PhysicalDeviceMultiviewFeatures {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let multiview: VkBool32
    let multiviewGeometryShader: VkBool32
    let multiviewTessellationShader: VkBool32
}

struct PhysicalDeviceMultiviewProperties {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let maxMultiviewViewCount: UInt32
    let maxMultiviewInstanceIndex: UInt32
}

struct RenderPassMultiviewCreateInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let subpassCount: UInt32
    let pViewMasks: UnsafePointer<UInt32>
    let dependencyCount: UInt32
    let pViewOffsets: UnsafePointer<Int32>
    let correlationMaskCount: UInt32
    let pCorrelationMasks: UnsafePointer<UInt32>
}

struct SurfaceCapabilities2EXT {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
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
}

struct DisplayPowerInfoEXT {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let powerState: VkDisplayPowerStateEXT
}

struct DeviceEventInfoEXT {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let deviceEvent: VkDeviceEventTypeEXT
}

struct DisplayEventInfoEXT {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let displayEvent: VkDisplayEventTypeEXT
}

struct SwapchainCounterCreateInfoEXT {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let surfaceCounters: VkSurfaceCounterFlagsEXT
}

struct PhysicalDeviceGroupProperties {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let physicalDeviceCount: UInt32
    let physicalDevices: (VkPhysicalDevice, VkPhysicalDevice, VkPhysicalDevice, VkPhysicalDevice, VkPhysicalDevice, VkPhysicalDevice, VkPhysicalDevice, VkPhysicalDevice, VkPhysicalDevice, VkPhysicalDevice, VkPhysicalDevice, VkPhysicalDevice, VkPhysicalDevice, VkPhysicalDevice, VkPhysicalDevice, VkPhysicalDevice, VkPhysicalDevice, VkPhysicalDevice, VkPhysicalDevice, VkPhysicalDevice, VkPhysicalDevice, VkPhysicalDevice, VkPhysicalDevice, VkPhysicalDevice, VkPhysicalDevice, VkPhysicalDevice, VkPhysicalDevice, VkPhysicalDevice, VkPhysicalDevice, VkPhysicalDevice, VkPhysicalDevice, VkPhysicalDevice)
    let subsetAllocation: VkBool32
}

struct MemoryAllocateFlagsInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let flags: VkMemoryAllocateFlags
    let deviceMask: UInt32
}

struct BindBufferMemoryInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let buffer: VkBuffer
    let memory: VkDeviceMemory
    let memoryOffset: VkDeviceSize
}

struct BindBufferMemoryDeviceGroupInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let deviceIndexCount: UInt32
    let pDeviceIndices: UnsafePointer<UInt32>
}

struct BindImageMemoryInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let image: VkImage
    let memory: VkDeviceMemory
    let memoryOffset: VkDeviceSize
}

struct BindImageMemoryDeviceGroupInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let deviceIndexCount: UInt32
    let pDeviceIndices: UnsafePointer<UInt32>
    let splitInstanceBindRegionCount: UInt32
    let pSplitInstanceBindRegions: UnsafePointer<VkRect2D>
}

struct DeviceGroupRenderPassBeginInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let deviceMask: UInt32
    let deviceRenderAreaCount: UInt32
    let pDeviceRenderAreas: UnsafePointer<VkRect2D>
}

struct DeviceGroupCommandBufferBeginInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let deviceMask: UInt32
}

struct DeviceGroupSubmitInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let waitSemaphoreCount: UInt32
    let pWaitSemaphoreDeviceIndices: UnsafePointer<UInt32>
    let commandBufferCount: UInt32
    let pCommandBufferDeviceMasks: UnsafePointer<UInt32>
    let signalSemaphoreCount: UInt32
    let pSignalSemaphoreDeviceIndices: UnsafePointer<UInt32>
}

struct DeviceGroupBindSparseInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let resourceDeviceIndex: UInt32
    let memoryDeviceIndex: UInt32
}

struct DeviceGroupPresentCapabilitiesKHR {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let presentMask: (UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32)
    let modes: VkDeviceGroupPresentModeFlagsKHR
}

struct ImageSwapchainCreateInfoKHR {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let swapchain: VkSwapchainKHR
}

struct BindImageMemorySwapchainInfoKHR {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let swapchain: VkSwapchainKHR
    let imageIndex: UInt32
}

struct AcquireNextImageInfoKHR {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let swapchain: VkSwapchainKHR
    let timeout: UInt64
    let semaphore: VkSemaphore
    let fence: VkFence
    let deviceMask: UInt32
}

struct DeviceGroupPresentInfoKHR {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let swapchainCount: UInt32
    let pDeviceMasks: UnsafePointer<UInt32>
    let mode: VkDeviceGroupPresentModeFlagBitsKHR
}

struct DeviceGroupDeviceCreateInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let physicalDeviceCount: UInt32
    let pPhysicalDevices: UnsafePointer<VkPhysicalDevice>
}

struct DeviceGroupSwapchainCreateInfoKHR {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let modes: VkDeviceGroupPresentModeFlagsKHR
}

struct DescriptorUpdateTemplateEntry {
    let dstBinding: UInt32
    let dstArrayElement: UInt32
    let descriptorCount: UInt32
    let descriptorType: VkDescriptorType
    let offset: Int
    let stride: Int
}

struct DescriptorUpdateTemplateCreateInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let flags: VkDescriptorUpdateTemplateCreateFlags
    let descriptorUpdateEntryCount: UInt32
    let pDescriptorUpdateEntries: UnsafePointer<VkDescriptorUpdateTemplateEntry>
    let templateType: VkDescriptorUpdateTemplateType
    let descriptorSetLayout: VkDescriptorSetLayout
    let pipelineBindPoint: VkPipelineBindPoint
    let pipelineLayout: VkPipelineLayout
    let set: UInt32
}

struct XYColorEXT {
    let x: Float
    let y: Float
}

struct HdrMetadataEXT {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let displayPrimaryRed: VkXYColorEXT
    let displayPrimaryGreen: VkXYColorEXT
    let displayPrimaryBlue: VkXYColorEXT
    let whitePoint: VkXYColorEXT
    let maxLuminance: Float
    let minLuminance: Float
    let maxContentLightLevel: Float
    let maxFrameAverageLightLevel: Float
}

struct DisplayNativeHdrSurfaceCapabilitiesAMD {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let localDimmingSupport: VkBool32
}

struct SwapchainDisplayNativeHdrCreateInfoAMD {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let localDimmingEnable: VkBool32
}

struct RefreshCycleDurationGOOGLE {
    let refreshDuration: UInt64
}

struct PastPresentationTimingGOOGLE {
    let presentID: UInt32
    let desiredPresentTime: UInt64
    let actualPresentTime: UInt64
    let earliestPresentTime: UInt64
    let presentMargin: UInt64
}

struct PresentTimesInfoGOOGLE {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let swapchainCount: UInt32
    let pTimes: UnsafePointer<VkPresentTimeGOOGLE>
}

struct PresentTimeGOOGLE {
    let presentID: UInt32
    let desiredPresentTime: UInt64
}

struct ViewportWScalingNV {
    let xcoeff: Float
    let ycoeff: Float
}

struct PipelineViewportWScalingStateCreateInfoNV {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let viewportWScalingEnable: VkBool32
    let viewportCount: UInt32
    let pViewportWScalings: UnsafePointer<VkViewportWScalingNV>
}

struct ViewportSwizzleNV {
    let x: VkViewportCoordinateSwizzleNV
    let y: VkViewportCoordinateSwizzleNV
    let z: VkViewportCoordinateSwizzleNV
    let w: VkViewportCoordinateSwizzleNV
}

struct PipelineViewportSwizzleStateCreateInfoNV {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let flags: VkPipelineViewportSwizzleStateCreateFlagsNV
    let viewportCount: UInt32
    let pViewportSwizzles: UnsafePointer<VkViewportSwizzleNV>
}

struct PhysicalDeviceDiscardRectanglePropertiesEXT {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let maxDiscardRectangles: UInt32
}

struct PipelineDiscardRectangleStateCreateInfoEXT {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let flags: VkPipelineDiscardRectangleStateCreateFlagsEXT
    let discardRectangleMode: VkDiscardRectangleModeEXT
    let discardRectangleCount: UInt32
    let pDiscardRectangles: UnsafePointer<VkRect2D>
}

struct PhysicalDeviceMultiviewPerViewAttributesPropertiesNVX {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let perViewPositionAllComponents: VkBool32
}

struct InputAttachmentAspectReference {
    let subpass: UInt32
    let inputAttachmentIndex: UInt32
    let aspectMask: VkImageAspectFlags
}

struct RenderPassInputAttachmentAspectCreateInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let aspectReferenceCount: UInt32
    let pAspectReferences: UnsafePointer<VkInputAttachmentAspectReference>
}

struct PhysicalDeviceSurfaceInfo2KHR {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let surface: VkSurfaceKHR
}

struct SurfaceCapabilities2KHR {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let surfaceCapabilities: VkSurfaceCapabilitiesKHR
}

struct SurfaceFormat2KHR {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let surfaceFormat: VkSurfaceFormatKHR
}

struct DisplayProperties2KHR {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let displayProperties: VkDisplayPropertiesKHR
}

struct DisplayPlaneProperties2KHR {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let displayPlaneProperties: VkDisplayPlanePropertiesKHR
}

struct DisplayModeProperties2KHR {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let displayModeProperties: VkDisplayModePropertiesKHR
}

struct DisplayPlaneInfo2KHR {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let mode: VkDisplayModeKHR
    let planeIndex: UInt32
}

struct DisplayPlaneCapabilities2KHR {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let capabilities: VkDisplayPlaneCapabilitiesKHR
}

struct SharedPresentSurfaceCapabilitiesKHR {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let sharedPresentSupportedUsageFlags: VkImageUsageFlags
}

struct PhysicalDevice16BitStorageFeatures {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let storageBuffer16BitAccess: VkBool32
    let uniformAndStorageBuffer16BitAccess: VkBool32
    let storagePushConstant16: VkBool32
    let storageInputOutput16: VkBool32
}

struct PhysicalDeviceSubgroupProperties {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let subgroupSize: UInt32
    let supportedStages: VkShaderStageFlags
    let supportedOperations: VkSubgroupFeatureFlags
    let quadOperationsInAllStages: VkBool32
}

struct PhysicalDeviceShaderSubgroupExtendedTypesFeatures {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let shaderSubgroupExtendedTypes: VkBool32
}

struct BufferMemoryRequirementsInfo2 {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let buffer: VkBuffer
}

struct ImageMemoryRequirementsInfo2 {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let image: VkImage
}

struct ImageSparseMemoryRequirementsInfo2 {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let image: VkImage
}

struct MemoryRequirements2 {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let memoryRequirements: VkMemoryRequirements
}

struct SparseImageMemoryRequirements2 {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let memoryRequirements: VkSparseImageMemoryRequirements
}

struct PhysicalDevicePointClippingProperties {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let pointClippingBehavior: VkPointClippingBehavior
}

struct MemoryDedicatedRequirements {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let prefersDedicatedAllocation: VkBool32
    let requiresDedicatedAllocation: VkBool32
}

struct MemoryDedicatedAllocateInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let image: VkImage
    let buffer: VkBuffer
}

struct ImageViewUsageCreateInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let usage: VkImageUsageFlags
}

struct PipelineTessellationDomainOriginStateCreateInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let domainOrigin: VkTessellationDomainOrigin
}

struct SamplerYcbcrConversionInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let conversion: VkSamplerYcbcrConversion
}

struct SamplerYcbcrConversionCreateInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let format: VkFormat
    let ycbcrModel: VkSamplerYcbcrModelConversion
    let ycbcrRange: VkSamplerYcbcrRange
    let components: VkComponentMapping
    let xChromaOffset: VkChromaLocation
    let yChromaOffset: VkChromaLocation
    let chromaFilter: VkFilter
    let forceExplicitReconstruction: VkBool32
}

struct BindImagePlaneMemoryInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let planeAspect: VkImageAspectFlagBits
}

struct ImagePlaneMemoryRequirementsInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let planeAspect: VkImageAspectFlagBits
}

struct PhysicalDeviceSamplerYcbcrConversionFeatures {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let samplerYcbcrConversion: VkBool32
}

struct SamplerYcbcrConversionImageFormatProperties {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let combinedImageSamplerDescriptorCount: UInt32
}

struct TextureLODGatherFormatPropertiesAMD {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let supportsTextureGatherLODBiasAMD: VkBool32
}

struct ConditionalRenderingBeginInfoEXT {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let buffer: VkBuffer
    let offset: VkDeviceSize
    let flags: VkConditionalRenderingFlagsEXT
}

struct ProtectedSubmitInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let protectedSubmit: VkBool32
}

struct PhysicalDeviceProtectedMemoryFeatures {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let protectedMemory: VkBool32
}

struct PhysicalDeviceProtectedMemoryProperties {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let protectedNoFault: VkBool32
}

struct DeviceQueueInfo2 {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let flags: VkDeviceQueueCreateFlags
    let queueFamilyIndex: UInt32
    let queueIndex: UInt32
}

struct PipelineCoverageToColorStateCreateInfoNV {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let flags: VkPipelineCoverageToColorStateCreateFlagsNV
    let coverageToColorEnable: VkBool32
    let coverageToColorLocation: UInt32
}

struct PhysicalDeviceSamplerFilterMinmaxProperties {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let filterMinmaxSingleComponentFormats: VkBool32
    let filterMinmaxImageComponentMapping: VkBool32
}

struct SampleLocationEXT {
    let x: Float
    let y: Float
}

struct SampleLocationsInfoEXT {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let sampleLocationsPerPixel: VkSampleCountFlagBits
    let sampleLocationGridSize: VkExtent2D
    let sampleLocationsCount: UInt32
    let pSampleLocations: UnsafePointer<VkSampleLocationEXT>
}

struct AttachmentSampleLocationsEXT {
    let attachmentIndex: UInt32
    let sampleLocationsInfo: VkSampleLocationsInfoEXT
}

struct SubpassSampleLocationsEXT {
    let subpassIndex: UInt32
    let sampleLocationsInfo: VkSampleLocationsInfoEXT
}

struct RenderPassSampleLocationsBeginInfoEXT {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let attachmentInitialSampleLocationsCount: UInt32
    let pAttachmentInitialSampleLocations: UnsafePointer<VkAttachmentSampleLocationsEXT>
    let postSubpassSampleLocationsCount: UInt32
    let pPostSubpassSampleLocations: UnsafePointer<VkSubpassSampleLocationsEXT>
}

struct PipelineSampleLocationsStateCreateInfoEXT {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let sampleLocationsEnable: VkBool32
    let sampleLocationsInfo: VkSampleLocationsInfoEXT
}

struct PhysicalDeviceSampleLocationsPropertiesEXT {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let sampleLocationSampleCounts: VkSampleCountFlags
    let maxSampleLocationGridSize: VkExtent2D
    let sampleLocationCoordinateRange: (Float, Float)
    let sampleLocationSubPixelBits: UInt32
    let variableSampleLocations: VkBool32
}

struct MultisamplePropertiesEXT {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let maxSampleLocationGridSize: VkExtent2D
}

struct SamplerReductionModeCreateInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let reductionMode: VkSamplerReductionMode
}

struct PhysicalDeviceBlendOperationAdvancedFeaturesEXT {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let advancedBlendCoherentOperations: VkBool32
}

struct PhysicalDeviceBlendOperationAdvancedPropertiesEXT {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let advancedBlendMaxColorAttachments: UInt32
    let advancedBlendIndependentBlend: VkBool32
    let advancedBlendNonPremultipliedSrcColor: VkBool32
    let advancedBlendNonPremultipliedDstColor: VkBool32
    let advancedBlendCorrelatedOverlap: VkBool32
    let advancedBlendAllOperations: VkBool32
}

struct PipelineColorBlendAdvancedStateCreateInfoEXT {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let srcPremultiplied: VkBool32
    let dstPremultiplied: VkBool32
    let blendOverlap: VkBlendOverlapEXT
}

struct PhysicalDeviceInlineUniformBlockFeaturesEXT {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let inlineUniformBlock: VkBool32
    let descriptorBindingInlineUniformBlockUpdateAfterBind: VkBool32
}

struct PhysicalDeviceInlineUniformBlockPropertiesEXT {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let maxInlineUniformBlockSize: UInt32
    let maxPerStageDescriptorInlineUniformBlocks: UInt32
    let maxPerStageDescriptorUpdateAfterBindInlineUniformBlocks: UInt32
    let maxDescriptorSetInlineUniformBlocks: UInt32
    let maxDescriptorSetUpdateAfterBindInlineUniformBlocks: UInt32
}

struct WriteDescriptorSetInlineUniformBlockEXT {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let dataSize: UInt32
    let pData: UnsafeRawPointer
}

struct DescriptorPoolInlineUniformBlockCreateInfoEXT {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let maxInlineUniformBlockBindings: UInt32
}

struct PipelineCoverageModulationStateCreateInfoNV {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let flags: VkPipelineCoverageModulationStateCreateFlagsNV
    let coverageModulationMode: VkCoverageModulationModeNV
    let coverageModulationTableEnable: VkBool32
    let coverageModulationTableCount: UInt32
    let pCoverageModulationTable: UnsafePointer<Float>
}

struct ImageFormatListCreateInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let viewFormatCount: UInt32
    let pViewFormats: UnsafePointer<VkFormat>
}

struct ValidationCacheCreateInfoEXT {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let flags: VkValidationCacheCreateFlagsEXT
    let initialDataSize: Int
    let pInitialData: UnsafeRawPointer
}

struct ShaderModuleValidationCacheCreateInfoEXT {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let validationCache: VkValidationCacheEXT
}

struct PhysicalDeviceMaintenance3Properties {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let maxPerSetDescriptors: UInt32
    let maxMemoryAllocationSize: VkDeviceSize
}

struct DescriptorSetLayoutSupport {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let supported: VkBool32
}

struct PhysicalDeviceShaderDrawParametersFeatures {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let shaderDrawParameters: VkBool32
}

struct PhysicalDeviceShaderFloat16Int8Features {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let shaderFloat16: VkBool32
    let shaderInt8: VkBool32
}

struct PhysicalDeviceFloatControlsProperties {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
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
}

struct PhysicalDeviceHostQueryResetFeatures {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let hostQueryReset: VkBool32
}

struct ShaderResourceUsageAMD {
    let numUsedVgprs: UInt32
    let numUsedSgprs: UInt32
    let ldsSizePerLocalWorkGroup: UInt32
    let ldsUsageSizeInBytes: Int
    let scratchMemUsageInBytes: Int
}

struct ShaderStatisticsInfoAMD {
    let shaderStageMask: VkShaderStageFlags
    let resourceUsage: VkShaderResourceUsageAMD
    let numPhysicalVgprs: UInt32
    let numPhysicalSgprs: UInt32
    let numAvailableVgprs: UInt32
    let numAvailableSgprs: UInt32
    let computeWorkGroupSize: (UInt32, UInt32, UInt32)
}

struct DeviceQueueGlobalPriorityCreateInfoEXT {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let globalPriority: VkQueueGlobalPriorityEXT
}

struct DebugUtilsObjectNameInfoEXT {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let objectType: VkObjectType
    let objectHandle: UInt64
    let pObjectName: UnsafePointer<CChar>
}

struct DebugUtilsObjectTagInfoEXT {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let objectType: VkObjectType
    let objectHandle: UInt64
    let tagName: UInt64
    let tagSize: Int
    let pTag: UnsafeRawPointer
}

struct DebugUtilsLabelEXT {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let pLabelName: UnsafePointer<CChar>
    let color: (Float, Float, Float, Float)
}

struct DebugUtilsMessengerCreateInfoEXT {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let flags: VkDebugUtilsMessengerCreateFlagsEXT
    let messageSeverity: VkDebugUtilsMessageSeverityFlagsEXT
    let messageType: VkDebugUtilsMessageTypeFlagsEXT
    let pfnUserCallback: PFN_vkDebugUtilsMessengerCallbackEXT
    let pUserData: UnsafeMutableRawPointer
}

struct DebugUtilsMessengerCallbackDataEXT {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
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
}

struct ImportMemoryHostPointerInfoEXT {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let handleType: VkExternalMemoryHandleTypeFlagBits
    let pHostPointer: UnsafeMutableRawPointer
}

struct MemoryHostPointerPropertiesEXT {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let memoryTypeBits: UInt32
}

struct PhysicalDeviceExternalMemoryHostPropertiesEXT {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let minImportedHostPointerAlignment: VkDeviceSize
}

struct PhysicalDeviceConservativeRasterizationPropertiesEXT {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let primitiveOverestimationSize: Float
    let maxExtraPrimitiveOverestimationSize: Float
    let extraPrimitiveOverestimationSizeGranularity: Float
    let primitiveUnderestimation: VkBool32
    let conservativePointAndLineRasterization: VkBool32
    let degenerateTrianglesRasterized: VkBool32
    let degenerateLinesRasterized: VkBool32
    let fullyCoveredFragmentShaderInputVariable: VkBool32
    let conservativeRasterizationPostDepthCoverage: VkBool32
}

struct CalibratedTimestampInfoEXT {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let timeDomain: VkTimeDomainEXT
}

struct PhysicalDeviceShaderCorePropertiesAMD {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
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
}

struct PhysicalDeviceShaderCoreProperties2AMD {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let shaderCoreFeatures: VkShaderCorePropertiesFlagsAMD
    let activeComputeUnitCount: UInt32
}

struct PipelineRasterizationConservativeStateCreateInfoEXT {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let flags: VkPipelineRasterizationConservativeStateCreateFlagsEXT
    let conservativeRasterizationMode: VkConservativeRasterizationModeEXT
    let extraPrimitiveOverestimationSize: Float
}

struct PhysicalDeviceDescriptorIndexingFeatures {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
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
}

struct PhysicalDeviceDescriptorIndexingProperties {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
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
}

struct DescriptorSetLayoutBindingFlagsCreateInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let bindingCount: UInt32
    let pBindingFlags: UnsafePointer<VkDescriptorBindingFlags>
}

struct DescriptorSetVariableDescriptorCountAllocateInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let descriptorSetCount: UInt32
    let pDescriptorCounts: UnsafePointer<UInt32>
}

struct DescriptorSetVariableDescriptorCountLayoutSupport {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let maxVariableDescriptorCount: UInt32
}

struct AttachmentDescription2 {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let flags: VkAttachmentDescriptionFlags
    let format: VkFormat
    let samples: VkSampleCountFlagBits
    let loadOp: VkAttachmentLoadOp
    let storeOp: VkAttachmentStoreOp
    let stencilLoadOp: VkAttachmentLoadOp
    let stencilStoreOp: VkAttachmentStoreOp
    let initialLayout: VkImageLayout
    let finalLayout: VkImageLayout
}

struct AttachmentReference2 {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let attachment: UInt32
    let layout: VkImageLayout
    let aspectMask: VkImageAspectFlags
}

struct SubpassDescription2 {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
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
}

struct SubpassDependency2 {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let srcSubpass: UInt32
    let dstSubpass: UInt32
    let srcStageMask: VkPipelineStageFlags
    let dstStageMask: VkPipelineStageFlags
    let srcAccessMask: VkAccessFlags
    let dstAccessMask: VkAccessFlags
    let dependencyFlags: VkDependencyFlags
    let viewOffset: Int32
}

struct RenderPassCreateInfo2 {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let flags: VkRenderPassCreateFlags
    let attachmentCount: UInt32
    let pAttachments: UnsafePointer<VkAttachmentDescription2>
    let subpassCount: UInt32
    let pSubpasses: UnsafePointer<VkSubpassDescription2>
    let dependencyCount: UInt32
    let pDependencies: UnsafePointer<VkSubpassDependency2>
    let correlatedViewMaskCount: UInt32
    let pCorrelatedViewMasks: UnsafePointer<UInt32>
}

struct SubpassBeginInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let contents: VkSubpassContents
}

struct SubpassEndInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
}

struct PhysicalDeviceTimelineSemaphoreFeatures {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let timelineSemaphore: VkBool32
}

struct PhysicalDeviceTimelineSemaphoreProperties {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let maxTimelineSemaphoreValueDifference: UInt64
}

struct SemaphoreTypeCreateInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let semaphoreType: VkSemaphoreType
    let initialValue: UInt64
}

struct TimelineSemaphoreSubmitInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let waitSemaphoreValueCount: UInt32
    let pWaitSemaphoreValues: UnsafePointer<UInt64>
    let signalSemaphoreValueCount: UInt32
    let pSignalSemaphoreValues: UnsafePointer<UInt64>
}

struct SemaphoreWaitInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let flags: VkSemaphoreWaitFlags
    let semaphoreCount: UInt32
    let pSemaphores: UnsafePointer<VkSemaphore>
    let pValues: UnsafePointer<UInt64>
}

struct SemaphoreSignalInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let semaphore: VkSemaphore
    let value: UInt64
}

struct VertexInputBindingDivisorDescriptionEXT {
    let binding: UInt32
    let divisor: UInt32
}

struct PipelineVertexInputDivisorStateCreateInfoEXT {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let vertexBindingDivisorCount: UInt32
    let pVertexBindingDivisors: UnsafePointer<VkVertexInputBindingDivisorDescriptionEXT>
}

struct PhysicalDeviceVertexAttributeDivisorPropertiesEXT {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let maxVertexAttribDivisor: UInt32
}

struct PhysicalDevicePCIBusInfoPropertiesEXT {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let pciDomain: UInt32
    let pciBus: UInt32
    let pciDevice: UInt32
    let pciFunction: UInt32
}

struct CommandBufferInheritanceConditionalRenderingInfoEXT {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let conditionalRenderingEnable: VkBool32
}

struct PhysicalDevice8BitStorageFeatures {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let storageBuffer8BitAccess: VkBool32
    let uniformAndStorageBuffer8BitAccess: VkBool32
    let storagePushConstant8: VkBool32
}

struct PhysicalDeviceConditionalRenderingFeaturesEXT {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let conditionalRendering: VkBool32
    let inheritedConditionalRendering: VkBool32
}

struct PhysicalDeviceVulkanMemoryModelFeatures {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let vulkanMemoryModel: VkBool32
    let vulkanMemoryModelDeviceScope: VkBool32
    let vulkanMemoryModelAvailabilityVisibilityChains: VkBool32
}

struct PhysicalDeviceShaderAtomicInt64Features {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let shaderBufferInt64Atomics: VkBool32
    let shaderSharedInt64Atomics: VkBool32
}

struct PhysicalDeviceVertexAttributeDivisorFeaturesEXT {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let vertexAttributeInstanceRateDivisor: VkBool32
    let vertexAttributeInstanceRateZeroDivisor: VkBool32
}

struct QueueFamilyCheckpointPropertiesNV {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let checkpointExecutionStageMask: VkPipelineStageFlags
}

struct CheckpointDataNV {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let stage: VkPipelineStageFlagBits
    let pCheckpointMarker: UnsafeMutableRawPointer
}

struct PhysicalDeviceDepthStencilResolveProperties {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let supportedDepthResolveModes: VkResolveModeFlags
    let supportedStencilResolveModes: VkResolveModeFlags
    let independentResolveNone: VkBool32
    let independentResolve: VkBool32
}

struct SubpassDescriptionDepthStencilResolve {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let depthResolveMode: VkResolveModeFlagBits
    let stencilResolveMode: VkResolveModeFlagBits
    let pDepthStencilResolveAttachment: UnsafePointer<VkAttachmentReference2>
}

struct ImageViewASTCDecodeModeEXT {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let decodeMode: VkFormat
}

struct PhysicalDeviceASTCDecodeFeaturesEXT {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let decodeModeSharedExponent: VkBool32
}

struct PhysicalDeviceTransformFeedbackFeaturesEXT {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let transformFeedback: VkBool32
    let geometryStreams: VkBool32
}

struct PhysicalDeviceTransformFeedbackPropertiesEXT {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
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
}

struct PipelineRasterizationStateStreamCreateInfoEXT {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let flags: VkPipelineRasterizationStateStreamCreateFlagsEXT
    let rasterizationStream: UInt32
}

struct PhysicalDeviceRepresentativeFragmentTestFeaturesNV {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let representativeFragmentTest: VkBool32
}

struct PipelineRepresentativeFragmentTestStateCreateInfoNV {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let representativeFragmentTestEnable: VkBool32
}

struct PhysicalDeviceExclusiveScissorFeaturesNV {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let exclusiveScissor: VkBool32
}

struct PipelineViewportExclusiveScissorStateCreateInfoNV {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let exclusiveScissorCount: UInt32
    let pExclusiveScissors: UnsafePointer<VkRect2D>
}

struct PhysicalDeviceCornerSampledImageFeaturesNV {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let cornerSampledImage: VkBool32
}

struct PhysicalDeviceComputeShaderDerivativesFeaturesNV {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let computeDerivativeGroupQuads: VkBool32
    let computeDerivativeGroupLinear: VkBool32
}

struct PhysicalDeviceFragmentShaderBarycentricFeaturesNV {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let fragmentShaderBarycentric: VkBool32
}

struct PhysicalDeviceShaderImageFootprintFeaturesNV {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let imageFootprint: VkBool32
}

struct PhysicalDeviceDedicatedAllocationImageAliasingFeaturesNV {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let dedicatedAllocationImageAliasing: VkBool32
}

struct ShadingRatePaletteNV {
    let shadingRatePaletteEntryCount: UInt32
    let pShadingRatePaletteEntries: UnsafePointer<VkShadingRatePaletteEntryNV>
}

struct PipelineViewportShadingRateImageStateCreateInfoNV {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let shadingRateImageEnable: VkBool32
    let viewportCount: UInt32
    let pShadingRatePalettes: UnsafePointer<VkShadingRatePaletteNV>
}

struct PhysicalDeviceShadingRateImageFeaturesNV {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let shadingRateImage: VkBool32
    let shadingRateCoarseSampleOrder: VkBool32
}

struct PhysicalDeviceShadingRateImagePropertiesNV {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let shadingRateTexelSize: VkExtent2D
    let shadingRatePaletteSize: UInt32
    let shadingRateMaxCoarseSamples: UInt32
}

struct CoarseSampleLocationNV {
    let pixelX: UInt32
    let pixelY: UInt32
    let sample: UInt32
}

struct CoarseSampleOrderCustomNV {
    let shadingRate: VkShadingRatePaletteEntryNV
    let sampleCount: UInt32
    let sampleLocationCount: UInt32
    let pSampleLocations: UnsafePointer<VkCoarseSampleLocationNV>
}

struct PipelineViewportCoarseSampleOrderStateCreateInfoNV {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let sampleOrderType: VkCoarseSampleOrderTypeNV
    let customSampleOrderCount: UInt32
    let pCustomSampleOrders: UnsafePointer<VkCoarseSampleOrderCustomNV>
}

struct PhysicalDeviceMeshShaderFeaturesNV {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let taskShader: VkBool32
    let meshShader: VkBool32
}

struct PhysicalDeviceMeshShaderPropertiesNV {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
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
}

struct DrawMeshTasksIndirectCommandNV {
    let taskCount: UInt32
    let firstTask: UInt32
}

struct RayTracingShaderGroupCreateInfoNV {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let type: VkRayTracingShaderGroupTypeKHR
    let generalShader: UInt32
    let closestHitShader: UInt32
    let anyHitShader: UInt32
    let intersectionShader: UInt32
}

struct RayTracingPipelineCreateInfoNV {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let flags: VkPipelineCreateFlags
    let stageCount: UInt32
    let pStages: UnsafePointer<VkPipelineShaderStageCreateInfo>
    let groupCount: UInt32
    let pGroups: UnsafePointer<VkRayTracingShaderGroupCreateInfoNV>
    let maxRecursionDepth: UInt32
    let layout: VkPipelineLayout
    let basePipelineHandle: VkPipeline
    let basePipelineIndex: Int32
}

struct GeometryTrianglesNV {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
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
}

struct GeometryAABBNV {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let aabbData: VkBuffer
    let numAABBs: UInt32
    let stride: UInt32
    let offset: VkDeviceSize
}

struct GeometryDataNV {
    let triangles: VkGeometryTrianglesNV
    let aabbs: VkGeometryAABBNV
}

struct GeometryNV {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let geometryType: VkGeometryTypeKHR
    let geometry: VkGeometryDataNV
    let flags: VkGeometryFlagsKHR
}

struct AccelerationStructureInfoNV {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let type: VkAccelerationStructureTypeNV
    let flags: VkBuildAccelerationStructureFlagsNV
    let instanceCount: UInt32
    let geometryCount: UInt32
    let pGeometries: UnsafePointer<VkGeometryNV>
}

struct AccelerationStructureCreateInfoNV {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let compactedSize: VkDeviceSize
    let info: VkAccelerationStructureInfoNV
}

struct AccelerationStructureMemoryRequirementsInfoNV {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let type: VkAccelerationStructureMemoryRequirementsTypeNV
    let accelerationStructure: VkAccelerationStructureNV
}

struct PhysicalDeviceRayTracingPropertiesNV {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let shaderGroupHandleSize: UInt32
    let maxRecursionDepth: UInt32
    let maxShaderGroupStride: UInt32
    let shaderGroupBaseAlignment: UInt32
    let maxGeometryCount: UInt64
    let maxInstanceCount: UInt64
    let maxTriangleCount: UInt64
    let maxDescriptorSetAccelerationStructures: UInt32
}

struct DrmFormatModifierPropertiesListEXT {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let drmFormatModifierCount: UInt32
    let pDrmFormatModifierProperties: UnsafeMutablePointer<VkDrmFormatModifierPropertiesEXT>
}

struct DrmFormatModifierPropertiesEXT {
    let drmFormatModifier: UInt64
    let drmFormatModifierPlaneCount: UInt32
    let drmFormatModifierTilingFeatures: VkFormatFeatureFlags
}

struct PhysicalDeviceImageDrmFormatModifierInfoEXT {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let drmFormatModifier: UInt64
    let sharingMode: VkSharingMode
    let queueFamilyIndexCount: UInt32
    let pQueueFamilyIndices: UnsafePointer<UInt32>
}

struct ImageDrmFormatModifierListCreateInfoEXT {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let drmFormatModifierCount: UInt32
    let pDrmFormatModifiers: UnsafePointer<UInt64>
}

struct ImageDrmFormatModifierExplicitCreateInfoEXT {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let drmFormatModifier: UInt64
    let drmFormatModifierPlaneCount: UInt32
    let pPlaneLayouts: UnsafePointer<VkSubresourceLayout>
}

struct ImageDrmFormatModifierPropertiesEXT {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let drmFormatModifier: UInt64
}

struct ImageStencilUsageCreateInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let stencilUsage: VkImageUsageFlags
}

struct DeviceMemoryOverallocationCreateInfoAMD {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let overallocationBehavior: VkMemoryOverallocationBehaviorAMD
}

struct PhysicalDeviceFragmentDensityMapFeaturesEXT {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let fragmentDensityMap: VkBool32
    let fragmentDensityMapDynamic: VkBool32
    let fragmentDensityMapNonSubsampledImages: VkBool32
}

struct PhysicalDeviceFragmentDensityMapPropertiesEXT {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let minFragmentDensityTexelSize: VkExtent2D
    let maxFragmentDensityTexelSize: VkExtent2D
    let fragmentDensityInvocations: VkBool32
}

struct RenderPassFragmentDensityMapCreateInfoEXT {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let fragmentDensityMapAttachment: VkAttachmentReference
}

struct PhysicalDeviceScalarBlockLayoutFeatures {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let scalarBlockLayout: VkBool32
}

struct SurfaceProtectedCapabilitiesKHR {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let supportsProtected: VkBool32
}

struct PhysicalDeviceUniformBufferStandardLayoutFeatures {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let uniformBufferStandardLayout: VkBool32
}

struct PhysicalDeviceDepthClipEnableFeaturesEXT {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let depthClipEnable: VkBool32
}

struct PipelineRasterizationDepthClipStateCreateInfoEXT {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let flags: VkPipelineRasterizationDepthClipStateCreateFlagsEXT
    let depthClipEnable: VkBool32
}

struct PhysicalDeviceMemoryBudgetPropertiesEXT {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let heapBudget: (VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize)
    let heapUsage: (VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize)
}

struct PhysicalDeviceMemoryPriorityFeaturesEXT {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let memoryPriority: VkBool32
}

struct MemoryPriorityAllocateInfoEXT {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let priority: Float
}

struct PhysicalDeviceBufferDeviceAddressFeatures {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let bufferDeviceAddress: VkBool32
    let bufferDeviceAddressCaptureReplay: VkBool32
    let bufferDeviceAddressMultiDevice: VkBool32
}

struct PhysicalDeviceBufferDeviceAddressFeaturesEXT {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let bufferDeviceAddress: VkBool32
    let bufferDeviceAddressCaptureReplay: VkBool32
    let bufferDeviceAddressMultiDevice: VkBool32
}

struct BufferDeviceAddressInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let buffer: VkBuffer
}

struct BufferOpaqueCaptureAddressCreateInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let opaqueCaptureAddress: UInt64
}

struct BufferDeviceAddressCreateInfoEXT {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let deviceAddress: VkDeviceAddress
}

struct PhysicalDeviceImageViewImageFormatInfoEXT {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let imageViewType: VkImageViewType
}

struct FilterCubicImageViewImageFormatPropertiesEXT {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let filterCubic: VkBool32
    let filterCubicMinmax: VkBool32
}

struct PhysicalDeviceImagelessFramebufferFeatures {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let imagelessFramebuffer: VkBool32
}

struct FramebufferAttachmentsCreateInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let attachmentImageInfoCount: UInt32
    let pAttachmentImageInfos: UnsafePointer<VkFramebufferAttachmentImageInfo>
}

struct FramebufferAttachmentImageInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let flags: VkImageCreateFlags
    let usage: VkImageUsageFlags
    let width: UInt32
    let height: UInt32
    let layerCount: UInt32
    let viewFormatCount: UInt32
    let pViewFormats: UnsafePointer<VkFormat>
}

struct RenderPassAttachmentBeginInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let attachmentCount: UInt32
    let pAttachments: UnsafePointer<VkImageView>
}

struct PhysicalDeviceTextureCompressionASTCHDRFeaturesEXT {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let textureCompressionASTC_HDR: VkBool32
}

struct PhysicalDeviceCooperativeMatrixFeaturesNV {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let cooperativeMatrix: VkBool32
    let cooperativeMatrixRobustBufferAccess: VkBool32
}

struct PhysicalDeviceCooperativeMatrixPropertiesNV {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let cooperativeMatrixSupportedStages: VkShaderStageFlags
}

struct CooperativeMatrixPropertiesNV {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let MSize: UInt32
    let NSize: UInt32
    let KSize: UInt32
    let AType: VkComponentTypeNV
    let BType: VkComponentTypeNV
    let CType: VkComponentTypeNV
    let DType: VkComponentTypeNV
    let scope: VkScopeNV
}

struct PhysicalDeviceYcbcrImageArraysFeaturesEXT {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let ycbcrImageArrays: VkBool32
}

struct ImageViewHandleInfoNVX {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let imageView: VkImageView
    let descriptorType: VkDescriptorType
    let sampler: VkSampler
}

struct PipelineCreationFeedbackEXT {
    let flags: VkPipelineCreationFeedbackFlagsEXT
    let duration: UInt64
}

struct PipelineCreationFeedbackCreateInfoEXT {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let pPipelineCreationFeedback: UnsafeMutablePointer<VkPipelineCreationFeedbackEXT>
    let pipelineStageCreationFeedbackCount: UInt32
    let pPipelineStageCreationFeedbacks: UnsafeMutablePointer<VkPipelineCreationFeedbackEXT>
}

struct PhysicalDevicePerformanceQueryFeaturesKHR {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let performanceCounterQueryPools: VkBool32
    let performanceCounterMultipleQueryPools: VkBool32
}

struct PhysicalDevicePerformanceQueryPropertiesKHR {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let allowCommandBufferQueryCopies: VkBool32
}

struct PerformanceCounterKHR {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let unit: VkPerformanceCounterUnitKHR
    let scope: VkPerformanceCounterScopeKHR
    let storage: VkPerformanceCounterStorageKHR
    let uuid: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
}

struct PerformanceCounterDescriptionKHR {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let flags: VkPerformanceCounterDescriptionFlagsKHR
    let name: (CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar)
    let category: (CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar)
    let description: (CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar)
}

struct QueryPoolPerformanceCreateInfoKHR {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let queueFamilyIndex: UInt32
    let counterIndexCount: UInt32
    let pCounterIndices: UnsafePointer<UInt32>
}

struct AcquireProfilingLockInfoKHR {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let flags: VkAcquireProfilingLockFlagsKHR
    let timeout: UInt64
}

struct PerformanceQuerySubmitInfoKHR {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let counterPassIndex: UInt32
}

struct HeadlessSurfaceCreateInfoEXT {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let flags: VkHeadlessSurfaceCreateFlagsEXT
}

struct PhysicalDeviceCoverageReductionModeFeaturesNV {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let coverageReductionMode: VkBool32
}

struct PipelineCoverageReductionStateCreateInfoNV {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let flags: VkPipelineCoverageReductionStateCreateFlagsNV
    let coverageReductionMode: VkCoverageReductionModeNV
}

struct FramebufferMixedSamplesCombinationNV {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let coverageReductionMode: VkCoverageReductionModeNV
    let rasterizationSamples: VkSampleCountFlagBits
    let depthStencilSamples: VkSampleCountFlags
    let colorSamples: VkSampleCountFlags
}

struct PhysicalDeviceShaderIntegerFunctions2FeaturesINTEL {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let shaderIntegerFunctions2: VkBool32
}

struct PerformanceValueINTEL {
    let type: VkPerformanceValueTypeINTEL
    let data: VkPerformanceValueDataINTEL
}

struct InitializePerformanceApiInfoINTEL {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let pUserData: UnsafeMutableRawPointer
}

struct QueryPoolPerformanceQueryCreateInfoINTEL {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let performanceCountersSampling: VkQueryPoolSamplingModeINTEL
}

struct PerformanceMarkerInfoINTEL {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let marker: UInt64
}

struct PerformanceStreamMarkerInfoINTEL {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let marker: UInt32
}

struct PerformanceOverrideInfoINTEL {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let type: VkPerformanceOverrideTypeINTEL
    let enable: VkBool32
    let parameter: UInt64
}

struct PerformanceConfigurationAcquireInfoINTEL {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let type: VkPerformanceConfigurationTypeINTEL
}

struct PhysicalDeviceShaderClockFeaturesKHR {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let shaderSubgroupClock: VkBool32
    let shaderDeviceClock: VkBool32
}

struct PhysicalDeviceIndexTypeUint8FeaturesEXT {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let indexTypeUint8: VkBool32
}

struct PhysicalDeviceShaderSMBuiltinsPropertiesNV {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let shaderSMCount: UInt32
    let shaderWarpsPerSM: UInt32
}

struct PhysicalDeviceShaderSMBuiltinsFeaturesNV {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let shaderSMBuiltins: VkBool32
}

struct PhysicalDeviceFragmentShaderInterlockFeaturesEXT {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let fragmentShaderSampleInterlock: VkBool32
    let fragmentShaderPixelInterlock: VkBool32
    let fragmentShaderShadingRateInterlock: VkBool32
}

struct PhysicalDeviceSeparateDepthStencilLayoutsFeatures {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let separateDepthStencilLayouts: VkBool32
}

struct AttachmentReferenceStencilLayout {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let stencilLayout: VkImageLayout
}

struct AttachmentDescriptionStencilLayout {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let stencilInitialLayout: VkImageLayout
    let stencilFinalLayout: VkImageLayout
}

struct PhysicalDevicePipelineExecutablePropertiesFeaturesKHR {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let pipelineExecutableInfo: VkBool32
}

struct PipelineInfoKHR {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let pipeline: VkPipeline
}

struct PipelineExecutablePropertiesKHR {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let stages: VkShaderStageFlags
    let name: (CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar)
    let description: (CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar)
    let subgroupSize: UInt32
}

struct PipelineExecutableInfoKHR {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let pipeline: VkPipeline
    let executableIndex: UInt32
}

struct PipelineExecutableStatisticKHR {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let name: (CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar)
    let description: (CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar)
    let format: VkPipelineExecutableStatisticFormatKHR
    let value: VkPipelineExecutableStatisticValueKHR
}

struct PipelineExecutableInternalRepresentationKHR {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let name: (CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar)
    let description: (CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar)
    let isText: VkBool32
    let dataSize: Int
    let pData: UnsafeMutableRawPointer
}

struct PhysicalDeviceShaderDemoteToHelperInvocationFeaturesEXT {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let shaderDemoteToHelperInvocation: VkBool32
}

struct PhysicalDeviceTexelBufferAlignmentFeaturesEXT {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let texelBufferAlignment: VkBool32
}

struct PhysicalDeviceTexelBufferAlignmentPropertiesEXT {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let storageTexelBufferOffsetAlignmentBytes: VkDeviceSize
    let storageTexelBufferOffsetSingleTexelAlignment: VkBool32
    let uniformTexelBufferOffsetAlignmentBytes: VkDeviceSize
    let uniformTexelBufferOffsetSingleTexelAlignment: VkBool32
}

struct PhysicalDeviceSubgroupSizeControlFeaturesEXT {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let subgroupSizeControl: VkBool32
    let computeFullSubgroups: VkBool32
}

struct PhysicalDeviceSubgroupSizeControlPropertiesEXT {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let minSubgroupSize: UInt32
    let maxSubgroupSize: UInt32
    let maxComputeWorkgroupSubgroups: UInt32
    let requiredSubgroupSizeStages: VkShaderStageFlags
}

struct PipelineShaderStageRequiredSubgroupSizeCreateInfoEXT {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let requiredSubgroupSize: UInt32
}

struct MemoryOpaqueCaptureAddressAllocateInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let opaqueCaptureAddress: UInt64
}

struct DeviceMemoryOpaqueCaptureAddressInfo {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let memory: VkDeviceMemory
}

struct PhysicalDeviceLineRasterizationFeaturesEXT {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let rectangularLines: VkBool32
    let bresenhamLines: VkBool32
    let smoothLines: VkBool32
    let stippledRectangularLines: VkBool32
    let stippledBresenhamLines: VkBool32
    let stippledSmoothLines: VkBool32
}

struct PhysicalDeviceLineRasterizationPropertiesEXT {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let lineSubPixelPrecisionBits: UInt32
}

struct PipelineRasterizationLineStateCreateInfoEXT {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let lineRasterizationMode: VkLineRasterizationModeEXT
    let stippledLineEnable: VkBool32
    let lineStippleFactor: UInt32
    let lineStipplePattern: UInt16
}

struct PhysicalDevicePipelineCreationCacheControlFeaturesEXT {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let pipelineCreationCacheControl: VkBool32
}

struct PhysicalDeviceVulkan11Features {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
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
}

struct PhysicalDeviceVulkan11Properties {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
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
}

struct PhysicalDeviceVulkan12Features {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
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
}

struct PhysicalDeviceVulkan12Properties {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
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
}

struct PipelineCompilerControlCreateInfoAMD {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let compilerControlFlags: VkPipelineCompilerControlFlagsAMD
}

struct PhysicalDeviceCoherentMemoryFeaturesAMD {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let deviceCoherentMemory: VkBool32
}

struct PhysicalDeviceToolPropertiesEXT {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let name: (CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar)
    let version: (CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar)
    let purposes: VkToolPurposeFlagsEXT
    let description: (CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar)
    let layer: (CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar)
}

struct RenderPassTransformBeginInfoQCOM {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let transform: VkSurfaceTransformFlagBitsKHR
}

struct CommandBufferInheritanceRenderPassTransformInfoQCOM {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let transform: VkSurfaceTransformFlagBitsKHR
    let renderArea: VkRect2D
}

struct PhysicalDeviceDiagnosticsConfigFeaturesNV {
    let sType: VkStructureType
    let pNext: UnsafeMutableRawPointer
    let diagnosticsConfig: VkBool32
}

struct DeviceDiagnosticsConfigCreateInfoNV {
    let sType: VkStructureType
    let pNext: UnsafeRawPointer
    let flags: VkDeviceDiagnosticsConfigFlagsNV
}

