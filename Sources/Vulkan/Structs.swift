import CVulkan

public struct Offset2D: CStructConvertible {
    typealias CStruct = VkOffset2D

    public let x: Int32
    public let y: Int32

    public init(x: Int32, y: Int32) {
        self.x = x
        self.y = y
    }

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

public struct Offset3D: CStructConvertible {
    typealias CStruct = VkOffset3D

    public let x: Int32
    public let y: Int32
    public let z: Int32

    public init(x: Int32, y: Int32, z: Int32) {
        self.x = x
        self.y = y
        self.z = z
    }

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

public struct Extent2D: CStructConvertible {
    typealias CStruct = VkExtent2D

    public let width: UInt32
    public let height: UInt32

    public init(width: UInt32, height: UInt32) {
        self.width = width
        self.height = height
    }

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

public struct Extent3D: CStructConvertible {
    typealias CStruct = VkExtent3D

    public let width: UInt32
    public let height: UInt32
    public let depth: UInt32

    public init(width: UInt32, height: UInt32, depth: UInt32) {
        self.width = width
        self.height = height
        self.depth = depth
    }

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

public struct Viewport: CStructConvertible {
    typealias CStruct = VkViewport

    public let x: Float
    public let y: Float
    public let width: Float
    public let height: Float
    public let minDepth: Float
    public let maxDepth: Float

    public init(x: Float, y: Float, width: Float, height: Float, minDepth: Float, maxDepth: Float) {
        self.x = x
        self.y = y
        self.width = width
        self.height = height
        self.minDepth = minDepth
        self.maxDepth = maxDepth
    }

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

public struct Rect2D: CStructConvertible {
    typealias CStruct = VkRect2D

    public let offset: Offset2D
    public let extent: Extent2D

    public init(offset: Offset2D, extent: Extent2D) {
        self.offset = offset
        self.extent = extent
    }

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

public struct ClearRect: CStructConvertible {
    typealias CStruct = VkClearRect

    public let rect: Rect2D
    public let baseArrayLayer: UInt32
    public let layerCount: UInt32

    public init(rect: Rect2D, baseArrayLayer: UInt32, layerCount: UInt32) {
        self.rect = rect
        self.baseArrayLayer = baseArrayLayer
        self.layerCount = layerCount
    }

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

public struct ComponentMapping: CStructConvertible {
    typealias CStruct = VkComponentMapping

    public let r: ComponentSwizzle
    public let g: ComponentSwizzle
    public let b: ComponentSwizzle
    public let a: ComponentSwizzle

    public init(r: ComponentSwizzle, g: ComponentSwizzle, b: ComponentSwizzle, a: ComponentSwizzle) {
        self.r = r
        self.g = g
        self.b = b
        self.a = a
    }

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

public struct PhysicalDeviceLimits: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceLimits

    public let maxImageDimension1D: UInt32
    public let maxImageDimension2D: UInt32
    public let maxImageDimension3D: UInt32
    public let maxImageDimensionCube: UInt32
    public let maxImageArrayLayers: UInt32
    public let maxTexelBufferElements: UInt32
    public let maxUniformBufferRange: UInt32
    public let maxStorageBufferRange: UInt32
    public let maxPushConstantsSize: UInt32
    public let maxMemoryAllocationCount: UInt32
    public let maxSamplerAllocationCount: UInt32
    public let bufferImageGranularity: VkDeviceSize
    public let sparseAddressSpaceSize: VkDeviceSize
    public let maxBoundDescriptorSets: UInt32
    public let maxPerStageDescriptorSamplers: UInt32
    public let maxPerStageDescriptorUniformBuffers: UInt32
    public let maxPerStageDescriptorStorageBuffers: UInt32
    public let maxPerStageDescriptorSampledImages: UInt32
    public let maxPerStageDescriptorStorageImages: UInt32
    public let maxPerStageDescriptorInputAttachments: UInt32
    public let maxPerStageResources: UInt32
    public let maxDescriptorSetSamplers: UInt32
    public let maxDescriptorSetUniformBuffers: UInt32
    public let maxDescriptorSetUniformBuffersDynamic: UInt32
    public let maxDescriptorSetStorageBuffers: UInt32
    public let maxDescriptorSetStorageBuffersDynamic: UInt32
    public let maxDescriptorSetSampledImages: UInt32
    public let maxDescriptorSetStorageImages: UInt32
    public let maxDescriptorSetInputAttachments: UInt32
    public let maxVertexInputAttributes: UInt32
    public let maxVertexInputBindings: UInt32
    public let maxVertexInputAttributeOffset: UInt32
    public let maxVertexInputBindingStride: UInt32
    public let maxVertexOutputComponents: UInt32
    public let maxTessellationGenerationLevel: UInt32
    public let maxTessellationPatchSize: UInt32
    public let maxTessellationControlPerVertexInputComponents: UInt32
    public let maxTessellationControlPerVertexOutputComponents: UInt32
    public let maxTessellationControlPerPatchOutputComponents: UInt32
    public let maxTessellationControlTotalOutputComponents: UInt32
    public let maxTessellationEvaluationInputComponents: UInt32
    public let maxTessellationEvaluationOutputComponents: UInt32
    public let maxGeometryShaderInvocations: UInt32
    public let maxGeometryInputComponents: UInt32
    public let maxGeometryOutputComponents: UInt32
    public let maxGeometryOutputVertices: UInt32
    public let maxGeometryTotalOutputComponents: UInt32
    public let maxFragmentInputComponents: UInt32
    public let maxFragmentOutputAttachments: UInt32
    public let maxFragmentDualSrcAttachments: UInt32
    public let maxFragmentCombinedOutputResources: UInt32
    public let maxComputeSharedMemorySize: UInt32
    public let maxComputeWorkGroupCount: (UInt32, UInt32, UInt32)
    public let maxComputeWorkGroupInvocations: UInt32
    public let maxComputeWorkGroupSize: (UInt32, UInt32, UInt32)
    public let subPixelPrecisionBits: UInt32
    public let subTexelPrecisionBits: UInt32
    public let mipmapPrecisionBits: UInt32
    public let maxDrawIndexedIndexValue: UInt32
    public let maxDrawIndirectCount: UInt32
    public let maxSamplerLodBias: Float
    public let maxSamplerAnisotropy: Float
    public let maxViewports: UInt32
    public let maxViewportDimensions: (UInt32, UInt32)
    public let viewportBoundsRange: (Float, Float)
    public let viewportSubPixelBits: UInt32
    public let minMemoryMapAlignment: Int
    public let minTexelBufferOffsetAlignment: VkDeviceSize
    public let minUniformBufferOffsetAlignment: VkDeviceSize
    public let minStorageBufferOffsetAlignment: VkDeviceSize
    public let minTexelOffset: Int32
    public let maxTexelOffset: UInt32
    public let minTexelGatherOffset: Int32
    public let maxTexelGatherOffset: UInt32
    public let minInterpolationOffset: Float
    public let maxInterpolationOffset: Float
    public let subPixelInterpolationOffsetBits: UInt32
    public let maxFramebufferWidth: UInt32
    public let maxFramebufferHeight: UInt32
    public let maxFramebufferLayers: UInt32
    public let framebufferColorSampleCounts: SampleCountFlags
    public let framebufferDepthSampleCounts: SampleCountFlags
    public let framebufferStencilSampleCounts: SampleCountFlags
    public let framebufferNoAttachmentsSampleCounts: SampleCountFlags
    public let maxColorAttachments: UInt32
    public let sampledImageColorSampleCounts: SampleCountFlags
    public let sampledImageIntegerSampleCounts: SampleCountFlags
    public let sampledImageDepthSampleCounts: SampleCountFlags
    public let sampledImageStencilSampleCounts: SampleCountFlags
    public let storageImageSampleCounts: SampleCountFlags
    public let maxSampleMaskWords: UInt32
    public let timestampComputeAndGraphics: Bool
    public let timestampPeriod: Float
    public let maxClipDistances: UInt32
    public let maxCullDistances: UInt32
    public let maxCombinedClipAndCullDistances: UInt32
    public let discreteQueuePriorities: UInt32
    public let pointSizeRange: (Float, Float)
    public let lineWidthRange: (Float, Float)
    public let pointSizeGranularity: Float
    public let lineWidthGranularity: Float
    public let strictLines: Bool
    public let standardSampleLocations: Bool
    public let optimalBufferCopyOffsetAlignment: VkDeviceSize
    public let optimalBufferCopyRowPitchAlignment: VkDeviceSize
    public let nonCoherentAtomSize: VkDeviceSize

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

public struct PhysicalDeviceSparseProperties: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceSparseProperties

    public let residencyStandard2DBlockShape: Bool
    public let residencyStandard2DMultisampleBlockShape: Bool
    public let residencyStandard3DBlockShape: Bool
    public let residencyAlignedMipSize: Bool
    public let residencyNonResidentStrict: Bool

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

public struct PhysicalDeviceProperties: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceProperties

    public let apiVersion: Version
    public let driverVersion: UInt32
    public let vendorID: UInt32
    public let deviceID: UInt32
    public let deviceType: PhysicalDeviceType
    public let deviceName: String
    public let pipelineCacheUUID: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
    public let limits: PhysicalDeviceLimits
    public let sparseProperties: PhysicalDeviceSparseProperties

    init(cStruct: VkPhysicalDeviceProperties) {
        self.apiVersion = Version(rawValue: cStruct.apiVersion)
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
                cStruct.apiVersion = self.apiVersion.rawValue
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

public struct ExtensionProperties: CStructConvertible {
    typealias CStruct = VkExtensionProperties

    public let extensionName: String
    public let specVersion: UInt32

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

public struct LayerProperties: CStructConvertible {
    typealias CStruct = VkLayerProperties

    public let layerName: String
    public let specVersion: Version
    public let implementationVersion: UInt32
    public let description: String

    init(cStruct: VkLayerProperties) {
        self.layerName = String(unsafeBytesOf: cStruct.layerName)
        self.specVersion = Version(rawValue: cStruct.specVersion)
        self.implementationVersion = cStruct.implementationVersion
        self.description = String(unsafeBytesOf: cStruct.description)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkLayerProperties>) throws -> R) rethrows -> R {
        var cStruct = VkLayerProperties()
        cStruct.layerName = self.layerName.unsafeBytesCopy()
        cStruct.specVersion = self.specVersion.rawValue
        cStruct.implementationVersion = self.implementationVersion
        cStruct.description = self.description.unsafeBytesCopy()
        return try body(&cStruct)
    }
}

public struct ApplicationInfo: CStructConvertible {
    typealias CStruct = VkApplicationInfo

    public let applicationName: String?
    public let applicationVersion: UInt32
    public let engineName: String?
    public let engineVersion: UInt32
    public let apiVersion: Version

    public init(applicationName: String?, applicationVersion: UInt32, engineName: String?, engineVersion: UInt32, apiVersion: Version) {
        self.applicationName = applicationName
        self.applicationVersion = applicationVersion
        self.engineName = engineName
        self.engineVersion = engineVersion
        self.apiVersion = apiVersion
    }

    init(cStruct: VkApplicationInfo) {
        self.applicationName = (cStruct.pApplicationName != nil) ? String(cString: cStruct.pApplicationName) : nil
        self.applicationVersion = cStruct.applicationVersion
        self.engineName = (cStruct.pEngineName != nil) ? String(cString: cStruct.pEngineName) : nil
        self.engineVersion = cStruct.engineVersion
        self.apiVersion = Version(rawValue: cStruct.apiVersion)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkApplicationInfo>) throws -> R) rethrows -> R {
        try self.applicationName.withOptionalCString { cString_applicationName in
            try self.engineName.withOptionalCString { cString_engineName in
                var cStruct = VkApplicationInfo()
                cStruct.sType = VK_STRUCTURE_TYPE_APPLICATION_INFO
                cStruct.pNext = nil
                cStruct.pApplicationName = cString_applicationName
                cStruct.applicationVersion = self.applicationVersion
                cStruct.pEngineName = cString_engineName
                cStruct.engineVersion = self.engineVersion
                cStruct.apiVersion = self.apiVersion.rawValue
                return try body(&cStruct)
            }
        }
    }
}

public struct AllocationCallbacks: CStructConvertible {
    typealias CStruct = VkAllocationCallbacks

    public let userData: UnsafeMutableRawPointer
    public let pfnAllocation: PFN_vkAllocationFunction
    public let pfnReallocation: PFN_vkReallocationFunction
    public let pfnFree: PFN_vkFreeFunction
    public let pfnInternalAllocation: PFN_vkInternalAllocationNotification
    public let pfnInternalFree: PFN_vkInternalFreeNotification

    public init(userData: UnsafeMutableRawPointer, pfnAllocation: @escaping PFN_vkAllocationFunction, pfnReallocation: @escaping PFN_vkReallocationFunction, pfnFree: @escaping PFN_vkFreeFunction, pfnInternalAllocation: @escaping PFN_vkInternalAllocationNotification, pfnInternalFree: @escaping PFN_vkInternalFreeNotification) {
        self.userData = userData
        self.pfnAllocation = pfnAllocation
        self.pfnReallocation = pfnReallocation
        self.pfnFree = pfnFree
        self.pfnInternalAllocation = pfnInternalAllocation
        self.pfnInternalFree = pfnInternalFree
    }

    init(cStruct: VkAllocationCallbacks) {
        self.userData = cStruct.pUserData
        self.pfnAllocation = cStruct.pfnAllocation
        self.pfnReallocation = cStruct.pfnReallocation
        self.pfnFree = cStruct.pfnFree
        self.pfnInternalAllocation = cStruct.pfnInternalAllocation
        self.pfnInternalFree = cStruct.pfnInternalFree
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkAllocationCallbacks>) throws -> R) rethrows -> R {
        var cStruct = VkAllocationCallbacks()
        cStruct.pUserData = self.userData
        cStruct.pfnAllocation = self.pfnAllocation
        cStruct.pfnReallocation = self.pfnReallocation
        cStruct.pfnFree = self.pfnFree
        cStruct.pfnInternalAllocation = self.pfnInternalAllocation
        cStruct.pfnInternalFree = self.pfnInternalFree
        return try body(&cStruct)
    }
}

public struct DeviceQueueCreateInfo: CStructConvertible {
    typealias CStruct = VkDeviceQueueCreateInfo

    public let flags: DeviceQueueCreateFlags
    public let queueFamilyIndex: UInt32
    public let queuePriorities: Array<Float>

    public init(flags: DeviceQueueCreateFlags, queueFamilyIndex: UInt32, queuePriorities: Array<Float>) {
        self.flags = flags
        self.queueFamilyIndex = queueFamilyIndex
        self.queuePriorities = queuePriorities
    }

    init(cStruct: VkDeviceQueueCreateInfo) {
        self.flags = DeviceQueueCreateFlags(rawValue: cStruct.flags)
        self.queueFamilyIndex = cStruct.queueFamilyIndex
        self.queuePriorities = Array(UnsafeBufferPointer(start: cStruct.pQueuePriorities, count: Int(cStruct.queueCount)))
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkDeviceQueueCreateInfo>) throws -> R) rethrows -> R {
        try self.queuePriorities.withUnsafeBufferPointer { ptr_queuePriorities in
            var cStruct = VkDeviceQueueCreateInfo()
            cStruct.sType = VK_STRUCTURE_TYPE_DEVICE_QUEUE_CREATE_INFO
            cStruct.pNext = nil
            cStruct.flags = self.flags.rawValue
            cStruct.queueFamilyIndex = self.queueFamilyIndex
            cStruct.queueCount = UInt32(ptr_queuePriorities.count)
            cStruct.pQueuePriorities = ptr_queuePriorities.baseAddress
            return try body(&cStruct)
        }
    }
}

public struct PhysicalDeviceFeatures: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceFeatures

    public let robustBufferAccess: Bool
    public let fullDrawIndexUint32: Bool
    public let imageCubeArray: Bool
    public let independentBlend: Bool
    public let geometryShader: Bool
    public let tessellationShader: Bool
    public let sampleRateShading: Bool
    public let dualSrcBlend: Bool
    public let logicOp: Bool
    public let multiDrawIndirect: Bool
    public let drawIndirectFirstInstance: Bool
    public let depthClamp: Bool
    public let depthBiasClamp: Bool
    public let fillModeNonSolid: Bool
    public let depthBounds: Bool
    public let wideLines: Bool
    public let largePoints: Bool
    public let alphaToOne: Bool
    public let multiViewport: Bool
    public let samplerAnisotropy: Bool
    public let textureCompressionETC2: Bool
    public let textureCompressionASTC_LDR: Bool
    public let textureCompressionBC: Bool
    public let occlusionQueryPrecise: Bool
    public let pipelineStatisticsQuery: Bool
    public let vertexPipelineStoresAndAtomics: Bool
    public let fragmentStoresAndAtomics: Bool
    public let shaderTessellationAndGeometryPointSize: Bool
    public let shaderImageGatherExtended: Bool
    public let shaderStorageImageExtendedFormats: Bool
    public let shaderStorageImageMultisample: Bool
    public let shaderStorageImageReadWithoutFormat: Bool
    public let shaderStorageImageWriteWithoutFormat: Bool
    public let shaderUniformBufferArrayDynamicIndexing: Bool
    public let shaderSampledImageArrayDynamicIndexing: Bool
    public let shaderStorageBufferArrayDynamicIndexing: Bool
    public let shaderStorageImageArrayDynamicIndexing: Bool
    public let shaderClipDistance: Bool
    public let shaderCullDistance: Bool
    public let shaderFloat64: Bool
    public let shaderInt64: Bool
    public let shaderInt16: Bool
    public let shaderResourceResidency: Bool
    public let shaderResourceMinLod: Bool
    public let sparseBinding: Bool
    public let sparseResidencyBuffer: Bool
    public let sparseResidencyImage2D: Bool
    public let sparseResidencyImage3D: Bool
    public let sparseResidency2Samples: Bool
    public let sparseResidency4Samples: Bool
    public let sparseResidency8Samples: Bool
    public let sparseResidency16Samples: Bool
    public let sparseResidencyAliased: Bool
    public let variableMultisampleRate: Bool
    public let inheritedQueries: Bool

    public init(robustBufferAccess: Bool, fullDrawIndexUint32: Bool, imageCubeArray: Bool, independentBlend: Bool, geometryShader: Bool, tessellationShader: Bool, sampleRateShading: Bool, dualSrcBlend: Bool, logicOp: Bool, multiDrawIndirect: Bool, drawIndirectFirstInstance: Bool, depthClamp: Bool, depthBiasClamp: Bool, fillModeNonSolid: Bool, depthBounds: Bool, wideLines: Bool, largePoints: Bool, alphaToOne: Bool, multiViewport: Bool, samplerAnisotropy: Bool, textureCompressionETC2: Bool, textureCompressionASTC_LDR: Bool, textureCompressionBC: Bool, occlusionQueryPrecise: Bool, pipelineStatisticsQuery: Bool, vertexPipelineStoresAndAtomics: Bool, fragmentStoresAndAtomics: Bool, shaderTessellationAndGeometryPointSize: Bool, shaderImageGatherExtended: Bool, shaderStorageImageExtendedFormats: Bool, shaderStorageImageMultisample: Bool, shaderStorageImageReadWithoutFormat: Bool, shaderStorageImageWriteWithoutFormat: Bool, shaderUniformBufferArrayDynamicIndexing: Bool, shaderSampledImageArrayDynamicIndexing: Bool, shaderStorageBufferArrayDynamicIndexing: Bool, shaderStorageImageArrayDynamicIndexing: Bool, shaderClipDistance: Bool, shaderCullDistance: Bool, shaderFloat64: Bool, shaderInt64: Bool, shaderInt16: Bool, shaderResourceResidency: Bool, shaderResourceMinLod: Bool, sparseBinding: Bool, sparseResidencyBuffer: Bool, sparseResidencyImage2D: Bool, sparseResidencyImage3D: Bool, sparseResidency2Samples: Bool, sparseResidency4Samples: Bool, sparseResidency8Samples: Bool, sparseResidency16Samples: Bool, sparseResidencyAliased: Bool, variableMultisampleRate: Bool, inheritedQueries: Bool) {
        self.robustBufferAccess = robustBufferAccess
        self.fullDrawIndexUint32 = fullDrawIndexUint32
        self.imageCubeArray = imageCubeArray
        self.independentBlend = independentBlend
        self.geometryShader = geometryShader
        self.tessellationShader = tessellationShader
        self.sampleRateShading = sampleRateShading
        self.dualSrcBlend = dualSrcBlend
        self.logicOp = logicOp
        self.multiDrawIndirect = multiDrawIndirect
        self.drawIndirectFirstInstance = drawIndirectFirstInstance
        self.depthClamp = depthClamp
        self.depthBiasClamp = depthBiasClamp
        self.fillModeNonSolid = fillModeNonSolid
        self.depthBounds = depthBounds
        self.wideLines = wideLines
        self.largePoints = largePoints
        self.alphaToOne = alphaToOne
        self.multiViewport = multiViewport
        self.samplerAnisotropy = samplerAnisotropy
        self.textureCompressionETC2 = textureCompressionETC2
        self.textureCompressionASTC_LDR = textureCompressionASTC_LDR
        self.textureCompressionBC = textureCompressionBC
        self.occlusionQueryPrecise = occlusionQueryPrecise
        self.pipelineStatisticsQuery = pipelineStatisticsQuery
        self.vertexPipelineStoresAndAtomics = vertexPipelineStoresAndAtomics
        self.fragmentStoresAndAtomics = fragmentStoresAndAtomics
        self.shaderTessellationAndGeometryPointSize = shaderTessellationAndGeometryPointSize
        self.shaderImageGatherExtended = shaderImageGatherExtended
        self.shaderStorageImageExtendedFormats = shaderStorageImageExtendedFormats
        self.shaderStorageImageMultisample = shaderStorageImageMultisample
        self.shaderStorageImageReadWithoutFormat = shaderStorageImageReadWithoutFormat
        self.shaderStorageImageWriteWithoutFormat = shaderStorageImageWriteWithoutFormat
        self.shaderUniformBufferArrayDynamicIndexing = shaderUniformBufferArrayDynamicIndexing
        self.shaderSampledImageArrayDynamicIndexing = shaderSampledImageArrayDynamicIndexing
        self.shaderStorageBufferArrayDynamicIndexing = shaderStorageBufferArrayDynamicIndexing
        self.shaderStorageImageArrayDynamicIndexing = shaderStorageImageArrayDynamicIndexing
        self.shaderClipDistance = shaderClipDistance
        self.shaderCullDistance = shaderCullDistance
        self.shaderFloat64 = shaderFloat64
        self.shaderInt64 = shaderInt64
        self.shaderInt16 = shaderInt16
        self.shaderResourceResidency = shaderResourceResidency
        self.shaderResourceMinLod = shaderResourceMinLod
        self.sparseBinding = sparseBinding
        self.sparseResidencyBuffer = sparseResidencyBuffer
        self.sparseResidencyImage2D = sparseResidencyImage2D
        self.sparseResidencyImage3D = sparseResidencyImage3D
        self.sparseResidency2Samples = sparseResidency2Samples
        self.sparseResidency4Samples = sparseResidency4Samples
        self.sparseResidency8Samples = sparseResidency8Samples
        self.sparseResidency16Samples = sparseResidency16Samples
        self.sparseResidencyAliased = sparseResidencyAliased
        self.variableMultisampleRate = variableMultisampleRate
        self.inheritedQueries = inheritedQueries
    }

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

public struct DeviceCreateInfo: CStructConvertible {
    typealias CStruct = VkDeviceCreateInfo

    public let flags: DeviceCreateFlags
    public let queueCreateInfos: Array<DeviceQueueCreateInfo>
    public let enabledLayerNames: Array<String>
    public let enabledExtensionNames: Array<String>
    public let enabledFeatures: PhysicalDeviceFeatures?

    public init(flags: DeviceCreateFlags, queueCreateInfos: Array<DeviceQueueCreateInfo>, enabledLayerNames: Array<String>, enabledExtensionNames: Array<String>, enabledFeatures: PhysicalDeviceFeatures?) {
        self.flags = flags
        self.queueCreateInfos = queueCreateInfos
        self.enabledLayerNames = enabledLayerNames
        self.enabledExtensionNames = enabledExtensionNames
        self.enabledFeatures = enabledFeatures
    }

    init(cStruct: VkDeviceCreateInfo) {
        self.flags = DeviceCreateFlags(rawValue: cStruct.flags)
        self.queueCreateInfos = UnsafeBufferPointer(start: cStruct.pQueueCreateInfos, count: Int(cStruct.queueCreateInfoCount)).map{ DeviceQueueCreateInfo(cStruct: $0) }
        self.enabledLayerNames = UnsafeBufferPointer(start: cStruct.ppEnabledLayerNames, count: Int(cStruct.enabledLayerCount)).map{ String(cString: $0!) }
        self.enabledExtensionNames = UnsafeBufferPointer(start: cStruct.ppEnabledExtensionNames, count: Int(cStruct.enabledExtensionCount)).map{ String(cString: $0!) }
        self.enabledFeatures = (cStruct.pEnabledFeatures != nil) ? PhysicalDeviceFeatures(cStruct: cStruct.pEnabledFeatures.pointee) : nil
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkDeviceCreateInfo>) throws -> R) rethrows -> R {
        try self.queueCreateInfos.withCStructBufferPointer { ptr_queueCreateInfos in
            try self.enabledLayerNames.withCStringBufferPointer { ptr_enabledLayerNames in
                try self.enabledExtensionNames.withCStringBufferPointer { ptr_enabledExtensionNames in
                    try self.enabledFeatures.withOptionalCStruct { ptr_enabledFeatures in
                        var cStruct = VkDeviceCreateInfo()
                        cStruct.sType = VK_STRUCTURE_TYPE_DEVICE_CREATE_INFO
                        cStruct.pNext = nil
                        cStruct.flags = self.flags.rawValue
                        cStruct.queueCreateInfoCount = UInt32(ptr_queueCreateInfos.count)
                        cStruct.pQueueCreateInfos = ptr_queueCreateInfos.baseAddress
                        cStruct.enabledLayerCount = UInt32(ptr_enabledLayerNames.count)
                        cStruct.ppEnabledLayerNames = ptr_enabledLayerNames.baseAddress
                        cStruct.enabledExtensionCount = UInt32(ptr_enabledExtensionNames.count)
                        cStruct.ppEnabledExtensionNames = ptr_enabledExtensionNames.baseAddress
                        cStruct.pEnabledFeatures = ptr_enabledFeatures
                        return try body(&cStruct)
                    }
                }
            }
        }
    }
}

public struct InstanceCreateInfo: CStructConvertible {
    typealias CStruct = VkInstanceCreateInfo

    public let flags: InstanceCreateFlags
    public let applicationInfo: ApplicationInfo?
    public let enabledLayerNames: Array<String>
    public let enabledExtensionNames: Array<String>

    public init(flags: InstanceCreateFlags, applicationInfo: ApplicationInfo?, enabledLayerNames: Array<String>, enabledExtensionNames: Array<String>) {
        self.flags = flags
        self.applicationInfo = applicationInfo
        self.enabledLayerNames = enabledLayerNames
        self.enabledExtensionNames = enabledExtensionNames
    }

    init(cStruct: VkInstanceCreateInfo) {
        self.flags = InstanceCreateFlags(rawValue: cStruct.flags)
        self.applicationInfo = (cStruct.pApplicationInfo != nil) ? ApplicationInfo(cStruct: cStruct.pApplicationInfo.pointee) : nil
        self.enabledLayerNames = UnsafeBufferPointer(start: cStruct.ppEnabledLayerNames, count: Int(cStruct.enabledLayerCount)).map{ String(cString: $0!) }
        self.enabledExtensionNames = UnsafeBufferPointer(start: cStruct.ppEnabledExtensionNames, count: Int(cStruct.enabledExtensionCount)).map{ String(cString: $0!) }
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkInstanceCreateInfo>) throws -> R) rethrows -> R {
        try self.applicationInfo.withOptionalCStruct { ptr_applicationInfo in
            try self.enabledLayerNames.withCStringBufferPointer { ptr_enabledLayerNames in
                try self.enabledExtensionNames.withCStringBufferPointer { ptr_enabledExtensionNames in
                    var cStruct = VkInstanceCreateInfo()
                    cStruct.sType = VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO
                    cStruct.pNext = nil
                    cStruct.flags = self.flags.rawValue
                    cStruct.pApplicationInfo = ptr_applicationInfo
                    cStruct.enabledLayerCount = UInt32(ptr_enabledLayerNames.count)
                    cStruct.ppEnabledLayerNames = ptr_enabledLayerNames.baseAddress
                    cStruct.enabledExtensionCount = UInt32(ptr_enabledExtensionNames.count)
                    cStruct.ppEnabledExtensionNames = ptr_enabledExtensionNames.baseAddress
                    return try body(&cStruct)
                }
            }
        }
    }
}

public struct QueueFamilyProperties: CStructConvertible {
    typealias CStruct = VkQueueFamilyProperties

    public let queueFlags: QueueFlags
    public let queueCount: UInt32
    public let timestampValidBits: UInt32
    public let minImageTransferGranularity: Extent3D

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

public struct MemoryType: CStructConvertible {
    typealias CStruct = VkMemoryType

    public let propertyFlags: MemoryPropertyFlags
    public let heapIndex: UInt32

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

public struct MemoryHeap: CStructConvertible {
    typealias CStruct = VkMemoryHeap

    public let size: VkDeviceSize
    public let flags: MemoryHeapFlags

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

public struct PhysicalDeviceMemoryProperties: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceMemoryProperties

    public let memoryTypeCount: UInt32
    public let memoryTypes: (VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType)
    public let memoryHeapCount: UInt32
    public let memoryHeaps: (VkMemoryHeap, VkMemoryHeap, VkMemoryHeap, VkMemoryHeap, VkMemoryHeap, VkMemoryHeap, VkMemoryHeap, VkMemoryHeap, VkMemoryHeap, VkMemoryHeap, VkMemoryHeap, VkMemoryHeap, VkMemoryHeap, VkMemoryHeap, VkMemoryHeap, VkMemoryHeap)

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

public struct MemoryAllocateInfo: CStructConvertible {
    typealias CStruct = VkMemoryAllocateInfo

    public let allocationSize: VkDeviceSize
    public let memoryTypeIndex: UInt32

    public init(allocationSize: VkDeviceSize, memoryTypeIndex: UInt32) {
        self.allocationSize = allocationSize
        self.memoryTypeIndex = memoryTypeIndex
    }

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

public struct MemoryRequirements: CStructConvertible {
    typealias CStruct = VkMemoryRequirements

    public let size: VkDeviceSize
    public let alignment: VkDeviceSize
    public let memoryTypeBits: UInt32

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

public struct SparseImageFormatProperties: CStructConvertible {
    typealias CStruct = VkSparseImageFormatProperties

    public let aspectMask: ImageAspectFlags
    public let imageGranularity: Extent3D
    public let flags: SparseImageFormatFlags

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

public struct SparseImageMemoryRequirements: CStructConvertible {
    typealias CStruct = VkSparseImageMemoryRequirements

    public let formatProperties: SparseImageFormatProperties
    public let imageMipTailFirstLod: UInt32
    public let imageMipTailSize: VkDeviceSize
    public let imageMipTailOffset: VkDeviceSize
    public let imageMipTailStride: VkDeviceSize

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

public struct MappedMemoryRange: CStructConvertible {
    typealias CStruct = VkMappedMemoryRange

    public let memory: DeviceMemory
    public let offset: VkDeviceSize
    public let size: VkDeviceSize

    public init(memory: DeviceMemory, offset: VkDeviceSize, size: VkDeviceSize) {
        self.memory = memory
        self.offset = offset
        self.size = size
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

public struct FormatProperties: CStructConvertible {
    typealias CStruct = VkFormatProperties

    public let linearTilingFeatures: FormatFeatureFlags
    public let optimalTilingFeatures: FormatFeatureFlags
    public let bufferFeatures: FormatFeatureFlags

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

public struct ImageFormatProperties: CStructConvertible {
    typealias CStruct = VkImageFormatProperties

    public let maxExtent: Extent3D
    public let maxMipLevels: UInt32
    public let maxArrayLayers: UInt32
    public let sampleCounts: SampleCountFlags
    public let maxResourceSize: VkDeviceSize

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

public struct DescriptorBufferInfo: CStructConvertible {
    typealias CStruct = VkDescriptorBufferInfo

    public let buffer: Buffer
    public let offset: VkDeviceSize
    public let range: VkDeviceSize

    public init(buffer: Buffer, offset: VkDeviceSize, range: VkDeviceSize) {
        self.buffer = buffer
        self.offset = offset
        self.range = range
    }


    func withCStruct<R>(_ body: (UnsafePointer<VkDescriptorBufferInfo>) throws -> R) rethrows -> R {
        var cStruct = VkDescriptorBufferInfo()
        cStruct.buffer = self.buffer.handle
        cStruct.offset = self.offset
        cStruct.range = self.range
        return try body(&cStruct)
    }
}

public struct DescriptorImageInfo: CStructConvertible {
    typealias CStruct = VkDescriptorImageInfo

    public let sampler: Sampler
    public let imageView: ImageView
    public let imageLayout: ImageLayout

    public init(sampler: Sampler, imageView: ImageView, imageLayout: ImageLayout) {
        self.sampler = sampler
        self.imageView = imageView
        self.imageLayout = imageLayout
    }


    func withCStruct<R>(_ body: (UnsafePointer<VkDescriptorImageInfo>) throws -> R) rethrows -> R {
        var cStruct = VkDescriptorImageInfo()
        cStruct.sampler = self.sampler.handle
        cStruct.imageView = self.imageView.handle
        cStruct.imageLayout = VkImageLayout(rawValue: self.imageLayout.rawValue)
        return try body(&cStruct)
    }
}

public struct WriteDescriptorSet: CStructConvertible {
    typealias CStruct = VkWriteDescriptorSet

    public let dstSet: DescriptorSet
    public let dstBinding: UInt32
    public let dstArrayElement: UInt32
    public let descriptorType: DescriptorType
    public let imageInfo: Array<DescriptorImageInfo>
    public let bufferInfo: Array<DescriptorBufferInfo>
    public let texelBufferView: Array<BufferView>

    public init(dstSet: DescriptorSet, dstBinding: UInt32, dstArrayElement: UInt32, descriptorType: DescriptorType, imageInfo: Array<DescriptorImageInfo>, bufferInfo: Array<DescriptorBufferInfo>, texelBufferView: Array<BufferView>) {
        self.dstSet = dstSet
        self.dstBinding = dstBinding
        self.dstArrayElement = dstArrayElement
        self.descriptorType = descriptorType
        self.imageInfo = imageInfo
        self.bufferInfo = bufferInfo
        self.texelBufferView = texelBufferView
    }


    func withCStruct<R>(_ body: (UnsafePointer<VkWriteDescriptorSet>) throws -> R) rethrows -> R {
        try self.imageInfo.withCStructBufferPointer { ptr_imageInfo in
            try self.bufferInfo.withCStructBufferPointer { ptr_bufferInfo in
                try self.texelBufferView.map{ $0.handle }.withUnsafeBufferPointer { ptr_texelBufferView in
                    var cStruct = VkWriteDescriptorSet()
                    cStruct.sType = VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET
                    cStruct.pNext = nil
                    cStruct.dstSet = self.dstSet.handle
                    cStruct.dstBinding = self.dstBinding
                    cStruct.dstArrayElement = self.dstArrayElement
                    cStruct.descriptorCount = UInt32(ptr_imageInfo.count)
                    cStruct.descriptorType = VkDescriptorType(rawValue: self.descriptorType.rawValue)
                    cStruct.pImageInfo = ptr_imageInfo.baseAddress
                    cStruct.pBufferInfo = ptr_bufferInfo.baseAddress
                    cStruct.pTexelBufferView = ptr_texelBufferView.baseAddress
                    return try body(&cStruct)
                }
            }
        }
    }
}

public struct CopyDescriptorSet: CStructConvertible {
    typealias CStruct = VkCopyDescriptorSet

    public let srcSet: DescriptorSet
    public let srcBinding: UInt32
    public let srcArrayElement: UInt32
    public let dstSet: DescriptorSet
    public let dstBinding: UInt32
    public let dstArrayElement: UInt32
    public let descriptorCount: UInt32

    public init(srcSet: DescriptorSet, srcBinding: UInt32, srcArrayElement: UInt32, dstSet: DescriptorSet, dstBinding: UInt32, dstArrayElement: UInt32, descriptorCount: UInt32) {
        self.srcSet = srcSet
        self.srcBinding = srcBinding
        self.srcArrayElement = srcArrayElement
        self.dstSet = dstSet
        self.dstBinding = dstBinding
        self.dstArrayElement = dstArrayElement
        self.descriptorCount = descriptorCount
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

public struct BufferCreateInfo: CStructConvertible {
    typealias CStruct = VkBufferCreateInfo

    public let flags: BufferCreateFlags
    public let size: VkDeviceSize
    public let usage: BufferUsageFlags
    public let sharingMode: SharingMode
    public let queueFamilyIndices: Array<UInt32>

    public init(flags: BufferCreateFlags, size: VkDeviceSize, usage: BufferUsageFlags, sharingMode: SharingMode, queueFamilyIndices: Array<UInt32>) {
        self.flags = flags
        self.size = size
        self.usage = usage
        self.sharingMode = sharingMode
        self.queueFamilyIndices = queueFamilyIndices
    }

    init(cStruct: VkBufferCreateInfo) {
        self.flags = BufferCreateFlags(rawValue: cStruct.flags)
        self.size = cStruct.size
        self.usage = BufferUsageFlags(rawValue: cStruct.usage)
        self.sharingMode = SharingMode(rawValue: cStruct.sharingMode.rawValue)!
        self.queueFamilyIndices = Array(UnsafeBufferPointer(start: cStruct.pQueueFamilyIndices, count: Int(cStruct.queueFamilyIndexCount)))
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkBufferCreateInfo>) throws -> R) rethrows -> R {
        try self.queueFamilyIndices.withUnsafeBufferPointer { ptr_queueFamilyIndices in
            var cStruct = VkBufferCreateInfo()
            cStruct.sType = VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO
            cStruct.pNext = nil
            cStruct.flags = self.flags.rawValue
            cStruct.size = self.size
            cStruct.usage = self.usage.rawValue
            cStruct.sharingMode = VkSharingMode(rawValue: self.sharingMode.rawValue)
            cStruct.queueFamilyIndexCount = UInt32(ptr_queueFamilyIndices.count)
            cStruct.pQueueFamilyIndices = ptr_queueFamilyIndices.baseAddress
            return try body(&cStruct)
        }
    }
}

public struct BufferViewCreateInfo: CStructConvertible {
    typealias CStruct = VkBufferViewCreateInfo

    public let flags: BufferViewCreateFlags
    public let buffer: Buffer
    public let format: Format
    public let offset: VkDeviceSize
    public let range: VkDeviceSize

    public init(flags: BufferViewCreateFlags, buffer: Buffer, format: Format, offset: VkDeviceSize, range: VkDeviceSize) {
        self.flags = flags
        self.buffer = buffer
        self.format = format
        self.offset = offset
        self.range = range
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

public struct ImageSubresource: CStructConvertible {
    typealias CStruct = VkImageSubresource

    public let aspectMask: ImageAspectFlags
    public let mipLevel: UInt32
    public let arrayLayer: UInt32

    public init(aspectMask: ImageAspectFlags, mipLevel: UInt32, arrayLayer: UInt32) {
        self.aspectMask = aspectMask
        self.mipLevel = mipLevel
        self.arrayLayer = arrayLayer
    }

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

public struct ImageSubresourceLayers: CStructConvertible {
    typealias CStruct = VkImageSubresourceLayers

    public let aspectMask: ImageAspectFlags
    public let mipLevel: UInt32
    public let baseArrayLayer: UInt32
    public let layerCount: UInt32

    public init(aspectMask: ImageAspectFlags, mipLevel: UInt32, baseArrayLayer: UInt32, layerCount: UInt32) {
        self.aspectMask = aspectMask
        self.mipLevel = mipLevel
        self.baseArrayLayer = baseArrayLayer
        self.layerCount = layerCount
    }

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

public struct ImageSubresourceRange: CStructConvertible {
    typealias CStruct = VkImageSubresourceRange

    public let aspectMask: ImageAspectFlags
    public let baseMipLevel: UInt32
    public let levelCount: UInt32
    public let baseArrayLayer: UInt32
    public let layerCount: UInt32

    public init(aspectMask: ImageAspectFlags, baseMipLevel: UInt32, levelCount: UInt32, baseArrayLayer: UInt32, layerCount: UInt32) {
        self.aspectMask = aspectMask
        self.baseMipLevel = baseMipLevel
        self.levelCount = levelCount
        self.baseArrayLayer = baseArrayLayer
        self.layerCount = layerCount
    }

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

public struct MemoryBarrier: CStructConvertible {
    typealias CStruct = VkMemoryBarrier

    public let srcAccessMask: AccessFlags
    public let dstAccessMask: AccessFlags

    public init(srcAccessMask: AccessFlags, dstAccessMask: AccessFlags) {
        self.srcAccessMask = srcAccessMask
        self.dstAccessMask = dstAccessMask
    }

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

public struct BufferMemoryBarrier: CStructConvertible {
    typealias CStruct = VkBufferMemoryBarrier

    public let srcAccessMask: AccessFlags
    public let dstAccessMask: AccessFlags
    public let srcQueueFamilyIndex: UInt32
    public let dstQueueFamilyIndex: UInt32
    public let buffer: Buffer
    public let offset: VkDeviceSize
    public let size: VkDeviceSize

    public init(srcAccessMask: AccessFlags, dstAccessMask: AccessFlags, srcQueueFamilyIndex: UInt32, dstQueueFamilyIndex: UInt32, buffer: Buffer, offset: VkDeviceSize, size: VkDeviceSize) {
        self.srcAccessMask = srcAccessMask
        self.dstAccessMask = dstAccessMask
        self.srcQueueFamilyIndex = srcQueueFamilyIndex
        self.dstQueueFamilyIndex = dstQueueFamilyIndex
        self.buffer = buffer
        self.offset = offset
        self.size = size
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

public struct ImageMemoryBarrier: CStructConvertible {
    typealias CStruct = VkImageMemoryBarrier

    public let srcAccessMask: AccessFlags
    public let dstAccessMask: AccessFlags
    public let oldLayout: ImageLayout
    public let newLayout: ImageLayout
    public let srcQueueFamilyIndex: UInt32
    public let dstQueueFamilyIndex: UInt32
    public let image: Image
    public let subresourceRange: ImageSubresourceRange

    public init(srcAccessMask: AccessFlags, dstAccessMask: AccessFlags, oldLayout: ImageLayout, newLayout: ImageLayout, srcQueueFamilyIndex: UInt32, dstQueueFamilyIndex: UInt32, image: Image, subresourceRange: ImageSubresourceRange) {
        self.srcAccessMask = srcAccessMask
        self.dstAccessMask = dstAccessMask
        self.oldLayout = oldLayout
        self.newLayout = newLayout
        self.srcQueueFamilyIndex = srcQueueFamilyIndex
        self.dstQueueFamilyIndex = dstQueueFamilyIndex
        self.image = image
        self.subresourceRange = subresourceRange
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

public struct ImageCreateInfo: CStructConvertible {
    typealias CStruct = VkImageCreateInfo

    public let flags: ImageCreateFlags
    public let imageType: ImageType
    public let format: Format
    public let extent: Extent3D
    public let mipLevels: UInt32
    public let arrayLayers: UInt32
    public let samples: SampleCountFlags
    public let tiling: ImageTiling
    public let usage: ImageUsageFlags
    public let sharingMode: SharingMode
    public let queueFamilyIndices: Array<UInt32>
    public let initialLayout: ImageLayout

    public init(flags: ImageCreateFlags, imageType: ImageType, format: Format, extent: Extent3D, mipLevels: UInt32, arrayLayers: UInt32, samples: SampleCountFlags, tiling: ImageTiling, usage: ImageUsageFlags, sharingMode: SharingMode, queueFamilyIndices: Array<UInt32>, initialLayout: ImageLayout) {
        self.flags = flags
        self.imageType = imageType
        self.format = format
        self.extent = extent
        self.mipLevels = mipLevels
        self.arrayLayers = arrayLayers
        self.samples = samples
        self.tiling = tiling
        self.usage = usage
        self.sharingMode = sharingMode
        self.queueFamilyIndices = queueFamilyIndices
        self.initialLayout = initialLayout
    }

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
        self.queueFamilyIndices = Array(UnsafeBufferPointer(start: cStruct.pQueueFamilyIndices, count: Int(cStruct.queueFamilyIndexCount)))
        self.initialLayout = ImageLayout(rawValue: cStruct.initialLayout.rawValue)!
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkImageCreateInfo>) throws -> R) rethrows -> R {
        try self.extent.withCStruct { ptr_extent in
            try self.queueFamilyIndices.withUnsafeBufferPointer { ptr_queueFamilyIndices in
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
                cStruct.queueFamilyIndexCount = UInt32(ptr_queueFamilyIndices.count)
                cStruct.pQueueFamilyIndices = ptr_queueFamilyIndices.baseAddress
                cStruct.initialLayout = VkImageLayout(rawValue: self.initialLayout.rawValue)
                return try body(&cStruct)
            }
        }
    }
}

public struct SubresourceLayout: CStructConvertible {
    typealias CStruct = VkSubresourceLayout

    public let offset: VkDeviceSize
    public let size: VkDeviceSize
    public let rowPitch: VkDeviceSize
    public let arrayPitch: VkDeviceSize
    public let depthPitch: VkDeviceSize

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

public struct ImageViewCreateInfo: CStructConvertible {
    typealias CStruct = VkImageViewCreateInfo

    public let flags: ImageViewCreateFlags
    public let image: Image
    public let viewType: ImageViewType
    public let format: Format
    public let components: ComponentMapping
    public let subresourceRange: ImageSubresourceRange

    public init(flags: ImageViewCreateFlags, image: Image, viewType: ImageViewType, format: Format, components: ComponentMapping, subresourceRange: ImageSubresourceRange) {
        self.flags = flags
        self.image = image
        self.viewType = viewType
        self.format = format
        self.components = components
        self.subresourceRange = subresourceRange
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

public struct BufferCopy: CStructConvertible {
    typealias CStruct = VkBufferCopy

    public let srcOffset: VkDeviceSize
    public let dstOffset: VkDeviceSize
    public let size: VkDeviceSize

    public init(srcOffset: VkDeviceSize, dstOffset: VkDeviceSize, size: VkDeviceSize) {
        self.srcOffset = srcOffset
        self.dstOffset = dstOffset
        self.size = size
    }

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

public struct SparseMemoryBind: CStructConvertible {
    typealias CStruct = VkSparseMemoryBind

    public let resourceOffset: VkDeviceSize
    public let size: VkDeviceSize
    public let memory: DeviceMemory?
    public let memoryOffset: VkDeviceSize
    public let flags: SparseMemoryBindFlags

    public init(resourceOffset: VkDeviceSize, size: VkDeviceSize, memory: DeviceMemory?, memoryOffset: VkDeviceSize, flags: SparseMemoryBindFlags) {
        self.resourceOffset = resourceOffset
        self.size = size
        self.memory = memory
        self.memoryOffset = memoryOffset
        self.flags = flags
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

public struct SparseImageMemoryBind: CStructConvertible {
    typealias CStruct = VkSparseImageMemoryBind

    public let subresource: ImageSubresource
    public let offset: Offset3D
    public let extent: Extent3D
    public let memory: DeviceMemory?
    public let memoryOffset: VkDeviceSize
    public let flags: SparseMemoryBindFlags

    public init(subresource: ImageSubresource, offset: Offset3D, extent: Extent3D, memory: DeviceMemory?, memoryOffset: VkDeviceSize, flags: SparseMemoryBindFlags) {
        self.subresource = subresource
        self.offset = offset
        self.extent = extent
        self.memory = memory
        self.memoryOffset = memoryOffset
        self.flags = flags
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

public struct SparseBufferMemoryBindInfo: CStructConvertible {
    typealias CStruct = VkSparseBufferMemoryBindInfo

    public let buffer: Buffer
    public let binds: Array<SparseMemoryBind>

    public init(buffer: Buffer, binds: Array<SparseMemoryBind>) {
        self.buffer = buffer
        self.binds = binds
    }


    func withCStruct<R>(_ body: (UnsafePointer<VkSparseBufferMemoryBindInfo>) throws -> R) rethrows -> R {
        try self.binds.withCStructBufferPointer { ptr_binds in
            var cStruct = VkSparseBufferMemoryBindInfo()
            cStruct.buffer = self.buffer.handle
            cStruct.bindCount = UInt32(ptr_binds.count)
            cStruct.pBinds = ptr_binds.baseAddress
            return try body(&cStruct)
        }
    }
}

public struct SparseImageOpaqueMemoryBindInfo: CStructConvertible {
    typealias CStruct = VkSparseImageOpaqueMemoryBindInfo

    public let image: Image
    public let binds: Array<SparseMemoryBind>

    public init(image: Image, binds: Array<SparseMemoryBind>) {
        self.image = image
        self.binds = binds
    }


    func withCStruct<R>(_ body: (UnsafePointer<VkSparseImageOpaqueMemoryBindInfo>) throws -> R) rethrows -> R {
        try self.binds.withCStructBufferPointer { ptr_binds in
            var cStruct = VkSparseImageOpaqueMemoryBindInfo()
            cStruct.image = self.image.handle
            cStruct.bindCount = UInt32(ptr_binds.count)
            cStruct.pBinds = ptr_binds.baseAddress
            return try body(&cStruct)
        }
    }
}

public struct SparseImageMemoryBindInfo: CStructConvertible {
    typealias CStruct = VkSparseImageMemoryBindInfo

    public let image: Image
    public let binds: Array<SparseImageMemoryBind>

    public init(image: Image, binds: Array<SparseImageMemoryBind>) {
        self.image = image
        self.binds = binds
    }


    func withCStruct<R>(_ body: (UnsafePointer<VkSparseImageMemoryBindInfo>) throws -> R) rethrows -> R {
        try self.binds.withCStructBufferPointer { ptr_binds in
            var cStruct = VkSparseImageMemoryBindInfo()
            cStruct.image = self.image.handle
            cStruct.bindCount = UInt32(ptr_binds.count)
            cStruct.pBinds = ptr_binds.baseAddress
            return try body(&cStruct)
        }
    }
}

public struct BindSparseInfo: CStructConvertible {
    typealias CStruct = VkBindSparseInfo

    public let waitSemaphores: Array<Semaphore>
    public let bufferBinds: Array<SparseBufferMemoryBindInfo>
    public let imageOpaqueBinds: Array<SparseImageOpaqueMemoryBindInfo>
    public let imageBinds: Array<SparseImageMemoryBindInfo>
    public let signalSemaphores: Array<Semaphore>

    public init(waitSemaphores: Array<Semaphore>, bufferBinds: Array<SparseBufferMemoryBindInfo>, imageOpaqueBinds: Array<SparseImageOpaqueMemoryBindInfo>, imageBinds: Array<SparseImageMemoryBindInfo>, signalSemaphores: Array<Semaphore>) {
        self.waitSemaphores = waitSemaphores
        self.bufferBinds = bufferBinds
        self.imageOpaqueBinds = imageOpaqueBinds
        self.imageBinds = imageBinds
        self.signalSemaphores = signalSemaphores
    }


    func withCStruct<R>(_ body: (UnsafePointer<VkBindSparseInfo>) throws -> R) rethrows -> R {
        try self.waitSemaphores.map{ $0.handle }.withUnsafeBufferPointer { ptr_waitSemaphores in
            try self.bufferBinds.withCStructBufferPointer { ptr_bufferBinds in
                try self.imageOpaqueBinds.withCStructBufferPointer { ptr_imageOpaqueBinds in
                    try self.imageBinds.withCStructBufferPointer { ptr_imageBinds in
                        try self.signalSemaphores.map{ $0.handle }.withUnsafeBufferPointer { ptr_signalSemaphores in
                            var cStruct = VkBindSparseInfo()
                            cStruct.sType = VK_STRUCTURE_TYPE_BIND_SPARSE_INFO
                            cStruct.pNext = nil
                            cStruct.waitSemaphoreCount = UInt32(ptr_waitSemaphores.count)
                            cStruct.pWaitSemaphores = ptr_waitSemaphores.baseAddress
                            cStruct.bufferBindCount = UInt32(ptr_bufferBinds.count)
                            cStruct.pBufferBinds = ptr_bufferBinds.baseAddress
                            cStruct.imageOpaqueBindCount = UInt32(ptr_imageOpaqueBinds.count)
                            cStruct.pImageOpaqueBinds = ptr_imageOpaqueBinds.baseAddress
                            cStruct.imageBindCount = UInt32(ptr_imageBinds.count)
                            cStruct.pImageBinds = ptr_imageBinds.baseAddress
                            cStruct.signalSemaphoreCount = UInt32(ptr_signalSemaphores.count)
                            cStruct.pSignalSemaphores = ptr_signalSemaphores.baseAddress
                            return try body(&cStruct)
                        }
                    }
                }
            }
        }
    }
}

public struct ImageCopy: CStructConvertible {
    typealias CStruct = VkImageCopy

    public let srcSubresource: ImageSubresourceLayers
    public let srcOffset: Offset3D
    public let dstSubresource: ImageSubresourceLayers
    public let dstOffset: Offset3D
    public let extent: Extent3D

    public init(srcSubresource: ImageSubresourceLayers, srcOffset: Offset3D, dstSubresource: ImageSubresourceLayers, dstOffset: Offset3D, extent: Extent3D) {
        self.srcSubresource = srcSubresource
        self.srcOffset = srcOffset
        self.dstSubresource = dstSubresource
        self.dstOffset = dstOffset
        self.extent = extent
    }

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

public struct ImageBlit: CStructConvertible {
    typealias CStruct = VkImageBlit

    public let srcSubresource: ImageSubresourceLayers
    public let srcOffsets: (VkOffset3D, VkOffset3D)
    public let dstSubresource: ImageSubresourceLayers
    public let dstOffsets: (VkOffset3D, VkOffset3D)

    public init(srcSubresource: ImageSubresourceLayers, srcOffsets: (VkOffset3D, VkOffset3D), dstSubresource: ImageSubresourceLayers, dstOffsets: (VkOffset3D, VkOffset3D)) {
        self.srcSubresource = srcSubresource
        self.srcOffsets = srcOffsets
        self.dstSubresource = dstSubresource
        self.dstOffsets = dstOffsets
    }

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

public struct BufferImageCopy: CStructConvertible {
    typealias CStruct = VkBufferImageCopy

    public let bufferOffset: VkDeviceSize
    public let bufferRowLength: UInt32
    public let bufferImageHeight: UInt32
    public let imageSubresource: ImageSubresourceLayers
    public let imageOffset: Offset3D
    public let imageExtent: Extent3D

    public init(bufferOffset: VkDeviceSize, bufferRowLength: UInt32, bufferImageHeight: UInt32, imageSubresource: ImageSubresourceLayers, imageOffset: Offset3D, imageExtent: Extent3D) {
        self.bufferOffset = bufferOffset
        self.bufferRowLength = bufferRowLength
        self.bufferImageHeight = bufferImageHeight
        self.imageSubresource = imageSubresource
        self.imageOffset = imageOffset
        self.imageExtent = imageExtent
    }

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

public struct ImageResolve: CStructConvertible {
    typealias CStruct = VkImageResolve

    public let srcSubresource: ImageSubresourceLayers
    public let srcOffset: Offset3D
    public let dstSubresource: ImageSubresourceLayers
    public let dstOffset: Offset3D
    public let extent: Extent3D

    public init(srcSubresource: ImageSubresourceLayers, srcOffset: Offset3D, dstSubresource: ImageSubresourceLayers, dstOffset: Offset3D, extent: Extent3D) {
        self.srcSubresource = srcSubresource
        self.srcOffset = srcOffset
        self.dstSubresource = dstSubresource
        self.dstOffset = dstOffset
        self.extent = extent
    }

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

public struct ShaderModuleCreateInfo: CStructConvertible {
    typealias CStruct = VkShaderModuleCreateInfo

    public let flags: ShaderModuleCreateFlags
    public let codeSize: Int
    public let code: UnsafePointer<UInt32>

    public init(flags: ShaderModuleCreateFlags, codeSize: Int, code: UnsafePointer<UInt32>) {
        self.flags = flags
        self.codeSize = codeSize
        self.code = code
    }

    init(cStruct: VkShaderModuleCreateInfo) {
        self.flags = ShaderModuleCreateFlags(rawValue: cStruct.flags)
        self.codeSize = cStruct.codeSize
        self.code = cStruct.pCode
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkShaderModuleCreateInfo>) throws -> R) rethrows -> R {
        var cStruct = VkShaderModuleCreateInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_SHADER_MODULE_CREATE_INFO
        cStruct.pNext = nil
        cStruct.flags = self.flags.rawValue
        cStruct.codeSize = self.codeSize
        cStruct.pCode = self.code
        return try body(&cStruct)
    }
}

public struct DescriptorSetLayoutBinding: CStructConvertible {
    typealias CStruct = VkDescriptorSetLayoutBinding

    public let binding: UInt32
    public let descriptorType: DescriptorType
    public let stageFlags: ShaderStageFlags
    public let immutableSamplers: Array<Sampler>?

    public init(binding: UInt32, descriptorType: DescriptorType, stageFlags: ShaderStageFlags, immutableSamplers: Array<Sampler>?) {
        self.binding = binding
        self.descriptorType = descriptorType
        self.stageFlags = stageFlags
        self.immutableSamplers = immutableSamplers
    }


    func withCStruct<R>(_ body: (UnsafePointer<VkDescriptorSetLayoutBinding>) throws -> R) rethrows -> R {
        try (self.immutableSamplers?.map{ $0.handle }).withOptionalUnsafeBufferPointer { ptr_immutableSamplers in
            var cStruct = VkDescriptorSetLayoutBinding()
            cStruct.binding = self.binding
            cStruct.descriptorType = VkDescriptorType(rawValue: self.descriptorType.rawValue)
            cStruct.descriptorCount = UInt32(ptr_immutableSamplers.count)
            cStruct.stageFlags = self.stageFlags.rawValue
            cStruct.pImmutableSamplers = ptr_immutableSamplers.baseAddress
            return try body(&cStruct)
        }
    }
}

public struct DescriptorSetLayoutCreateInfo: CStructConvertible {
    typealias CStruct = VkDescriptorSetLayoutCreateInfo

    public let flags: DescriptorSetLayoutCreateFlags
    public let bindings: Array<DescriptorSetLayoutBinding>

    public init(flags: DescriptorSetLayoutCreateFlags, bindings: Array<DescriptorSetLayoutBinding>) {
        self.flags = flags
        self.bindings = bindings
    }


    func withCStruct<R>(_ body: (UnsafePointer<VkDescriptorSetLayoutCreateInfo>) throws -> R) rethrows -> R {
        try self.bindings.withCStructBufferPointer { ptr_bindings in
            var cStruct = VkDescriptorSetLayoutCreateInfo()
            cStruct.sType = VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_CREATE_INFO
            cStruct.pNext = nil
            cStruct.flags = self.flags.rawValue
            cStruct.bindingCount = UInt32(ptr_bindings.count)
            cStruct.pBindings = ptr_bindings.baseAddress
            return try body(&cStruct)
        }
    }
}

public struct DescriptorPoolSize: CStructConvertible {
    typealias CStruct = VkDescriptorPoolSize

    public let type: DescriptorType
    public let descriptorCount: UInt32

    public init(type: DescriptorType, descriptorCount: UInt32) {
        self.type = type
        self.descriptorCount = descriptorCount
    }

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

public struct DescriptorPoolCreateInfo: CStructConvertible {
    typealias CStruct = VkDescriptorPoolCreateInfo

    public let flags: DescriptorPoolCreateFlags
    public let maxSets: UInt32
    public let poolSizes: Array<DescriptorPoolSize>

    public init(flags: DescriptorPoolCreateFlags, maxSets: UInt32, poolSizes: Array<DescriptorPoolSize>) {
        self.flags = flags
        self.maxSets = maxSets
        self.poolSizes = poolSizes
    }

    init(cStruct: VkDescriptorPoolCreateInfo) {
        self.flags = DescriptorPoolCreateFlags(rawValue: cStruct.flags)
        self.maxSets = cStruct.maxSets
        self.poolSizes = UnsafeBufferPointer(start: cStruct.pPoolSizes, count: Int(cStruct.poolSizeCount)).map{ DescriptorPoolSize(cStruct: $0) }
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkDescriptorPoolCreateInfo>) throws -> R) rethrows -> R {
        try self.poolSizes.withCStructBufferPointer { ptr_poolSizes in
            var cStruct = VkDescriptorPoolCreateInfo()
            cStruct.sType = VK_STRUCTURE_TYPE_DESCRIPTOR_POOL_CREATE_INFO
            cStruct.pNext = nil
            cStruct.flags = self.flags.rawValue
            cStruct.maxSets = self.maxSets
            cStruct.poolSizeCount = UInt32(ptr_poolSizes.count)
            cStruct.pPoolSizes = ptr_poolSizes.baseAddress
            return try body(&cStruct)
        }
    }
}

public struct DescriptorSetAllocateInfo: CStructConvertible {
    typealias CStruct = VkDescriptorSetAllocateInfo

    public let descriptorPool: DescriptorPool
    public let setLayouts: Array<DescriptorSetLayout>

    public init(descriptorPool: DescriptorPool, setLayouts: Array<DescriptorSetLayout>) {
        self.descriptorPool = descriptorPool
        self.setLayouts = setLayouts
    }


    func withCStruct<R>(_ body: (UnsafePointer<VkDescriptorSetAllocateInfo>) throws -> R) rethrows -> R {
        try self.setLayouts.map{ $0.handle }.withUnsafeBufferPointer { ptr_setLayouts in
            var cStruct = VkDescriptorSetAllocateInfo()
            cStruct.sType = VK_STRUCTURE_TYPE_DESCRIPTOR_SET_ALLOCATE_INFO
            cStruct.pNext = nil
            cStruct.descriptorPool = self.descriptorPool.handle
            cStruct.descriptorSetCount = UInt32(ptr_setLayouts.count)
            cStruct.pSetLayouts = ptr_setLayouts.baseAddress
            return try body(&cStruct)
        }
    }
}

public struct SpecializationMapEntry: CStructConvertible {
    typealias CStruct = VkSpecializationMapEntry

    public let constantID: UInt32
    public let offset: UInt32
    public let size: Int

    public init(constantID: UInt32, offset: UInt32, size: Int) {
        self.constantID = constantID
        self.offset = offset
        self.size = size
    }

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

public struct SpecializationInfo: CStructConvertible {
    typealias CStruct = VkSpecializationInfo

    public let mapEntries: Array<SpecializationMapEntry>
    public let dataSize: Int
    public let data: UnsafeRawPointer

    public init(mapEntries: Array<SpecializationMapEntry>, dataSize: Int, data: UnsafeRawPointer) {
        self.mapEntries = mapEntries
        self.dataSize = dataSize
        self.data = data
    }

    init(cStruct: VkSpecializationInfo) {
        self.mapEntries = UnsafeBufferPointer(start: cStruct.pMapEntries, count: Int(cStruct.mapEntryCount)).map{ SpecializationMapEntry(cStruct: $0) }
        self.dataSize = cStruct.dataSize
        self.data = cStruct.pData
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkSpecializationInfo>) throws -> R) rethrows -> R {
        try self.mapEntries.withCStructBufferPointer { ptr_mapEntries in
            var cStruct = VkSpecializationInfo()
            cStruct.mapEntryCount = UInt32(ptr_mapEntries.count)
            cStruct.pMapEntries = ptr_mapEntries.baseAddress
            cStruct.dataSize = self.dataSize
            cStruct.pData = self.data
            return try body(&cStruct)
        }
    }
}

public struct PipelineShaderStageCreateInfo: CStructConvertible {
    typealias CStruct = VkPipelineShaderStageCreateInfo

    public let flags: PipelineShaderStageCreateFlags
    public let stage: ShaderStageFlags
    public let module: ShaderModule
    public let name: String
    public let specializationInfo: SpecializationInfo?

    public init(flags: PipelineShaderStageCreateFlags, stage: ShaderStageFlags, module: ShaderModule, name: String, specializationInfo: SpecializationInfo?) {
        self.flags = flags
        self.stage = stage
        self.module = module
        self.name = name
        self.specializationInfo = specializationInfo
    }


    func withCStruct<R>(_ body: (UnsafePointer<VkPipelineShaderStageCreateInfo>) throws -> R) rethrows -> R {
        try self.name.withCString { cString_name in
            try self.specializationInfo.withOptionalCStruct { ptr_specializationInfo in
                var cStruct = VkPipelineShaderStageCreateInfo()
                cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_CREATE_INFO
                cStruct.pNext = nil
                cStruct.flags = self.flags.rawValue
                cStruct.stage = VkShaderStageFlagBits(rawValue: self.stage.rawValue)
                cStruct.module = self.module.handle
                cStruct.pName = cString_name
                cStruct.pSpecializationInfo = ptr_specializationInfo
                return try body(&cStruct)
            }
        }
    }
}

public struct ComputePipelineCreateInfo: CStructConvertible {
    typealias CStruct = VkComputePipelineCreateInfo

    public let flags: PipelineCreateFlags
    public let stage: PipelineShaderStageCreateInfo
    public let layout: PipelineLayout
    public let basePipelineHandle: Pipeline?
    public let basePipelineIndex: Int32

    public init(flags: PipelineCreateFlags, stage: PipelineShaderStageCreateInfo, layout: PipelineLayout, basePipelineHandle: Pipeline?, basePipelineIndex: Int32) {
        self.flags = flags
        self.stage = stage
        self.layout = layout
        self.basePipelineHandle = basePipelineHandle
        self.basePipelineIndex = basePipelineIndex
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

public struct VertexInputBindingDescription: CStructConvertible {
    typealias CStruct = VkVertexInputBindingDescription

    public let binding: UInt32
    public let stride: UInt32
    public let inputRate: VertexInputRate

    public init(binding: UInt32, stride: UInt32, inputRate: VertexInputRate) {
        self.binding = binding
        self.stride = stride
        self.inputRate = inputRate
    }

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

public struct VertexInputAttributeDescription: CStructConvertible {
    typealias CStruct = VkVertexInputAttributeDescription

    public let location: UInt32
    public let binding: UInt32
    public let format: Format
    public let offset: UInt32

    public init(location: UInt32, binding: UInt32, format: Format, offset: UInt32) {
        self.location = location
        self.binding = binding
        self.format = format
        self.offset = offset
    }

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

public struct PipelineVertexInputStateCreateInfo: CStructConvertible {
    typealias CStruct = VkPipelineVertexInputStateCreateInfo

    public let flags: PipelineVertexInputStateCreateFlags
    public let vertexBindingDescriptions: Array<VertexInputBindingDescription>
    public let vertexAttributeDescriptions: Array<VertexInputAttributeDescription>

    public init(flags: PipelineVertexInputStateCreateFlags, vertexBindingDescriptions: Array<VertexInputBindingDescription>, vertexAttributeDescriptions: Array<VertexInputAttributeDescription>) {
        self.flags = flags
        self.vertexBindingDescriptions = vertexBindingDescriptions
        self.vertexAttributeDescriptions = vertexAttributeDescriptions
    }

    init(cStruct: VkPipelineVertexInputStateCreateInfo) {
        self.flags = PipelineVertexInputStateCreateFlags(rawValue: cStruct.flags)
        self.vertexBindingDescriptions = UnsafeBufferPointer(start: cStruct.pVertexBindingDescriptions, count: Int(cStruct.vertexBindingDescriptionCount)).map{ VertexInputBindingDescription(cStruct: $0) }
        self.vertexAttributeDescriptions = UnsafeBufferPointer(start: cStruct.pVertexAttributeDescriptions, count: Int(cStruct.vertexAttributeDescriptionCount)).map{ VertexInputAttributeDescription(cStruct: $0) }
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPipelineVertexInputStateCreateInfo>) throws -> R) rethrows -> R {
        try self.vertexBindingDescriptions.withCStructBufferPointer { ptr_vertexBindingDescriptions in
            try self.vertexAttributeDescriptions.withCStructBufferPointer { ptr_vertexAttributeDescriptions in
                var cStruct = VkPipelineVertexInputStateCreateInfo()
                cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_VERTEX_INPUT_STATE_CREATE_INFO
                cStruct.pNext = nil
                cStruct.flags = self.flags.rawValue
                cStruct.vertexBindingDescriptionCount = UInt32(ptr_vertexBindingDescriptions.count)
                cStruct.pVertexBindingDescriptions = ptr_vertexBindingDescriptions.baseAddress
                cStruct.vertexAttributeDescriptionCount = UInt32(ptr_vertexAttributeDescriptions.count)
                cStruct.pVertexAttributeDescriptions = ptr_vertexAttributeDescriptions.baseAddress
                return try body(&cStruct)
            }
        }
    }
}

public struct PipelineInputAssemblyStateCreateInfo: CStructConvertible {
    typealias CStruct = VkPipelineInputAssemblyStateCreateInfo

    public let flags: PipelineInputAssemblyStateCreateFlags
    public let topology: PrimitiveTopology
    public let primitiveRestartEnable: Bool

    public init(flags: PipelineInputAssemblyStateCreateFlags, topology: PrimitiveTopology, primitiveRestartEnable: Bool) {
        self.flags = flags
        self.topology = topology
        self.primitiveRestartEnable = primitiveRestartEnable
    }

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

public struct PipelineTessellationStateCreateInfo: CStructConvertible {
    typealias CStruct = VkPipelineTessellationStateCreateInfo

    public let flags: PipelineTessellationStateCreateFlags
    public let patchControlPoints: UInt32

    public init(flags: PipelineTessellationStateCreateFlags, patchControlPoints: UInt32) {
        self.flags = flags
        self.patchControlPoints = patchControlPoints
    }

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

public struct PipelineViewportStateCreateInfo: CStructConvertible {
    typealias CStruct = VkPipelineViewportStateCreateInfo

    public let flags: PipelineViewportStateCreateFlags
    public let viewports: Array<Viewport>?
    public let scissors: Array<Rect2D>?

    public init(flags: PipelineViewportStateCreateFlags, viewports: Array<Viewport>?, scissors: Array<Rect2D>?) {
        self.flags = flags
        self.viewports = viewports
        self.scissors = scissors
    }

    init(cStruct: VkPipelineViewportStateCreateInfo) {
        self.flags = PipelineViewportStateCreateFlags(rawValue: cStruct.flags)
        self.viewports = (cStruct.pViewports != nil) ? UnsafeBufferPointer(start: cStruct.pViewports, count: Int(cStruct.viewportCount)).map{ Viewport(cStruct: $0) } : nil
        self.scissors = (cStruct.pScissors != nil) ? UnsafeBufferPointer(start: cStruct.pScissors, count: Int(cStruct.scissorCount)).map{ Rect2D(cStruct: $0) } : nil
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPipelineViewportStateCreateInfo>) throws -> R) rethrows -> R {
        try self.viewports.withOptionalCStructBufferPointer { ptr_viewports in
            try self.scissors.withOptionalCStructBufferPointer { ptr_scissors in
                var cStruct = VkPipelineViewportStateCreateInfo()
                cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_STATE_CREATE_INFO
                cStruct.pNext = nil
                cStruct.flags = self.flags.rawValue
                cStruct.viewportCount = UInt32(ptr_viewports.count)
                cStruct.pViewports = ptr_viewports.baseAddress
                cStruct.scissorCount = UInt32(ptr_scissors.count)
                cStruct.pScissors = ptr_scissors.baseAddress
                return try body(&cStruct)
            }
        }
    }
}

public struct PipelineRasterizationStateCreateInfo: CStructConvertible {
    typealias CStruct = VkPipelineRasterizationStateCreateInfo

    public let flags: PipelineRasterizationStateCreateFlags
    public let depthClampEnable: Bool
    public let rasterizerDiscardEnable: Bool
    public let polygonMode: PolygonMode
    public let cullMode: CullModeFlags
    public let frontFace: FrontFace
    public let depthBiasEnable: Bool
    public let depthBiasConstantFactor: Float
    public let depthBiasClamp: Float
    public let depthBiasSlopeFactor: Float
    public let lineWidth: Float

    public init(flags: PipelineRasterizationStateCreateFlags, depthClampEnable: Bool, rasterizerDiscardEnable: Bool, polygonMode: PolygonMode, cullMode: CullModeFlags, frontFace: FrontFace, depthBiasEnable: Bool, depthBiasConstantFactor: Float, depthBiasClamp: Float, depthBiasSlopeFactor: Float, lineWidth: Float) {
        self.flags = flags
        self.depthClampEnable = depthClampEnable
        self.rasterizerDiscardEnable = rasterizerDiscardEnable
        self.polygonMode = polygonMode
        self.cullMode = cullMode
        self.frontFace = frontFace
        self.depthBiasEnable = depthBiasEnable
        self.depthBiasConstantFactor = depthBiasConstantFactor
        self.depthBiasClamp = depthBiasClamp
        self.depthBiasSlopeFactor = depthBiasSlopeFactor
        self.lineWidth = lineWidth
    }

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

public struct PipelineMultisampleStateCreateInfo: CStructConvertible {
    typealias CStruct = VkPipelineMultisampleStateCreateInfo

    public let flags: PipelineMultisampleStateCreateFlags
    public let rasterizationSamples: SampleCountFlags
    public let sampleShadingEnable: Bool
    public let minSampleShading: Float
    public let sampleMask: UnsafePointer<VkSampleMask>
    public let alphaToCoverageEnable: Bool
    public let alphaToOneEnable: Bool

    public init(flags: PipelineMultisampleStateCreateFlags, rasterizationSamples: SampleCountFlags, sampleShadingEnable: Bool, minSampleShading: Float, sampleMask: UnsafePointer<VkSampleMask>, alphaToCoverageEnable: Bool, alphaToOneEnable: Bool) {
        self.flags = flags
        self.rasterizationSamples = rasterizationSamples
        self.sampleShadingEnable = sampleShadingEnable
        self.minSampleShading = minSampleShading
        self.sampleMask = sampleMask
        self.alphaToCoverageEnable = alphaToCoverageEnable
        self.alphaToOneEnable = alphaToOneEnable
    }

    init(cStruct: VkPipelineMultisampleStateCreateInfo) {
        self.flags = PipelineMultisampleStateCreateFlags(rawValue: cStruct.flags)
        self.rasterizationSamples = SampleCountFlags(rawValue: cStruct.rasterizationSamples.rawValue)
        self.sampleShadingEnable = cStruct.sampleShadingEnable == VK_TRUE
        self.minSampleShading = cStruct.minSampleShading
        self.sampleMask = cStruct.pSampleMask
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
        cStruct.pSampleMask = self.sampleMask
        cStruct.alphaToCoverageEnable = VkBool32(self.alphaToCoverageEnable ? VK_TRUE : VK_FALSE)
        cStruct.alphaToOneEnable = VkBool32(self.alphaToOneEnable ? VK_TRUE : VK_FALSE)
        return try body(&cStruct)
    }
}

public struct PipelineColorBlendAttachmentState: CStructConvertible {
    typealias CStruct = VkPipelineColorBlendAttachmentState

    public let blendEnable: Bool
    public let srcColorBlendFactor: BlendFactor
    public let dstColorBlendFactor: BlendFactor
    public let colorBlendOp: BlendOp
    public let srcAlphaBlendFactor: BlendFactor
    public let dstAlphaBlendFactor: BlendFactor
    public let alphaBlendOp: BlendOp
    public let colorWriteMask: ColorComponentFlags

    public init(blendEnable: Bool, srcColorBlendFactor: BlendFactor, dstColorBlendFactor: BlendFactor, colorBlendOp: BlendOp, srcAlphaBlendFactor: BlendFactor, dstAlphaBlendFactor: BlendFactor, alphaBlendOp: BlendOp, colorWriteMask: ColorComponentFlags) {
        self.blendEnable = blendEnable
        self.srcColorBlendFactor = srcColorBlendFactor
        self.dstColorBlendFactor = dstColorBlendFactor
        self.colorBlendOp = colorBlendOp
        self.srcAlphaBlendFactor = srcAlphaBlendFactor
        self.dstAlphaBlendFactor = dstAlphaBlendFactor
        self.alphaBlendOp = alphaBlendOp
        self.colorWriteMask = colorWriteMask
    }

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

public struct PipelineColorBlendStateCreateInfo: CStructConvertible {
    typealias CStruct = VkPipelineColorBlendStateCreateInfo

    public let flags: PipelineColorBlendStateCreateFlags
    public let logicOpEnable: Bool
    public let logicOp: LogicOp
    public let attachments: Array<PipelineColorBlendAttachmentState>
    public let blendConstants: (Float, Float, Float, Float)

    public init(flags: PipelineColorBlendStateCreateFlags, logicOpEnable: Bool, logicOp: LogicOp, attachments: Array<PipelineColorBlendAttachmentState>, blendConstants: (Float, Float, Float, Float)) {
        self.flags = flags
        self.logicOpEnable = logicOpEnable
        self.logicOp = logicOp
        self.attachments = attachments
        self.blendConstants = blendConstants
    }

    init(cStruct: VkPipelineColorBlendStateCreateInfo) {
        self.flags = PipelineColorBlendStateCreateFlags(rawValue: cStruct.flags)
        self.logicOpEnable = cStruct.logicOpEnable == VK_TRUE
        self.logicOp = LogicOp(rawValue: cStruct.logicOp.rawValue)!
        self.attachments = UnsafeBufferPointer(start: cStruct.pAttachments, count: Int(cStruct.attachmentCount)).map{ PipelineColorBlendAttachmentState(cStruct: $0) }
        self.blendConstants = cStruct.blendConstants
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPipelineColorBlendStateCreateInfo>) throws -> R) rethrows -> R {
        try self.attachments.withCStructBufferPointer { ptr_attachments in
            var cStruct = VkPipelineColorBlendStateCreateInfo()
            cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_COLOR_BLEND_STATE_CREATE_INFO
            cStruct.pNext = nil
            cStruct.flags = self.flags.rawValue
            cStruct.logicOpEnable = VkBool32(self.logicOpEnable ? VK_TRUE : VK_FALSE)
            cStruct.logicOp = VkLogicOp(rawValue: self.logicOp.rawValue)
            cStruct.attachmentCount = UInt32(ptr_attachments.count)
            cStruct.pAttachments = ptr_attachments.baseAddress
            cStruct.blendConstants = self.blendConstants
            return try body(&cStruct)
        }
    }
}

public struct PipelineDynamicStateCreateInfo: CStructConvertible {
    typealias CStruct = VkPipelineDynamicStateCreateInfo

    public let flags: PipelineDynamicStateCreateFlags
    public let dynamicStates: Array<DynamicState>

    public init(flags: PipelineDynamicStateCreateFlags, dynamicStates: Array<DynamicState>) {
        self.flags = flags
        self.dynamicStates = dynamicStates
    }

    init(cStruct: VkPipelineDynamicStateCreateInfo) {
        self.flags = PipelineDynamicStateCreateFlags(rawValue: cStruct.flags)
        self.dynamicStates = UnsafeBufferPointer(start: cStruct.pDynamicStates, count: Int(cStruct.dynamicStateCount)).map{ DynamicState(rawValue: $0.rawValue)! }
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPipelineDynamicStateCreateInfo>) throws -> R) rethrows -> R {
        try self.dynamicStates.map{ VkDynamicState(rawValue: $0.rawValue) }.withUnsafeBufferPointer { ptr_dynamicStates in
            var cStruct = VkPipelineDynamicStateCreateInfo()
            cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_DYNAMIC_STATE_CREATE_INFO
            cStruct.pNext = nil
            cStruct.flags = self.flags.rawValue
            cStruct.dynamicStateCount = UInt32(ptr_dynamicStates.count)
            cStruct.pDynamicStates = ptr_dynamicStates.baseAddress
            return try body(&cStruct)
        }
    }
}

public struct StencilOpState: CStructConvertible {
    typealias CStruct = VkStencilOpState

    public let failOp: StencilOp
    public let passOp: StencilOp
    public let depthFailOp: StencilOp
    public let compareOp: CompareOp
    public let compareMask: UInt32
    public let writeMask: UInt32
    public let reference: UInt32

    public init(failOp: StencilOp, passOp: StencilOp, depthFailOp: StencilOp, compareOp: CompareOp, compareMask: UInt32, writeMask: UInt32, reference: UInt32) {
        self.failOp = failOp
        self.passOp = passOp
        self.depthFailOp = depthFailOp
        self.compareOp = compareOp
        self.compareMask = compareMask
        self.writeMask = writeMask
        self.reference = reference
    }

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

public struct PipelineDepthStencilStateCreateInfo: CStructConvertible {
    typealias CStruct = VkPipelineDepthStencilStateCreateInfo

    public let flags: PipelineDepthStencilStateCreateFlags
    public let depthTestEnable: Bool
    public let depthWriteEnable: Bool
    public let depthCompareOp: CompareOp
    public let depthBoundsTestEnable: Bool
    public let stencilTestEnable: Bool
    public let front: StencilOpState
    public let back: StencilOpState
    public let minDepthBounds: Float
    public let maxDepthBounds: Float

    public init(flags: PipelineDepthStencilStateCreateFlags, depthTestEnable: Bool, depthWriteEnable: Bool, depthCompareOp: CompareOp, depthBoundsTestEnable: Bool, stencilTestEnable: Bool, front: StencilOpState, back: StencilOpState, minDepthBounds: Float, maxDepthBounds: Float) {
        self.flags = flags
        self.depthTestEnable = depthTestEnable
        self.depthWriteEnable = depthWriteEnable
        self.depthCompareOp = depthCompareOp
        self.depthBoundsTestEnable = depthBoundsTestEnable
        self.stencilTestEnable = stencilTestEnable
        self.front = front
        self.back = back
        self.minDepthBounds = minDepthBounds
        self.maxDepthBounds = maxDepthBounds
    }

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

public struct GraphicsPipelineCreateInfo: CStructConvertible {
    typealias CStruct = VkGraphicsPipelineCreateInfo

    public let flags: PipelineCreateFlags
    public let stages: Array<PipelineShaderStageCreateInfo>
    public let vertexInputState: PipelineVertexInputStateCreateInfo?
    public let inputAssemblyState: PipelineInputAssemblyStateCreateInfo?
    public let tessellationState: PipelineTessellationStateCreateInfo?
    public let viewportState: PipelineViewportStateCreateInfo?
    public let rasterizationState: PipelineRasterizationStateCreateInfo
    public let multisampleState: PipelineMultisampleStateCreateInfo?
    public let depthStencilState: PipelineDepthStencilStateCreateInfo?
    public let colorBlendState: PipelineColorBlendStateCreateInfo?
    public let dynamicState: PipelineDynamicStateCreateInfo?
    public let layout: PipelineLayout
    public let renderPass: RenderPass
    public let subpass: UInt32
    public let basePipelineHandle: Pipeline?
    public let basePipelineIndex: Int32

    public init(flags: PipelineCreateFlags, stages: Array<PipelineShaderStageCreateInfo>, vertexInputState: PipelineVertexInputStateCreateInfo?, inputAssemblyState: PipelineInputAssemblyStateCreateInfo?, tessellationState: PipelineTessellationStateCreateInfo?, viewportState: PipelineViewportStateCreateInfo?, rasterizationState: PipelineRasterizationStateCreateInfo, multisampleState: PipelineMultisampleStateCreateInfo?, depthStencilState: PipelineDepthStencilStateCreateInfo?, colorBlendState: PipelineColorBlendStateCreateInfo?, dynamicState: PipelineDynamicStateCreateInfo?, layout: PipelineLayout, renderPass: RenderPass, subpass: UInt32, basePipelineHandle: Pipeline?, basePipelineIndex: Int32) {
        self.flags = flags
        self.stages = stages
        self.vertexInputState = vertexInputState
        self.inputAssemblyState = inputAssemblyState
        self.tessellationState = tessellationState
        self.viewportState = viewportState
        self.rasterizationState = rasterizationState
        self.multisampleState = multisampleState
        self.depthStencilState = depthStencilState
        self.colorBlendState = colorBlendState
        self.dynamicState = dynamicState
        self.layout = layout
        self.renderPass = renderPass
        self.subpass = subpass
        self.basePipelineHandle = basePipelineHandle
        self.basePipelineIndex = basePipelineIndex
    }


    func withCStruct<R>(_ body: (UnsafePointer<VkGraphicsPipelineCreateInfo>) throws -> R) rethrows -> R {
        try self.stages.withCStructBufferPointer { ptr_stages in
            try self.vertexInputState.withOptionalCStruct { ptr_vertexInputState in
                try self.inputAssemblyState.withOptionalCStruct { ptr_inputAssemblyState in
                    try self.tessellationState.withOptionalCStruct { ptr_tessellationState in
                        try self.viewportState.withOptionalCStruct { ptr_viewportState in
                            try self.rasterizationState.withCStruct { ptr_rasterizationState in
                                try self.multisampleState.withOptionalCStruct { ptr_multisampleState in
                                    try self.depthStencilState.withOptionalCStruct { ptr_depthStencilState in
                                        try self.colorBlendState.withOptionalCStruct { ptr_colorBlendState in
                                            try self.dynamicState.withOptionalCStruct { ptr_dynamicState in
                                                var cStruct = VkGraphicsPipelineCreateInfo()
                                                cStruct.sType = VK_STRUCTURE_TYPE_GRAPHICS_PIPELINE_CREATE_INFO
                                                cStruct.pNext = nil
                                                cStruct.flags = self.flags.rawValue
                                                cStruct.stageCount = UInt32(ptr_stages.count)
                                                cStruct.pStages = ptr_stages.baseAddress
                                                cStruct.pVertexInputState = ptr_vertexInputState
                                                cStruct.pInputAssemblyState = ptr_inputAssemblyState
                                                cStruct.pTessellationState = ptr_tessellationState
                                                cStruct.pViewportState = ptr_viewportState
                                                cStruct.pRasterizationState = ptr_rasterizationState
                                                cStruct.pMultisampleState = ptr_multisampleState
                                                cStruct.pDepthStencilState = ptr_depthStencilState
                                                cStruct.pColorBlendState = ptr_colorBlendState
                                                cStruct.pDynamicState = ptr_dynamicState
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

public struct PipelineCacheCreateInfo: CStructConvertible {
    typealias CStruct = VkPipelineCacheCreateInfo

    public let flags: PipelineCacheCreateFlags
    public let initialDataSize: Int
    public let initialData: UnsafeRawPointer

    public init(flags: PipelineCacheCreateFlags, initialDataSize: Int, initialData: UnsafeRawPointer) {
        self.flags = flags
        self.initialDataSize = initialDataSize
        self.initialData = initialData
    }

    init(cStruct: VkPipelineCacheCreateInfo) {
        self.flags = PipelineCacheCreateFlags(rawValue: cStruct.flags)
        self.initialDataSize = cStruct.initialDataSize
        self.initialData = cStruct.pInitialData
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPipelineCacheCreateInfo>) throws -> R) rethrows -> R {
        var cStruct = VkPipelineCacheCreateInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_CACHE_CREATE_INFO
        cStruct.pNext = nil
        cStruct.flags = self.flags.rawValue
        cStruct.initialDataSize = self.initialDataSize
        cStruct.pInitialData = self.initialData
        return try body(&cStruct)
    }
}

public struct PushConstantRange: CStructConvertible {
    typealias CStruct = VkPushConstantRange

    public let stageFlags: ShaderStageFlags
    public let offset: UInt32
    public let size: UInt32

    public init(stageFlags: ShaderStageFlags, offset: UInt32, size: UInt32) {
        self.stageFlags = stageFlags
        self.offset = offset
        self.size = size
    }

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

public struct PipelineLayoutCreateInfo: CStructConvertible {
    typealias CStruct = VkPipelineLayoutCreateInfo

    public let flags: PipelineLayoutCreateFlags
    public let setLayouts: Array<DescriptorSetLayout>
    public let pushConstantRanges: Array<PushConstantRange>

    public init(flags: PipelineLayoutCreateFlags, setLayouts: Array<DescriptorSetLayout>, pushConstantRanges: Array<PushConstantRange>) {
        self.flags = flags
        self.setLayouts = setLayouts
        self.pushConstantRanges = pushConstantRanges
    }


    func withCStruct<R>(_ body: (UnsafePointer<VkPipelineLayoutCreateInfo>) throws -> R) rethrows -> R {
        try self.setLayouts.map{ $0.handle }.withUnsafeBufferPointer { ptr_setLayouts in
            try self.pushConstantRanges.withCStructBufferPointer { ptr_pushConstantRanges in
                var cStruct = VkPipelineLayoutCreateInfo()
                cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_LAYOUT_CREATE_INFO
                cStruct.pNext = nil
                cStruct.flags = self.flags.rawValue
                cStruct.setLayoutCount = UInt32(ptr_setLayouts.count)
                cStruct.pSetLayouts = ptr_setLayouts.baseAddress
                cStruct.pushConstantRangeCount = UInt32(ptr_pushConstantRanges.count)
                cStruct.pPushConstantRanges = ptr_pushConstantRanges.baseAddress
                return try body(&cStruct)
            }
        }
    }
}

public struct SamplerCreateInfo: CStructConvertible {
    typealias CStruct = VkSamplerCreateInfo

    public let flags: SamplerCreateFlags
    public let magFilter: Filter
    public let minFilter: Filter
    public let mipmapMode: SamplerMipmapMode
    public let addressModeU: SamplerAddressMode
    public let addressModeV: SamplerAddressMode
    public let addressModeW: SamplerAddressMode
    public let mipLodBias: Float
    public let anisotropyEnable: Bool
    public let maxAnisotropy: Float
    public let compareEnable: Bool
    public let compareOp: CompareOp
    public let minLod: Float
    public let maxLod: Float
    public let borderColor: BorderColor
    public let unnormalizedCoordinates: Bool

    public init(flags: SamplerCreateFlags, magFilter: Filter, minFilter: Filter, mipmapMode: SamplerMipmapMode, addressModeU: SamplerAddressMode, addressModeV: SamplerAddressMode, addressModeW: SamplerAddressMode, mipLodBias: Float, anisotropyEnable: Bool, maxAnisotropy: Float, compareEnable: Bool, compareOp: CompareOp, minLod: Float, maxLod: Float, borderColor: BorderColor, unnormalizedCoordinates: Bool) {
        self.flags = flags
        self.magFilter = magFilter
        self.minFilter = minFilter
        self.mipmapMode = mipmapMode
        self.addressModeU = addressModeU
        self.addressModeV = addressModeV
        self.addressModeW = addressModeW
        self.mipLodBias = mipLodBias
        self.anisotropyEnable = anisotropyEnable
        self.maxAnisotropy = maxAnisotropy
        self.compareEnable = compareEnable
        self.compareOp = compareOp
        self.minLod = minLod
        self.maxLod = maxLod
        self.borderColor = borderColor
        self.unnormalizedCoordinates = unnormalizedCoordinates
    }

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

public struct CommandPoolCreateInfo: CStructConvertible {
    typealias CStruct = VkCommandPoolCreateInfo

    public let flags: CommandPoolCreateFlags
    public let queueFamilyIndex: UInt32

    public init(flags: CommandPoolCreateFlags, queueFamilyIndex: UInt32) {
        self.flags = flags
        self.queueFamilyIndex = queueFamilyIndex
    }

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

public struct CommandBufferAllocateInfo: CStructConvertible {
    typealias CStruct = VkCommandBufferAllocateInfo

    public let commandPool: CommandPool
    public let level: CommandBufferLevel
    public let commandBufferCount: UInt32

    public init(commandPool: CommandPool, level: CommandBufferLevel, commandBufferCount: UInt32) {
        self.commandPool = commandPool
        self.level = level
        self.commandBufferCount = commandBufferCount
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

public struct CommandBufferInheritanceInfo: CStructConvertible {
    typealias CStruct = VkCommandBufferInheritanceInfo

    public let renderPass: RenderPass?
    public let subpass: UInt32
    public let framebuffer: Framebuffer?
    public let occlusionQueryEnable: Bool
    public let queryFlags: QueryControlFlags
    public let pipelineStatistics: QueryPipelineStatisticFlags

    public init(renderPass: RenderPass?, subpass: UInt32, framebuffer: Framebuffer?, occlusionQueryEnable: Bool, queryFlags: QueryControlFlags, pipelineStatistics: QueryPipelineStatisticFlags) {
        self.renderPass = renderPass
        self.subpass = subpass
        self.framebuffer = framebuffer
        self.occlusionQueryEnable = occlusionQueryEnable
        self.queryFlags = queryFlags
        self.pipelineStatistics = pipelineStatistics
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

public struct CommandBufferBeginInfo: CStructConvertible {
    typealias CStruct = VkCommandBufferBeginInfo

    public let flags: CommandBufferUsageFlags
    public let inheritanceInfo: CommandBufferInheritanceInfo?

    public init(flags: CommandBufferUsageFlags, inheritanceInfo: CommandBufferInheritanceInfo?) {
        self.flags = flags
        self.inheritanceInfo = inheritanceInfo
    }


    func withCStruct<R>(_ body: (UnsafePointer<VkCommandBufferBeginInfo>) throws -> R) rethrows -> R {
        try self.inheritanceInfo.withOptionalCStruct { ptr_inheritanceInfo in
            var cStruct = VkCommandBufferBeginInfo()
            cStruct.sType = VK_STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO
            cStruct.pNext = nil
            cStruct.flags = self.flags.rawValue
            cStruct.pInheritanceInfo = ptr_inheritanceInfo
            return try body(&cStruct)
        }
    }
}

public struct RenderPassBeginInfo: CStructConvertible {
    typealias CStruct = VkRenderPassBeginInfo

    public let renderPass: RenderPass
    public let framebuffer: Framebuffer
    public let renderArea: Rect2D
    public let clearValues: Array<VkClearValue>

    public init(renderPass: RenderPass, framebuffer: Framebuffer, renderArea: Rect2D, clearValues: Array<VkClearValue>) {
        self.renderPass = renderPass
        self.framebuffer = framebuffer
        self.renderArea = renderArea
        self.clearValues = clearValues
    }


    func withCStruct<R>(_ body: (UnsafePointer<VkRenderPassBeginInfo>) throws -> R) rethrows -> R {
        try self.renderArea.withCStruct { ptr_renderArea in
            try self.clearValues.withUnsafeBufferPointer { ptr_clearValues in
                var cStruct = VkRenderPassBeginInfo()
                cStruct.sType = VK_STRUCTURE_TYPE_RENDER_PASS_BEGIN_INFO
                cStruct.pNext = nil
                cStruct.renderPass = self.renderPass.handle
                cStruct.framebuffer = self.framebuffer.handle
                cStruct.renderArea = ptr_renderArea.pointee
                cStruct.clearValueCount = UInt32(ptr_clearValues.count)
                cStruct.pClearValues = ptr_clearValues.baseAddress
                return try body(&cStruct)
            }
        }
    }
}

public struct ClearDepthStencilValue: CStructConvertible {
    typealias CStruct = VkClearDepthStencilValue

    public let depth: Float
    public let stencil: UInt32

    public init(depth: Float, stencil: UInt32) {
        self.depth = depth
        self.stencil = stencil
    }

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

public struct ClearAttachment: CStructConvertible {
    typealias CStruct = VkClearAttachment

    public let aspectMask: ImageAspectFlags
    public let colorAttachment: UInt32
    public let clearValue: VkClearValue

    public init(aspectMask: ImageAspectFlags, colorAttachment: UInt32, clearValue: VkClearValue) {
        self.aspectMask = aspectMask
        self.colorAttachment = colorAttachment
        self.clearValue = clearValue
    }

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

public struct AttachmentDescription: CStructConvertible {
    typealias CStruct = VkAttachmentDescription

    public let flags: AttachmentDescriptionFlags
    public let format: Format
    public let samples: SampleCountFlags
    public let loadOp: AttachmentLoadOp
    public let storeOp: AttachmentStoreOp
    public let stencilLoadOp: AttachmentLoadOp
    public let stencilStoreOp: AttachmentStoreOp
    public let initialLayout: ImageLayout
    public let finalLayout: ImageLayout

    public init(flags: AttachmentDescriptionFlags, format: Format, samples: SampleCountFlags, loadOp: AttachmentLoadOp, storeOp: AttachmentStoreOp, stencilLoadOp: AttachmentLoadOp, stencilStoreOp: AttachmentStoreOp, initialLayout: ImageLayout, finalLayout: ImageLayout) {
        self.flags = flags
        self.format = format
        self.samples = samples
        self.loadOp = loadOp
        self.storeOp = storeOp
        self.stencilLoadOp = stencilLoadOp
        self.stencilStoreOp = stencilStoreOp
        self.initialLayout = initialLayout
        self.finalLayout = finalLayout
    }

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

public struct AttachmentReference: CStructConvertible {
    typealias CStruct = VkAttachmentReference

    public let attachment: UInt32
    public let layout: ImageLayout

    public init(attachment: UInt32, layout: ImageLayout) {
        self.attachment = attachment
        self.layout = layout
    }

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

public struct SubpassDescription: CStructConvertible {
    typealias CStruct = VkSubpassDescription

    public let flags: SubpassDescriptionFlags
    public let pipelineBindPoint: PipelineBindPoint
    public let inputAttachments: Array<AttachmentReference>
    public let colorAttachments: Array<AttachmentReference>
    public let resolveAttachments: Array<AttachmentReference>?
    public let depthStencilAttachment: AttachmentReference?
    public let preserveAttachments: Array<UInt32>

    public init(flags: SubpassDescriptionFlags, pipelineBindPoint: PipelineBindPoint, inputAttachments: Array<AttachmentReference>, colorAttachments: Array<AttachmentReference>, resolveAttachments: Array<AttachmentReference>?, depthStencilAttachment: AttachmentReference?, preserveAttachments: Array<UInt32>) {
        self.flags = flags
        self.pipelineBindPoint = pipelineBindPoint
        self.inputAttachments = inputAttachments
        self.colorAttachments = colorAttachments
        self.resolveAttachments = resolveAttachments
        self.depthStencilAttachment = depthStencilAttachment
        self.preserveAttachments = preserveAttachments
    }

    init(cStruct: VkSubpassDescription) {
        self.flags = SubpassDescriptionFlags(rawValue: cStruct.flags)
        self.pipelineBindPoint = PipelineBindPoint(rawValue: cStruct.pipelineBindPoint.rawValue)!
        self.inputAttachments = UnsafeBufferPointer(start: cStruct.pInputAttachments, count: Int(cStruct.inputAttachmentCount)).map{ AttachmentReference(cStruct: $0) }
        self.colorAttachments = UnsafeBufferPointer(start: cStruct.pColorAttachments, count: Int(cStruct.colorAttachmentCount)).map{ AttachmentReference(cStruct: $0) }
        self.resolveAttachments = (cStruct.pResolveAttachments != nil) ? UnsafeBufferPointer(start: cStruct.pResolveAttachments, count: Int(cStruct.colorAttachmentCount)).map{ AttachmentReference(cStruct: $0) } : nil
        self.depthStencilAttachment = (cStruct.pDepthStencilAttachment != nil) ? AttachmentReference(cStruct: cStruct.pDepthStencilAttachment.pointee) : nil
        self.preserveAttachments = Array(UnsafeBufferPointer(start: cStruct.pPreserveAttachments, count: Int(cStruct.preserveAttachmentCount)))
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkSubpassDescription>) throws -> R) rethrows -> R {
        try self.inputAttachments.withCStructBufferPointer { ptr_inputAttachments in
            try self.colorAttachments.withCStructBufferPointer { ptr_colorAttachments in
                try self.resolveAttachments.withOptionalCStructBufferPointer { ptr_resolveAttachments in
                    try self.depthStencilAttachment.withOptionalCStruct { ptr_depthStencilAttachment in
                        try self.preserveAttachments.withUnsafeBufferPointer { ptr_preserveAttachments in
                            var cStruct = VkSubpassDescription()
                            cStruct.flags = self.flags.rawValue
                            cStruct.pipelineBindPoint = VkPipelineBindPoint(rawValue: self.pipelineBindPoint.rawValue)
                            cStruct.inputAttachmentCount = UInt32(ptr_inputAttachments.count)
                            cStruct.pInputAttachments = ptr_inputAttachments.baseAddress
                            cStruct.colorAttachmentCount = UInt32(ptr_colorAttachments.count)
                            cStruct.pColorAttachments = ptr_colorAttachments.baseAddress
                            cStruct.pResolveAttachments = ptr_resolveAttachments.baseAddress
                            cStruct.pDepthStencilAttachment = ptr_depthStencilAttachment
                            cStruct.preserveAttachmentCount = UInt32(ptr_preserveAttachments.count)
                            cStruct.pPreserveAttachments = ptr_preserveAttachments.baseAddress
                            return try body(&cStruct)
                        }
                    }
                }
            }
        }
    }
}

public struct SubpassDependency: CStructConvertible {
    typealias CStruct = VkSubpassDependency

    public let srcSubpass: UInt32
    public let dstSubpass: UInt32
    public let srcStageMask: PipelineStageFlags
    public let dstStageMask: PipelineStageFlags
    public let srcAccessMask: AccessFlags
    public let dstAccessMask: AccessFlags
    public let dependencyFlags: DependencyFlags

    public init(srcSubpass: UInt32, dstSubpass: UInt32, srcStageMask: PipelineStageFlags, dstStageMask: PipelineStageFlags, srcAccessMask: AccessFlags, dstAccessMask: AccessFlags, dependencyFlags: DependencyFlags) {
        self.srcSubpass = srcSubpass
        self.dstSubpass = dstSubpass
        self.srcStageMask = srcStageMask
        self.dstStageMask = dstStageMask
        self.srcAccessMask = srcAccessMask
        self.dstAccessMask = dstAccessMask
        self.dependencyFlags = dependencyFlags
    }

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

public struct RenderPassCreateInfo: CStructConvertible {
    typealias CStruct = VkRenderPassCreateInfo

    public let flags: RenderPassCreateFlags
    public let attachments: Array<AttachmentDescription>
    public let subpasses: Array<SubpassDescription>
    public let dependencies: Array<SubpassDependency>

    public init(flags: RenderPassCreateFlags, attachments: Array<AttachmentDescription>, subpasses: Array<SubpassDescription>, dependencies: Array<SubpassDependency>) {
        self.flags = flags
        self.attachments = attachments
        self.subpasses = subpasses
        self.dependencies = dependencies
    }

    init(cStruct: VkRenderPassCreateInfo) {
        self.flags = RenderPassCreateFlags(rawValue: cStruct.flags)
        self.attachments = UnsafeBufferPointer(start: cStruct.pAttachments, count: Int(cStruct.attachmentCount)).map{ AttachmentDescription(cStruct: $0) }
        self.subpasses = UnsafeBufferPointer(start: cStruct.pSubpasses, count: Int(cStruct.subpassCount)).map{ SubpassDescription(cStruct: $0) }
        self.dependencies = UnsafeBufferPointer(start: cStruct.pDependencies, count: Int(cStruct.dependencyCount)).map{ SubpassDependency(cStruct: $0) }
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkRenderPassCreateInfo>) throws -> R) rethrows -> R {
        try self.attachments.withCStructBufferPointer { ptr_attachments in
            try self.subpasses.withCStructBufferPointer { ptr_subpasses in
                try self.dependencies.withCStructBufferPointer { ptr_dependencies in
                    var cStruct = VkRenderPassCreateInfo()
                    cStruct.sType = VK_STRUCTURE_TYPE_RENDER_PASS_CREATE_INFO
                    cStruct.pNext = nil
                    cStruct.flags = self.flags.rawValue
                    cStruct.attachmentCount = UInt32(ptr_attachments.count)
                    cStruct.pAttachments = ptr_attachments.baseAddress
                    cStruct.subpassCount = UInt32(ptr_subpasses.count)
                    cStruct.pSubpasses = ptr_subpasses.baseAddress
                    cStruct.dependencyCount = UInt32(ptr_dependencies.count)
                    cStruct.pDependencies = ptr_dependencies.baseAddress
                    return try body(&cStruct)
                }
            }
        }
    }
}

public struct EventCreateInfo: CStructConvertible {
    typealias CStruct = VkEventCreateInfo

    public let flags: EventCreateFlags

    public init(flags: EventCreateFlags) {
        self.flags = flags
    }

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

public struct FenceCreateInfo: CStructConvertible {
    typealias CStruct = VkFenceCreateInfo

    public let flags: FenceCreateFlags

    public init(flags: FenceCreateFlags) {
        self.flags = flags
    }

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

public struct SemaphoreCreateInfo: CStructConvertible {
    typealias CStruct = VkSemaphoreCreateInfo

    public let flags: SemaphoreCreateFlags

    public init(flags: SemaphoreCreateFlags) {
        self.flags = flags
    }

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

public struct QueryPoolCreateInfo: CStructConvertible {
    typealias CStruct = VkQueryPoolCreateInfo

    public let flags: QueryPoolCreateFlags
    public let queryType: QueryType
    public let queryCount: UInt32
    public let pipelineStatistics: QueryPipelineStatisticFlags

    public init(flags: QueryPoolCreateFlags, queryType: QueryType, queryCount: UInt32, pipelineStatistics: QueryPipelineStatisticFlags) {
        self.flags = flags
        self.queryType = queryType
        self.queryCount = queryCount
        self.pipelineStatistics = pipelineStatistics
    }

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

public struct FramebufferCreateInfo: CStructConvertible {
    typealias CStruct = VkFramebufferCreateInfo

    public let flags: FramebufferCreateFlags
    public let renderPass: RenderPass
    public let attachments: Array<ImageView>
    public let width: UInt32
    public let height: UInt32
    public let layers: UInt32

    public init(flags: FramebufferCreateFlags, renderPass: RenderPass, attachments: Array<ImageView>, width: UInt32, height: UInt32, layers: UInt32) {
        self.flags = flags
        self.renderPass = renderPass
        self.attachments = attachments
        self.width = width
        self.height = height
        self.layers = layers
    }


    func withCStruct<R>(_ body: (UnsafePointer<VkFramebufferCreateInfo>) throws -> R) rethrows -> R {
        try self.attachments.map{ $0.handle }.withUnsafeBufferPointer { ptr_attachments in
            var cStruct = VkFramebufferCreateInfo()
            cStruct.sType = VK_STRUCTURE_TYPE_FRAMEBUFFER_CREATE_INFO
            cStruct.pNext = nil
            cStruct.flags = self.flags.rawValue
            cStruct.renderPass = self.renderPass.handle
            cStruct.attachmentCount = UInt32(ptr_attachments.count)
            cStruct.pAttachments = ptr_attachments.baseAddress
            cStruct.width = self.width
            cStruct.height = self.height
            cStruct.layers = self.layers
            return try body(&cStruct)
        }
    }
}

public struct DrawIndirectCommand: CStructConvertible {
    typealias CStruct = VkDrawIndirectCommand

    public let vertexCount: UInt32
    public let instanceCount: UInt32
    public let firstVertex: UInt32
    public let firstInstance: UInt32

    public init(vertexCount: UInt32, instanceCount: UInt32, firstVertex: UInt32, firstInstance: UInt32) {
        self.vertexCount = vertexCount
        self.instanceCount = instanceCount
        self.firstVertex = firstVertex
        self.firstInstance = firstInstance
    }

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

public struct DrawIndexedIndirectCommand: CStructConvertible {
    typealias CStruct = VkDrawIndexedIndirectCommand

    public let indexCount: UInt32
    public let instanceCount: UInt32
    public let firstIndex: UInt32
    public let vertexOffset: Int32
    public let firstInstance: UInt32

    public init(indexCount: UInt32, instanceCount: UInt32, firstIndex: UInt32, vertexOffset: Int32, firstInstance: UInt32) {
        self.indexCount = indexCount
        self.instanceCount = instanceCount
        self.firstIndex = firstIndex
        self.vertexOffset = vertexOffset
        self.firstInstance = firstInstance
    }

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

public struct DispatchIndirectCommand: CStructConvertible {
    typealias CStruct = VkDispatchIndirectCommand

    public let x: UInt32
    public let y: UInt32
    public let z: UInt32

    public init(x: UInt32, y: UInt32, z: UInt32) {
        self.x = x
        self.y = y
        self.z = z
    }

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

public struct SubmitInfo: CStructConvertible {
    typealias CStruct = VkSubmitInfo

    public let waitSemaphores: Array<Semaphore>
    public let waitDstStageMask: Array<PipelineStageFlags>
    public let commandBuffers: Array<CommandBuffer>
    public let signalSemaphores: Array<Semaphore>

    public init(waitSemaphores: Array<Semaphore>, waitDstStageMask: Array<PipelineStageFlags>, commandBuffers: Array<CommandBuffer>, signalSemaphores: Array<Semaphore>) {
        self.waitSemaphores = waitSemaphores
        self.waitDstStageMask = waitDstStageMask
        self.commandBuffers = commandBuffers
        self.signalSemaphores = signalSemaphores
    }


    func withCStruct<R>(_ body: (UnsafePointer<VkSubmitInfo>) throws -> R) rethrows -> R {
        try self.waitSemaphores.map{ $0.handle }.withUnsafeBufferPointer { ptr_waitSemaphores in
            try self.waitDstStageMask.map{ $0.rawValue }.withUnsafeBufferPointer { ptr_waitDstStageMask in
                try self.commandBuffers.map{ $0.handle }.withUnsafeBufferPointer { ptr_commandBuffers in
                    try self.signalSemaphores.map{ $0.handle }.withUnsafeBufferPointer { ptr_signalSemaphores in
                        var cStruct = VkSubmitInfo()
                        cStruct.sType = VK_STRUCTURE_TYPE_SUBMIT_INFO
                        cStruct.pNext = nil
                        cStruct.waitSemaphoreCount = UInt32(ptr_waitSemaphores.count)
                        cStruct.pWaitSemaphores = ptr_waitSemaphores.baseAddress
                        cStruct.pWaitDstStageMask = ptr_waitDstStageMask.baseAddress
                        cStruct.commandBufferCount = UInt32(ptr_commandBuffers.count)
                        cStruct.pCommandBuffers = ptr_commandBuffers.baseAddress
                        cStruct.signalSemaphoreCount = UInt32(ptr_signalSemaphores.count)
                        cStruct.pSignalSemaphores = ptr_signalSemaphores.baseAddress
                        return try body(&cStruct)
                    }
                }
            }
        }
    }
}

public struct DisplayPropertiesKHR: CStructConvertible {
    typealias CStruct = VkDisplayPropertiesKHR

    public let display: DisplayKHR
    public let displayName: String
    public let physicalDimensions: Extent2D
    public let physicalResolution: Extent2D
    public let supportedTransforms: SurfaceTransformFlagsKHR
    public let planeReorderPossible: Bool
    public let persistentContent: Bool

    init(cStruct: VkDisplayPropertiesKHR, physicalDevice: PhysicalDevice) {
        self.display = DisplayKHR(handle: cStruct.display, physicalDevice: physicalDevice)
        self.displayName = String(cString: cStruct.displayName)
        self.physicalDimensions = Extent2D(cStruct: cStruct.physicalDimensions)
        self.physicalResolution = Extent2D(cStruct: cStruct.physicalResolution)
        self.supportedTransforms = SurfaceTransformFlagsKHR(rawValue: cStruct.supportedTransforms)
        self.planeReorderPossible = cStruct.planeReorderPossible == VK_TRUE
        self.persistentContent = cStruct.persistentContent == VK_TRUE
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

public struct DisplayPlanePropertiesKHR: CStructConvertible {
    typealias CStruct = VkDisplayPlanePropertiesKHR

    public let currentDisplay: DisplayKHR
    public let currentStackIndex: UInt32

    init(cStruct: VkDisplayPlanePropertiesKHR, physicalDevice: PhysicalDevice) {
        self.currentDisplay = DisplayKHR(handle: cStruct.currentDisplay, physicalDevice: physicalDevice)
        self.currentStackIndex = cStruct.currentStackIndex
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkDisplayPlanePropertiesKHR>) throws -> R) rethrows -> R {
        var cStruct = VkDisplayPlanePropertiesKHR()
        cStruct.currentDisplay = self.currentDisplay.handle
        cStruct.currentStackIndex = self.currentStackIndex
        return try body(&cStruct)
    }
}

public struct DisplayModeParametersKHR: CStructConvertible {
    typealias CStruct = VkDisplayModeParametersKHR

    public let visibleRegion: Extent2D
    public let refreshRate: UInt32

    public init(visibleRegion: Extent2D, refreshRate: UInt32) {
        self.visibleRegion = visibleRegion
        self.refreshRate = refreshRate
    }

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

public struct DisplayModePropertiesKHR: CStructConvertible {
    typealias CStruct = VkDisplayModePropertiesKHR

    public let displayMode: DisplayModeKHR
    public let parameters: DisplayModeParametersKHR

    init(cStruct: VkDisplayModePropertiesKHR, display: DisplayKHR) {
        self.displayMode = DisplayModeKHR(handle: cStruct.displayMode, display: display)
        self.parameters = DisplayModeParametersKHR(cStruct: cStruct.parameters)
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

public struct DisplayModeCreateInfoKHR: CStructConvertible {
    typealias CStruct = VkDisplayModeCreateInfoKHR

    public let flags: DisplayModeCreateFlagsKHR
    public let parameters: DisplayModeParametersKHR

    public init(flags: DisplayModeCreateFlagsKHR, parameters: DisplayModeParametersKHR) {
        self.flags = flags
        self.parameters = parameters
    }

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

public struct DisplayPlaneCapabilitiesKHR: CStructConvertible {
    typealias CStruct = VkDisplayPlaneCapabilitiesKHR

    public let supportedAlpha: DisplayPlaneAlphaFlagsKHR
    public let minSrcPosition: Offset2D
    public let maxSrcPosition: Offset2D
    public let minSrcExtent: Extent2D
    public let maxSrcExtent: Extent2D
    public let minDstPosition: Offset2D
    public let maxDstPosition: Offset2D
    public let minDstExtent: Extent2D
    public let maxDstExtent: Extent2D

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

public struct DisplaySurfaceCreateInfoKHR: CStructConvertible {
    typealias CStruct = VkDisplaySurfaceCreateInfoKHR

    public let flags: DisplaySurfaceCreateFlagsKHR
    public let displayMode: DisplayModeKHR
    public let planeIndex: UInt32
    public let planeStackIndex: UInt32
    public let transform: SurfaceTransformFlagsKHR
    public let globalAlpha: Float
    public let alphaMode: DisplayPlaneAlphaFlagsKHR
    public let imageExtent: Extent2D

    public init(flags: DisplaySurfaceCreateFlagsKHR, displayMode: DisplayModeKHR, planeIndex: UInt32, planeStackIndex: UInt32, transform: SurfaceTransformFlagsKHR, globalAlpha: Float, alphaMode: DisplayPlaneAlphaFlagsKHR, imageExtent: Extent2D) {
        self.flags = flags
        self.displayMode = displayMode
        self.planeIndex = planeIndex
        self.planeStackIndex = planeStackIndex
        self.transform = transform
        self.globalAlpha = globalAlpha
        self.alphaMode = alphaMode
        self.imageExtent = imageExtent
    }

    init(cStruct: VkDisplaySurfaceCreateInfoKHR, display: DisplayKHR) {
        self.flags = DisplaySurfaceCreateFlagsKHR(rawValue: cStruct.flags)
        self.displayMode = DisplayModeKHR(handle: cStruct.displayMode, display: display)
        self.planeIndex = cStruct.planeIndex
        self.planeStackIndex = cStruct.planeStackIndex
        self.transform = SurfaceTransformFlagsKHR(rawValue: cStruct.transform.rawValue)
        self.globalAlpha = cStruct.globalAlpha
        self.alphaMode = DisplayPlaneAlphaFlagsKHR(rawValue: cStruct.alphaMode.rawValue)
        self.imageExtent = Extent2D(cStruct: cStruct.imageExtent)
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

public struct DisplayPresentInfoKHR: CStructConvertible {
    typealias CStruct = VkDisplayPresentInfoKHR

    public let srcRect: Rect2D
    public let dstRect: Rect2D
    public let persistent: Bool

    public init(srcRect: Rect2D, dstRect: Rect2D, persistent: Bool) {
        self.srcRect = srcRect
        self.dstRect = dstRect
        self.persistent = persistent
    }

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

public struct SurfaceCapabilitiesKHR: CStructConvertible {
    typealias CStruct = VkSurfaceCapabilitiesKHR

    public let minImageCount: UInt32
    public let maxImageCount: UInt32
    public let currentExtent: Extent2D
    public let minImageExtent: Extent2D
    public let maxImageExtent: Extent2D
    public let maxImageArrayLayers: UInt32
    public let supportedTransforms: SurfaceTransformFlagsKHR
    public let currentTransform: SurfaceTransformFlagsKHR
    public let supportedCompositeAlpha: CompositeAlphaFlagsKHR
    public let supportedUsageFlags: ImageUsageFlags

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

public struct SurfaceFormatKHR: CStructConvertible {
    typealias CStruct = VkSurfaceFormatKHR

    public let format: Format
    public let colorSpace: ColorSpaceKHR

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

public struct SwapchainCreateInfoKHR: CStructConvertible {
    typealias CStruct = VkSwapchainCreateInfoKHR

    public let flags: SwapchainCreateFlagsKHR
    public let surface: SurfaceKHR
    public let minImageCount: UInt32
    public let imageFormat: Format
    public let imageColorSpace: ColorSpaceKHR
    public let imageExtent: Extent2D
    public let imageArrayLayers: UInt32
    public let imageUsage: ImageUsageFlags
    public let imageSharingMode: SharingMode
    public let queueFamilyIndices: Array<UInt32>
    public let preTransform: SurfaceTransformFlagsKHR
    public let compositeAlpha: CompositeAlphaFlagsKHR
    public let presentMode: PresentModeKHR
    public let clipped: Bool
    public let oldSwapchain: SwapchainKHR?

    public init(flags: SwapchainCreateFlagsKHR, surface: SurfaceKHR, minImageCount: UInt32, imageFormat: Format, imageColorSpace: ColorSpaceKHR, imageExtent: Extent2D, imageArrayLayers: UInt32, imageUsage: ImageUsageFlags, imageSharingMode: SharingMode, queueFamilyIndices: Array<UInt32>, preTransform: SurfaceTransformFlagsKHR, compositeAlpha: CompositeAlphaFlagsKHR, presentMode: PresentModeKHR, clipped: Bool, oldSwapchain: SwapchainKHR?) {
        self.flags = flags
        self.surface = surface
        self.minImageCount = minImageCount
        self.imageFormat = imageFormat
        self.imageColorSpace = imageColorSpace
        self.imageExtent = imageExtent
        self.imageArrayLayers = imageArrayLayers
        self.imageUsage = imageUsage
        self.imageSharingMode = imageSharingMode
        self.queueFamilyIndices = queueFamilyIndices
        self.preTransform = preTransform
        self.compositeAlpha = compositeAlpha
        self.presentMode = presentMode
        self.clipped = clipped
        self.oldSwapchain = oldSwapchain
    }


    func withCStruct<R>(_ body: (UnsafePointer<VkSwapchainCreateInfoKHR>) throws -> R) rethrows -> R {
        try self.imageExtent.withCStruct { ptr_imageExtent in
            try self.queueFamilyIndices.withUnsafeBufferPointer { ptr_queueFamilyIndices in
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
                cStruct.queueFamilyIndexCount = UInt32(ptr_queueFamilyIndices.count)
                cStruct.pQueueFamilyIndices = ptr_queueFamilyIndices.baseAddress
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

public struct PresentInfoKHR: CStructConvertible {
    typealias CStruct = VkPresentInfoKHR

    public let waitSemaphores: Array<Semaphore>
    public let swapchains: Array<SwapchainKHR>
    public let imageIndices: Array<UInt32>
    public let results: UnsafeMutablePointer<VkResult>

    public init(waitSemaphores: Array<Semaphore>, swapchains: Array<SwapchainKHR>, imageIndices: Array<UInt32>, results: UnsafeMutablePointer<VkResult>) {
        self.waitSemaphores = waitSemaphores
        self.swapchains = swapchains
        self.imageIndices = imageIndices
        self.results = results
    }


    func withCStruct<R>(_ body: (UnsafePointer<VkPresentInfoKHR>) throws -> R) rethrows -> R {
        try self.waitSemaphores.map{ $0.handle }.withUnsafeBufferPointer { ptr_waitSemaphores in
            try self.swapchains.map{ $0.handle }.withUnsafeBufferPointer { ptr_swapchains in
                try self.imageIndices.withUnsafeBufferPointer { ptr_imageIndices in
                    var cStruct = VkPresentInfoKHR()
                    cStruct.sType = VK_STRUCTURE_TYPE_PRESENT_INFO_KHR
                    cStruct.pNext = nil
                    cStruct.waitSemaphoreCount = UInt32(ptr_waitSemaphores.count)
                    cStruct.pWaitSemaphores = ptr_waitSemaphores.baseAddress
                    cStruct.swapchainCount = UInt32(ptr_swapchains.count)
                    cStruct.pSwapchains = ptr_swapchains.baseAddress
                    cStruct.pImageIndices = ptr_imageIndices.baseAddress
                    cStruct.pResults = self.results
                    return try body(&cStruct)
                }
            }
        }
    }
}

public struct DebugReportCallbackCreateInfoEXT: CStructConvertible {
    typealias CStruct = VkDebugReportCallbackCreateInfoEXT

    public let flags: DebugReportFlagsEXT
    public let pfnCallback: PFN_vkDebugReportCallbackEXT
    public let userData: UnsafeMutableRawPointer

    public init(flags: DebugReportFlagsEXT, pfnCallback: @escaping PFN_vkDebugReportCallbackEXT, userData: UnsafeMutableRawPointer) {
        self.flags = flags
        self.pfnCallback = pfnCallback
        self.userData = userData
    }

    init(cStruct: VkDebugReportCallbackCreateInfoEXT) {
        self.flags = DebugReportFlagsEXT(rawValue: cStruct.flags)
        self.pfnCallback = cStruct.pfnCallback
        self.userData = cStruct.pUserData
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkDebugReportCallbackCreateInfoEXT>) throws -> R) rethrows -> R {
        var cStruct = VkDebugReportCallbackCreateInfoEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_DEBUG_REPORT_CALLBACK_CREATE_INFO_EXT
        cStruct.pNext = nil
        cStruct.flags = self.flags.rawValue
        cStruct.pfnCallback = self.pfnCallback
        cStruct.pUserData = self.userData
        return try body(&cStruct)
    }
}

public struct ValidationFlagsEXT: CStructConvertible {
    typealias CStruct = VkValidationFlagsEXT

    public let disabledValidationChecks: Array<ValidationCheckEXT>

    public init(disabledValidationChecks: Array<ValidationCheckEXT>) {
        self.disabledValidationChecks = disabledValidationChecks
    }

    init(cStruct: VkValidationFlagsEXT) {
        self.disabledValidationChecks = UnsafeBufferPointer(start: cStruct.pDisabledValidationChecks, count: Int(cStruct.disabledValidationCheckCount)).map{ ValidationCheckEXT(rawValue: $0.rawValue)! }
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkValidationFlagsEXT>) throws -> R) rethrows -> R {
        try self.disabledValidationChecks.map{ VkValidationCheckEXT(rawValue: $0.rawValue) }.withUnsafeBufferPointer { ptr_disabledValidationChecks in
            var cStruct = VkValidationFlagsEXT()
            cStruct.sType = VK_STRUCTURE_TYPE_VALIDATION_FLAGS_EXT
            cStruct.pNext = nil
            cStruct.disabledValidationCheckCount = UInt32(ptr_disabledValidationChecks.count)
            cStruct.pDisabledValidationChecks = ptr_disabledValidationChecks.baseAddress
            return try body(&cStruct)
        }
    }
}

public struct ValidationFeaturesEXT: CStructConvertible {
    typealias CStruct = VkValidationFeaturesEXT

    public let enabledValidationFeatures: Array<ValidationFeatureEnableEXT>
    public let disabledValidationFeatures: Array<ValidationFeatureDisableEXT>

    public init(enabledValidationFeatures: Array<ValidationFeatureEnableEXT>, disabledValidationFeatures: Array<ValidationFeatureDisableEXT>) {
        self.enabledValidationFeatures = enabledValidationFeatures
        self.disabledValidationFeatures = disabledValidationFeatures
    }

    init(cStruct: VkValidationFeaturesEXT) {
        self.enabledValidationFeatures = UnsafeBufferPointer(start: cStruct.pEnabledValidationFeatures, count: Int(cStruct.enabledValidationFeatureCount)).map{ ValidationFeatureEnableEXT(rawValue: $0.rawValue)! }
        self.disabledValidationFeatures = UnsafeBufferPointer(start: cStruct.pDisabledValidationFeatures, count: Int(cStruct.disabledValidationFeatureCount)).map{ ValidationFeatureDisableEXT(rawValue: $0.rawValue)! }
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkValidationFeaturesEXT>) throws -> R) rethrows -> R {
        try self.enabledValidationFeatures.map{ VkValidationFeatureEnableEXT(rawValue: $0.rawValue) }.withUnsafeBufferPointer { ptr_enabledValidationFeatures in
            try self.disabledValidationFeatures.map{ VkValidationFeatureDisableEXT(rawValue: $0.rawValue) }.withUnsafeBufferPointer { ptr_disabledValidationFeatures in
                var cStruct = VkValidationFeaturesEXT()
                cStruct.sType = VK_STRUCTURE_TYPE_VALIDATION_FEATURES_EXT
                cStruct.pNext = nil
                cStruct.enabledValidationFeatureCount = UInt32(ptr_enabledValidationFeatures.count)
                cStruct.pEnabledValidationFeatures = ptr_enabledValidationFeatures.baseAddress
                cStruct.disabledValidationFeatureCount = UInt32(ptr_disabledValidationFeatures.count)
                cStruct.pDisabledValidationFeatures = ptr_disabledValidationFeatures.baseAddress
                return try body(&cStruct)
            }
        }
    }
}

public struct PipelineRasterizationStateRasterizationOrderAMD: CStructConvertible {
    typealias CStruct = VkPipelineRasterizationStateRasterizationOrderAMD

    public let rasterizationOrder: RasterizationOrderAMD

    public init(rasterizationOrder: RasterizationOrderAMD) {
        self.rasterizationOrder = rasterizationOrder
    }

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

public struct DebugMarkerObjectNameInfoEXT: CStructConvertible {
    typealias CStruct = VkDebugMarkerObjectNameInfoEXT

    public let objectType: DebugReportObjectTypeEXT
    public let object: UInt64
    public let objectName: String

    public init(objectType: DebugReportObjectTypeEXT, object: UInt64, objectName: String) {
        self.objectType = objectType
        self.object = object
        self.objectName = objectName
    }

    init(cStruct: VkDebugMarkerObjectNameInfoEXT) {
        self.objectType = DebugReportObjectTypeEXT(rawValue: cStruct.objectType.rawValue)!
        self.object = cStruct.object
        self.objectName = String(cString: cStruct.pObjectName)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkDebugMarkerObjectNameInfoEXT>) throws -> R) rethrows -> R {
        try self.objectName.withCString { cString_objectName in
            var cStruct = VkDebugMarkerObjectNameInfoEXT()
            cStruct.sType = VK_STRUCTURE_TYPE_DEBUG_MARKER_OBJECT_NAME_INFO_EXT
            cStruct.pNext = nil
            cStruct.objectType = VkDebugReportObjectTypeEXT(rawValue: self.objectType.rawValue)
            cStruct.object = self.object
            cStruct.pObjectName = cString_objectName
            return try body(&cStruct)
        }
    }
}

public struct DebugMarkerObjectTagInfoEXT: CStructConvertible {
    typealias CStruct = VkDebugMarkerObjectTagInfoEXT

    public let objectType: DebugReportObjectTypeEXT
    public let object: UInt64
    public let tagName: UInt64
    public let tagSize: Int
    public let tag: UnsafeRawPointer

    public init(objectType: DebugReportObjectTypeEXT, object: UInt64, tagName: UInt64, tagSize: Int, tag: UnsafeRawPointer) {
        self.objectType = objectType
        self.object = object
        self.tagName = tagName
        self.tagSize = tagSize
        self.tag = tag
    }

    init(cStruct: VkDebugMarkerObjectTagInfoEXT) {
        self.objectType = DebugReportObjectTypeEXT(rawValue: cStruct.objectType.rawValue)!
        self.object = cStruct.object
        self.tagName = cStruct.tagName
        self.tagSize = cStruct.tagSize
        self.tag = cStruct.pTag
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkDebugMarkerObjectTagInfoEXT>) throws -> R) rethrows -> R {
        var cStruct = VkDebugMarkerObjectTagInfoEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_DEBUG_MARKER_OBJECT_TAG_INFO_EXT
        cStruct.pNext = nil
        cStruct.objectType = VkDebugReportObjectTypeEXT(rawValue: self.objectType.rawValue)
        cStruct.object = self.object
        cStruct.tagName = self.tagName
        cStruct.tagSize = self.tagSize
        cStruct.pTag = self.tag
        return try body(&cStruct)
    }
}

public struct DebugMarkerMarkerInfoEXT: CStructConvertible {
    typealias CStruct = VkDebugMarkerMarkerInfoEXT

    public let markerName: String
    public let color: (Float, Float, Float, Float)

    public init(markerName: String, color: (Float, Float, Float, Float)) {
        self.markerName = markerName
        self.color = color
    }

    init(cStruct: VkDebugMarkerMarkerInfoEXT) {
        self.markerName = String(cString: cStruct.pMarkerName)
        self.color = cStruct.color
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkDebugMarkerMarkerInfoEXT>) throws -> R) rethrows -> R {
        try self.markerName.withCString { cString_markerName in
            var cStruct = VkDebugMarkerMarkerInfoEXT()
            cStruct.sType = VK_STRUCTURE_TYPE_DEBUG_MARKER_MARKER_INFO_EXT
            cStruct.pNext = nil
            cStruct.pMarkerName = cString_markerName
            cStruct.color = self.color
            return try body(&cStruct)
        }
    }
}

public struct DedicatedAllocationImageCreateInfoNV: CStructConvertible {
    typealias CStruct = VkDedicatedAllocationImageCreateInfoNV

    public let dedicatedAllocation: Bool

    public init(dedicatedAllocation: Bool) {
        self.dedicatedAllocation = dedicatedAllocation
    }

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

public struct DedicatedAllocationBufferCreateInfoNV: CStructConvertible {
    typealias CStruct = VkDedicatedAllocationBufferCreateInfoNV

    public let dedicatedAllocation: Bool

    public init(dedicatedAllocation: Bool) {
        self.dedicatedAllocation = dedicatedAllocation
    }

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

public struct DedicatedAllocationMemoryAllocateInfoNV: CStructConvertible {
    typealias CStruct = VkDedicatedAllocationMemoryAllocateInfoNV

    public let image: Image?
    public let buffer: Buffer?

    public init(image: Image?, buffer: Buffer?) {
        self.image = image
        self.buffer = buffer
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

public struct ExternalImageFormatPropertiesNV: CStructConvertible {
    typealias CStruct = VkExternalImageFormatPropertiesNV

    public let imageFormatProperties: ImageFormatProperties
    public let externalMemoryFeatures: ExternalMemoryFeatureFlagsNV
    public let exportFromImportedHandleTypes: ExternalMemoryHandleTypeFlagsNV
    public let compatibleHandleTypes: ExternalMemoryHandleTypeFlagsNV

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

public struct ExternalMemoryImageCreateInfoNV: CStructConvertible {
    typealias CStruct = VkExternalMemoryImageCreateInfoNV

    public let handleTypes: ExternalMemoryHandleTypeFlagsNV

    public init(handleTypes: ExternalMemoryHandleTypeFlagsNV) {
        self.handleTypes = handleTypes
    }

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

public struct ExportMemoryAllocateInfoNV: CStructConvertible {
    typealias CStruct = VkExportMemoryAllocateInfoNV

    public let handleTypes: ExternalMemoryHandleTypeFlagsNV

    public init(handleTypes: ExternalMemoryHandleTypeFlagsNV) {
        self.handleTypes = handleTypes
    }

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

public struct PhysicalDeviceDeviceGeneratedCommandsFeaturesNV: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceDeviceGeneratedCommandsFeaturesNV

    public let deviceGeneratedCommands: Bool

    public init(deviceGeneratedCommands: Bool) {
        self.deviceGeneratedCommands = deviceGeneratedCommands
    }

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

public struct PhysicalDeviceDeviceGeneratedCommandsPropertiesNV: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV

    public let maxGraphicsShaderGroupCount: UInt32
    public let maxIndirectSequenceCount: UInt32
    public let maxIndirectCommandsTokenCount: UInt32
    public let maxIndirectCommandsStreamCount: UInt32
    public let maxIndirectCommandsTokenOffset: UInt32
    public let maxIndirectCommandsStreamStride: UInt32
    public let minSequencesCountBufferOffsetAlignment: UInt32
    public let minSequencesIndexBufferOffsetAlignment: UInt32
    public let minIndirectCommandsBufferOffsetAlignment: UInt32

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

public struct GraphicsShaderGroupCreateInfoNV: CStructConvertible {
    typealias CStruct = VkGraphicsShaderGroupCreateInfoNV

    public let stages: Array<PipelineShaderStageCreateInfo>
    public let vertexInputState: PipelineVertexInputStateCreateInfo?
    public let tessellationState: PipelineTessellationStateCreateInfo?

    public init(stages: Array<PipelineShaderStageCreateInfo>, vertexInputState: PipelineVertexInputStateCreateInfo?, tessellationState: PipelineTessellationStateCreateInfo?) {
        self.stages = stages
        self.vertexInputState = vertexInputState
        self.tessellationState = tessellationState
    }


    func withCStruct<R>(_ body: (UnsafePointer<VkGraphicsShaderGroupCreateInfoNV>) throws -> R) rethrows -> R {
        try self.stages.withCStructBufferPointer { ptr_stages in
            try self.vertexInputState.withOptionalCStruct { ptr_vertexInputState in
                try self.tessellationState.withOptionalCStruct { ptr_tessellationState in
                    var cStruct = VkGraphicsShaderGroupCreateInfoNV()
                    cStruct.sType = VK_STRUCTURE_TYPE_GRAPHICS_SHADER_GROUP_CREATE_INFO_NV
                    cStruct.pNext = nil
                    cStruct.stageCount = UInt32(ptr_stages.count)
                    cStruct.pStages = ptr_stages.baseAddress
                    cStruct.pVertexInputState = ptr_vertexInputState
                    cStruct.pTessellationState = ptr_tessellationState
                    return try body(&cStruct)
                }
            }
        }
    }
}

public struct GraphicsPipelineShaderGroupsCreateInfoNV: CStructConvertible {
    typealias CStruct = VkGraphicsPipelineShaderGroupsCreateInfoNV

    public let groups: Array<GraphicsShaderGroupCreateInfoNV>
    public let pipelines: Array<Pipeline>

    public init(groups: Array<GraphicsShaderGroupCreateInfoNV>, pipelines: Array<Pipeline>) {
        self.groups = groups
        self.pipelines = pipelines
    }


    func withCStruct<R>(_ body: (UnsafePointer<VkGraphicsPipelineShaderGroupsCreateInfoNV>) throws -> R) rethrows -> R {
        try self.groups.withCStructBufferPointer { ptr_groups in
            try self.pipelines.map{ $0.handle }.withUnsafeBufferPointer { ptr_pipelines in
                var cStruct = VkGraphicsPipelineShaderGroupsCreateInfoNV()
                cStruct.sType = VK_STRUCTURE_TYPE_GRAPHICS_PIPELINE_SHADER_GROUPS_CREATE_INFO_NV
                cStruct.pNext = nil
                cStruct.groupCount = UInt32(ptr_groups.count)
                cStruct.pGroups = ptr_groups.baseAddress
                cStruct.pipelineCount = UInt32(ptr_pipelines.count)
                cStruct.pPipelines = ptr_pipelines.baseAddress
                return try body(&cStruct)
            }
        }
    }
}

public struct BindShaderGroupIndirectCommandNV: CStructConvertible {
    typealias CStruct = VkBindShaderGroupIndirectCommandNV

    public let groupIndex: UInt32

    public init(groupIndex: UInt32) {
        self.groupIndex = groupIndex
    }

    init(cStruct: VkBindShaderGroupIndirectCommandNV) {
        self.groupIndex = cStruct.groupIndex
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkBindShaderGroupIndirectCommandNV>) throws -> R) rethrows -> R {
        var cStruct = VkBindShaderGroupIndirectCommandNV()
        cStruct.groupIndex = self.groupIndex
        return try body(&cStruct)
    }
}

public struct BindIndexBufferIndirectCommandNV: CStructConvertible {
    typealias CStruct = VkBindIndexBufferIndirectCommandNV

    public let bufferAddress: VkDeviceAddress
    public let size: UInt32
    public let indexType: IndexType

    public init(bufferAddress: VkDeviceAddress, size: UInt32, indexType: IndexType) {
        self.bufferAddress = bufferAddress
        self.size = size
        self.indexType = indexType
    }

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

public struct BindVertexBufferIndirectCommandNV: CStructConvertible {
    typealias CStruct = VkBindVertexBufferIndirectCommandNV

    public let bufferAddress: VkDeviceAddress
    public let size: UInt32
    public let stride: UInt32

    public init(bufferAddress: VkDeviceAddress, size: UInt32, stride: UInt32) {
        self.bufferAddress = bufferAddress
        self.size = size
        self.stride = stride
    }

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

public struct SetStateFlagsIndirectCommandNV: CStructConvertible {
    typealias CStruct = VkSetStateFlagsIndirectCommandNV

    public let data: UInt32

    public init(data: UInt32) {
        self.data = data
    }

    init(cStruct: VkSetStateFlagsIndirectCommandNV) {
        self.data = cStruct.data
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkSetStateFlagsIndirectCommandNV>) throws -> R) rethrows -> R {
        var cStruct = VkSetStateFlagsIndirectCommandNV()
        cStruct.data = self.data
        return try body(&cStruct)
    }
}

public struct IndirectCommandsStreamNV: CStructConvertible {
    typealias CStruct = VkIndirectCommandsStreamNV

    public let buffer: Buffer
    public let offset: VkDeviceSize

    public init(buffer: Buffer, offset: VkDeviceSize) {
        self.buffer = buffer
        self.offset = offset
    }


    func withCStruct<R>(_ body: (UnsafePointer<VkIndirectCommandsStreamNV>) throws -> R) rethrows -> R {
        var cStruct = VkIndirectCommandsStreamNV()
        cStruct.buffer = self.buffer.handle
        cStruct.offset = self.offset
        return try body(&cStruct)
    }
}

public struct IndirectCommandsLayoutTokenNV: CStructConvertible {
    typealias CStruct = VkIndirectCommandsLayoutTokenNV

    public let tokenType: IndirectCommandsTokenTypeNV
    public let stream: UInt32
    public let offset: UInt32
    public let vertexBindingUnit: UInt32
    public let vertexDynamicStride: Bool
    public let pushconstantPipelineLayout: PipelineLayout?
    public let pushconstantShaderStageFlags: ShaderStageFlags
    public let pushconstantOffset: UInt32
    public let pushconstantSize: UInt32
    public let indirectStateFlags: IndirectStateFlagsNV
    public let indexTypes: Array<IndexType>
    public let indexTypeValues: Array<UInt32>

    public init(tokenType: IndirectCommandsTokenTypeNV, stream: UInt32, offset: UInt32, vertexBindingUnit: UInt32, vertexDynamicStride: Bool, pushconstantPipelineLayout: PipelineLayout?, pushconstantShaderStageFlags: ShaderStageFlags, pushconstantOffset: UInt32, pushconstantSize: UInt32, indirectStateFlags: IndirectStateFlagsNV, indexTypes: Array<IndexType>, indexTypeValues: Array<UInt32>) {
        self.tokenType = tokenType
        self.stream = stream
        self.offset = offset
        self.vertexBindingUnit = vertexBindingUnit
        self.vertexDynamicStride = vertexDynamicStride
        self.pushconstantPipelineLayout = pushconstantPipelineLayout
        self.pushconstantShaderStageFlags = pushconstantShaderStageFlags
        self.pushconstantOffset = pushconstantOffset
        self.pushconstantSize = pushconstantSize
        self.indirectStateFlags = indirectStateFlags
        self.indexTypes = indexTypes
        self.indexTypeValues = indexTypeValues
    }


    func withCStruct<R>(_ body: (UnsafePointer<VkIndirectCommandsLayoutTokenNV>) throws -> R) rethrows -> R {
        try self.indexTypes.map{ VkIndexType(rawValue: $0.rawValue) }.withUnsafeBufferPointer { ptr_indexTypes in
            try self.indexTypeValues.withUnsafeBufferPointer { ptr_indexTypeValues in
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
                cStruct.indexTypeCount = UInt32(ptr_indexTypes.count)
                cStruct.pIndexTypes = ptr_indexTypes.baseAddress
                cStruct.pIndexTypeValues = ptr_indexTypeValues.baseAddress
                return try body(&cStruct)
            }
        }
    }
}

public struct IndirectCommandsLayoutCreateInfoNV: CStructConvertible {
    typealias CStruct = VkIndirectCommandsLayoutCreateInfoNV

    public let flags: IndirectCommandsLayoutUsageFlagsNV
    public let pipelineBindPoint: PipelineBindPoint
    public let tokens: Array<IndirectCommandsLayoutTokenNV>
    public let streamStrides: Array<UInt32>

    public init(flags: IndirectCommandsLayoutUsageFlagsNV, pipelineBindPoint: PipelineBindPoint, tokens: Array<IndirectCommandsLayoutTokenNV>, streamStrides: Array<UInt32>) {
        self.flags = flags
        self.pipelineBindPoint = pipelineBindPoint
        self.tokens = tokens
        self.streamStrides = streamStrides
    }


    func withCStruct<R>(_ body: (UnsafePointer<VkIndirectCommandsLayoutCreateInfoNV>) throws -> R) rethrows -> R {
        try self.tokens.withCStructBufferPointer { ptr_tokens in
            try self.streamStrides.withUnsafeBufferPointer { ptr_streamStrides in
                var cStruct = VkIndirectCommandsLayoutCreateInfoNV()
                cStruct.sType = VK_STRUCTURE_TYPE_INDIRECT_COMMANDS_LAYOUT_CREATE_INFO_NV
                cStruct.pNext = nil
                cStruct.flags = self.flags.rawValue
                cStruct.pipelineBindPoint = VkPipelineBindPoint(rawValue: self.pipelineBindPoint.rawValue)
                cStruct.tokenCount = UInt32(ptr_tokens.count)
                cStruct.pTokens = ptr_tokens.baseAddress
                cStruct.streamCount = UInt32(ptr_streamStrides.count)
                cStruct.pStreamStrides = ptr_streamStrides.baseAddress
                return try body(&cStruct)
            }
        }
    }
}

public struct GeneratedCommandsInfoNV: CStructConvertible {
    typealias CStruct = VkGeneratedCommandsInfoNV

    public let pipelineBindPoint: PipelineBindPoint
    public let pipeline: Pipeline
    public let indirectCommandsLayout: IndirectCommandsLayoutNV
    public let streams: Array<IndirectCommandsStreamNV>
    public let sequencesCount: UInt32
    public let preprocessBuffer: Buffer
    public let preprocessOffset: VkDeviceSize
    public let preprocessSize: VkDeviceSize
    public let sequencesCountBuffer: Buffer?
    public let sequencesCountOffset: VkDeviceSize
    public let sequencesIndexBuffer: Buffer?
    public let sequencesIndexOffset: VkDeviceSize

    public init(pipelineBindPoint: PipelineBindPoint, pipeline: Pipeline, indirectCommandsLayout: IndirectCommandsLayoutNV, streams: Array<IndirectCommandsStreamNV>, sequencesCount: UInt32, preprocessBuffer: Buffer, preprocessOffset: VkDeviceSize, preprocessSize: VkDeviceSize, sequencesCountBuffer: Buffer?, sequencesCountOffset: VkDeviceSize, sequencesIndexBuffer: Buffer?, sequencesIndexOffset: VkDeviceSize) {
        self.pipelineBindPoint = pipelineBindPoint
        self.pipeline = pipeline
        self.indirectCommandsLayout = indirectCommandsLayout
        self.streams = streams
        self.sequencesCount = sequencesCount
        self.preprocessBuffer = preprocessBuffer
        self.preprocessOffset = preprocessOffset
        self.preprocessSize = preprocessSize
        self.sequencesCountBuffer = sequencesCountBuffer
        self.sequencesCountOffset = sequencesCountOffset
        self.sequencesIndexBuffer = sequencesIndexBuffer
        self.sequencesIndexOffset = sequencesIndexOffset
    }


    func withCStruct<R>(_ body: (UnsafePointer<VkGeneratedCommandsInfoNV>) throws -> R) rethrows -> R {
        try self.streams.withCStructBufferPointer { ptr_streams in
            var cStruct = VkGeneratedCommandsInfoNV()
            cStruct.sType = VK_STRUCTURE_TYPE_GENERATED_COMMANDS_INFO_NV
            cStruct.pNext = nil
            cStruct.pipelineBindPoint = VkPipelineBindPoint(rawValue: self.pipelineBindPoint.rawValue)
            cStruct.pipeline = self.pipeline.handle
            cStruct.indirectCommandsLayout = self.indirectCommandsLayout.handle
            cStruct.streamCount = UInt32(ptr_streams.count)
            cStruct.pStreams = ptr_streams.baseAddress
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

public struct GeneratedCommandsMemoryRequirementsInfoNV: CStructConvertible {
    typealias CStruct = VkGeneratedCommandsMemoryRequirementsInfoNV

    public let pipelineBindPoint: PipelineBindPoint
    public let pipeline: Pipeline
    public let indirectCommandsLayout: IndirectCommandsLayoutNV
    public let maxSequencesCount: UInt32


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

public struct PhysicalDeviceFeatures2: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceFeatures2

    public let features: PhysicalDeviceFeatures

    public init(features: PhysicalDeviceFeatures) {
        self.features = features
    }

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

public struct PhysicalDeviceProperties2: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceProperties2

    public let properties: PhysicalDeviceProperties

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

public struct FormatProperties2: CStructConvertible {
    typealias CStruct = VkFormatProperties2

    public let formatProperties: FormatProperties

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

public struct ImageFormatProperties2: CStructConvertible {
    typealias CStruct = VkImageFormatProperties2

    public let imageFormatProperties: ImageFormatProperties

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

public struct PhysicalDeviceImageFormatInfo2: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceImageFormatInfo2

    public let format: Format
    public let type: ImageType
    public let tiling: ImageTiling
    public let usage: ImageUsageFlags
    public let flags: ImageCreateFlags

    public init(format: Format, type: ImageType, tiling: ImageTiling, usage: ImageUsageFlags, flags: ImageCreateFlags) {
        self.format = format
        self.type = type
        self.tiling = tiling
        self.usage = usage
        self.flags = flags
    }

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

public struct QueueFamilyProperties2: CStructConvertible {
    typealias CStruct = VkQueueFamilyProperties2

    public let queueFamilyProperties: QueueFamilyProperties

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

public struct PhysicalDeviceMemoryProperties2: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceMemoryProperties2

    public let memoryProperties: PhysicalDeviceMemoryProperties

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

public struct SparseImageFormatProperties2: CStructConvertible {
    typealias CStruct = VkSparseImageFormatProperties2

    public let properties: SparseImageFormatProperties

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

public struct PhysicalDeviceSparseImageFormatInfo2: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceSparseImageFormatInfo2

    public let format: Format
    public let type: ImageType
    public let samples: SampleCountFlags
    public let usage: ImageUsageFlags
    public let tiling: ImageTiling

    public init(format: Format, type: ImageType, samples: SampleCountFlags, usage: ImageUsageFlags, tiling: ImageTiling) {
        self.format = format
        self.type = type
        self.samples = samples
        self.usage = usage
        self.tiling = tiling
    }

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

public struct PhysicalDevicePushDescriptorPropertiesKHR: CStructConvertible {
    typealias CStruct = VkPhysicalDevicePushDescriptorPropertiesKHR

    public let maxPushDescriptors: UInt32

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

public struct ConformanceVersion: CStructConvertible {
    typealias CStruct = VkConformanceVersion

    public let major: UInt8
    public let minor: UInt8
    public let subminor: UInt8
    public let patch: UInt8

    public init(major: UInt8, minor: UInt8, subminor: UInt8, patch: UInt8) {
        self.major = major
        self.minor = minor
        self.subminor = subminor
        self.patch = patch
    }

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

public struct PhysicalDeviceDriverProperties: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceDriverProperties

    public let driverID: DriverId
    public let driverName: String
    public let driverInfo: String
    public let conformanceVersion: ConformanceVersion

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

public struct RectLayerKHR: CStructConvertible {
    typealias CStruct = VkRectLayerKHR

    public let offset: Offset2D
    public let extent: Extent2D
    public let layer: UInt32

    public init(offset: Offset2D, extent: Extent2D, layer: UInt32) {
        self.offset = offset
        self.extent = extent
        self.layer = layer
    }

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

public struct PresentRegionKHR: CStructConvertible {
    typealias CStruct = VkPresentRegionKHR

    public let rectangles: Array<RectLayerKHR>?

    public init(rectangles: Array<RectLayerKHR>?) {
        self.rectangles = rectangles
    }

    init(cStruct: VkPresentRegionKHR) {
        self.rectangles = (cStruct.pRectangles != nil) ? UnsafeBufferPointer(start: cStruct.pRectangles, count: Int(cStruct.rectangleCount)).map{ RectLayerKHR(cStruct: $0) } : nil
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPresentRegionKHR>) throws -> R) rethrows -> R {
        try self.rectangles.withOptionalCStructBufferPointer { ptr_rectangles in
            var cStruct = VkPresentRegionKHR()
            cStruct.rectangleCount = UInt32(ptr_rectangles.count)
            cStruct.pRectangles = ptr_rectangles.baseAddress
            return try body(&cStruct)
        }
    }
}

public struct PresentRegionsKHR: CStructConvertible {
    typealias CStruct = VkPresentRegionsKHR

    public let regions: Array<PresentRegionKHR>?

    public init(regions: Array<PresentRegionKHR>?) {
        self.regions = regions
    }

    init(cStruct: VkPresentRegionsKHR) {
        self.regions = (cStruct.pRegions != nil) ? UnsafeBufferPointer(start: cStruct.pRegions, count: Int(cStruct.swapchainCount)).map{ PresentRegionKHR(cStruct: $0) } : nil
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPresentRegionsKHR>) throws -> R) rethrows -> R {
        try self.regions.withOptionalCStructBufferPointer { ptr_regions in
            var cStruct = VkPresentRegionsKHR()
            cStruct.sType = VK_STRUCTURE_TYPE_PRESENT_REGIONS_KHR
            cStruct.pNext = nil
            cStruct.swapchainCount = UInt32(ptr_regions.count)
            cStruct.pRegions = ptr_regions.baseAddress
            return try body(&cStruct)
        }
    }
}

public struct PhysicalDeviceVariablePointersFeatures: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceVariablePointersFeatures

    public let variablePointersStorageBuffer: Bool
    public let variablePointers: Bool

    public init(variablePointersStorageBuffer: Bool, variablePointers: Bool) {
        self.variablePointersStorageBuffer = variablePointersStorageBuffer
        self.variablePointers = variablePointers
    }

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

public struct ExternalMemoryProperties: CStructConvertible {
    typealias CStruct = VkExternalMemoryProperties

    public let externalMemoryFeatures: ExternalMemoryFeatureFlags
    public let exportFromImportedHandleTypes: ExternalMemoryHandleTypeFlags
    public let compatibleHandleTypes: ExternalMemoryHandleTypeFlags

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

public struct PhysicalDeviceExternalImageFormatInfo: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceExternalImageFormatInfo

    public let handleType: ExternalMemoryHandleTypeFlags

    public init(handleType: ExternalMemoryHandleTypeFlags) {
        self.handleType = handleType
    }

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

public struct ExternalImageFormatProperties: CStructConvertible {
    typealias CStruct = VkExternalImageFormatProperties

    public let externalMemoryProperties: ExternalMemoryProperties

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

public struct PhysicalDeviceExternalBufferInfo: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceExternalBufferInfo

    public let flags: BufferCreateFlags
    public let usage: BufferUsageFlags
    public let handleType: ExternalMemoryHandleTypeFlags

    public init(flags: BufferCreateFlags, usage: BufferUsageFlags, handleType: ExternalMemoryHandleTypeFlags) {
        self.flags = flags
        self.usage = usage
        self.handleType = handleType
    }

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

public struct ExternalBufferProperties: CStructConvertible {
    typealias CStruct = VkExternalBufferProperties

    public let externalMemoryProperties: ExternalMemoryProperties

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

public struct PhysicalDeviceIDProperties: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceIDProperties

    public let deviceUUID: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
    public let driverUUID: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
    public let deviceLUID: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
    public let deviceNodeMask: UInt32
    public let deviceLUIDValid: Bool

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

public struct ExternalMemoryImageCreateInfo: CStructConvertible {
    typealias CStruct = VkExternalMemoryImageCreateInfo

    public let handleTypes: ExternalMemoryHandleTypeFlags

    public init(handleTypes: ExternalMemoryHandleTypeFlags) {
        self.handleTypes = handleTypes
    }

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

public struct ExternalMemoryBufferCreateInfo: CStructConvertible {
    typealias CStruct = VkExternalMemoryBufferCreateInfo

    public let handleTypes: ExternalMemoryHandleTypeFlags

    public init(handleTypes: ExternalMemoryHandleTypeFlags) {
        self.handleTypes = handleTypes
    }

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

public struct ExportMemoryAllocateInfo: CStructConvertible {
    typealias CStruct = VkExportMemoryAllocateInfo

    public let handleTypes: ExternalMemoryHandleTypeFlags

    public init(handleTypes: ExternalMemoryHandleTypeFlags) {
        self.handleTypes = handleTypes
    }

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

public struct ImportMemoryFdInfoKHR: CStructConvertible {
    typealias CStruct = VkImportMemoryFdInfoKHR

    public let handleType: ExternalMemoryHandleTypeFlags
    public let fd: Int32

    public init(handleType: ExternalMemoryHandleTypeFlags, fd: Int32) {
        self.handleType = handleType
        self.fd = fd
    }

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

public struct MemoryFdPropertiesKHR: CStructConvertible {
    typealias CStruct = VkMemoryFdPropertiesKHR

    public let memoryTypeBits: UInt32

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

public struct MemoryGetFdInfoKHR: CStructConvertible {
    typealias CStruct = VkMemoryGetFdInfoKHR

    public let memory: DeviceMemory
    public let handleType: ExternalMemoryHandleTypeFlags

    public init(memory: DeviceMemory, handleType: ExternalMemoryHandleTypeFlags) {
        self.memory = memory
        self.handleType = handleType
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

public struct PhysicalDeviceExternalSemaphoreInfo: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceExternalSemaphoreInfo

    public let handleType: ExternalSemaphoreHandleTypeFlags

    public init(handleType: ExternalSemaphoreHandleTypeFlags) {
        self.handleType = handleType
    }

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

public struct ExternalSemaphoreProperties: CStructConvertible {
    typealias CStruct = VkExternalSemaphoreProperties

    public let exportFromImportedHandleTypes: ExternalSemaphoreHandleTypeFlags
    public let compatibleHandleTypes: ExternalSemaphoreHandleTypeFlags
    public let externalSemaphoreFeatures: ExternalSemaphoreFeatureFlags

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

public struct ExportSemaphoreCreateInfo: CStructConvertible {
    typealias CStruct = VkExportSemaphoreCreateInfo

    public let handleTypes: ExternalSemaphoreHandleTypeFlags

    public init(handleTypes: ExternalSemaphoreHandleTypeFlags) {
        self.handleTypes = handleTypes
    }

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

public struct ImportSemaphoreFdInfoKHR: CStructConvertible {
    typealias CStruct = VkImportSemaphoreFdInfoKHR

    public let semaphore: Semaphore
    public let flags: SemaphoreImportFlags
    public let handleType: ExternalSemaphoreHandleTypeFlags
    public let fd: Int32

    public init(semaphore: Semaphore, flags: SemaphoreImportFlags, handleType: ExternalSemaphoreHandleTypeFlags, fd: Int32) {
        self.semaphore = semaphore
        self.flags = flags
        self.handleType = handleType
        self.fd = fd
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

public struct SemaphoreGetFdInfoKHR: CStructConvertible {
    typealias CStruct = VkSemaphoreGetFdInfoKHR

    public let semaphore: Semaphore
    public let handleType: ExternalSemaphoreHandleTypeFlags

    public init(semaphore: Semaphore, handleType: ExternalSemaphoreHandleTypeFlags) {
        self.semaphore = semaphore
        self.handleType = handleType
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

public struct PhysicalDeviceExternalFenceInfo: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceExternalFenceInfo

    public let handleType: ExternalFenceHandleTypeFlags

    public init(handleType: ExternalFenceHandleTypeFlags) {
        self.handleType = handleType
    }

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

public struct ExternalFenceProperties: CStructConvertible {
    typealias CStruct = VkExternalFenceProperties

    public let exportFromImportedHandleTypes: ExternalFenceHandleTypeFlags
    public let compatibleHandleTypes: ExternalFenceHandleTypeFlags
    public let externalFenceFeatures: ExternalFenceFeatureFlags

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

public struct ExportFenceCreateInfo: CStructConvertible {
    typealias CStruct = VkExportFenceCreateInfo

    public let handleTypes: ExternalFenceHandleTypeFlags

    public init(handleTypes: ExternalFenceHandleTypeFlags) {
        self.handleTypes = handleTypes
    }

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

public struct ImportFenceFdInfoKHR: CStructConvertible {
    typealias CStruct = VkImportFenceFdInfoKHR

    public let fence: Fence
    public let flags: FenceImportFlags
    public let handleType: ExternalFenceHandleTypeFlags
    public let fd: Int32

    public init(fence: Fence, flags: FenceImportFlags, handleType: ExternalFenceHandleTypeFlags, fd: Int32) {
        self.fence = fence
        self.flags = flags
        self.handleType = handleType
        self.fd = fd
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

public struct FenceGetFdInfoKHR: CStructConvertible {
    typealias CStruct = VkFenceGetFdInfoKHR

    public let fence: Fence
    public let handleType: ExternalFenceHandleTypeFlags

    public init(fence: Fence, handleType: ExternalFenceHandleTypeFlags) {
        self.fence = fence
        self.handleType = handleType
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

public struct PhysicalDeviceMultiviewFeatures: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceMultiviewFeatures

    public let multiview: Bool
    public let multiviewGeometryShader: Bool
    public let multiviewTessellationShader: Bool

    public init(multiview: Bool, multiviewGeometryShader: Bool, multiviewTessellationShader: Bool) {
        self.multiview = multiview
        self.multiviewGeometryShader = multiviewGeometryShader
        self.multiviewTessellationShader = multiviewTessellationShader
    }

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

public struct PhysicalDeviceMultiviewProperties: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceMultiviewProperties

    public let maxMultiviewViewCount: UInt32
    public let maxMultiviewInstanceIndex: UInt32

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

public struct RenderPassMultiviewCreateInfo: CStructConvertible {
    typealias CStruct = VkRenderPassMultiviewCreateInfo

    public let viewMasks: Array<UInt32>
    public let viewOffsets: Array<Int32>
    public let correlationMasks: Array<UInt32>

    public init(viewMasks: Array<UInt32>, viewOffsets: Array<Int32>, correlationMasks: Array<UInt32>) {
        self.viewMasks = viewMasks
        self.viewOffsets = viewOffsets
        self.correlationMasks = correlationMasks
    }

    init(cStruct: VkRenderPassMultiviewCreateInfo) {
        self.viewMasks = Array(UnsafeBufferPointer(start: cStruct.pViewMasks, count: Int(cStruct.subpassCount)))
        self.viewOffsets = Array(UnsafeBufferPointer(start: cStruct.pViewOffsets, count: Int(cStruct.dependencyCount)))
        self.correlationMasks = Array(UnsafeBufferPointer(start: cStruct.pCorrelationMasks, count: Int(cStruct.correlationMaskCount)))
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkRenderPassMultiviewCreateInfo>) throws -> R) rethrows -> R {
        try self.viewMasks.withUnsafeBufferPointer { ptr_viewMasks in
            try self.viewOffsets.withUnsafeBufferPointer { ptr_viewOffsets in
                try self.correlationMasks.withUnsafeBufferPointer { ptr_correlationMasks in
                    var cStruct = VkRenderPassMultiviewCreateInfo()
                    cStruct.sType = VK_STRUCTURE_TYPE_RENDER_PASS_MULTIVIEW_CREATE_INFO
                    cStruct.pNext = nil
                    cStruct.subpassCount = UInt32(ptr_viewMasks.count)
                    cStruct.pViewMasks = ptr_viewMasks.baseAddress
                    cStruct.dependencyCount = UInt32(ptr_viewOffsets.count)
                    cStruct.pViewOffsets = ptr_viewOffsets.baseAddress
                    cStruct.correlationMaskCount = UInt32(ptr_correlationMasks.count)
                    cStruct.pCorrelationMasks = ptr_correlationMasks.baseAddress
                    return try body(&cStruct)
                }
            }
        }
    }
}

public struct SurfaceCapabilities2EXT: CStructConvertible {
    typealias CStruct = VkSurfaceCapabilities2EXT

    public let minImageCount: UInt32
    public let maxImageCount: UInt32
    public let currentExtent: Extent2D
    public let minImageExtent: Extent2D
    public let maxImageExtent: Extent2D
    public let maxImageArrayLayers: UInt32
    public let supportedTransforms: SurfaceTransformFlagsKHR
    public let currentTransform: SurfaceTransformFlagsKHR
    public let supportedCompositeAlpha: CompositeAlphaFlagsKHR
    public let supportedUsageFlags: ImageUsageFlags
    public let supportedSurfaceCounters: SurfaceCounterFlagsEXT

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

public struct DisplayPowerInfoEXT: CStructConvertible {
    typealias CStruct = VkDisplayPowerInfoEXT

    public let powerState: DisplayPowerStateEXT

    public init(powerState: DisplayPowerStateEXT) {
        self.powerState = powerState
    }

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

public struct DeviceEventInfoEXT: CStructConvertible {
    typealias CStruct = VkDeviceEventInfoEXT

    public let deviceEvent: DeviceEventTypeEXT

    public init(deviceEvent: DeviceEventTypeEXT) {
        self.deviceEvent = deviceEvent
    }

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

public struct DisplayEventInfoEXT: CStructConvertible {
    typealias CStruct = VkDisplayEventInfoEXT

    public let displayEvent: DisplayEventTypeEXT

    public init(displayEvent: DisplayEventTypeEXT) {
        self.displayEvent = displayEvent
    }

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

public struct SwapchainCounterCreateInfoEXT: CStructConvertible {
    typealias CStruct = VkSwapchainCounterCreateInfoEXT

    public let surfaceCounters: SurfaceCounterFlagsEXT

    public init(surfaceCounters: SurfaceCounterFlagsEXT) {
        self.surfaceCounters = surfaceCounters
    }

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

public struct PhysicalDeviceGroupProperties: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceGroupProperties

    public let physicalDeviceCount: UInt32
    public let physicalDevices: (VkPhysicalDevice?, VkPhysicalDevice?, VkPhysicalDevice?, VkPhysicalDevice?, VkPhysicalDevice?, VkPhysicalDevice?, VkPhysicalDevice?, VkPhysicalDevice?, VkPhysicalDevice?, VkPhysicalDevice?, VkPhysicalDevice?, VkPhysicalDevice?, VkPhysicalDevice?, VkPhysicalDevice?, VkPhysicalDevice?, VkPhysicalDevice?, VkPhysicalDevice?, VkPhysicalDevice?, VkPhysicalDevice?, VkPhysicalDevice?, VkPhysicalDevice?, VkPhysicalDevice?, VkPhysicalDevice?, VkPhysicalDevice?, VkPhysicalDevice?, VkPhysicalDevice?, VkPhysicalDevice?, VkPhysicalDevice?, VkPhysicalDevice?, VkPhysicalDevice?, VkPhysicalDevice?, VkPhysicalDevice?)
    public let subsetAllocation: Bool

    init(cStruct: VkPhysicalDeviceGroupProperties, instance: Instance) {
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

public struct MemoryAllocateFlagsInfo: CStructConvertible {
    typealias CStruct = VkMemoryAllocateFlagsInfo

    public let flags: MemoryAllocateFlags
    public let deviceMask: UInt32

    public init(flags: MemoryAllocateFlags, deviceMask: UInt32) {
        self.flags = flags
        self.deviceMask = deviceMask
    }

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

public struct BindBufferMemoryInfo: CStructConvertible {
    typealias CStruct = VkBindBufferMemoryInfo

    public let buffer: Buffer
    public let memory: DeviceMemory
    public let memoryOffset: VkDeviceSize

    public init(buffer: Buffer, memory: DeviceMemory, memoryOffset: VkDeviceSize) {
        self.buffer = buffer
        self.memory = memory
        self.memoryOffset = memoryOffset
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

public struct BindBufferMemoryDeviceGroupInfo: CStructConvertible {
    typealias CStruct = VkBindBufferMemoryDeviceGroupInfo

    public let deviceIndices: Array<UInt32>

    public init(deviceIndices: Array<UInt32>) {
        self.deviceIndices = deviceIndices
    }

    init(cStruct: VkBindBufferMemoryDeviceGroupInfo) {
        self.deviceIndices = Array(UnsafeBufferPointer(start: cStruct.pDeviceIndices, count: Int(cStruct.deviceIndexCount)))
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkBindBufferMemoryDeviceGroupInfo>) throws -> R) rethrows -> R {
        try self.deviceIndices.withUnsafeBufferPointer { ptr_deviceIndices in
            var cStruct = VkBindBufferMemoryDeviceGroupInfo()
            cStruct.sType = VK_STRUCTURE_TYPE_BIND_BUFFER_MEMORY_DEVICE_GROUP_INFO
            cStruct.pNext = nil
            cStruct.deviceIndexCount = UInt32(ptr_deviceIndices.count)
            cStruct.pDeviceIndices = ptr_deviceIndices.baseAddress
            return try body(&cStruct)
        }
    }
}

public struct BindImageMemoryInfo: CStructConvertible {
    typealias CStruct = VkBindImageMemoryInfo

    public let image: Image
    public let memory: DeviceMemory
    public let memoryOffset: VkDeviceSize

    public init(image: Image, memory: DeviceMemory, memoryOffset: VkDeviceSize) {
        self.image = image
        self.memory = memory
        self.memoryOffset = memoryOffset
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

public struct BindImageMemoryDeviceGroupInfo: CStructConvertible {
    typealias CStruct = VkBindImageMemoryDeviceGroupInfo

    public let deviceIndices: Array<UInt32>
    public let splitInstanceBindRegions: Array<Rect2D>

    public init(deviceIndices: Array<UInt32>, splitInstanceBindRegions: Array<Rect2D>) {
        self.deviceIndices = deviceIndices
        self.splitInstanceBindRegions = splitInstanceBindRegions
    }

    init(cStruct: VkBindImageMemoryDeviceGroupInfo) {
        self.deviceIndices = Array(UnsafeBufferPointer(start: cStruct.pDeviceIndices, count: Int(cStruct.deviceIndexCount)))
        self.splitInstanceBindRegions = UnsafeBufferPointer(start: cStruct.pSplitInstanceBindRegions, count: Int(cStruct.splitInstanceBindRegionCount)).map{ Rect2D(cStruct: $0) }
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkBindImageMemoryDeviceGroupInfo>) throws -> R) rethrows -> R {
        try self.deviceIndices.withUnsafeBufferPointer { ptr_deviceIndices in
            try self.splitInstanceBindRegions.withCStructBufferPointer { ptr_splitInstanceBindRegions in
                var cStruct = VkBindImageMemoryDeviceGroupInfo()
                cStruct.sType = VK_STRUCTURE_TYPE_BIND_IMAGE_MEMORY_DEVICE_GROUP_INFO
                cStruct.pNext = nil
                cStruct.deviceIndexCount = UInt32(ptr_deviceIndices.count)
                cStruct.pDeviceIndices = ptr_deviceIndices.baseAddress
                cStruct.splitInstanceBindRegionCount = UInt32(ptr_splitInstanceBindRegions.count)
                cStruct.pSplitInstanceBindRegions = ptr_splitInstanceBindRegions.baseAddress
                return try body(&cStruct)
            }
        }
    }
}

public struct DeviceGroupRenderPassBeginInfo: CStructConvertible {
    typealias CStruct = VkDeviceGroupRenderPassBeginInfo

    public let deviceMask: UInt32
    public let deviceRenderAreas: Array<Rect2D>

    public init(deviceMask: UInt32, deviceRenderAreas: Array<Rect2D>) {
        self.deviceMask = deviceMask
        self.deviceRenderAreas = deviceRenderAreas
    }

    init(cStruct: VkDeviceGroupRenderPassBeginInfo) {
        self.deviceMask = cStruct.deviceMask
        self.deviceRenderAreas = UnsafeBufferPointer(start: cStruct.pDeviceRenderAreas, count: Int(cStruct.deviceRenderAreaCount)).map{ Rect2D(cStruct: $0) }
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkDeviceGroupRenderPassBeginInfo>) throws -> R) rethrows -> R {
        try self.deviceRenderAreas.withCStructBufferPointer { ptr_deviceRenderAreas in
            var cStruct = VkDeviceGroupRenderPassBeginInfo()
            cStruct.sType = VK_STRUCTURE_TYPE_DEVICE_GROUP_RENDER_PASS_BEGIN_INFO
            cStruct.pNext = nil
            cStruct.deviceMask = self.deviceMask
            cStruct.deviceRenderAreaCount = UInt32(ptr_deviceRenderAreas.count)
            cStruct.pDeviceRenderAreas = ptr_deviceRenderAreas.baseAddress
            return try body(&cStruct)
        }
    }
}

public struct DeviceGroupCommandBufferBeginInfo: CStructConvertible {
    typealias CStruct = VkDeviceGroupCommandBufferBeginInfo

    public let deviceMask: UInt32

    public init(deviceMask: UInt32) {
        self.deviceMask = deviceMask
    }

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

public struct DeviceGroupSubmitInfo: CStructConvertible {
    typealias CStruct = VkDeviceGroupSubmitInfo

    public let waitSemaphoreDeviceIndices: Array<UInt32>
    public let commandBufferDeviceMasks: Array<UInt32>
    public let signalSemaphoreDeviceIndices: Array<UInt32>

    public init(waitSemaphoreDeviceIndices: Array<UInt32>, commandBufferDeviceMasks: Array<UInt32>, signalSemaphoreDeviceIndices: Array<UInt32>) {
        self.waitSemaphoreDeviceIndices = waitSemaphoreDeviceIndices
        self.commandBufferDeviceMasks = commandBufferDeviceMasks
        self.signalSemaphoreDeviceIndices = signalSemaphoreDeviceIndices
    }

    init(cStruct: VkDeviceGroupSubmitInfo) {
        self.waitSemaphoreDeviceIndices = Array(UnsafeBufferPointer(start: cStruct.pWaitSemaphoreDeviceIndices, count: Int(cStruct.waitSemaphoreCount)))
        self.commandBufferDeviceMasks = Array(UnsafeBufferPointer(start: cStruct.pCommandBufferDeviceMasks, count: Int(cStruct.commandBufferCount)))
        self.signalSemaphoreDeviceIndices = Array(UnsafeBufferPointer(start: cStruct.pSignalSemaphoreDeviceIndices, count: Int(cStruct.signalSemaphoreCount)))
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkDeviceGroupSubmitInfo>) throws -> R) rethrows -> R {
        try self.waitSemaphoreDeviceIndices.withUnsafeBufferPointer { ptr_waitSemaphoreDeviceIndices in
            try self.commandBufferDeviceMasks.withUnsafeBufferPointer { ptr_commandBufferDeviceMasks in
                try self.signalSemaphoreDeviceIndices.withUnsafeBufferPointer { ptr_signalSemaphoreDeviceIndices in
                    var cStruct = VkDeviceGroupSubmitInfo()
                    cStruct.sType = VK_STRUCTURE_TYPE_DEVICE_GROUP_SUBMIT_INFO
                    cStruct.pNext = nil
                    cStruct.waitSemaphoreCount = UInt32(ptr_waitSemaphoreDeviceIndices.count)
                    cStruct.pWaitSemaphoreDeviceIndices = ptr_waitSemaphoreDeviceIndices.baseAddress
                    cStruct.commandBufferCount = UInt32(ptr_commandBufferDeviceMasks.count)
                    cStruct.pCommandBufferDeviceMasks = ptr_commandBufferDeviceMasks.baseAddress
                    cStruct.signalSemaphoreCount = UInt32(ptr_signalSemaphoreDeviceIndices.count)
                    cStruct.pSignalSemaphoreDeviceIndices = ptr_signalSemaphoreDeviceIndices.baseAddress
                    return try body(&cStruct)
                }
            }
        }
    }
}

public struct DeviceGroupBindSparseInfo: CStructConvertible {
    typealias CStruct = VkDeviceGroupBindSparseInfo

    public let resourceDeviceIndex: UInt32
    public let memoryDeviceIndex: UInt32

    public init(resourceDeviceIndex: UInt32, memoryDeviceIndex: UInt32) {
        self.resourceDeviceIndex = resourceDeviceIndex
        self.memoryDeviceIndex = memoryDeviceIndex
    }

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

public struct DeviceGroupPresentCapabilitiesKHR: CStructConvertible {
    typealias CStruct = VkDeviceGroupPresentCapabilitiesKHR

    public let presentMask: (UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32)
    public let modes: DeviceGroupPresentModeFlagsKHR

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

public struct ImageSwapchainCreateInfoKHR: CStructConvertible {
    typealias CStruct = VkImageSwapchainCreateInfoKHR

    public let swapchain: SwapchainKHR?

    public init(swapchain: SwapchainKHR?) {
        self.swapchain = swapchain
    }


    func withCStruct<R>(_ body: (UnsafePointer<VkImageSwapchainCreateInfoKHR>) throws -> R) rethrows -> R {
        var cStruct = VkImageSwapchainCreateInfoKHR()
        cStruct.sType = VK_STRUCTURE_TYPE_IMAGE_SWAPCHAIN_CREATE_INFO_KHR
        cStruct.pNext = nil
        cStruct.swapchain = self.swapchain?.handle
        return try body(&cStruct)
    }
}

public struct BindImageMemorySwapchainInfoKHR: CStructConvertible {
    typealias CStruct = VkBindImageMemorySwapchainInfoKHR

    public let swapchain: SwapchainKHR
    public let imageIndex: UInt32

    public init(swapchain: SwapchainKHR, imageIndex: UInt32) {
        self.swapchain = swapchain
        self.imageIndex = imageIndex
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

public struct AcquireNextImageInfoKHR: CStructConvertible {
    typealias CStruct = VkAcquireNextImageInfoKHR

    public let swapchain: SwapchainKHR
    public let timeout: UInt64
    public let semaphore: Semaphore?
    public let fence: Fence?
    public let deviceMask: UInt32

    public init(swapchain: SwapchainKHR, timeout: UInt64, semaphore: Semaphore?, fence: Fence?, deviceMask: UInt32) {
        self.swapchain = swapchain
        self.timeout = timeout
        self.semaphore = semaphore
        self.fence = fence
        self.deviceMask = deviceMask
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

public struct DeviceGroupPresentInfoKHR: CStructConvertible {
    typealias CStruct = VkDeviceGroupPresentInfoKHR

    public let deviceMasks: Array<UInt32>
    public let mode: DeviceGroupPresentModeFlagsKHR

    public init(deviceMasks: Array<UInt32>, mode: DeviceGroupPresentModeFlagsKHR) {
        self.deviceMasks = deviceMasks
        self.mode = mode
    }

    init(cStruct: VkDeviceGroupPresentInfoKHR) {
        self.deviceMasks = Array(UnsafeBufferPointer(start: cStruct.pDeviceMasks, count: Int(cStruct.swapchainCount)))
        self.mode = DeviceGroupPresentModeFlagsKHR(rawValue: cStruct.mode.rawValue)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkDeviceGroupPresentInfoKHR>) throws -> R) rethrows -> R {
        try self.deviceMasks.withUnsafeBufferPointer { ptr_deviceMasks in
            var cStruct = VkDeviceGroupPresentInfoKHR()
            cStruct.sType = VK_STRUCTURE_TYPE_DEVICE_GROUP_PRESENT_INFO_KHR
            cStruct.pNext = nil
            cStruct.swapchainCount = UInt32(ptr_deviceMasks.count)
            cStruct.pDeviceMasks = ptr_deviceMasks.baseAddress
            cStruct.mode = VkDeviceGroupPresentModeFlagBitsKHR(rawValue: self.mode.rawValue)
            return try body(&cStruct)
        }
    }
}

public struct DeviceGroupDeviceCreateInfo: CStructConvertible {
    typealias CStruct = VkDeviceGroupDeviceCreateInfo

    public let physicalDevices: Array<PhysicalDevice>

    public init(physicalDevices: Array<PhysicalDevice>) {
        self.physicalDevices = physicalDevices
    }

    init(cStruct: VkDeviceGroupDeviceCreateInfo, instance: Instance) {
        self.physicalDevices = UnsafeBufferPointer(start: cStruct.pPhysicalDevices, count: Int(cStruct.physicalDeviceCount)).map{ PhysicalDevice(handle: $0, instance: instance) }
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkDeviceGroupDeviceCreateInfo>) throws -> R) rethrows -> R {
        try self.physicalDevices.map{ $0.handle }.withUnsafeBufferPointer { ptr_physicalDevices in
            var cStruct = VkDeviceGroupDeviceCreateInfo()
            cStruct.sType = VK_STRUCTURE_TYPE_DEVICE_GROUP_DEVICE_CREATE_INFO
            cStruct.pNext = nil
            cStruct.physicalDeviceCount = UInt32(ptr_physicalDevices.count)
            cStruct.pPhysicalDevices = ptr_physicalDevices.baseAddress
            return try body(&cStruct)
        }
    }
}

public struct DeviceGroupSwapchainCreateInfoKHR: CStructConvertible {
    typealias CStruct = VkDeviceGroupSwapchainCreateInfoKHR

    public let modes: DeviceGroupPresentModeFlagsKHR

    public init(modes: DeviceGroupPresentModeFlagsKHR) {
        self.modes = modes
    }

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

public struct DescriptorUpdateTemplateEntry: CStructConvertible {
    typealias CStruct = VkDescriptorUpdateTemplateEntry

    public let dstBinding: UInt32
    public let dstArrayElement: UInt32
    public let descriptorCount: UInt32
    public let descriptorType: DescriptorType
    public let offset: Int
    public let stride: Int

    public init(dstBinding: UInt32, dstArrayElement: UInt32, descriptorCount: UInt32, descriptorType: DescriptorType, offset: Int, stride: Int) {
        self.dstBinding = dstBinding
        self.dstArrayElement = dstArrayElement
        self.descriptorCount = descriptorCount
        self.descriptorType = descriptorType
        self.offset = offset
        self.stride = stride
    }

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

public struct DescriptorUpdateTemplateCreateInfo: CStructConvertible {
    typealias CStruct = VkDescriptorUpdateTemplateCreateInfo

    public let flags: DescriptorUpdateTemplateCreateFlags
    public let descriptorUpdateEntries: Array<DescriptorUpdateTemplateEntry>
    public let templateType: DescriptorUpdateTemplateType
    public let descriptorSetLayout: DescriptorSetLayout
    public let pipelineBindPoint: PipelineBindPoint
    public let pipelineLayout: PipelineLayout
    public let set: UInt32

    public init(flags: DescriptorUpdateTemplateCreateFlags, descriptorUpdateEntries: Array<DescriptorUpdateTemplateEntry>, templateType: DescriptorUpdateTemplateType, descriptorSetLayout: DescriptorSetLayout, pipelineBindPoint: PipelineBindPoint, pipelineLayout: PipelineLayout, set: UInt32) {
        self.flags = flags
        self.descriptorUpdateEntries = descriptorUpdateEntries
        self.templateType = templateType
        self.descriptorSetLayout = descriptorSetLayout
        self.pipelineBindPoint = pipelineBindPoint
        self.pipelineLayout = pipelineLayout
        self.set = set
    }


    func withCStruct<R>(_ body: (UnsafePointer<VkDescriptorUpdateTemplateCreateInfo>) throws -> R) rethrows -> R {
        try self.descriptorUpdateEntries.withCStructBufferPointer { ptr_descriptorUpdateEntries in
            var cStruct = VkDescriptorUpdateTemplateCreateInfo()
            cStruct.sType = VK_STRUCTURE_TYPE_DESCRIPTOR_UPDATE_TEMPLATE_CREATE_INFO
            cStruct.pNext = nil
            cStruct.flags = self.flags.rawValue
            cStruct.descriptorUpdateEntryCount = UInt32(ptr_descriptorUpdateEntries.count)
            cStruct.pDescriptorUpdateEntries = ptr_descriptorUpdateEntries.baseAddress
            cStruct.templateType = VkDescriptorUpdateTemplateType(rawValue: self.templateType.rawValue)
            cStruct.descriptorSetLayout = self.descriptorSetLayout.handle
            cStruct.pipelineBindPoint = VkPipelineBindPoint(rawValue: self.pipelineBindPoint.rawValue)
            cStruct.pipelineLayout = self.pipelineLayout.handle
            cStruct.set = self.set
            return try body(&cStruct)
        }
    }
}

public struct XYColorEXT: CStructConvertible {
    typealias CStruct = VkXYColorEXT

    public let x: Float
    public let y: Float

    public init(x: Float, y: Float) {
        self.x = x
        self.y = y
    }

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

public struct HdrMetadataEXT: CStructConvertible {
    typealias CStruct = VkHdrMetadataEXT

    public let displayPrimaryRed: XYColorEXT
    public let displayPrimaryGreen: XYColorEXT
    public let displayPrimaryBlue: XYColorEXT
    public let whitePoint: XYColorEXT
    public let maxLuminance: Float
    public let minLuminance: Float
    public let maxContentLightLevel: Float
    public let maxFrameAverageLightLevel: Float

    public init(displayPrimaryRed: XYColorEXT, displayPrimaryGreen: XYColorEXT, displayPrimaryBlue: XYColorEXT, whitePoint: XYColorEXT, maxLuminance: Float, minLuminance: Float, maxContentLightLevel: Float, maxFrameAverageLightLevel: Float) {
        self.displayPrimaryRed = displayPrimaryRed
        self.displayPrimaryGreen = displayPrimaryGreen
        self.displayPrimaryBlue = displayPrimaryBlue
        self.whitePoint = whitePoint
        self.maxLuminance = maxLuminance
        self.minLuminance = minLuminance
        self.maxContentLightLevel = maxContentLightLevel
        self.maxFrameAverageLightLevel = maxFrameAverageLightLevel
    }

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

public struct DisplayNativeHdrSurfaceCapabilitiesAMD: CStructConvertible {
    typealias CStruct = VkDisplayNativeHdrSurfaceCapabilitiesAMD

    public let localDimmingSupport: Bool

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

public struct SwapchainDisplayNativeHdrCreateInfoAMD: CStructConvertible {
    typealias CStruct = VkSwapchainDisplayNativeHdrCreateInfoAMD

    public let localDimmingEnable: Bool

    public init(localDimmingEnable: Bool) {
        self.localDimmingEnable = localDimmingEnable
    }

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

public struct RefreshCycleDurationGOOGLE: CStructConvertible {
    typealias CStruct = VkRefreshCycleDurationGOOGLE

    public let refreshDuration: UInt64

    init(cStruct: VkRefreshCycleDurationGOOGLE) {
        self.refreshDuration = cStruct.refreshDuration
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkRefreshCycleDurationGOOGLE>) throws -> R) rethrows -> R {
        var cStruct = VkRefreshCycleDurationGOOGLE()
        cStruct.refreshDuration = self.refreshDuration
        return try body(&cStruct)
    }
}

public struct PastPresentationTimingGOOGLE: CStructConvertible {
    typealias CStruct = VkPastPresentationTimingGOOGLE

    public let presentID: UInt32
    public let desiredPresentTime: UInt64
    public let actualPresentTime: UInt64
    public let earliestPresentTime: UInt64
    public let presentMargin: UInt64

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

public struct PresentTimeGOOGLE: CStructConvertible {
    typealias CStruct = VkPresentTimeGOOGLE

    public let presentID: UInt32
    public let desiredPresentTime: UInt64

    public init(presentID: UInt32, desiredPresentTime: UInt64) {
        self.presentID = presentID
        self.desiredPresentTime = desiredPresentTime
    }

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

public struct PresentTimesInfoGOOGLE: CStructConvertible {
    typealias CStruct = VkPresentTimesInfoGOOGLE

    public let times: Array<PresentTimeGOOGLE>?

    public init(times: Array<PresentTimeGOOGLE>?) {
        self.times = times
    }

    init(cStruct: VkPresentTimesInfoGOOGLE) {
        self.times = (cStruct.pTimes != nil) ? UnsafeBufferPointer(start: cStruct.pTimes, count: Int(cStruct.swapchainCount)).map{ PresentTimeGOOGLE(cStruct: $0) } : nil
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPresentTimesInfoGOOGLE>) throws -> R) rethrows -> R {
        try self.times.withOptionalCStructBufferPointer { ptr_times in
            var cStruct = VkPresentTimesInfoGOOGLE()
            cStruct.sType = VK_STRUCTURE_TYPE_PRESENT_TIMES_INFO_GOOGLE
            cStruct.pNext = nil
            cStruct.swapchainCount = UInt32(ptr_times.count)
            cStruct.pTimes = ptr_times.baseAddress
            return try body(&cStruct)
        }
    }
}

public struct ViewportWScalingNV: CStructConvertible {
    typealias CStruct = VkViewportWScalingNV

    public let xcoeff: Float
    public let ycoeff: Float

    public init(xcoeff: Float, ycoeff: Float) {
        self.xcoeff = xcoeff
        self.ycoeff = ycoeff
    }

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

public struct PipelineViewportWScalingStateCreateInfoNV: CStructConvertible {
    typealias CStruct = VkPipelineViewportWScalingStateCreateInfoNV

    public let viewportWScalingEnable: Bool
    public let viewportWScalings: Array<ViewportWScalingNV>?

    public init(viewportWScalingEnable: Bool, viewportWScalings: Array<ViewportWScalingNV>?) {
        self.viewportWScalingEnable = viewportWScalingEnable
        self.viewportWScalings = viewportWScalings
    }

    init(cStruct: VkPipelineViewportWScalingStateCreateInfoNV) {
        self.viewportWScalingEnable = cStruct.viewportWScalingEnable == VK_TRUE
        self.viewportWScalings = (cStruct.pViewportWScalings != nil) ? UnsafeBufferPointer(start: cStruct.pViewportWScalings, count: Int(cStruct.viewportCount)).map{ ViewportWScalingNV(cStruct: $0) } : nil
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPipelineViewportWScalingStateCreateInfoNV>) throws -> R) rethrows -> R {
        try self.viewportWScalings.withOptionalCStructBufferPointer { ptr_viewportWScalings in
            var cStruct = VkPipelineViewportWScalingStateCreateInfoNV()
            cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_W_SCALING_STATE_CREATE_INFO_NV
            cStruct.pNext = nil
            cStruct.viewportWScalingEnable = VkBool32(self.viewportWScalingEnable ? VK_TRUE : VK_FALSE)
            cStruct.viewportCount = UInt32(ptr_viewportWScalings.count)
            cStruct.pViewportWScalings = ptr_viewportWScalings.baseAddress
            return try body(&cStruct)
        }
    }
}

public struct ViewportSwizzleNV: CStructConvertible {
    typealias CStruct = VkViewportSwizzleNV

    public let x: ViewportCoordinateSwizzleNV
    public let y: ViewportCoordinateSwizzleNV
    public let z: ViewportCoordinateSwizzleNV
    public let w: ViewportCoordinateSwizzleNV

    public init(x: ViewportCoordinateSwizzleNV, y: ViewportCoordinateSwizzleNV, z: ViewportCoordinateSwizzleNV, w: ViewportCoordinateSwizzleNV) {
        self.x = x
        self.y = y
        self.z = z
        self.w = w
    }

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

public struct PipelineViewportSwizzleStateCreateInfoNV: CStructConvertible {
    typealias CStruct = VkPipelineViewportSwizzleStateCreateInfoNV

    public let flags: PipelineViewportSwizzleStateCreateFlagsNV
    public let viewportSwizzles: Array<ViewportSwizzleNV>

    public init(flags: PipelineViewportSwizzleStateCreateFlagsNV, viewportSwizzles: Array<ViewportSwizzleNV>) {
        self.flags = flags
        self.viewportSwizzles = viewportSwizzles
    }

    init(cStruct: VkPipelineViewportSwizzleStateCreateInfoNV) {
        self.flags = PipelineViewportSwizzleStateCreateFlagsNV(rawValue: cStruct.flags)
        self.viewportSwizzles = UnsafeBufferPointer(start: cStruct.pViewportSwizzles, count: Int(cStruct.viewportCount)).map{ ViewportSwizzleNV(cStruct: $0) }
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPipelineViewportSwizzleStateCreateInfoNV>) throws -> R) rethrows -> R {
        try self.viewportSwizzles.withCStructBufferPointer { ptr_viewportSwizzles in
            var cStruct = VkPipelineViewportSwizzleStateCreateInfoNV()
            cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_SWIZZLE_STATE_CREATE_INFO_NV
            cStruct.pNext = nil
            cStruct.flags = self.flags.rawValue
            cStruct.viewportCount = UInt32(ptr_viewportSwizzles.count)
            cStruct.pViewportSwizzles = ptr_viewportSwizzles.baseAddress
            return try body(&cStruct)
        }
    }
}

public struct PhysicalDeviceDiscardRectanglePropertiesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceDiscardRectanglePropertiesEXT

    public let maxDiscardRectangles: UInt32

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

public struct PipelineDiscardRectangleStateCreateInfoEXT: CStructConvertible {
    typealias CStruct = VkPipelineDiscardRectangleStateCreateInfoEXT

    public let flags: PipelineDiscardRectangleStateCreateFlagsEXT
    public let discardRectangleMode: DiscardRectangleModeEXT
    public let discardRectangles: Array<Rect2D>?

    public init(flags: PipelineDiscardRectangleStateCreateFlagsEXT, discardRectangleMode: DiscardRectangleModeEXT, discardRectangles: Array<Rect2D>?) {
        self.flags = flags
        self.discardRectangleMode = discardRectangleMode
        self.discardRectangles = discardRectangles
    }

    init(cStruct: VkPipelineDiscardRectangleStateCreateInfoEXT) {
        self.flags = PipelineDiscardRectangleStateCreateFlagsEXT(rawValue: cStruct.flags)
        self.discardRectangleMode = DiscardRectangleModeEXT(rawValue: cStruct.discardRectangleMode.rawValue)!
        self.discardRectangles = (cStruct.pDiscardRectangles != nil) ? UnsafeBufferPointer(start: cStruct.pDiscardRectangles, count: Int(cStruct.discardRectangleCount)).map{ Rect2D(cStruct: $0) } : nil
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPipelineDiscardRectangleStateCreateInfoEXT>) throws -> R) rethrows -> R {
        try self.discardRectangles.withOptionalCStructBufferPointer { ptr_discardRectangles in
            var cStruct = VkPipelineDiscardRectangleStateCreateInfoEXT()
            cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_DISCARD_RECTANGLE_STATE_CREATE_INFO_EXT
            cStruct.pNext = nil
            cStruct.flags = self.flags.rawValue
            cStruct.discardRectangleMode = VkDiscardRectangleModeEXT(rawValue: self.discardRectangleMode.rawValue)
            cStruct.discardRectangleCount = UInt32(ptr_discardRectangles.count)
            cStruct.pDiscardRectangles = ptr_discardRectangles.baseAddress
            return try body(&cStruct)
        }
    }
}

public struct PhysicalDeviceMultiviewPerViewAttributesPropertiesNVX: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceMultiviewPerViewAttributesPropertiesNVX

    public let perViewPositionAllComponents: Bool

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

public struct InputAttachmentAspectReference: CStructConvertible {
    typealias CStruct = VkInputAttachmentAspectReference

    public let subpass: UInt32
    public let inputAttachmentIndex: UInt32
    public let aspectMask: ImageAspectFlags

    public init(subpass: UInt32, inputAttachmentIndex: UInt32, aspectMask: ImageAspectFlags) {
        self.subpass = subpass
        self.inputAttachmentIndex = inputAttachmentIndex
        self.aspectMask = aspectMask
    }

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

public struct RenderPassInputAttachmentAspectCreateInfo: CStructConvertible {
    typealias CStruct = VkRenderPassInputAttachmentAspectCreateInfo

    public let aspectReferences: Array<InputAttachmentAspectReference>

    public init(aspectReferences: Array<InputAttachmentAspectReference>) {
        self.aspectReferences = aspectReferences
    }

    init(cStruct: VkRenderPassInputAttachmentAspectCreateInfo) {
        self.aspectReferences = UnsafeBufferPointer(start: cStruct.pAspectReferences, count: Int(cStruct.aspectReferenceCount)).map{ InputAttachmentAspectReference(cStruct: $0) }
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkRenderPassInputAttachmentAspectCreateInfo>) throws -> R) rethrows -> R {
        try self.aspectReferences.withCStructBufferPointer { ptr_aspectReferences in
            var cStruct = VkRenderPassInputAttachmentAspectCreateInfo()
            cStruct.sType = VK_STRUCTURE_TYPE_RENDER_PASS_INPUT_ATTACHMENT_ASPECT_CREATE_INFO
            cStruct.pNext = nil
            cStruct.aspectReferenceCount = UInt32(ptr_aspectReferences.count)
            cStruct.pAspectReferences = ptr_aspectReferences.baseAddress
            return try body(&cStruct)
        }
    }
}

public struct PhysicalDeviceSurfaceInfo2KHR: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceSurfaceInfo2KHR

    public let surface: SurfaceKHR

    public init(surface: SurfaceKHR) {
        self.surface = surface
    }


    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceSurfaceInfo2KHR>) throws -> R) rethrows -> R {
        var cStruct = VkPhysicalDeviceSurfaceInfo2KHR()
        cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SURFACE_INFO_2_KHR
        cStruct.pNext = nil
        cStruct.surface = self.surface.handle
        return try body(&cStruct)
    }
}

public struct SurfaceCapabilities2KHR: CStructConvertible {
    typealias CStruct = VkSurfaceCapabilities2KHR

    public let surfaceCapabilities: SurfaceCapabilitiesKHR

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

public struct SurfaceFormat2KHR: CStructConvertible {
    typealias CStruct = VkSurfaceFormat2KHR

    public let surfaceFormat: SurfaceFormatKHR

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

public struct DisplayProperties2KHR: CStructConvertible {
    typealias CStruct = VkDisplayProperties2KHR

    public let displayProperties: DisplayPropertiesKHR

    init(cStruct: VkDisplayProperties2KHR, physicalDevice: PhysicalDevice) {
        self.displayProperties = DisplayPropertiesKHR(cStruct: cStruct.displayProperties, physicalDevice: physicalDevice)
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

public struct DisplayPlaneProperties2KHR: CStructConvertible {
    typealias CStruct = VkDisplayPlaneProperties2KHR

    public let displayPlaneProperties: DisplayPlanePropertiesKHR

    init(cStruct: VkDisplayPlaneProperties2KHR, physicalDevice: PhysicalDevice) {
        self.displayPlaneProperties = DisplayPlanePropertiesKHR(cStruct: cStruct.displayPlaneProperties, physicalDevice: physicalDevice)
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

public struct DisplayModeProperties2KHR: CStructConvertible {
    typealias CStruct = VkDisplayModeProperties2KHR

    public let displayModeProperties: DisplayModePropertiesKHR

    init(cStruct: VkDisplayModeProperties2KHR, display: DisplayKHR) {
        self.displayModeProperties = DisplayModePropertiesKHR(cStruct: cStruct.displayModeProperties, display: display)
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

public struct DisplayPlaneInfo2KHR: CStructConvertible {
    typealias CStruct = VkDisplayPlaneInfo2KHR

    public let mode: DisplayModeKHR
    public let planeIndex: UInt32

    public init(mode: DisplayModeKHR, planeIndex: UInt32) {
        self.mode = mode
        self.planeIndex = planeIndex
    }

    init(cStruct: VkDisplayPlaneInfo2KHR, display: DisplayKHR) {
        self.mode = DisplayModeKHR(handle: cStruct.mode, display: display)
        self.planeIndex = cStruct.planeIndex
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

public struct DisplayPlaneCapabilities2KHR: CStructConvertible {
    typealias CStruct = VkDisplayPlaneCapabilities2KHR

    public let capabilities: DisplayPlaneCapabilitiesKHR

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

public struct SharedPresentSurfaceCapabilitiesKHR: CStructConvertible {
    typealias CStruct = VkSharedPresentSurfaceCapabilitiesKHR

    public let sharedPresentSupportedUsageFlags: ImageUsageFlags

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

public struct PhysicalDevice16BitStorageFeatures: CStructConvertible {
    typealias CStruct = VkPhysicalDevice16BitStorageFeatures

    public let storageBuffer16BitAccess: Bool
    public let uniformAndStorageBuffer16BitAccess: Bool
    public let storagePushConstant16: Bool
    public let storageInputOutput16: Bool

    public init(storageBuffer16BitAccess: Bool, uniformAndStorageBuffer16BitAccess: Bool, storagePushConstant16: Bool, storageInputOutput16: Bool) {
        self.storageBuffer16BitAccess = storageBuffer16BitAccess
        self.uniformAndStorageBuffer16BitAccess = uniformAndStorageBuffer16BitAccess
        self.storagePushConstant16 = storagePushConstant16
        self.storageInputOutput16 = storageInputOutput16
    }

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

public struct PhysicalDeviceSubgroupProperties: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceSubgroupProperties

    public let subgroupSize: UInt32
    public let supportedStages: ShaderStageFlags
    public let supportedOperations: SubgroupFeatureFlags
    public let quadOperationsInAllStages: Bool

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

public struct PhysicalDeviceShaderSubgroupExtendedTypesFeatures: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceShaderSubgroupExtendedTypesFeatures

    public let shaderSubgroupExtendedTypes: Bool

    public init(shaderSubgroupExtendedTypes: Bool) {
        self.shaderSubgroupExtendedTypes = shaderSubgroupExtendedTypes
    }

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

public struct BufferMemoryRequirementsInfo2: CStructConvertible {
    typealias CStruct = VkBufferMemoryRequirementsInfo2

    public let buffer: Buffer

    public init(buffer: Buffer) {
        self.buffer = buffer
    }


    func withCStruct<R>(_ body: (UnsafePointer<VkBufferMemoryRequirementsInfo2>) throws -> R) rethrows -> R {
        var cStruct = VkBufferMemoryRequirementsInfo2()
        cStruct.sType = VK_STRUCTURE_TYPE_BUFFER_MEMORY_REQUIREMENTS_INFO_2
        cStruct.pNext = nil
        cStruct.buffer = self.buffer.handle
        return try body(&cStruct)
    }
}

public struct ImageMemoryRequirementsInfo2: CStructConvertible {
    typealias CStruct = VkImageMemoryRequirementsInfo2

    public let image: Image

    public init(image: Image) {
        self.image = image
    }


    func withCStruct<R>(_ body: (UnsafePointer<VkImageMemoryRequirementsInfo2>) throws -> R) rethrows -> R {
        var cStruct = VkImageMemoryRequirementsInfo2()
        cStruct.sType = VK_STRUCTURE_TYPE_IMAGE_MEMORY_REQUIREMENTS_INFO_2
        cStruct.pNext = nil
        cStruct.image = self.image.handle
        return try body(&cStruct)
    }
}

public struct ImageSparseMemoryRequirementsInfo2: CStructConvertible {
    typealias CStruct = VkImageSparseMemoryRequirementsInfo2

    public let image: Image

    public init(image: Image) {
        self.image = image
    }


    func withCStruct<R>(_ body: (UnsafePointer<VkImageSparseMemoryRequirementsInfo2>) throws -> R) rethrows -> R {
        var cStruct = VkImageSparseMemoryRequirementsInfo2()
        cStruct.sType = VK_STRUCTURE_TYPE_IMAGE_SPARSE_MEMORY_REQUIREMENTS_INFO_2
        cStruct.pNext = nil
        cStruct.image = self.image.handle
        return try body(&cStruct)
    }
}

public struct MemoryRequirements2: CStructConvertible {
    typealias CStruct = VkMemoryRequirements2

    public let memoryRequirements: MemoryRequirements

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

public struct SparseImageMemoryRequirements2: CStructConvertible {
    typealias CStruct = VkSparseImageMemoryRequirements2

    public let memoryRequirements: SparseImageMemoryRequirements

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

public struct PhysicalDevicePointClippingProperties: CStructConvertible {
    typealias CStruct = VkPhysicalDevicePointClippingProperties

    public let pointClippingBehavior: PointClippingBehavior

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

public struct MemoryDedicatedRequirements: CStructConvertible {
    typealias CStruct = VkMemoryDedicatedRequirements

    public let prefersDedicatedAllocation: Bool
    public let requiresDedicatedAllocation: Bool

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

public struct MemoryDedicatedAllocateInfo: CStructConvertible {
    typealias CStruct = VkMemoryDedicatedAllocateInfo

    public let image: Image?
    public let buffer: Buffer?

    public init(image: Image?, buffer: Buffer?) {
        self.image = image
        self.buffer = buffer
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

public struct ImageViewUsageCreateInfo: CStructConvertible {
    typealias CStruct = VkImageViewUsageCreateInfo

    public let usage: ImageUsageFlags

    public init(usage: ImageUsageFlags) {
        self.usage = usage
    }

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

public struct PipelineTessellationDomainOriginStateCreateInfo: CStructConvertible {
    typealias CStruct = VkPipelineTessellationDomainOriginStateCreateInfo

    public let domainOrigin: TessellationDomainOrigin

    public init(domainOrigin: TessellationDomainOrigin) {
        self.domainOrigin = domainOrigin
    }

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

public struct SamplerYcbcrConversionInfo: CStructConvertible {
    typealias CStruct = VkSamplerYcbcrConversionInfo

    public let conversion: SamplerYcbcrConversion

    public init(conversion: SamplerYcbcrConversion) {
        self.conversion = conversion
    }


    func withCStruct<R>(_ body: (UnsafePointer<VkSamplerYcbcrConversionInfo>) throws -> R) rethrows -> R {
        var cStruct = VkSamplerYcbcrConversionInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_SAMPLER_YCBCR_CONVERSION_INFO
        cStruct.pNext = nil
        cStruct.conversion = self.conversion.handle
        return try body(&cStruct)
    }
}

public struct SamplerYcbcrConversionCreateInfo: CStructConvertible {
    typealias CStruct = VkSamplerYcbcrConversionCreateInfo

    public let format: Format
    public let ycbcrModel: SamplerYcbcrModelConversion
    public let ycbcrRange: SamplerYcbcrRange
    public let components: ComponentMapping
    public let xChromaOffset: ChromaLocation
    public let yChromaOffset: ChromaLocation
    public let chromaFilter: Filter
    public let forceExplicitReconstruction: Bool

    public init(format: Format, ycbcrModel: SamplerYcbcrModelConversion, ycbcrRange: SamplerYcbcrRange, components: ComponentMapping, xChromaOffset: ChromaLocation, yChromaOffset: ChromaLocation, chromaFilter: Filter, forceExplicitReconstruction: Bool) {
        self.format = format
        self.ycbcrModel = ycbcrModel
        self.ycbcrRange = ycbcrRange
        self.components = components
        self.xChromaOffset = xChromaOffset
        self.yChromaOffset = yChromaOffset
        self.chromaFilter = chromaFilter
        self.forceExplicitReconstruction = forceExplicitReconstruction
    }

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

public struct BindImagePlaneMemoryInfo: CStructConvertible {
    typealias CStruct = VkBindImagePlaneMemoryInfo

    public let planeAspect: ImageAspectFlags

    public init(planeAspect: ImageAspectFlags) {
        self.planeAspect = planeAspect
    }

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

public struct ImagePlaneMemoryRequirementsInfo: CStructConvertible {
    typealias CStruct = VkImagePlaneMemoryRequirementsInfo

    public let planeAspect: ImageAspectFlags

    public init(planeAspect: ImageAspectFlags) {
        self.planeAspect = planeAspect
    }

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

public struct PhysicalDeviceSamplerYcbcrConversionFeatures: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceSamplerYcbcrConversionFeatures

    public let samplerYcbcrConversion: Bool

    public init(samplerYcbcrConversion: Bool) {
        self.samplerYcbcrConversion = samplerYcbcrConversion
    }

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

public struct SamplerYcbcrConversionImageFormatProperties: CStructConvertible {
    typealias CStruct = VkSamplerYcbcrConversionImageFormatProperties

    public let combinedImageSamplerDescriptorCount: UInt32

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

public struct TextureLODGatherFormatPropertiesAMD: CStructConvertible {
    typealias CStruct = VkTextureLODGatherFormatPropertiesAMD

    public let supportsTextureGatherLODBiasAMD: Bool

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

public struct ConditionalRenderingBeginInfoEXT: CStructConvertible {
    typealias CStruct = VkConditionalRenderingBeginInfoEXT

    public let buffer: Buffer
    public let offset: VkDeviceSize
    public let flags: ConditionalRenderingFlagsEXT

    public init(buffer: Buffer, offset: VkDeviceSize, flags: ConditionalRenderingFlagsEXT) {
        self.buffer = buffer
        self.offset = offset
        self.flags = flags
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

public struct ProtectedSubmitInfo: CStructConvertible {
    typealias CStruct = VkProtectedSubmitInfo

    public let protectedSubmit: Bool

    public init(protectedSubmit: Bool) {
        self.protectedSubmit = protectedSubmit
    }

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

public struct PhysicalDeviceProtectedMemoryFeatures: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceProtectedMemoryFeatures

    public let protectedMemory: Bool

    public init(protectedMemory: Bool) {
        self.protectedMemory = protectedMemory
    }

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

public struct PhysicalDeviceProtectedMemoryProperties: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceProtectedMemoryProperties

    public let protectedNoFault: Bool

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

public struct DeviceQueueInfo2: CStructConvertible {
    typealias CStruct = VkDeviceQueueInfo2

    public let flags: DeviceQueueCreateFlags
    public let queueFamilyIndex: UInt32
    public let queueIndex: UInt32

    public init(flags: DeviceQueueCreateFlags, queueFamilyIndex: UInt32, queueIndex: UInt32) {
        self.flags = flags
        self.queueFamilyIndex = queueFamilyIndex
        self.queueIndex = queueIndex
    }

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

public struct PipelineCoverageToColorStateCreateInfoNV: CStructConvertible {
    typealias CStruct = VkPipelineCoverageToColorStateCreateInfoNV

    public let flags: PipelineCoverageToColorStateCreateFlagsNV
    public let coverageToColorEnable: Bool
    public let coverageToColorLocation: UInt32

    public init(flags: PipelineCoverageToColorStateCreateFlagsNV, coverageToColorEnable: Bool, coverageToColorLocation: UInt32) {
        self.flags = flags
        self.coverageToColorEnable = coverageToColorEnable
        self.coverageToColorLocation = coverageToColorLocation
    }

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

public struct PhysicalDeviceSamplerFilterMinmaxProperties: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceSamplerFilterMinmaxProperties

    public let filterMinmaxSingleComponentFormats: Bool
    public let filterMinmaxImageComponentMapping: Bool

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

public struct SampleLocationEXT: CStructConvertible {
    typealias CStruct = VkSampleLocationEXT

    public let x: Float
    public let y: Float

    public init(x: Float, y: Float) {
        self.x = x
        self.y = y
    }

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

public struct SampleLocationsInfoEXT: CStructConvertible {
    typealias CStruct = VkSampleLocationsInfoEXT

    public let sampleLocationsPerPixel: SampleCountFlags
    public let sampleLocationGridSize: Extent2D
    public let sampleLocations: Array<SampleLocationEXT>

    public init(sampleLocationsPerPixel: SampleCountFlags, sampleLocationGridSize: Extent2D, sampleLocations: Array<SampleLocationEXT>) {
        self.sampleLocationsPerPixel = sampleLocationsPerPixel
        self.sampleLocationGridSize = sampleLocationGridSize
        self.sampleLocations = sampleLocations
    }

    init(cStruct: VkSampleLocationsInfoEXT) {
        self.sampleLocationsPerPixel = SampleCountFlags(rawValue: cStruct.sampleLocationsPerPixel.rawValue)
        self.sampleLocationGridSize = Extent2D(cStruct: cStruct.sampleLocationGridSize)
        self.sampleLocations = UnsafeBufferPointer(start: cStruct.pSampleLocations, count: Int(cStruct.sampleLocationsCount)).map{ SampleLocationEXT(cStruct: $0) }
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkSampleLocationsInfoEXT>) throws -> R) rethrows -> R {
        try self.sampleLocationGridSize.withCStruct { ptr_sampleLocationGridSize in
            try self.sampleLocations.withCStructBufferPointer { ptr_sampleLocations in
                var cStruct = VkSampleLocationsInfoEXT()
                cStruct.sType = VK_STRUCTURE_TYPE_SAMPLE_LOCATIONS_INFO_EXT
                cStruct.pNext = nil
                cStruct.sampleLocationsPerPixel = VkSampleCountFlagBits(rawValue: self.sampleLocationsPerPixel.rawValue)
                cStruct.sampleLocationGridSize = ptr_sampleLocationGridSize.pointee
                cStruct.sampleLocationsCount = UInt32(ptr_sampleLocations.count)
                cStruct.pSampleLocations = ptr_sampleLocations.baseAddress
                return try body(&cStruct)
            }
        }
    }
}

public struct AttachmentSampleLocationsEXT: CStructConvertible {
    typealias CStruct = VkAttachmentSampleLocationsEXT

    public let attachmentIndex: UInt32
    public let sampleLocationsInfo: SampleLocationsInfoEXT

    public init(attachmentIndex: UInt32, sampleLocationsInfo: SampleLocationsInfoEXT) {
        self.attachmentIndex = attachmentIndex
        self.sampleLocationsInfo = sampleLocationsInfo
    }

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

public struct SubpassSampleLocationsEXT: CStructConvertible {
    typealias CStruct = VkSubpassSampleLocationsEXT

    public let subpassIndex: UInt32
    public let sampleLocationsInfo: SampleLocationsInfoEXT

    public init(subpassIndex: UInt32, sampleLocationsInfo: SampleLocationsInfoEXT) {
        self.subpassIndex = subpassIndex
        self.sampleLocationsInfo = sampleLocationsInfo
    }

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

public struct RenderPassSampleLocationsBeginInfoEXT: CStructConvertible {
    typealias CStruct = VkRenderPassSampleLocationsBeginInfoEXT

    public let attachmentInitialSampleLocations: Array<AttachmentSampleLocationsEXT>
    public let postSubpassSampleLocations: Array<SubpassSampleLocationsEXT>

    public init(attachmentInitialSampleLocations: Array<AttachmentSampleLocationsEXT>, postSubpassSampleLocations: Array<SubpassSampleLocationsEXT>) {
        self.attachmentInitialSampleLocations = attachmentInitialSampleLocations
        self.postSubpassSampleLocations = postSubpassSampleLocations
    }

    init(cStruct: VkRenderPassSampleLocationsBeginInfoEXT) {
        self.attachmentInitialSampleLocations = UnsafeBufferPointer(start: cStruct.pAttachmentInitialSampleLocations, count: Int(cStruct.attachmentInitialSampleLocationsCount)).map{ AttachmentSampleLocationsEXT(cStruct: $0) }
        self.postSubpassSampleLocations = UnsafeBufferPointer(start: cStruct.pPostSubpassSampleLocations, count: Int(cStruct.postSubpassSampleLocationsCount)).map{ SubpassSampleLocationsEXT(cStruct: $0) }
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkRenderPassSampleLocationsBeginInfoEXT>) throws -> R) rethrows -> R {
        try self.attachmentInitialSampleLocations.withCStructBufferPointer { ptr_attachmentInitialSampleLocations in
            try self.postSubpassSampleLocations.withCStructBufferPointer { ptr_postSubpassSampleLocations in
                var cStruct = VkRenderPassSampleLocationsBeginInfoEXT()
                cStruct.sType = VK_STRUCTURE_TYPE_RENDER_PASS_SAMPLE_LOCATIONS_BEGIN_INFO_EXT
                cStruct.pNext = nil
                cStruct.attachmentInitialSampleLocationsCount = UInt32(ptr_attachmentInitialSampleLocations.count)
                cStruct.pAttachmentInitialSampleLocations = ptr_attachmentInitialSampleLocations.baseAddress
                cStruct.postSubpassSampleLocationsCount = UInt32(ptr_postSubpassSampleLocations.count)
                cStruct.pPostSubpassSampleLocations = ptr_postSubpassSampleLocations.baseAddress
                return try body(&cStruct)
            }
        }
    }
}

public struct PipelineSampleLocationsStateCreateInfoEXT: CStructConvertible {
    typealias CStruct = VkPipelineSampleLocationsStateCreateInfoEXT

    public let sampleLocationsEnable: Bool
    public let sampleLocationsInfo: SampleLocationsInfoEXT

    public init(sampleLocationsEnable: Bool, sampleLocationsInfo: SampleLocationsInfoEXT) {
        self.sampleLocationsEnable = sampleLocationsEnable
        self.sampleLocationsInfo = sampleLocationsInfo
    }

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

public struct PhysicalDeviceSampleLocationsPropertiesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceSampleLocationsPropertiesEXT

    public let sampleLocationSampleCounts: SampleCountFlags
    public let maxSampleLocationGridSize: Extent2D
    public let sampleLocationCoordinateRange: (Float, Float)
    public let sampleLocationSubPixelBits: UInt32
    public let variableSampleLocations: Bool

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

public struct MultisamplePropertiesEXT: CStructConvertible {
    typealias CStruct = VkMultisamplePropertiesEXT

    public let maxSampleLocationGridSize: Extent2D

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

public struct SamplerReductionModeCreateInfo: CStructConvertible {
    typealias CStruct = VkSamplerReductionModeCreateInfo

    public let reductionMode: SamplerReductionMode

    public init(reductionMode: SamplerReductionMode) {
        self.reductionMode = reductionMode
    }

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

public struct PhysicalDeviceBlendOperationAdvancedFeaturesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceBlendOperationAdvancedFeaturesEXT

    public let advancedBlendCoherentOperations: Bool

    public init(advancedBlendCoherentOperations: Bool) {
        self.advancedBlendCoherentOperations = advancedBlendCoherentOperations
    }

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

public struct PhysicalDeviceBlendOperationAdvancedPropertiesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceBlendOperationAdvancedPropertiesEXT

    public let advancedBlendMaxColorAttachments: UInt32
    public let advancedBlendIndependentBlend: Bool
    public let advancedBlendNonPremultipliedSrcColor: Bool
    public let advancedBlendNonPremultipliedDstColor: Bool
    public let advancedBlendCorrelatedOverlap: Bool
    public let advancedBlendAllOperations: Bool

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

public struct PipelineColorBlendAdvancedStateCreateInfoEXT: CStructConvertible {
    typealias CStruct = VkPipelineColorBlendAdvancedStateCreateInfoEXT

    public let srcPremultiplied: Bool
    public let dstPremultiplied: Bool
    public let blendOverlap: BlendOverlapEXT

    public init(srcPremultiplied: Bool, dstPremultiplied: Bool, blendOverlap: BlendOverlapEXT) {
        self.srcPremultiplied = srcPremultiplied
        self.dstPremultiplied = dstPremultiplied
        self.blendOverlap = blendOverlap
    }

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

public struct PhysicalDeviceInlineUniformBlockFeaturesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceInlineUniformBlockFeaturesEXT

    public let inlineUniformBlock: Bool
    public let descriptorBindingInlineUniformBlockUpdateAfterBind: Bool

    public init(inlineUniformBlock: Bool, descriptorBindingInlineUniformBlockUpdateAfterBind: Bool) {
        self.inlineUniformBlock = inlineUniformBlock
        self.descriptorBindingInlineUniformBlockUpdateAfterBind = descriptorBindingInlineUniformBlockUpdateAfterBind
    }

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

public struct PhysicalDeviceInlineUniformBlockPropertiesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceInlineUniformBlockPropertiesEXT

    public let maxInlineUniformBlockSize: UInt32
    public let maxPerStageDescriptorInlineUniformBlocks: UInt32
    public let maxPerStageDescriptorUpdateAfterBindInlineUniformBlocks: UInt32
    public let maxDescriptorSetInlineUniformBlocks: UInt32
    public let maxDescriptorSetUpdateAfterBindInlineUniformBlocks: UInt32

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

public struct WriteDescriptorSetInlineUniformBlockEXT: CStructConvertible {
    typealias CStruct = VkWriteDescriptorSetInlineUniformBlockEXT

    public let dataSize: UInt32
    public let data: UnsafeRawPointer

    public init(dataSize: UInt32, data: UnsafeRawPointer) {
        self.dataSize = dataSize
        self.data = data
    }

    init(cStruct: VkWriteDescriptorSetInlineUniformBlockEXT) {
        self.dataSize = cStruct.dataSize
        self.data = cStruct.pData
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkWriteDescriptorSetInlineUniformBlockEXT>) throws -> R) rethrows -> R {
        var cStruct = VkWriteDescriptorSetInlineUniformBlockEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET_INLINE_UNIFORM_BLOCK_EXT
        cStruct.pNext = nil
        cStruct.dataSize = self.dataSize
        cStruct.pData = self.data
        return try body(&cStruct)
    }
}

public struct DescriptorPoolInlineUniformBlockCreateInfoEXT: CStructConvertible {
    typealias CStruct = VkDescriptorPoolInlineUniformBlockCreateInfoEXT

    public let maxInlineUniformBlockBindings: UInt32

    public init(maxInlineUniformBlockBindings: UInt32) {
        self.maxInlineUniformBlockBindings = maxInlineUniformBlockBindings
    }

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

public struct PipelineCoverageModulationStateCreateInfoNV: CStructConvertible {
    typealias CStruct = VkPipelineCoverageModulationStateCreateInfoNV

    public let flags: PipelineCoverageModulationStateCreateFlagsNV
    public let coverageModulationMode: CoverageModulationModeNV
    public let coverageModulationTableEnable: Bool
    public let coverageModulationTable: Array<Float>?

    public init(flags: PipelineCoverageModulationStateCreateFlagsNV, coverageModulationMode: CoverageModulationModeNV, coverageModulationTableEnable: Bool, coverageModulationTable: Array<Float>?) {
        self.flags = flags
        self.coverageModulationMode = coverageModulationMode
        self.coverageModulationTableEnable = coverageModulationTableEnable
        self.coverageModulationTable = coverageModulationTable
    }

    init(cStruct: VkPipelineCoverageModulationStateCreateInfoNV) {
        self.flags = PipelineCoverageModulationStateCreateFlagsNV(rawValue: cStruct.flags)
        self.coverageModulationMode = CoverageModulationModeNV(rawValue: cStruct.coverageModulationMode.rawValue)!
        self.coverageModulationTableEnable = cStruct.coverageModulationTableEnable == VK_TRUE
        self.coverageModulationTable = (cStruct.pCoverageModulationTable != nil) ? Array(UnsafeBufferPointer(start: cStruct.pCoverageModulationTable, count: Int(cStruct.coverageModulationTableCount))) : nil
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPipelineCoverageModulationStateCreateInfoNV>) throws -> R) rethrows -> R {
        try self.coverageModulationTable.withOptionalUnsafeBufferPointer { ptr_coverageModulationTable in
            var cStruct = VkPipelineCoverageModulationStateCreateInfoNV()
            cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_COVERAGE_MODULATION_STATE_CREATE_INFO_NV
            cStruct.pNext = nil
            cStruct.flags = self.flags.rawValue
            cStruct.coverageModulationMode = VkCoverageModulationModeNV(rawValue: self.coverageModulationMode.rawValue)
            cStruct.coverageModulationTableEnable = VkBool32(self.coverageModulationTableEnable ? VK_TRUE : VK_FALSE)
            cStruct.coverageModulationTableCount = UInt32(ptr_coverageModulationTable.count)
            cStruct.pCoverageModulationTable = ptr_coverageModulationTable.baseAddress
            return try body(&cStruct)
        }
    }
}

public struct ImageFormatListCreateInfo: CStructConvertible {
    typealias CStruct = VkImageFormatListCreateInfo

    public let viewFormats: Array<Format>

    public init(viewFormats: Array<Format>) {
        self.viewFormats = viewFormats
    }

    init(cStruct: VkImageFormatListCreateInfo) {
        self.viewFormats = UnsafeBufferPointer(start: cStruct.pViewFormats, count: Int(cStruct.viewFormatCount)).map{ Format(rawValue: $0.rawValue)! }
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkImageFormatListCreateInfo>) throws -> R) rethrows -> R {
        try self.viewFormats.map{ VkFormat(rawValue: $0.rawValue) }.withUnsafeBufferPointer { ptr_viewFormats in
            var cStruct = VkImageFormatListCreateInfo()
            cStruct.sType = VK_STRUCTURE_TYPE_IMAGE_FORMAT_LIST_CREATE_INFO
            cStruct.pNext = nil
            cStruct.viewFormatCount = UInt32(ptr_viewFormats.count)
            cStruct.pViewFormats = ptr_viewFormats.baseAddress
            return try body(&cStruct)
        }
    }
}

public struct ValidationCacheCreateInfoEXT: CStructConvertible {
    typealias CStruct = VkValidationCacheCreateInfoEXT

    public let flags: ValidationCacheCreateFlagsEXT
    public let initialDataSize: Int
    public let initialData: UnsafeRawPointer

    public init(flags: ValidationCacheCreateFlagsEXT, initialDataSize: Int, initialData: UnsafeRawPointer) {
        self.flags = flags
        self.initialDataSize = initialDataSize
        self.initialData = initialData
    }

    init(cStruct: VkValidationCacheCreateInfoEXT) {
        self.flags = ValidationCacheCreateFlagsEXT(rawValue: cStruct.flags)
        self.initialDataSize = cStruct.initialDataSize
        self.initialData = cStruct.pInitialData
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkValidationCacheCreateInfoEXT>) throws -> R) rethrows -> R {
        var cStruct = VkValidationCacheCreateInfoEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_VALIDATION_CACHE_CREATE_INFO_EXT
        cStruct.pNext = nil
        cStruct.flags = self.flags.rawValue
        cStruct.initialDataSize = self.initialDataSize
        cStruct.pInitialData = self.initialData
        return try body(&cStruct)
    }
}

public struct ShaderModuleValidationCacheCreateInfoEXT: CStructConvertible {
    typealias CStruct = VkShaderModuleValidationCacheCreateInfoEXT

    public let validationCache: ValidationCacheEXT

    public init(validationCache: ValidationCacheEXT) {
        self.validationCache = validationCache
    }


    func withCStruct<R>(_ body: (UnsafePointer<VkShaderModuleValidationCacheCreateInfoEXT>) throws -> R) rethrows -> R {
        var cStruct = VkShaderModuleValidationCacheCreateInfoEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_SHADER_MODULE_VALIDATION_CACHE_CREATE_INFO_EXT
        cStruct.pNext = nil
        cStruct.validationCache = self.validationCache.handle
        return try body(&cStruct)
    }
}

public struct PhysicalDeviceMaintenance3Properties: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceMaintenance3Properties

    public let maxPerSetDescriptors: UInt32
    public let maxMemoryAllocationSize: VkDeviceSize

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

public struct DescriptorSetLayoutSupport: CStructConvertible {
    typealias CStruct = VkDescriptorSetLayoutSupport

    public let supported: Bool

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

public struct PhysicalDeviceShaderDrawParametersFeatures: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceShaderDrawParametersFeatures

    public let shaderDrawParameters: Bool

    public init(shaderDrawParameters: Bool) {
        self.shaderDrawParameters = shaderDrawParameters
    }

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

public struct PhysicalDeviceShaderFloat16Int8Features: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceShaderFloat16Int8Features

    public let shaderFloat16: Bool
    public let shaderInt8: Bool

    public init(shaderFloat16: Bool, shaderInt8: Bool) {
        self.shaderFloat16 = shaderFloat16
        self.shaderInt8 = shaderInt8
    }

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

public struct PhysicalDeviceFloatControlsProperties: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceFloatControlsProperties

    public let denormBehaviorIndependence: ShaderFloatControlsIndependence
    public let roundingModeIndependence: ShaderFloatControlsIndependence
    public let shaderSignedZeroInfNanPreserveFloat16: Bool
    public let shaderSignedZeroInfNanPreserveFloat32: Bool
    public let shaderSignedZeroInfNanPreserveFloat64: Bool
    public let shaderDenormPreserveFloat16: Bool
    public let shaderDenormPreserveFloat32: Bool
    public let shaderDenormPreserveFloat64: Bool
    public let shaderDenormFlushToZeroFloat16: Bool
    public let shaderDenormFlushToZeroFloat32: Bool
    public let shaderDenormFlushToZeroFloat64: Bool
    public let shaderRoundingModeRTEFloat16: Bool
    public let shaderRoundingModeRTEFloat32: Bool
    public let shaderRoundingModeRTEFloat64: Bool
    public let shaderRoundingModeRTZFloat16: Bool
    public let shaderRoundingModeRTZFloat32: Bool
    public let shaderRoundingModeRTZFloat64: Bool

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

public struct PhysicalDeviceHostQueryResetFeatures: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceHostQueryResetFeatures

    public let hostQueryReset: Bool

    public init(hostQueryReset: Bool) {
        self.hostQueryReset = hostQueryReset
    }

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

public struct ShaderResourceUsageAMD: CStructConvertible {
    typealias CStruct = VkShaderResourceUsageAMD

    public let numUsedVgprs: UInt32
    public let numUsedSgprs: UInt32
    public let ldsSizePerLocalWorkGroup: UInt32
    public let ldsUsageSizeInBytes: Int
    public let scratchMemUsageInBytes: Int

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

public struct ShaderStatisticsInfoAMD: CStructConvertible {
    typealias CStruct = VkShaderStatisticsInfoAMD

    public let shaderStageMask: ShaderStageFlags
    public let resourceUsage: ShaderResourceUsageAMD
    public let numPhysicalVgprs: UInt32
    public let numPhysicalSgprs: UInt32
    public let numAvailableVgprs: UInt32
    public let numAvailableSgprs: UInt32
    public let computeWorkGroupSize: (UInt32, UInt32, UInt32)

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

public struct DeviceQueueGlobalPriorityCreateInfoEXT: CStructConvertible {
    typealias CStruct = VkDeviceQueueGlobalPriorityCreateInfoEXT

    public let globalPriority: QueueGlobalPriorityEXT

    public init(globalPriority: QueueGlobalPriorityEXT) {
        self.globalPriority = globalPriority
    }

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

public struct DebugUtilsObjectNameInfoEXT: CStructConvertible {
    typealias CStruct = VkDebugUtilsObjectNameInfoEXT

    public let objectType: ObjectType
    public let objectHandle: UInt64
    public let objectName: String

    public init(objectType: ObjectType, objectHandle: UInt64, objectName: String) {
        self.objectType = objectType
        self.objectHandle = objectHandle
        self.objectName = objectName
    }

    init(cStruct: VkDebugUtilsObjectNameInfoEXT) {
        self.objectType = ObjectType(rawValue: cStruct.objectType.rawValue)!
        self.objectHandle = cStruct.objectHandle
        self.objectName = String(cString: cStruct.pObjectName)
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkDebugUtilsObjectNameInfoEXT>) throws -> R) rethrows -> R {
        try self.objectName.withCString { cString_objectName in
            var cStruct = VkDebugUtilsObjectNameInfoEXT()
            cStruct.sType = VK_STRUCTURE_TYPE_DEBUG_UTILS_OBJECT_NAME_INFO_EXT
            cStruct.pNext = nil
            cStruct.objectType = VkObjectType(rawValue: self.objectType.rawValue)
            cStruct.objectHandle = self.objectHandle
            cStruct.pObjectName = cString_objectName
            return try body(&cStruct)
        }
    }
}

public struct DebugUtilsObjectTagInfoEXT: CStructConvertible {
    typealias CStruct = VkDebugUtilsObjectTagInfoEXT

    public let objectType: ObjectType
    public let objectHandle: UInt64
    public let tagName: UInt64
    public let tagSize: Int
    public let tag: UnsafeRawPointer

    public init(objectType: ObjectType, objectHandle: UInt64, tagName: UInt64, tagSize: Int, tag: UnsafeRawPointer) {
        self.objectType = objectType
        self.objectHandle = objectHandle
        self.tagName = tagName
        self.tagSize = tagSize
        self.tag = tag
    }

    init(cStruct: VkDebugUtilsObjectTagInfoEXT) {
        self.objectType = ObjectType(rawValue: cStruct.objectType.rawValue)!
        self.objectHandle = cStruct.objectHandle
        self.tagName = cStruct.tagName
        self.tagSize = cStruct.tagSize
        self.tag = cStruct.pTag
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkDebugUtilsObjectTagInfoEXT>) throws -> R) rethrows -> R {
        var cStruct = VkDebugUtilsObjectTagInfoEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_DEBUG_UTILS_OBJECT_TAG_INFO_EXT
        cStruct.pNext = nil
        cStruct.objectType = VkObjectType(rawValue: self.objectType.rawValue)
        cStruct.objectHandle = self.objectHandle
        cStruct.tagName = self.tagName
        cStruct.tagSize = self.tagSize
        cStruct.pTag = self.tag
        return try body(&cStruct)
    }
}

public struct DebugUtilsLabelEXT: CStructConvertible {
    typealias CStruct = VkDebugUtilsLabelEXT

    public let labelName: String
    public let color: (Float, Float, Float, Float)

    public init(labelName: String, color: (Float, Float, Float, Float)) {
        self.labelName = labelName
        self.color = color
    }

    init(cStruct: VkDebugUtilsLabelEXT) {
        self.labelName = String(cString: cStruct.pLabelName)
        self.color = cStruct.color
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkDebugUtilsLabelEXT>) throws -> R) rethrows -> R {
        try self.labelName.withCString { cString_labelName in
            var cStruct = VkDebugUtilsLabelEXT()
            cStruct.sType = VK_STRUCTURE_TYPE_DEBUG_UTILS_LABEL_EXT
            cStruct.pNext = nil
            cStruct.pLabelName = cString_labelName
            cStruct.color = self.color
            return try body(&cStruct)
        }
    }
}

public struct DebugUtilsMessengerCreateInfoEXT: CStructConvertible {
    typealias CStruct = VkDebugUtilsMessengerCreateInfoEXT

    public let flags: DebugUtilsMessengerCreateFlagsEXT
    public let messageSeverity: DebugUtilsMessageSeverityFlagsEXT
    public let messageType: DebugUtilsMessageTypeFlagsEXT
    public let pfnUserCallback: PFN_vkDebugUtilsMessengerCallbackEXT
    public let userData: UnsafeMutableRawPointer

    public init(flags: DebugUtilsMessengerCreateFlagsEXT, messageSeverity: DebugUtilsMessageSeverityFlagsEXT, messageType: DebugUtilsMessageTypeFlagsEXT, pfnUserCallback: @escaping PFN_vkDebugUtilsMessengerCallbackEXT, userData: UnsafeMutableRawPointer) {
        self.flags = flags
        self.messageSeverity = messageSeverity
        self.messageType = messageType
        self.pfnUserCallback = pfnUserCallback
        self.userData = userData
    }

    init(cStruct: VkDebugUtilsMessengerCreateInfoEXT) {
        self.flags = DebugUtilsMessengerCreateFlagsEXT(rawValue: cStruct.flags)
        self.messageSeverity = DebugUtilsMessageSeverityFlagsEXT(rawValue: cStruct.messageSeverity)
        self.messageType = DebugUtilsMessageTypeFlagsEXT(rawValue: cStruct.messageType)
        self.pfnUserCallback = cStruct.pfnUserCallback
        self.userData = cStruct.pUserData
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkDebugUtilsMessengerCreateInfoEXT>) throws -> R) rethrows -> R {
        var cStruct = VkDebugUtilsMessengerCreateInfoEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_DEBUG_UTILS_MESSENGER_CREATE_INFO_EXT
        cStruct.pNext = nil
        cStruct.flags = self.flags.rawValue
        cStruct.messageSeverity = self.messageSeverity.rawValue
        cStruct.messageType = self.messageType.rawValue
        cStruct.pfnUserCallback = self.pfnUserCallback
        cStruct.pUserData = self.userData
        return try body(&cStruct)
    }
}

public struct DebugUtilsMessengerCallbackDataEXT: CStructConvertible {
    typealias CStruct = VkDebugUtilsMessengerCallbackDataEXT

    public let flags: DebugUtilsMessengerCallbackDataFlagsEXT
    public let messageIdName: String?
    public let messageIdNumber: Int32
    public let message: String
    public let queueLabels: Array<DebugUtilsLabelEXT>
    public let cmdBufLabels: Array<DebugUtilsLabelEXT>
    public let objects: Array<DebugUtilsObjectNameInfoEXT>

    public init(flags: DebugUtilsMessengerCallbackDataFlagsEXT, messageIdName: String?, messageIdNumber: Int32, message: String, queueLabels: Array<DebugUtilsLabelEXT>, cmdBufLabels: Array<DebugUtilsLabelEXT>, objects: Array<DebugUtilsObjectNameInfoEXT>) {
        self.flags = flags
        self.messageIdName = messageIdName
        self.messageIdNumber = messageIdNumber
        self.message = message
        self.queueLabels = queueLabels
        self.cmdBufLabels = cmdBufLabels
        self.objects = objects
    }

    init(cStruct: VkDebugUtilsMessengerCallbackDataEXT) {
        self.flags = DebugUtilsMessengerCallbackDataFlagsEXT(rawValue: cStruct.flags)
        self.messageIdName = (cStruct.pMessageIdName != nil) ? String(cString: cStruct.pMessageIdName) : nil
        self.messageIdNumber = cStruct.messageIdNumber
        self.message = String(cString: cStruct.pMessage)
        self.queueLabels = UnsafeBufferPointer(start: cStruct.pQueueLabels, count: Int(cStruct.queueLabelCount)).map{ DebugUtilsLabelEXT(cStruct: $0) }
        self.cmdBufLabels = UnsafeBufferPointer(start: cStruct.pCmdBufLabels, count: Int(cStruct.cmdBufLabelCount)).map{ DebugUtilsLabelEXT(cStruct: $0) }
        self.objects = UnsafeBufferPointer(start: cStruct.pObjects, count: Int(cStruct.objectCount)).map{ DebugUtilsObjectNameInfoEXT(cStruct: $0) }
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkDebugUtilsMessengerCallbackDataEXT>) throws -> R) rethrows -> R {
        try self.messageIdName.withOptionalCString { cString_messageIdName in
            try self.message.withCString { cString_message in
                try self.queueLabels.withCStructBufferPointer { ptr_queueLabels in
                    try self.cmdBufLabels.withCStructBufferPointer { ptr_cmdBufLabels in
                        try self.objects.withCStructBufferPointer { ptr_objects in
                            var cStruct = VkDebugUtilsMessengerCallbackDataEXT()
                            cStruct.sType = VK_STRUCTURE_TYPE_DEBUG_UTILS_MESSENGER_CALLBACK_DATA_EXT
                            cStruct.pNext = nil
                            cStruct.flags = self.flags.rawValue
                            cStruct.pMessageIdName = cString_messageIdName
                            cStruct.messageIdNumber = self.messageIdNumber
                            cStruct.pMessage = cString_message
                            cStruct.queueLabelCount = UInt32(ptr_queueLabels.count)
                            cStruct.pQueueLabels = ptr_queueLabels.baseAddress
                            cStruct.cmdBufLabelCount = UInt32(ptr_cmdBufLabels.count)
                            cStruct.pCmdBufLabels = ptr_cmdBufLabels.baseAddress
                            cStruct.objectCount = UInt32(ptr_objects.count)
                            cStruct.pObjects = ptr_objects.baseAddress
                            return try body(&cStruct)
                        }
                    }
                }
            }
        }
    }
}

public struct ImportMemoryHostPointerInfoEXT: CStructConvertible {
    typealias CStruct = VkImportMemoryHostPointerInfoEXT

    public let handleType: ExternalMemoryHandleTypeFlags
    public let hostPointer: UnsafeMutableRawPointer

    public init(handleType: ExternalMemoryHandleTypeFlags, hostPointer: UnsafeMutableRawPointer) {
        self.handleType = handleType
        self.hostPointer = hostPointer
    }

    init(cStruct: VkImportMemoryHostPointerInfoEXT) {
        self.handleType = ExternalMemoryHandleTypeFlags(rawValue: cStruct.handleType.rawValue)
        self.hostPointer = cStruct.pHostPointer
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkImportMemoryHostPointerInfoEXT>) throws -> R) rethrows -> R {
        var cStruct = VkImportMemoryHostPointerInfoEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_IMPORT_MEMORY_HOST_POINTER_INFO_EXT
        cStruct.pNext = nil
        cStruct.handleType = VkExternalMemoryHandleTypeFlagBits(rawValue: self.handleType.rawValue)
        cStruct.pHostPointer = self.hostPointer
        return try body(&cStruct)
    }
}

public struct MemoryHostPointerPropertiesEXT: CStructConvertible {
    typealias CStruct = VkMemoryHostPointerPropertiesEXT

    public let memoryTypeBits: UInt32

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

public struct PhysicalDeviceExternalMemoryHostPropertiesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceExternalMemoryHostPropertiesEXT

    public let minImportedHostPointerAlignment: VkDeviceSize

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

public struct PhysicalDeviceConservativeRasterizationPropertiesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceConservativeRasterizationPropertiesEXT

    public let primitiveOverestimationSize: Float
    public let maxExtraPrimitiveOverestimationSize: Float
    public let extraPrimitiveOverestimationSizeGranularity: Float
    public let primitiveUnderestimation: Bool
    public let conservativePointAndLineRasterization: Bool
    public let degenerateTrianglesRasterized: Bool
    public let degenerateLinesRasterized: Bool
    public let fullyCoveredFragmentShaderInputVariable: Bool
    public let conservativeRasterizationPostDepthCoverage: Bool

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

public struct CalibratedTimestampInfoEXT: CStructConvertible {
    typealias CStruct = VkCalibratedTimestampInfoEXT

    public let timeDomain: TimeDomainEXT

    public init(timeDomain: TimeDomainEXT) {
        self.timeDomain = timeDomain
    }

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

public struct PhysicalDeviceShaderCorePropertiesAMD: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceShaderCorePropertiesAMD

    public let shaderEngineCount: UInt32
    public let shaderArraysPerEngineCount: UInt32
    public let computeUnitsPerShaderArray: UInt32
    public let simdPerComputeUnit: UInt32
    public let wavefrontsPerSimd: UInt32
    public let wavefrontSize: UInt32
    public let sgprsPerSimd: UInt32
    public let minSgprAllocation: UInt32
    public let maxSgprAllocation: UInt32
    public let sgprAllocationGranularity: UInt32
    public let vgprsPerSimd: UInt32
    public let minVgprAllocation: UInt32
    public let maxVgprAllocation: UInt32
    public let vgprAllocationGranularity: UInt32

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

public struct PhysicalDeviceShaderCoreProperties2AMD: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceShaderCoreProperties2AMD

    public let shaderCoreFeatures: ShaderCorePropertiesFlagsAMD
    public let activeComputeUnitCount: UInt32

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

public struct PipelineRasterizationConservativeStateCreateInfoEXT: CStructConvertible {
    typealias CStruct = VkPipelineRasterizationConservativeStateCreateInfoEXT

    public let flags: PipelineRasterizationConservativeStateCreateFlagsEXT
    public let conservativeRasterizationMode: ConservativeRasterizationModeEXT
    public let extraPrimitiveOverestimationSize: Float

    public init(flags: PipelineRasterizationConservativeStateCreateFlagsEXT, conservativeRasterizationMode: ConservativeRasterizationModeEXT, extraPrimitiveOverestimationSize: Float) {
        self.flags = flags
        self.conservativeRasterizationMode = conservativeRasterizationMode
        self.extraPrimitiveOverestimationSize = extraPrimitiveOverestimationSize
    }

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

public struct PhysicalDeviceDescriptorIndexingFeatures: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceDescriptorIndexingFeatures

    public let shaderInputAttachmentArrayDynamicIndexing: Bool
    public let shaderUniformTexelBufferArrayDynamicIndexing: Bool
    public let shaderStorageTexelBufferArrayDynamicIndexing: Bool
    public let shaderUniformBufferArrayNonUniformIndexing: Bool
    public let shaderSampledImageArrayNonUniformIndexing: Bool
    public let shaderStorageBufferArrayNonUniformIndexing: Bool
    public let shaderStorageImageArrayNonUniformIndexing: Bool
    public let shaderInputAttachmentArrayNonUniformIndexing: Bool
    public let shaderUniformTexelBufferArrayNonUniformIndexing: Bool
    public let shaderStorageTexelBufferArrayNonUniformIndexing: Bool
    public let descriptorBindingUniformBufferUpdateAfterBind: Bool
    public let descriptorBindingSampledImageUpdateAfterBind: Bool
    public let descriptorBindingStorageImageUpdateAfterBind: Bool
    public let descriptorBindingStorageBufferUpdateAfterBind: Bool
    public let descriptorBindingUniformTexelBufferUpdateAfterBind: Bool
    public let descriptorBindingStorageTexelBufferUpdateAfterBind: Bool
    public let descriptorBindingUpdateUnusedWhilePending: Bool
    public let descriptorBindingPartiallyBound: Bool
    public let descriptorBindingVariableDescriptorCount: Bool
    public let runtimeDescriptorArray: Bool

    public init(shaderInputAttachmentArrayDynamicIndexing: Bool, shaderUniformTexelBufferArrayDynamicIndexing: Bool, shaderStorageTexelBufferArrayDynamicIndexing: Bool, shaderUniformBufferArrayNonUniformIndexing: Bool, shaderSampledImageArrayNonUniformIndexing: Bool, shaderStorageBufferArrayNonUniformIndexing: Bool, shaderStorageImageArrayNonUniformIndexing: Bool, shaderInputAttachmentArrayNonUniformIndexing: Bool, shaderUniformTexelBufferArrayNonUniformIndexing: Bool, shaderStorageTexelBufferArrayNonUniformIndexing: Bool, descriptorBindingUniformBufferUpdateAfterBind: Bool, descriptorBindingSampledImageUpdateAfterBind: Bool, descriptorBindingStorageImageUpdateAfterBind: Bool, descriptorBindingStorageBufferUpdateAfterBind: Bool, descriptorBindingUniformTexelBufferUpdateAfterBind: Bool, descriptorBindingStorageTexelBufferUpdateAfterBind: Bool, descriptorBindingUpdateUnusedWhilePending: Bool, descriptorBindingPartiallyBound: Bool, descriptorBindingVariableDescriptorCount: Bool, runtimeDescriptorArray: Bool) {
        self.shaderInputAttachmentArrayDynamicIndexing = shaderInputAttachmentArrayDynamicIndexing
        self.shaderUniformTexelBufferArrayDynamicIndexing = shaderUniformTexelBufferArrayDynamicIndexing
        self.shaderStorageTexelBufferArrayDynamicIndexing = shaderStorageTexelBufferArrayDynamicIndexing
        self.shaderUniformBufferArrayNonUniformIndexing = shaderUniformBufferArrayNonUniformIndexing
        self.shaderSampledImageArrayNonUniformIndexing = shaderSampledImageArrayNonUniformIndexing
        self.shaderStorageBufferArrayNonUniformIndexing = shaderStorageBufferArrayNonUniformIndexing
        self.shaderStorageImageArrayNonUniformIndexing = shaderStorageImageArrayNonUniformIndexing
        self.shaderInputAttachmentArrayNonUniformIndexing = shaderInputAttachmentArrayNonUniformIndexing
        self.shaderUniformTexelBufferArrayNonUniformIndexing = shaderUniformTexelBufferArrayNonUniformIndexing
        self.shaderStorageTexelBufferArrayNonUniformIndexing = shaderStorageTexelBufferArrayNonUniformIndexing
        self.descriptorBindingUniformBufferUpdateAfterBind = descriptorBindingUniformBufferUpdateAfterBind
        self.descriptorBindingSampledImageUpdateAfterBind = descriptorBindingSampledImageUpdateAfterBind
        self.descriptorBindingStorageImageUpdateAfterBind = descriptorBindingStorageImageUpdateAfterBind
        self.descriptorBindingStorageBufferUpdateAfterBind = descriptorBindingStorageBufferUpdateAfterBind
        self.descriptorBindingUniformTexelBufferUpdateAfterBind = descriptorBindingUniformTexelBufferUpdateAfterBind
        self.descriptorBindingStorageTexelBufferUpdateAfterBind = descriptorBindingStorageTexelBufferUpdateAfterBind
        self.descriptorBindingUpdateUnusedWhilePending = descriptorBindingUpdateUnusedWhilePending
        self.descriptorBindingPartiallyBound = descriptorBindingPartiallyBound
        self.descriptorBindingVariableDescriptorCount = descriptorBindingVariableDescriptorCount
        self.runtimeDescriptorArray = runtimeDescriptorArray
    }

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

public struct PhysicalDeviceDescriptorIndexingProperties: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceDescriptorIndexingProperties

    public let maxUpdateAfterBindDescriptorsInAllPools: UInt32
    public let shaderUniformBufferArrayNonUniformIndexingNative: Bool
    public let shaderSampledImageArrayNonUniformIndexingNative: Bool
    public let shaderStorageBufferArrayNonUniformIndexingNative: Bool
    public let shaderStorageImageArrayNonUniformIndexingNative: Bool
    public let shaderInputAttachmentArrayNonUniformIndexingNative: Bool
    public let robustBufferAccessUpdateAfterBind: Bool
    public let quadDivergentImplicitLod: Bool
    public let maxPerStageDescriptorUpdateAfterBindSamplers: UInt32
    public let maxPerStageDescriptorUpdateAfterBindUniformBuffers: UInt32
    public let maxPerStageDescriptorUpdateAfterBindStorageBuffers: UInt32
    public let maxPerStageDescriptorUpdateAfterBindSampledImages: UInt32
    public let maxPerStageDescriptorUpdateAfterBindStorageImages: UInt32
    public let maxPerStageDescriptorUpdateAfterBindInputAttachments: UInt32
    public let maxPerStageUpdateAfterBindResources: UInt32
    public let maxDescriptorSetUpdateAfterBindSamplers: UInt32
    public let maxDescriptorSetUpdateAfterBindUniformBuffers: UInt32
    public let maxDescriptorSetUpdateAfterBindUniformBuffersDynamic: UInt32
    public let maxDescriptorSetUpdateAfterBindStorageBuffers: UInt32
    public let maxDescriptorSetUpdateAfterBindStorageBuffersDynamic: UInt32
    public let maxDescriptorSetUpdateAfterBindSampledImages: UInt32
    public let maxDescriptorSetUpdateAfterBindStorageImages: UInt32
    public let maxDescriptorSetUpdateAfterBindInputAttachments: UInt32

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

public struct DescriptorSetLayoutBindingFlagsCreateInfo: CStructConvertible {
    typealias CStruct = VkDescriptorSetLayoutBindingFlagsCreateInfo

    public let bindingFlags: Array<DescriptorBindingFlags>?

    public init(bindingFlags: Array<DescriptorBindingFlags>?) {
        self.bindingFlags = bindingFlags
    }

    init(cStruct: VkDescriptorSetLayoutBindingFlagsCreateInfo) {
        self.bindingFlags = (cStruct.pBindingFlags != nil) ? UnsafeBufferPointer(start: cStruct.pBindingFlags, count: Int(cStruct.bindingCount)).map{ DescriptorBindingFlags(rawValue: $0) } : nil
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkDescriptorSetLayoutBindingFlagsCreateInfo>) throws -> R) rethrows -> R {
        try (self.bindingFlags?.map{ $0.rawValue }).withOptionalUnsafeBufferPointer { ptr_bindingFlags in
            var cStruct = VkDescriptorSetLayoutBindingFlagsCreateInfo()
            cStruct.sType = VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_BINDING_FLAGS_CREATE_INFO
            cStruct.pNext = nil
            cStruct.bindingCount = UInt32(ptr_bindingFlags.count)
            cStruct.pBindingFlags = ptr_bindingFlags.baseAddress
            return try body(&cStruct)
        }
    }
}

public struct DescriptorSetVariableDescriptorCountAllocateInfo: CStructConvertible {
    typealias CStruct = VkDescriptorSetVariableDescriptorCountAllocateInfo

    public let descriptorCounts: Array<UInt32>

    public init(descriptorCounts: Array<UInt32>) {
        self.descriptorCounts = descriptorCounts
    }

    init(cStruct: VkDescriptorSetVariableDescriptorCountAllocateInfo) {
        self.descriptorCounts = Array(UnsafeBufferPointer(start: cStruct.pDescriptorCounts, count: Int(cStruct.descriptorSetCount)))
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkDescriptorSetVariableDescriptorCountAllocateInfo>) throws -> R) rethrows -> R {
        try self.descriptorCounts.withUnsafeBufferPointer { ptr_descriptorCounts in
            var cStruct = VkDescriptorSetVariableDescriptorCountAllocateInfo()
            cStruct.sType = VK_STRUCTURE_TYPE_DESCRIPTOR_SET_VARIABLE_DESCRIPTOR_COUNT_ALLOCATE_INFO
            cStruct.pNext = nil
            cStruct.descriptorSetCount = UInt32(ptr_descriptorCounts.count)
            cStruct.pDescriptorCounts = ptr_descriptorCounts.baseAddress
            return try body(&cStruct)
        }
    }
}

public struct DescriptorSetVariableDescriptorCountLayoutSupport: CStructConvertible {
    typealias CStruct = VkDescriptorSetVariableDescriptorCountLayoutSupport

    public let maxVariableDescriptorCount: UInt32

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

public struct AttachmentDescription2: CStructConvertible {
    typealias CStruct = VkAttachmentDescription2

    public let flags: AttachmentDescriptionFlags
    public let format: Format
    public let samples: SampleCountFlags
    public let loadOp: AttachmentLoadOp
    public let storeOp: AttachmentStoreOp
    public let stencilLoadOp: AttachmentLoadOp
    public let stencilStoreOp: AttachmentStoreOp
    public let initialLayout: ImageLayout
    public let finalLayout: ImageLayout

    public init(flags: AttachmentDescriptionFlags, format: Format, samples: SampleCountFlags, loadOp: AttachmentLoadOp, storeOp: AttachmentStoreOp, stencilLoadOp: AttachmentLoadOp, stencilStoreOp: AttachmentStoreOp, initialLayout: ImageLayout, finalLayout: ImageLayout) {
        self.flags = flags
        self.format = format
        self.samples = samples
        self.loadOp = loadOp
        self.storeOp = storeOp
        self.stencilLoadOp = stencilLoadOp
        self.stencilStoreOp = stencilStoreOp
        self.initialLayout = initialLayout
        self.finalLayout = finalLayout
    }

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

public struct AttachmentReference2: CStructConvertible {
    typealias CStruct = VkAttachmentReference2

    public let attachment: UInt32
    public let layout: ImageLayout
    public let aspectMask: ImageAspectFlags

    public init(attachment: UInt32, layout: ImageLayout, aspectMask: ImageAspectFlags) {
        self.attachment = attachment
        self.layout = layout
        self.aspectMask = aspectMask
    }

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

public struct SubpassDescription2: CStructConvertible {
    typealias CStruct = VkSubpassDescription2

    public let flags: SubpassDescriptionFlags
    public let pipelineBindPoint: PipelineBindPoint
    public let viewMask: UInt32
    public let inputAttachments: Array<AttachmentReference2>
    public let colorAttachments: Array<AttachmentReference2>
    public let resolveAttachments: Array<AttachmentReference2>?
    public let depthStencilAttachment: AttachmentReference2?
    public let preserveAttachments: Array<UInt32>

    public init(flags: SubpassDescriptionFlags, pipelineBindPoint: PipelineBindPoint, viewMask: UInt32, inputAttachments: Array<AttachmentReference2>, colorAttachments: Array<AttachmentReference2>, resolveAttachments: Array<AttachmentReference2>?, depthStencilAttachment: AttachmentReference2?, preserveAttachments: Array<UInt32>) {
        self.flags = flags
        self.pipelineBindPoint = pipelineBindPoint
        self.viewMask = viewMask
        self.inputAttachments = inputAttachments
        self.colorAttachments = colorAttachments
        self.resolveAttachments = resolveAttachments
        self.depthStencilAttachment = depthStencilAttachment
        self.preserveAttachments = preserveAttachments
    }

    init(cStruct: VkSubpassDescription2) {
        self.flags = SubpassDescriptionFlags(rawValue: cStruct.flags)
        self.pipelineBindPoint = PipelineBindPoint(rawValue: cStruct.pipelineBindPoint.rawValue)!
        self.viewMask = cStruct.viewMask
        self.inputAttachments = UnsafeBufferPointer(start: cStruct.pInputAttachments, count: Int(cStruct.inputAttachmentCount)).map{ AttachmentReference2(cStruct: $0) }
        self.colorAttachments = UnsafeBufferPointer(start: cStruct.pColorAttachments, count: Int(cStruct.colorAttachmentCount)).map{ AttachmentReference2(cStruct: $0) }
        self.resolveAttachments = (cStruct.pResolveAttachments != nil) ? UnsafeBufferPointer(start: cStruct.pResolveAttachments, count: Int(cStruct.colorAttachmentCount)).map{ AttachmentReference2(cStruct: $0) } : nil
        self.depthStencilAttachment = (cStruct.pDepthStencilAttachment != nil) ? AttachmentReference2(cStruct: cStruct.pDepthStencilAttachment.pointee) : nil
        self.preserveAttachments = Array(UnsafeBufferPointer(start: cStruct.pPreserveAttachments, count: Int(cStruct.preserveAttachmentCount)))
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkSubpassDescription2>) throws -> R) rethrows -> R {
        try self.inputAttachments.withCStructBufferPointer { ptr_inputAttachments in
            try self.colorAttachments.withCStructBufferPointer { ptr_colorAttachments in
                try self.resolveAttachments.withOptionalCStructBufferPointer { ptr_resolveAttachments in
                    try self.depthStencilAttachment.withOptionalCStruct { ptr_depthStencilAttachment in
                        try self.preserveAttachments.withUnsafeBufferPointer { ptr_preserveAttachments in
                            var cStruct = VkSubpassDescription2()
                            cStruct.sType = VK_STRUCTURE_TYPE_SUBPASS_DESCRIPTION_2
                            cStruct.pNext = nil
                            cStruct.flags = self.flags.rawValue
                            cStruct.pipelineBindPoint = VkPipelineBindPoint(rawValue: self.pipelineBindPoint.rawValue)
                            cStruct.viewMask = self.viewMask
                            cStruct.inputAttachmentCount = UInt32(ptr_inputAttachments.count)
                            cStruct.pInputAttachments = ptr_inputAttachments.baseAddress
                            cStruct.colorAttachmentCount = UInt32(ptr_colorAttachments.count)
                            cStruct.pColorAttachments = ptr_colorAttachments.baseAddress
                            cStruct.pResolveAttachments = ptr_resolveAttachments.baseAddress
                            cStruct.pDepthStencilAttachment = ptr_depthStencilAttachment
                            cStruct.preserveAttachmentCount = UInt32(ptr_preserveAttachments.count)
                            cStruct.pPreserveAttachments = ptr_preserveAttachments.baseAddress
                            return try body(&cStruct)
                        }
                    }
                }
            }
        }
    }
}

public struct SubpassDependency2: CStructConvertible {
    typealias CStruct = VkSubpassDependency2

    public let srcSubpass: UInt32
    public let dstSubpass: UInt32
    public let srcStageMask: PipelineStageFlags
    public let dstStageMask: PipelineStageFlags
    public let srcAccessMask: AccessFlags
    public let dstAccessMask: AccessFlags
    public let dependencyFlags: DependencyFlags
    public let viewOffset: Int32

    public init(srcSubpass: UInt32, dstSubpass: UInt32, srcStageMask: PipelineStageFlags, dstStageMask: PipelineStageFlags, srcAccessMask: AccessFlags, dstAccessMask: AccessFlags, dependencyFlags: DependencyFlags, viewOffset: Int32) {
        self.srcSubpass = srcSubpass
        self.dstSubpass = dstSubpass
        self.srcStageMask = srcStageMask
        self.dstStageMask = dstStageMask
        self.srcAccessMask = srcAccessMask
        self.dstAccessMask = dstAccessMask
        self.dependencyFlags = dependencyFlags
        self.viewOffset = viewOffset
    }

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

public struct RenderPassCreateInfo2: CStructConvertible {
    typealias CStruct = VkRenderPassCreateInfo2

    public let flags: RenderPassCreateFlags
    public let attachments: Array<AttachmentDescription2>
    public let subpasses: Array<SubpassDescription2>
    public let dependencies: Array<SubpassDependency2>
    public let correlatedViewMasks: Array<UInt32>

    public init(flags: RenderPassCreateFlags, attachments: Array<AttachmentDescription2>, subpasses: Array<SubpassDescription2>, dependencies: Array<SubpassDependency2>, correlatedViewMasks: Array<UInt32>) {
        self.flags = flags
        self.attachments = attachments
        self.subpasses = subpasses
        self.dependencies = dependencies
        self.correlatedViewMasks = correlatedViewMasks
    }

    init(cStruct: VkRenderPassCreateInfo2) {
        self.flags = RenderPassCreateFlags(rawValue: cStruct.flags)
        self.attachments = UnsafeBufferPointer(start: cStruct.pAttachments, count: Int(cStruct.attachmentCount)).map{ AttachmentDescription2(cStruct: $0) }
        self.subpasses = UnsafeBufferPointer(start: cStruct.pSubpasses, count: Int(cStruct.subpassCount)).map{ SubpassDescription2(cStruct: $0) }
        self.dependencies = UnsafeBufferPointer(start: cStruct.pDependencies, count: Int(cStruct.dependencyCount)).map{ SubpassDependency2(cStruct: $0) }
        self.correlatedViewMasks = Array(UnsafeBufferPointer(start: cStruct.pCorrelatedViewMasks, count: Int(cStruct.correlatedViewMaskCount)))
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkRenderPassCreateInfo2>) throws -> R) rethrows -> R {
        try self.attachments.withCStructBufferPointer { ptr_attachments in
            try self.subpasses.withCStructBufferPointer { ptr_subpasses in
                try self.dependencies.withCStructBufferPointer { ptr_dependencies in
                    try self.correlatedViewMasks.withUnsafeBufferPointer { ptr_correlatedViewMasks in
                        var cStruct = VkRenderPassCreateInfo2()
                        cStruct.sType = VK_STRUCTURE_TYPE_RENDER_PASS_CREATE_INFO_2
                        cStruct.pNext = nil
                        cStruct.flags = self.flags.rawValue
                        cStruct.attachmentCount = UInt32(ptr_attachments.count)
                        cStruct.pAttachments = ptr_attachments.baseAddress
                        cStruct.subpassCount = UInt32(ptr_subpasses.count)
                        cStruct.pSubpasses = ptr_subpasses.baseAddress
                        cStruct.dependencyCount = UInt32(ptr_dependencies.count)
                        cStruct.pDependencies = ptr_dependencies.baseAddress
                        cStruct.correlatedViewMaskCount = UInt32(ptr_correlatedViewMasks.count)
                        cStruct.pCorrelatedViewMasks = ptr_correlatedViewMasks.baseAddress
                        return try body(&cStruct)
                    }
                }
            }
        }
    }
}

public struct SubpassBeginInfo: CStructConvertible {
    typealias CStruct = VkSubpassBeginInfo

    public let contents: SubpassContents

    public init(contents: SubpassContents) {
        self.contents = contents
    }

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

public struct SubpassEndInfo: CStructConvertible {
    typealias CStruct = VkSubpassEndInfo


    public init() {
    }

    init(cStruct: VkSubpassEndInfo) {
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkSubpassEndInfo>) throws -> R) rethrows -> R {
        var cStruct = VkSubpassEndInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_SUBPASS_END_INFO
        cStruct.pNext = nil
        return try body(&cStruct)
    }
}

public struct PhysicalDeviceTimelineSemaphoreFeatures: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceTimelineSemaphoreFeatures

    public let timelineSemaphore: Bool

    public init(timelineSemaphore: Bool) {
        self.timelineSemaphore = timelineSemaphore
    }

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

public struct PhysicalDeviceTimelineSemaphoreProperties: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceTimelineSemaphoreProperties

    public let maxTimelineSemaphoreValueDifference: UInt64

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

public struct SemaphoreTypeCreateInfo: CStructConvertible {
    typealias CStruct = VkSemaphoreTypeCreateInfo

    public let semaphoreType: SemaphoreType
    public let initialValue: UInt64

    public init(semaphoreType: SemaphoreType, initialValue: UInt64) {
        self.semaphoreType = semaphoreType
        self.initialValue = initialValue
    }

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

public struct TimelineSemaphoreSubmitInfo: CStructConvertible {
    typealias CStruct = VkTimelineSemaphoreSubmitInfo

    public let waitSemaphoreValues: Array<UInt64>?
    public let signalSemaphoreValues: Array<UInt64>?

    public init(waitSemaphoreValues: Array<UInt64>?, signalSemaphoreValues: Array<UInt64>?) {
        self.waitSemaphoreValues = waitSemaphoreValues
        self.signalSemaphoreValues = signalSemaphoreValues
    }

    init(cStruct: VkTimelineSemaphoreSubmitInfo) {
        self.waitSemaphoreValues = (cStruct.pWaitSemaphoreValues != nil) ? Array(UnsafeBufferPointer(start: cStruct.pWaitSemaphoreValues, count: Int(cStruct.waitSemaphoreValueCount))) : nil
        self.signalSemaphoreValues = (cStruct.pSignalSemaphoreValues != nil) ? Array(UnsafeBufferPointer(start: cStruct.pSignalSemaphoreValues, count: Int(cStruct.signalSemaphoreValueCount))) : nil
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkTimelineSemaphoreSubmitInfo>) throws -> R) rethrows -> R {
        try self.waitSemaphoreValues.withOptionalUnsafeBufferPointer { ptr_waitSemaphoreValues in
            try self.signalSemaphoreValues.withOptionalUnsafeBufferPointer { ptr_signalSemaphoreValues in
                var cStruct = VkTimelineSemaphoreSubmitInfo()
                cStruct.sType = VK_STRUCTURE_TYPE_TIMELINE_SEMAPHORE_SUBMIT_INFO
                cStruct.pNext = nil
                cStruct.waitSemaphoreValueCount = UInt32(ptr_waitSemaphoreValues.count)
                cStruct.pWaitSemaphoreValues = ptr_waitSemaphoreValues.baseAddress
                cStruct.signalSemaphoreValueCount = UInt32(ptr_signalSemaphoreValues.count)
                cStruct.pSignalSemaphoreValues = ptr_signalSemaphoreValues.baseAddress
                return try body(&cStruct)
            }
        }
    }
}

public struct SemaphoreWaitInfo: CStructConvertible {
    typealias CStruct = VkSemaphoreWaitInfo

    public let flags: SemaphoreWaitFlags
    public let semaphores: Array<Semaphore>
    public let values: Array<UInt64>

    public init(flags: SemaphoreWaitFlags, semaphores: Array<Semaphore>, values: Array<UInt64>) {
        self.flags = flags
        self.semaphores = semaphores
        self.values = values
    }


    func withCStruct<R>(_ body: (UnsafePointer<VkSemaphoreWaitInfo>) throws -> R) rethrows -> R {
        try self.semaphores.map{ $0.handle }.withUnsafeBufferPointer { ptr_semaphores in
            try self.values.withUnsafeBufferPointer { ptr_values in
                var cStruct = VkSemaphoreWaitInfo()
                cStruct.sType = VK_STRUCTURE_TYPE_SEMAPHORE_WAIT_INFO
                cStruct.pNext = nil
                cStruct.flags = self.flags.rawValue
                cStruct.semaphoreCount = UInt32(ptr_semaphores.count)
                cStruct.pSemaphores = ptr_semaphores.baseAddress
                cStruct.pValues = ptr_values.baseAddress
                return try body(&cStruct)
            }
        }
    }
}

public struct SemaphoreSignalInfo: CStructConvertible {
    typealias CStruct = VkSemaphoreSignalInfo

    public let semaphore: Semaphore
    public let value: UInt64

    public init(semaphore: Semaphore, value: UInt64) {
        self.semaphore = semaphore
        self.value = value
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

public struct VertexInputBindingDivisorDescriptionEXT: CStructConvertible {
    typealias CStruct = VkVertexInputBindingDivisorDescriptionEXT

    public let binding: UInt32
    public let divisor: UInt32

    public init(binding: UInt32, divisor: UInt32) {
        self.binding = binding
        self.divisor = divisor
    }

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

public struct PipelineVertexInputDivisorStateCreateInfoEXT: CStructConvertible {
    typealias CStruct = VkPipelineVertexInputDivisorStateCreateInfoEXT

    public let vertexBindingDivisors: Array<VertexInputBindingDivisorDescriptionEXT>

    public init(vertexBindingDivisors: Array<VertexInputBindingDivisorDescriptionEXT>) {
        self.vertexBindingDivisors = vertexBindingDivisors
    }

    init(cStruct: VkPipelineVertexInputDivisorStateCreateInfoEXT) {
        self.vertexBindingDivisors = UnsafeBufferPointer(start: cStruct.pVertexBindingDivisors, count: Int(cStruct.vertexBindingDivisorCount)).map{ VertexInputBindingDivisorDescriptionEXT(cStruct: $0) }
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPipelineVertexInputDivisorStateCreateInfoEXT>) throws -> R) rethrows -> R {
        try self.vertexBindingDivisors.withCStructBufferPointer { ptr_vertexBindingDivisors in
            var cStruct = VkPipelineVertexInputDivisorStateCreateInfoEXT()
            cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_VERTEX_INPUT_DIVISOR_STATE_CREATE_INFO_EXT
            cStruct.pNext = nil
            cStruct.vertexBindingDivisorCount = UInt32(ptr_vertexBindingDivisors.count)
            cStruct.pVertexBindingDivisors = ptr_vertexBindingDivisors.baseAddress
            return try body(&cStruct)
        }
    }
}

public struct PhysicalDeviceVertexAttributeDivisorPropertiesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceVertexAttributeDivisorPropertiesEXT

    public let maxVertexAttribDivisor: UInt32

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

public struct PhysicalDevicePCIBusInfoPropertiesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDevicePCIBusInfoPropertiesEXT

    public let pciDomain: UInt32
    public let pciBus: UInt32
    public let pciDevice: UInt32
    public let pciFunction: UInt32

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

public struct CommandBufferInheritanceConditionalRenderingInfoEXT: CStructConvertible {
    typealias CStruct = VkCommandBufferInheritanceConditionalRenderingInfoEXT

    public let conditionalRenderingEnable: Bool

    public init(conditionalRenderingEnable: Bool) {
        self.conditionalRenderingEnable = conditionalRenderingEnable
    }

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

public struct PhysicalDevice8BitStorageFeatures: CStructConvertible {
    typealias CStruct = VkPhysicalDevice8BitStorageFeatures

    public let storageBuffer8BitAccess: Bool
    public let uniformAndStorageBuffer8BitAccess: Bool
    public let storagePushConstant8: Bool

    public init(storageBuffer8BitAccess: Bool, uniformAndStorageBuffer8BitAccess: Bool, storagePushConstant8: Bool) {
        self.storageBuffer8BitAccess = storageBuffer8BitAccess
        self.uniformAndStorageBuffer8BitAccess = uniformAndStorageBuffer8BitAccess
        self.storagePushConstant8 = storagePushConstant8
    }

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

public struct PhysicalDeviceConditionalRenderingFeaturesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceConditionalRenderingFeaturesEXT

    public let conditionalRendering: Bool
    public let inheritedConditionalRendering: Bool

    public init(conditionalRendering: Bool, inheritedConditionalRendering: Bool) {
        self.conditionalRendering = conditionalRendering
        self.inheritedConditionalRendering = inheritedConditionalRendering
    }

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

public struct PhysicalDeviceVulkanMemoryModelFeatures: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceVulkanMemoryModelFeatures

    public let vulkanMemoryModel: Bool
    public let vulkanMemoryModelDeviceScope: Bool
    public let vulkanMemoryModelAvailabilityVisibilityChains: Bool

    public init(vulkanMemoryModel: Bool, vulkanMemoryModelDeviceScope: Bool, vulkanMemoryModelAvailabilityVisibilityChains: Bool) {
        self.vulkanMemoryModel = vulkanMemoryModel
        self.vulkanMemoryModelDeviceScope = vulkanMemoryModelDeviceScope
        self.vulkanMemoryModelAvailabilityVisibilityChains = vulkanMemoryModelAvailabilityVisibilityChains
    }

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

public struct PhysicalDeviceShaderAtomicInt64Features: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceShaderAtomicInt64Features

    public let shaderBufferInt64Atomics: Bool
    public let shaderSharedInt64Atomics: Bool

    public init(shaderBufferInt64Atomics: Bool, shaderSharedInt64Atomics: Bool) {
        self.shaderBufferInt64Atomics = shaderBufferInt64Atomics
        self.shaderSharedInt64Atomics = shaderSharedInt64Atomics
    }

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

public struct PhysicalDeviceVertexAttributeDivisorFeaturesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceVertexAttributeDivisorFeaturesEXT

    public let vertexAttributeInstanceRateDivisor: Bool
    public let vertexAttributeInstanceRateZeroDivisor: Bool

    public init(vertexAttributeInstanceRateDivisor: Bool, vertexAttributeInstanceRateZeroDivisor: Bool) {
        self.vertexAttributeInstanceRateDivisor = vertexAttributeInstanceRateDivisor
        self.vertexAttributeInstanceRateZeroDivisor = vertexAttributeInstanceRateZeroDivisor
    }

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

public struct QueueFamilyCheckpointPropertiesNV: CStructConvertible {
    typealias CStruct = VkQueueFamilyCheckpointPropertiesNV

    public let checkpointExecutionStageMask: PipelineStageFlags

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

public struct CheckpointDataNV: CStructConvertible {
    typealias CStruct = VkCheckpointDataNV

    public let stage: PipelineStageFlags
    public let checkpointMarker: UnsafeMutableRawPointer

    init(cStruct: VkCheckpointDataNV) {
        self.stage = PipelineStageFlags(rawValue: cStruct.stage.rawValue)
        self.checkpointMarker = cStruct.pCheckpointMarker
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkCheckpointDataNV>) throws -> R) rethrows -> R {
        var cStruct = VkCheckpointDataNV()
        cStruct.sType = VK_STRUCTURE_TYPE_CHECKPOINT_DATA_NV
        cStruct.pNext = nil
        cStruct.stage = VkPipelineStageFlagBits(rawValue: self.stage.rawValue)
        cStruct.pCheckpointMarker = self.checkpointMarker
        return try body(&cStruct)
    }
}

public struct PhysicalDeviceDepthStencilResolveProperties: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceDepthStencilResolveProperties

    public let supportedDepthResolveModes: ResolveModeFlags
    public let supportedStencilResolveModes: ResolveModeFlags
    public let independentResolveNone: Bool
    public let independentResolve: Bool

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

public struct SubpassDescriptionDepthStencilResolve: CStructConvertible {
    typealias CStruct = VkSubpassDescriptionDepthStencilResolve

    public let depthResolveMode: ResolveModeFlags
    public let stencilResolveMode: ResolveModeFlags
    public let depthStencilResolveAttachment: AttachmentReference2?

    public init(depthResolveMode: ResolveModeFlags, stencilResolveMode: ResolveModeFlags, depthStencilResolveAttachment: AttachmentReference2?) {
        self.depthResolveMode = depthResolveMode
        self.stencilResolveMode = stencilResolveMode
        self.depthStencilResolveAttachment = depthStencilResolveAttachment
    }

    init(cStruct: VkSubpassDescriptionDepthStencilResolve) {
        self.depthResolveMode = ResolveModeFlags(rawValue: cStruct.depthResolveMode.rawValue)
        self.stencilResolveMode = ResolveModeFlags(rawValue: cStruct.stencilResolveMode.rawValue)
        self.depthStencilResolveAttachment = (cStruct.pDepthStencilResolveAttachment != nil) ? AttachmentReference2(cStruct: cStruct.pDepthStencilResolveAttachment.pointee) : nil
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkSubpassDescriptionDepthStencilResolve>) throws -> R) rethrows -> R {
        try self.depthStencilResolveAttachment.withOptionalCStruct { ptr_depthStencilResolveAttachment in
            var cStruct = VkSubpassDescriptionDepthStencilResolve()
            cStruct.sType = VK_STRUCTURE_TYPE_SUBPASS_DESCRIPTION_DEPTH_STENCIL_RESOLVE
            cStruct.pNext = nil
            cStruct.depthResolveMode = VkResolveModeFlagBits(rawValue: self.depthResolveMode.rawValue)
            cStruct.stencilResolveMode = VkResolveModeFlagBits(rawValue: self.stencilResolveMode.rawValue)
            cStruct.pDepthStencilResolveAttachment = ptr_depthStencilResolveAttachment
            return try body(&cStruct)
        }
    }
}

public struct ImageViewASTCDecodeModeEXT: CStructConvertible {
    typealias CStruct = VkImageViewASTCDecodeModeEXT

    public let decodeMode: Format

    public init(decodeMode: Format) {
        self.decodeMode = decodeMode
    }

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

public struct PhysicalDeviceASTCDecodeFeaturesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceASTCDecodeFeaturesEXT

    public let decodeModeSharedExponent: Bool

    public init(decodeModeSharedExponent: Bool) {
        self.decodeModeSharedExponent = decodeModeSharedExponent
    }

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

public struct PhysicalDeviceTransformFeedbackFeaturesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceTransformFeedbackFeaturesEXT

    public let transformFeedback: Bool
    public let geometryStreams: Bool

    public init(transformFeedback: Bool, geometryStreams: Bool) {
        self.transformFeedback = transformFeedback
        self.geometryStreams = geometryStreams
    }

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

public struct PhysicalDeviceTransformFeedbackPropertiesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceTransformFeedbackPropertiesEXT

    public let maxTransformFeedbackStreams: UInt32
    public let maxTransformFeedbackBuffers: UInt32
    public let maxTransformFeedbackBufferSize: VkDeviceSize
    public let maxTransformFeedbackStreamDataSize: UInt32
    public let maxTransformFeedbackBufferDataSize: UInt32
    public let maxTransformFeedbackBufferDataStride: UInt32
    public let transformFeedbackQueries: Bool
    public let transformFeedbackStreamsLinesTriangles: Bool
    public let transformFeedbackRasterizationStreamSelect: Bool
    public let transformFeedbackDraw: Bool

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

public struct PipelineRasterizationStateStreamCreateInfoEXT: CStructConvertible {
    typealias CStruct = VkPipelineRasterizationStateStreamCreateInfoEXT

    public let flags: PipelineRasterizationStateStreamCreateFlagsEXT
    public let rasterizationStream: UInt32

    public init(flags: PipelineRasterizationStateStreamCreateFlagsEXT, rasterizationStream: UInt32) {
        self.flags = flags
        self.rasterizationStream = rasterizationStream
    }

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

public struct PhysicalDeviceRepresentativeFragmentTestFeaturesNV: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceRepresentativeFragmentTestFeaturesNV

    public let representativeFragmentTest: Bool

    public init(representativeFragmentTest: Bool) {
        self.representativeFragmentTest = representativeFragmentTest
    }

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

public struct PipelineRepresentativeFragmentTestStateCreateInfoNV: CStructConvertible {
    typealias CStruct = VkPipelineRepresentativeFragmentTestStateCreateInfoNV

    public let representativeFragmentTestEnable: Bool

    public init(representativeFragmentTestEnable: Bool) {
        self.representativeFragmentTestEnable = representativeFragmentTestEnable
    }

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

public struct PhysicalDeviceExclusiveScissorFeaturesNV: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceExclusiveScissorFeaturesNV

    public let exclusiveScissor: Bool

    public init(exclusiveScissor: Bool) {
        self.exclusiveScissor = exclusiveScissor
    }

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

public struct PipelineViewportExclusiveScissorStateCreateInfoNV: CStructConvertible {
    typealias CStruct = VkPipelineViewportExclusiveScissorStateCreateInfoNV

    public let exclusiveScissors: Array<Rect2D>?

    public init(exclusiveScissors: Array<Rect2D>?) {
        self.exclusiveScissors = exclusiveScissors
    }

    init(cStruct: VkPipelineViewportExclusiveScissorStateCreateInfoNV) {
        self.exclusiveScissors = (cStruct.pExclusiveScissors != nil) ? UnsafeBufferPointer(start: cStruct.pExclusiveScissors, count: Int(cStruct.exclusiveScissorCount)).map{ Rect2D(cStruct: $0) } : nil
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPipelineViewportExclusiveScissorStateCreateInfoNV>) throws -> R) rethrows -> R {
        try self.exclusiveScissors.withOptionalCStructBufferPointer { ptr_exclusiveScissors in
            var cStruct = VkPipelineViewportExclusiveScissorStateCreateInfoNV()
            cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_EXCLUSIVE_SCISSOR_STATE_CREATE_INFO_NV
            cStruct.pNext = nil
            cStruct.exclusiveScissorCount = UInt32(ptr_exclusiveScissors.count)
            cStruct.pExclusiveScissors = ptr_exclusiveScissors.baseAddress
            return try body(&cStruct)
        }
    }
}

public struct PhysicalDeviceCornerSampledImageFeaturesNV: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceCornerSampledImageFeaturesNV

    public let cornerSampledImage: Bool

    public init(cornerSampledImage: Bool) {
        self.cornerSampledImage = cornerSampledImage
    }

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

public struct PhysicalDeviceComputeShaderDerivativesFeaturesNV: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceComputeShaderDerivativesFeaturesNV

    public let computeDerivativeGroupQuads: Bool
    public let computeDerivativeGroupLinear: Bool

    public init(computeDerivativeGroupQuads: Bool, computeDerivativeGroupLinear: Bool) {
        self.computeDerivativeGroupQuads = computeDerivativeGroupQuads
        self.computeDerivativeGroupLinear = computeDerivativeGroupLinear
    }

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

public struct PhysicalDeviceFragmentShaderBarycentricFeaturesNV: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceFragmentShaderBarycentricFeaturesNV

    public let fragmentShaderBarycentric: Bool

    public init(fragmentShaderBarycentric: Bool) {
        self.fragmentShaderBarycentric = fragmentShaderBarycentric
    }

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

public struct PhysicalDeviceShaderImageFootprintFeaturesNV: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceShaderImageFootprintFeaturesNV

    public let imageFootprint: Bool

    public init(imageFootprint: Bool) {
        self.imageFootprint = imageFootprint
    }

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

public struct PhysicalDeviceDedicatedAllocationImageAliasingFeaturesNV: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceDedicatedAllocationImageAliasingFeaturesNV

    public let dedicatedAllocationImageAliasing: Bool

    public init(dedicatedAllocationImageAliasing: Bool) {
        self.dedicatedAllocationImageAliasing = dedicatedAllocationImageAliasing
    }

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

public struct ShadingRatePaletteNV: CStructConvertible {
    typealias CStruct = VkShadingRatePaletteNV

    public let shadingRatePaletteEntries: Array<ShadingRatePaletteEntryNV>

    public init(shadingRatePaletteEntries: Array<ShadingRatePaletteEntryNV>) {
        self.shadingRatePaletteEntries = shadingRatePaletteEntries
    }

    init(cStruct: VkShadingRatePaletteNV) {
        self.shadingRatePaletteEntries = UnsafeBufferPointer(start: cStruct.pShadingRatePaletteEntries, count: Int(cStruct.shadingRatePaletteEntryCount)).map{ ShadingRatePaletteEntryNV(rawValue: $0.rawValue)! }
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkShadingRatePaletteNV>) throws -> R) rethrows -> R {
        try self.shadingRatePaletteEntries.map{ VkShadingRatePaletteEntryNV(rawValue: $0.rawValue) }.withUnsafeBufferPointer { ptr_shadingRatePaletteEntries in
            var cStruct = VkShadingRatePaletteNV()
            cStruct.shadingRatePaletteEntryCount = UInt32(ptr_shadingRatePaletteEntries.count)
            cStruct.pShadingRatePaletteEntries = ptr_shadingRatePaletteEntries.baseAddress
            return try body(&cStruct)
        }
    }
}

public struct PipelineViewportShadingRateImageStateCreateInfoNV: CStructConvertible {
    typealias CStruct = VkPipelineViewportShadingRateImageStateCreateInfoNV

    public let shadingRateImageEnable: Bool
    public let shadingRatePalettes: Array<ShadingRatePaletteNV>?

    public init(shadingRateImageEnable: Bool, shadingRatePalettes: Array<ShadingRatePaletteNV>?) {
        self.shadingRateImageEnable = shadingRateImageEnable
        self.shadingRatePalettes = shadingRatePalettes
    }

    init(cStruct: VkPipelineViewportShadingRateImageStateCreateInfoNV) {
        self.shadingRateImageEnable = cStruct.shadingRateImageEnable == VK_TRUE
        self.shadingRatePalettes = (cStruct.pShadingRatePalettes != nil) ? UnsafeBufferPointer(start: cStruct.pShadingRatePalettes, count: Int(cStruct.viewportCount)).map{ ShadingRatePaletteNV(cStruct: $0) } : nil
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPipelineViewportShadingRateImageStateCreateInfoNV>) throws -> R) rethrows -> R {
        try self.shadingRatePalettes.withOptionalCStructBufferPointer { ptr_shadingRatePalettes in
            var cStruct = VkPipelineViewportShadingRateImageStateCreateInfoNV()
            cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_SHADING_RATE_IMAGE_STATE_CREATE_INFO_NV
            cStruct.pNext = nil
            cStruct.shadingRateImageEnable = VkBool32(self.shadingRateImageEnable ? VK_TRUE : VK_FALSE)
            cStruct.viewportCount = UInt32(ptr_shadingRatePalettes.count)
            cStruct.pShadingRatePalettes = ptr_shadingRatePalettes.baseAddress
            return try body(&cStruct)
        }
    }
}

public struct PhysicalDeviceShadingRateImageFeaturesNV: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceShadingRateImageFeaturesNV

    public let shadingRateImage: Bool
    public let shadingRateCoarseSampleOrder: Bool

    public init(shadingRateImage: Bool, shadingRateCoarseSampleOrder: Bool) {
        self.shadingRateImage = shadingRateImage
        self.shadingRateCoarseSampleOrder = shadingRateCoarseSampleOrder
    }

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

public struct PhysicalDeviceShadingRateImagePropertiesNV: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceShadingRateImagePropertiesNV

    public let shadingRateTexelSize: Extent2D
    public let shadingRatePaletteSize: UInt32
    public let shadingRateMaxCoarseSamples: UInt32

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

public struct CoarseSampleLocationNV: CStructConvertible {
    typealias CStruct = VkCoarseSampleLocationNV

    public let pixelX: UInt32
    public let pixelY: UInt32
    public let sample: UInt32

    public init(pixelX: UInt32, pixelY: UInt32, sample: UInt32) {
        self.pixelX = pixelX
        self.pixelY = pixelY
        self.sample = sample
    }

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

public struct CoarseSampleOrderCustomNV: CStructConvertible {
    typealias CStruct = VkCoarseSampleOrderCustomNV

    public let shadingRate: ShadingRatePaletteEntryNV
    public let sampleCount: UInt32
    public let sampleLocations: Array<CoarseSampleLocationNV>

    public init(shadingRate: ShadingRatePaletteEntryNV, sampleCount: UInt32, sampleLocations: Array<CoarseSampleLocationNV>) {
        self.shadingRate = shadingRate
        self.sampleCount = sampleCount
        self.sampleLocations = sampleLocations
    }

    init(cStruct: VkCoarseSampleOrderCustomNV) {
        self.shadingRate = ShadingRatePaletteEntryNV(rawValue: cStruct.shadingRate.rawValue)!
        self.sampleCount = cStruct.sampleCount
        self.sampleLocations = UnsafeBufferPointer(start: cStruct.pSampleLocations, count: Int(cStruct.sampleLocationCount)).map{ CoarseSampleLocationNV(cStruct: $0) }
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkCoarseSampleOrderCustomNV>) throws -> R) rethrows -> R {
        try self.sampleLocations.withCStructBufferPointer { ptr_sampleLocations in
            var cStruct = VkCoarseSampleOrderCustomNV()
            cStruct.shadingRate = VkShadingRatePaletteEntryNV(rawValue: self.shadingRate.rawValue)
            cStruct.sampleCount = self.sampleCount
            cStruct.sampleLocationCount = UInt32(ptr_sampleLocations.count)
            cStruct.pSampleLocations = ptr_sampleLocations.baseAddress
            return try body(&cStruct)
        }
    }
}

public struct PipelineViewportCoarseSampleOrderStateCreateInfoNV: CStructConvertible {
    typealias CStruct = VkPipelineViewportCoarseSampleOrderStateCreateInfoNV

    public let sampleOrderType: CoarseSampleOrderTypeNV
    public let customSampleOrders: Array<CoarseSampleOrderCustomNV>

    public init(sampleOrderType: CoarseSampleOrderTypeNV, customSampleOrders: Array<CoarseSampleOrderCustomNV>) {
        self.sampleOrderType = sampleOrderType
        self.customSampleOrders = customSampleOrders
    }

    init(cStruct: VkPipelineViewportCoarseSampleOrderStateCreateInfoNV) {
        self.sampleOrderType = CoarseSampleOrderTypeNV(rawValue: cStruct.sampleOrderType.rawValue)!
        self.customSampleOrders = UnsafeBufferPointer(start: cStruct.pCustomSampleOrders, count: Int(cStruct.customSampleOrderCount)).map{ CoarseSampleOrderCustomNV(cStruct: $0) }
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPipelineViewportCoarseSampleOrderStateCreateInfoNV>) throws -> R) rethrows -> R {
        try self.customSampleOrders.withCStructBufferPointer { ptr_customSampleOrders in
            var cStruct = VkPipelineViewportCoarseSampleOrderStateCreateInfoNV()
            cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_COARSE_SAMPLE_ORDER_STATE_CREATE_INFO_NV
            cStruct.pNext = nil
            cStruct.sampleOrderType = VkCoarseSampleOrderTypeNV(rawValue: self.sampleOrderType.rawValue)
            cStruct.customSampleOrderCount = UInt32(ptr_customSampleOrders.count)
            cStruct.pCustomSampleOrders = ptr_customSampleOrders.baseAddress
            return try body(&cStruct)
        }
    }
}

public struct PhysicalDeviceMeshShaderFeaturesNV: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceMeshShaderFeaturesNV

    public let taskShader: Bool
    public let meshShader: Bool

    public init(taskShader: Bool, meshShader: Bool) {
        self.taskShader = taskShader
        self.meshShader = meshShader
    }

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

public struct PhysicalDeviceMeshShaderPropertiesNV: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceMeshShaderPropertiesNV

    public let maxDrawMeshTasksCount: UInt32
    public let maxTaskWorkGroupInvocations: UInt32
    public let maxTaskWorkGroupSize: (UInt32, UInt32, UInt32)
    public let maxTaskTotalMemorySize: UInt32
    public let maxTaskOutputCount: UInt32
    public let maxMeshWorkGroupInvocations: UInt32
    public let maxMeshWorkGroupSize: (UInt32, UInt32, UInt32)
    public let maxMeshTotalMemorySize: UInt32
    public let maxMeshOutputVertices: UInt32
    public let maxMeshOutputPrimitives: UInt32
    public let maxMeshMultiviewViewCount: UInt32
    public let meshOutputPerVertexGranularity: UInt32
    public let meshOutputPerPrimitiveGranularity: UInt32

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

public struct DrawMeshTasksIndirectCommandNV: CStructConvertible {
    typealias CStruct = VkDrawMeshTasksIndirectCommandNV

    public let taskCount: UInt32
    public let firstTask: UInt32

    public init(taskCount: UInt32, firstTask: UInt32) {
        self.taskCount = taskCount
        self.firstTask = firstTask
    }

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

public struct RayTracingShaderGroupCreateInfoNV: CStructConvertible {
    typealias CStruct = VkRayTracingShaderGroupCreateInfoNV

    public let type: VkRayTracingShaderGroupTypeKHR
    public let generalShader: UInt32
    public let closestHitShader: UInt32
    public let anyHitShader: UInt32
    public let intersectionShader: UInt32

    public init(type: VkRayTracingShaderGroupTypeKHR, generalShader: UInt32, closestHitShader: UInt32, anyHitShader: UInt32, intersectionShader: UInt32) {
        self.type = type
        self.generalShader = generalShader
        self.closestHitShader = closestHitShader
        self.anyHitShader = anyHitShader
        self.intersectionShader = intersectionShader
    }

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

public struct RayTracingPipelineCreateInfoNV: CStructConvertible {
    typealias CStruct = VkRayTracingPipelineCreateInfoNV

    public let flags: PipelineCreateFlags
    public let stages: Array<PipelineShaderStageCreateInfo>
    public let groups: Array<RayTracingShaderGroupCreateInfoNV>
    public let maxRecursionDepth: UInt32
    public let layout: PipelineLayout
    public let basePipelineHandle: Pipeline?
    public let basePipelineIndex: Int32

    public init(flags: PipelineCreateFlags, stages: Array<PipelineShaderStageCreateInfo>, groups: Array<RayTracingShaderGroupCreateInfoNV>, maxRecursionDepth: UInt32, layout: PipelineLayout, basePipelineHandle: Pipeline?, basePipelineIndex: Int32) {
        self.flags = flags
        self.stages = stages
        self.groups = groups
        self.maxRecursionDepth = maxRecursionDepth
        self.layout = layout
        self.basePipelineHandle = basePipelineHandle
        self.basePipelineIndex = basePipelineIndex
    }


    func withCStruct<R>(_ body: (UnsafePointer<VkRayTracingPipelineCreateInfoNV>) throws -> R) rethrows -> R {
        try self.stages.withCStructBufferPointer { ptr_stages in
            try self.groups.withCStructBufferPointer { ptr_groups in
                var cStruct = VkRayTracingPipelineCreateInfoNV()
                cStruct.sType = VK_STRUCTURE_TYPE_RAY_TRACING_PIPELINE_CREATE_INFO_NV
                cStruct.pNext = nil
                cStruct.flags = self.flags.rawValue
                cStruct.stageCount = UInt32(ptr_stages.count)
                cStruct.pStages = ptr_stages.baseAddress
                cStruct.groupCount = UInt32(ptr_groups.count)
                cStruct.pGroups = ptr_groups.baseAddress
                cStruct.maxRecursionDepth = self.maxRecursionDepth
                cStruct.layout = self.layout.handle
                cStruct.basePipelineHandle = self.basePipelineHandle?.handle
                cStruct.basePipelineIndex = self.basePipelineIndex
                return try body(&cStruct)
            }
        }
    }
}

public struct GeometryTrianglesNV: CStructConvertible {
    typealias CStruct = VkGeometryTrianglesNV

    public let vertexData: Buffer?
    public let vertexOffset: VkDeviceSize
    public let vertexCount: UInt32
    public let vertexStride: VkDeviceSize
    public let vertexFormat: Format
    public let indexData: Buffer?
    public let indexOffset: VkDeviceSize
    public let indexCount: UInt32
    public let indexType: IndexType
    public let transformData: Buffer?
    public let transformOffset: VkDeviceSize

    public init(vertexData: Buffer?, vertexOffset: VkDeviceSize, vertexCount: UInt32, vertexStride: VkDeviceSize, vertexFormat: Format, indexData: Buffer?, indexOffset: VkDeviceSize, indexCount: UInt32, indexType: IndexType, transformData: Buffer?, transformOffset: VkDeviceSize) {
        self.vertexData = vertexData
        self.vertexOffset = vertexOffset
        self.vertexCount = vertexCount
        self.vertexStride = vertexStride
        self.vertexFormat = vertexFormat
        self.indexData = indexData
        self.indexOffset = indexOffset
        self.indexCount = indexCount
        self.indexType = indexType
        self.transformData = transformData
        self.transformOffset = transformOffset
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

public struct GeometryAABBNV: CStructConvertible {
    typealias CStruct = VkGeometryAABBNV

    public let aabbData: Buffer?
    public let numAABBs: UInt32
    public let stride: UInt32
    public let offset: VkDeviceSize

    public init(aabbData: Buffer?, numAABBs: UInt32, stride: UInt32, offset: VkDeviceSize) {
        self.aabbData = aabbData
        self.numAABBs = numAABBs
        self.stride = stride
        self.offset = offset
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

public struct GeometryDataNV: CStructConvertible {
    typealias CStruct = VkGeometryDataNV

    public let triangles: GeometryTrianglesNV
    public let aabbs: GeometryAABBNV

    public init(triangles: GeometryTrianglesNV, aabbs: GeometryAABBNV) {
        self.triangles = triangles
        self.aabbs = aabbs
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

public struct GeometryNV: CStructConvertible {
    typealias CStruct = VkGeometryNV

    public let geometryType: VkGeometryTypeKHR
    public let geometry: GeometryDataNV
    public let flags: VkGeometryFlagsKHR

    public init(geometryType: VkGeometryTypeKHR, geometry: GeometryDataNV, flags: VkGeometryFlagsKHR) {
        self.geometryType = geometryType
        self.geometry = geometry
        self.flags = flags
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

public struct AccelerationStructureInfoNV: CStructConvertible {
    typealias CStruct = VkAccelerationStructureInfoNV

    public let type: VkAccelerationStructureTypeNV
    public let flags: VkBuildAccelerationStructureFlagsNV
    public let instanceCount: UInt32
    public let geometries: Array<GeometryNV>

    public init(type: VkAccelerationStructureTypeNV, flags: VkBuildAccelerationStructureFlagsNV, instanceCount: UInt32, geometries: Array<GeometryNV>) {
        self.type = type
        self.flags = flags
        self.instanceCount = instanceCount
        self.geometries = geometries
    }


    func withCStruct<R>(_ body: (UnsafePointer<VkAccelerationStructureInfoNV>) throws -> R) rethrows -> R {
        try self.geometries.withCStructBufferPointer { ptr_geometries in
            var cStruct = VkAccelerationStructureInfoNV()
            cStruct.sType = VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_INFO_NV
            cStruct.pNext = nil
            cStruct.type = self.type
            cStruct.flags = self.flags
            cStruct.instanceCount = self.instanceCount
            cStruct.geometryCount = UInt32(ptr_geometries.count)
            cStruct.pGeometries = ptr_geometries.baseAddress
            return try body(&cStruct)
        }
    }
}

public struct AccelerationStructureCreateInfoNV: CStructConvertible {
    typealias CStruct = VkAccelerationStructureCreateInfoNV

    public let compactedSize: VkDeviceSize
    public let info: AccelerationStructureInfoNV

    public init(compactedSize: VkDeviceSize, info: AccelerationStructureInfoNV) {
        self.compactedSize = compactedSize
        self.info = info
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

public struct AccelerationStructureMemoryRequirementsInfoNV: CStructConvertible {
    typealias CStruct = VkAccelerationStructureMemoryRequirementsInfoNV

    public let type: VkAccelerationStructureMemoryRequirementsTypeNV
    public let accelerationStructure: AccelerationStructureNV

    public init(type: VkAccelerationStructureMemoryRequirementsTypeNV, accelerationStructure: AccelerationStructureNV) {
        self.type = type
        self.accelerationStructure = accelerationStructure
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

public struct PhysicalDeviceRayTracingPropertiesNV: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceRayTracingPropertiesNV

    public let shaderGroupHandleSize: UInt32
    public let maxRecursionDepth: UInt32
    public let maxShaderGroupStride: UInt32
    public let shaderGroupBaseAlignment: UInt32
    public let maxGeometryCount: UInt64
    public let maxInstanceCount: UInt64
    public let maxTriangleCount: UInt64
    public let maxDescriptorSetAccelerationStructures: UInt32

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

public struct DrmFormatModifierPropertiesEXT: CStructConvertible {
    typealias CStruct = VkDrmFormatModifierPropertiesEXT

    public let drmFormatModifier: UInt64
    public let drmFormatModifierPlaneCount: UInt32
    public let drmFormatModifierTilingFeatures: FormatFeatureFlags

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

public struct DrmFormatModifierPropertiesListEXT: CStructConvertible {
    typealias CStruct = VkDrmFormatModifierPropertiesListEXT

    public let drmFormatModifierCount: UInt32
    public let drmFormatModifierProperties: UnsafeMutablePointer<VkDrmFormatModifierPropertiesEXT>

    init(cStruct: VkDrmFormatModifierPropertiesListEXT) {
        self.drmFormatModifierCount = cStruct.drmFormatModifierCount
        self.drmFormatModifierProperties = cStruct.pDrmFormatModifierProperties
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkDrmFormatModifierPropertiesListEXT>) throws -> R) rethrows -> R {
        var cStruct = VkDrmFormatModifierPropertiesListEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_DRM_FORMAT_MODIFIER_PROPERTIES_LIST_EXT
        cStruct.pNext = nil
        cStruct.drmFormatModifierCount = self.drmFormatModifierCount
        cStruct.pDrmFormatModifierProperties = self.drmFormatModifierProperties
        return try body(&cStruct)
    }
}

public struct PhysicalDeviceImageDrmFormatModifierInfoEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceImageDrmFormatModifierInfoEXT

    public let drmFormatModifier: UInt64
    public let sharingMode: SharingMode
    public let queueFamilyIndices: Array<UInt32>

    public init(drmFormatModifier: UInt64, sharingMode: SharingMode, queueFamilyIndices: Array<UInt32>) {
        self.drmFormatModifier = drmFormatModifier
        self.sharingMode = sharingMode
        self.queueFamilyIndices = queueFamilyIndices
    }

    init(cStruct: VkPhysicalDeviceImageDrmFormatModifierInfoEXT) {
        self.drmFormatModifier = cStruct.drmFormatModifier
        self.sharingMode = SharingMode(rawValue: cStruct.sharingMode.rawValue)!
        self.queueFamilyIndices = Array(UnsafeBufferPointer(start: cStruct.pQueueFamilyIndices, count: Int(cStruct.queueFamilyIndexCount)))
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPhysicalDeviceImageDrmFormatModifierInfoEXT>) throws -> R) rethrows -> R {
        try self.queueFamilyIndices.withUnsafeBufferPointer { ptr_queueFamilyIndices in
            var cStruct = VkPhysicalDeviceImageDrmFormatModifierInfoEXT()
            cStruct.sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_DRM_FORMAT_MODIFIER_INFO_EXT
            cStruct.pNext = nil
            cStruct.drmFormatModifier = self.drmFormatModifier
            cStruct.sharingMode = VkSharingMode(rawValue: self.sharingMode.rawValue)
            cStruct.queueFamilyIndexCount = UInt32(ptr_queueFamilyIndices.count)
            cStruct.pQueueFamilyIndices = ptr_queueFamilyIndices.baseAddress
            return try body(&cStruct)
        }
    }
}

public struct ImageDrmFormatModifierListCreateInfoEXT: CStructConvertible {
    typealias CStruct = VkImageDrmFormatModifierListCreateInfoEXT

    public let drmFormatModifiers: Array<UInt64>

    public init(drmFormatModifiers: Array<UInt64>) {
        self.drmFormatModifiers = drmFormatModifiers
    }

    init(cStruct: VkImageDrmFormatModifierListCreateInfoEXT) {
        self.drmFormatModifiers = Array(UnsafeBufferPointer(start: cStruct.pDrmFormatModifiers, count: Int(cStruct.drmFormatModifierCount)))
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkImageDrmFormatModifierListCreateInfoEXT>) throws -> R) rethrows -> R {
        try self.drmFormatModifiers.withUnsafeBufferPointer { ptr_drmFormatModifiers in
            var cStruct = VkImageDrmFormatModifierListCreateInfoEXT()
            cStruct.sType = VK_STRUCTURE_TYPE_IMAGE_DRM_FORMAT_MODIFIER_LIST_CREATE_INFO_EXT
            cStruct.pNext = nil
            cStruct.drmFormatModifierCount = UInt32(ptr_drmFormatModifiers.count)
            cStruct.pDrmFormatModifiers = ptr_drmFormatModifiers.baseAddress
            return try body(&cStruct)
        }
    }
}

public struct ImageDrmFormatModifierExplicitCreateInfoEXT: CStructConvertible {
    typealias CStruct = VkImageDrmFormatModifierExplicitCreateInfoEXT

    public let drmFormatModifier: UInt64
    public let planeLayouts: Array<SubresourceLayout>

    public init(drmFormatModifier: UInt64, planeLayouts: Array<SubresourceLayout>) {
        self.drmFormatModifier = drmFormatModifier
        self.planeLayouts = planeLayouts
    }

    init(cStruct: VkImageDrmFormatModifierExplicitCreateInfoEXT) {
        self.drmFormatModifier = cStruct.drmFormatModifier
        self.planeLayouts = UnsafeBufferPointer(start: cStruct.pPlaneLayouts, count: Int(cStruct.drmFormatModifierPlaneCount)).map{ SubresourceLayout(cStruct: $0) }
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkImageDrmFormatModifierExplicitCreateInfoEXT>) throws -> R) rethrows -> R {
        try self.planeLayouts.withCStructBufferPointer { ptr_planeLayouts in
            var cStruct = VkImageDrmFormatModifierExplicitCreateInfoEXT()
            cStruct.sType = VK_STRUCTURE_TYPE_IMAGE_DRM_FORMAT_MODIFIER_EXPLICIT_CREATE_INFO_EXT
            cStruct.pNext = nil
            cStruct.drmFormatModifier = self.drmFormatModifier
            cStruct.drmFormatModifierPlaneCount = UInt32(ptr_planeLayouts.count)
            cStruct.pPlaneLayouts = ptr_planeLayouts.baseAddress
            return try body(&cStruct)
        }
    }
}

public struct ImageDrmFormatModifierPropertiesEXT: CStructConvertible {
    typealias CStruct = VkImageDrmFormatModifierPropertiesEXT

    public let drmFormatModifier: UInt64

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

public struct ImageStencilUsageCreateInfo: CStructConvertible {
    typealias CStruct = VkImageStencilUsageCreateInfo

    public let stencilUsage: ImageUsageFlags

    public init(stencilUsage: ImageUsageFlags) {
        self.stencilUsage = stencilUsage
    }

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

public struct DeviceMemoryOverallocationCreateInfoAMD: CStructConvertible {
    typealias CStruct = VkDeviceMemoryOverallocationCreateInfoAMD

    public let overallocationBehavior: MemoryOverallocationBehaviorAMD

    public init(overallocationBehavior: MemoryOverallocationBehaviorAMD) {
        self.overallocationBehavior = overallocationBehavior
    }

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

public struct PhysicalDeviceFragmentDensityMapFeaturesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceFragmentDensityMapFeaturesEXT

    public let fragmentDensityMap: Bool
    public let fragmentDensityMapDynamic: Bool
    public let fragmentDensityMapNonSubsampledImages: Bool

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

public struct PhysicalDeviceFragmentDensityMapPropertiesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceFragmentDensityMapPropertiesEXT

    public let minFragmentDensityTexelSize: Extent2D
    public let maxFragmentDensityTexelSize: Extent2D
    public let fragmentDensityInvocations: Bool

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

public struct RenderPassFragmentDensityMapCreateInfoEXT: CStructConvertible {
    typealias CStruct = VkRenderPassFragmentDensityMapCreateInfoEXT

    public let fragmentDensityMapAttachment: AttachmentReference

    public init(fragmentDensityMapAttachment: AttachmentReference) {
        self.fragmentDensityMapAttachment = fragmentDensityMapAttachment
    }

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

public struct PhysicalDeviceScalarBlockLayoutFeatures: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceScalarBlockLayoutFeatures

    public let scalarBlockLayout: Bool

    public init(scalarBlockLayout: Bool) {
        self.scalarBlockLayout = scalarBlockLayout
    }

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

public struct SurfaceProtectedCapabilitiesKHR: CStructConvertible {
    typealias CStruct = VkSurfaceProtectedCapabilitiesKHR

    public let supportsProtected: Bool

    public init(supportsProtected: Bool) {
        self.supportsProtected = supportsProtected
    }

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

public struct PhysicalDeviceUniformBufferStandardLayoutFeatures: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceUniformBufferStandardLayoutFeatures

    public let uniformBufferStandardLayout: Bool

    public init(uniformBufferStandardLayout: Bool) {
        self.uniformBufferStandardLayout = uniformBufferStandardLayout
    }

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

public struct PhysicalDeviceDepthClipEnableFeaturesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceDepthClipEnableFeaturesEXT

    public let depthClipEnable: Bool

    public init(depthClipEnable: Bool) {
        self.depthClipEnable = depthClipEnable
    }

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

public struct PipelineRasterizationDepthClipStateCreateInfoEXT: CStructConvertible {
    typealias CStruct = VkPipelineRasterizationDepthClipStateCreateInfoEXT

    public let flags: PipelineRasterizationDepthClipStateCreateFlagsEXT
    public let depthClipEnable: Bool

    public init(flags: PipelineRasterizationDepthClipStateCreateFlagsEXT, depthClipEnable: Bool) {
        self.flags = flags
        self.depthClipEnable = depthClipEnable
    }

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

public struct PhysicalDeviceMemoryBudgetPropertiesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceMemoryBudgetPropertiesEXT

    public let heapBudget: (VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize)
    public let heapUsage: (VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize, VkDeviceSize)

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

public struct PhysicalDeviceMemoryPriorityFeaturesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceMemoryPriorityFeaturesEXT

    public let memoryPriority: Bool

    public init(memoryPriority: Bool) {
        self.memoryPriority = memoryPriority
    }

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

public struct MemoryPriorityAllocateInfoEXT: CStructConvertible {
    typealias CStruct = VkMemoryPriorityAllocateInfoEXT

    public let priority: Float

    public init(priority: Float) {
        self.priority = priority
    }

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

public struct PhysicalDeviceBufferDeviceAddressFeatures: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceBufferDeviceAddressFeatures

    public let bufferDeviceAddress: Bool
    public let bufferDeviceAddressCaptureReplay: Bool
    public let bufferDeviceAddressMultiDevice: Bool

    public init(bufferDeviceAddress: Bool, bufferDeviceAddressCaptureReplay: Bool, bufferDeviceAddressMultiDevice: Bool) {
        self.bufferDeviceAddress = bufferDeviceAddress
        self.bufferDeviceAddressCaptureReplay = bufferDeviceAddressCaptureReplay
        self.bufferDeviceAddressMultiDevice = bufferDeviceAddressMultiDevice
    }

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

public struct PhysicalDeviceBufferDeviceAddressFeaturesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceBufferDeviceAddressFeaturesEXT

    public let bufferDeviceAddress: Bool
    public let bufferDeviceAddressCaptureReplay: Bool
    public let bufferDeviceAddressMultiDevice: Bool

    public init(bufferDeviceAddress: Bool, bufferDeviceAddressCaptureReplay: Bool, bufferDeviceAddressMultiDevice: Bool) {
        self.bufferDeviceAddress = bufferDeviceAddress
        self.bufferDeviceAddressCaptureReplay = bufferDeviceAddressCaptureReplay
        self.bufferDeviceAddressMultiDevice = bufferDeviceAddressMultiDevice
    }

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

public struct BufferDeviceAddressInfo: CStructConvertible {
    typealias CStruct = VkBufferDeviceAddressInfo

    public let buffer: Buffer

    public init(buffer: Buffer) {
        self.buffer = buffer
    }


    func withCStruct<R>(_ body: (UnsafePointer<VkBufferDeviceAddressInfo>) throws -> R) rethrows -> R {
        var cStruct = VkBufferDeviceAddressInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_BUFFER_DEVICE_ADDRESS_INFO
        cStruct.pNext = nil
        cStruct.buffer = self.buffer.handle
        return try body(&cStruct)
    }
}

public struct BufferOpaqueCaptureAddressCreateInfo: CStructConvertible {
    typealias CStruct = VkBufferOpaqueCaptureAddressCreateInfo

    public let opaqueCaptureAddress: UInt64

    public init(opaqueCaptureAddress: UInt64) {
        self.opaqueCaptureAddress = opaqueCaptureAddress
    }

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

public struct BufferDeviceAddressCreateInfoEXT: CStructConvertible {
    typealias CStruct = VkBufferDeviceAddressCreateInfoEXT

    public let deviceAddress: VkDeviceAddress

    public init(deviceAddress: VkDeviceAddress) {
        self.deviceAddress = deviceAddress
    }

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

public struct PhysicalDeviceImageViewImageFormatInfoEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceImageViewImageFormatInfoEXT

    public let imageViewType: ImageViewType

    public init(imageViewType: ImageViewType) {
        self.imageViewType = imageViewType
    }

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

public struct FilterCubicImageViewImageFormatPropertiesEXT: CStructConvertible {
    typealias CStruct = VkFilterCubicImageViewImageFormatPropertiesEXT

    public let filterCubic: Bool
    public let filterCubicMinmax: Bool

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

public struct PhysicalDeviceImagelessFramebufferFeatures: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceImagelessFramebufferFeatures

    public let imagelessFramebuffer: Bool

    public init(imagelessFramebuffer: Bool) {
        self.imagelessFramebuffer = imagelessFramebuffer
    }

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

public struct FramebufferAttachmentImageInfo: CStructConvertible {
    typealias CStruct = VkFramebufferAttachmentImageInfo

    public let flags: ImageCreateFlags
    public let usage: ImageUsageFlags
    public let width: UInt32
    public let height: UInt32
    public let layerCount: UInt32
    public let viewFormats: Array<Format>

    public init(flags: ImageCreateFlags, usage: ImageUsageFlags, width: UInt32, height: UInt32, layerCount: UInt32, viewFormats: Array<Format>) {
        self.flags = flags
        self.usage = usage
        self.width = width
        self.height = height
        self.layerCount = layerCount
        self.viewFormats = viewFormats
    }

    init(cStruct: VkFramebufferAttachmentImageInfo) {
        self.flags = ImageCreateFlags(rawValue: cStruct.flags)
        self.usage = ImageUsageFlags(rawValue: cStruct.usage)
        self.width = cStruct.width
        self.height = cStruct.height
        self.layerCount = cStruct.layerCount
        self.viewFormats = UnsafeBufferPointer(start: cStruct.pViewFormats, count: Int(cStruct.viewFormatCount)).map{ Format(rawValue: $0.rawValue)! }
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkFramebufferAttachmentImageInfo>) throws -> R) rethrows -> R {
        try self.viewFormats.map{ VkFormat(rawValue: $0.rawValue) }.withUnsafeBufferPointer { ptr_viewFormats in
            var cStruct = VkFramebufferAttachmentImageInfo()
            cStruct.sType = VK_STRUCTURE_TYPE_FRAMEBUFFER_ATTACHMENT_IMAGE_INFO
            cStruct.pNext = nil
            cStruct.flags = self.flags.rawValue
            cStruct.usage = self.usage.rawValue
            cStruct.width = self.width
            cStruct.height = self.height
            cStruct.layerCount = self.layerCount
            cStruct.viewFormatCount = UInt32(ptr_viewFormats.count)
            cStruct.pViewFormats = ptr_viewFormats.baseAddress
            return try body(&cStruct)
        }
    }
}

public struct FramebufferAttachmentsCreateInfo: CStructConvertible {
    typealias CStruct = VkFramebufferAttachmentsCreateInfo

    public let attachmentImageInfos: Array<FramebufferAttachmentImageInfo>

    public init(attachmentImageInfos: Array<FramebufferAttachmentImageInfo>) {
        self.attachmentImageInfos = attachmentImageInfos
    }

    init(cStruct: VkFramebufferAttachmentsCreateInfo) {
        self.attachmentImageInfos = UnsafeBufferPointer(start: cStruct.pAttachmentImageInfos, count: Int(cStruct.attachmentImageInfoCount)).map{ FramebufferAttachmentImageInfo(cStruct: $0) }
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkFramebufferAttachmentsCreateInfo>) throws -> R) rethrows -> R {
        try self.attachmentImageInfos.withCStructBufferPointer { ptr_attachmentImageInfos in
            var cStruct = VkFramebufferAttachmentsCreateInfo()
            cStruct.sType = VK_STRUCTURE_TYPE_FRAMEBUFFER_ATTACHMENTS_CREATE_INFO
            cStruct.pNext = nil
            cStruct.attachmentImageInfoCount = UInt32(ptr_attachmentImageInfos.count)
            cStruct.pAttachmentImageInfos = ptr_attachmentImageInfos.baseAddress
            return try body(&cStruct)
        }
    }
}

public struct RenderPassAttachmentBeginInfo: CStructConvertible {
    typealias CStruct = VkRenderPassAttachmentBeginInfo

    public let attachments: Array<ImageView>

    public init(attachments: Array<ImageView>) {
        self.attachments = attachments
    }


    func withCStruct<R>(_ body: (UnsafePointer<VkRenderPassAttachmentBeginInfo>) throws -> R) rethrows -> R {
        try self.attachments.map{ $0.handle }.withUnsafeBufferPointer { ptr_attachments in
            var cStruct = VkRenderPassAttachmentBeginInfo()
            cStruct.sType = VK_STRUCTURE_TYPE_RENDER_PASS_ATTACHMENT_BEGIN_INFO
            cStruct.pNext = nil
            cStruct.attachmentCount = UInt32(ptr_attachments.count)
            cStruct.pAttachments = ptr_attachments.baseAddress
            return try body(&cStruct)
        }
    }
}

public struct PhysicalDeviceTextureCompressionASTCHDRFeaturesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceTextureCompressionASTCHDRFeaturesEXT

    public let textureCompressionASTC_HDR: Bool

    public init(textureCompressionASTC_HDR: Bool) {
        self.textureCompressionASTC_HDR = textureCompressionASTC_HDR
    }

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

public struct PhysicalDeviceCooperativeMatrixFeaturesNV: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceCooperativeMatrixFeaturesNV

    public let cooperativeMatrix: Bool
    public let cooperativeMatrixRobustBufferAccess: Bool

    public init(cooperativeMatrix: Bool, cooperativeMatrixRobustBufferAccess: Bool) {
        self.cooperativeMatrix = cooperativeMatrix
        self.cooperativeMatrixRobustBufferAccess = cooperativeMatrixRobustBufferAccess
    }

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

public struct PhysicalDeviceCooperativeMatrixPropertiesNV: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceCooperativeMatrixPropertiesNV

    public let cooperativeMatrixSupportedStages: ShaderStageFlags

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

public struct CooperativeMatrixPropertiesNV: CStructConvertible {
    typealias CStruct = VkCooperativeMatrixPropertiesNV

    public let MSize: UInt32
    public let NSize: UInt32
    public let KSize: UInt32
    public let AType: ComponentTypeNV
    public let BType: ComponentTypeNV
    public let CType: ComponentTypeNV
    public let DType: ComponentTypeNV
    public let scope: ScopeNV

    public init(MSize: UInt32, NSize: UInt32, KSize: UInt32, AType: ComponentTypeNV, BType: ComponentTypeNV, CType: ComponentTypeNV, DType: ComponentTypeNV, scope: ScopeNV) {
        self.MSize = MSize
        self.NSize = NSize
        self.KSize = KSize
        self.AType = AType
        self.BType = BType
        self.CType = CType
        self.DType = DType
        self.scope = scope
    }

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

public struct PhysicalDeviceYcbcrImageArraysFeaturesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceYcbcrImageArraysFeaturesEXT

    public let ycbcrImageArrays: Bool

    public init(ycbcrImageArrays: Bool) {
        self.ycbcrImageArrays = ycbcrImageArrays
    }

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

public struct ImageViewHandleInfoNVX: CStructConvertible {
    typealias CStruct = VkImageViewHandleInfoNVX

    public let imageView: ImageView
    public let descriptorType: DescriptorType
    public let sampler: Sampler?

    public init(imageView: ImageView, descriptorType: DescriptorType, sampler: Sampler?) {
        self.imageView = imageView
        self.descriptorType = descriptorType
        self.sampler = sampler
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

public struct PipelineCreationFeedbackEXT: CStructConvertible {
    typealias CStruct = VkPipelineCreationFeedbackEXT

    public let flags: PipelineCreationFeedbackFlagsEXT
    public let duration: UInt64

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

public struct PipelineCreationFeedbackCreateInfoEXT: CStructConvertible {
    typealias CStruct = VkPipelineCreationFeedbackCreateInfoEXT

    public let pipelineCreationFeedback: UnsafeMutablePointer<VkPipelineCreationFeedbackEXT>
    public let pipelineStageCreationFeedbackCount: UInt32
    public let pipelineStageCreationFeedbacks: UnsafeMutablePointer<VkPipelineCreationFeedbackEXT>

    public init(pipelineCreationFeedback: UnsafeMutablePointer<VkPipelineCreationFeedbackEXT>, pipelineStageCreationFeedbackCount: UInt32, pipelineStageCreationFeedbacks: UnsafeMutablePointer<VkPipelineCreationFeedbackEXT>) {
        self.pipelineCreationFeedback = pipelineCreationFeedback
        self.pipelineStageCreationFeedbackCount = pipelineStageCreationFeedbackCount
        self.pipelineStageCreationFeedbacks = pipelineStageCreationFeedbacks
    }

    init(cStruct: VkPipelineCreationFeedbackCreateInfoEXT) {
        self.pipelineCreationFeedback = cStruct.pPipelineCreationFeedback
        self.pipelineStageCreationFeedbackCount = cStruct.pipelineStageCreationFeedbackCount
        self.pipelineStageCreationFeedbacks = cStruct.pPipelineStageCreationFeedbacks
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPipelineCreationFeedbackCreateInfoEXT>) throws -> R) rethrows -> R {
        var cStruct = VkPipelineCreationFeedbackCreateInfoEXT()
        cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_CREATION_FEEDBACK_CREATE_INFO_EXT
        cStruct.pNext = nil
        cStruct.pPipelineCreationFeedback = self.pipelineCreationFeedback
        cStruct.pipelineStageCreationFeedbackCount = self.pipelineStageCreationFeedbackCount
        cStruct.pPipelineStageCreationFeedbacks = self.pipelineStageCreationFeedbacks
        return try body(&cStruct)
    }
}

public struct PhysicalDevicePerformanceQueryFeaturesKHR: CStructConvertible {
    typealias CStruct = VkPhysicalDevicePerformanceQueryFeaturesKHR

    public let performanceCounterQueryPools: Bool
    public let performanceCounterMultipleQueryPools: Bool

    public init(performanceCounterQueryPools: Bool, performanceCounterMultipleQueryPools: Bool) {
        self.performanceCounterQueryPools = performanceCounterQueryPools
        self.performanceCounterMultipleQueryPools = performanceCounterMultipleQueryPools
    }

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

public struct PhysicalDevicePerformanceQueryPropertiesKHR: CStructConvertible {
    typealias CStruct = VkPhysicalDevicePerformanceQueryPropertiesKHR

    public let allowCommandBufferQueryCopies: Bool

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

public struct PerformanceCounterKHR: CStructConvertible {
    typealias CStruct = VkPerformanceCounterKHR

    public let unit: PerformanceCounterUnitKHR
    public let scope: PerformanceCounterScopeKHR
    public let storage: PerformanceCounterStorageKHR
    public let uuid: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)

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

public struct PerformanceCounterDescriptionKHR: CStructConvertible {
    typealias CStruct = VkPerformanceCounterDescriptionKHR

    public let flags: PerformanceCounterDescriptionFlagsKHR
    public let name: String
    public let category: String
    public let description: String

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

public struct QueryPoolPerformanceCreateInfoKHR: CStructConvertible {
    typealias CStruct = VkQueryPoolPerformanceCreateInfoKHR

    public let queueFamilyIndex: UInt32
    public let counterIndices: Array<UInt32>

    public init(queueFamilyIndex: UInt32, counterIndices: Array<UInt32>) {
        self.queueFamilyIndex = queueFamilyIndex
        self.counterIndices = counterIndices
    }

    init(cStruct: VkQueryPoolPerformanceCreateInfoKHR) {
        self.queueFamilyIndex = cStruct.queueFamilyIndex
        self.counterIndices = Array(UnsafeBufferPointer(start: cStruct.pCounterIndices, count: Int(cStruct.counterIndexCount)))
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkQueryPoolPerformanceCreateInfoKHR>) throws -> R) rethrows -> R {
        try self.counterIndices.withUnsafeBufferPointer { ptr_counterIndices in
            var cStruct = VkQueryPoolPerformanceCreateInfoKHR()
            cStruct.sType = VK_STRUCTURE_TYPE_QUERY_POOL_PERFORMANCE_CREATE_INFO_KHR
            cStruct.pNext = nil
            cStruct.queueFamilyIndex = self.queueFamilyIndex
            cStruct.counterIndexCount = UInt32(ptr_counterIndices.count)
            cStruct.pCounterIndices = ptr_counterIndices.baseAddress
            return try body(&cStruct)
        }
    }
}

public struct AcquireProfilingLockInfoKHR: CStructConvertible {
    typealias CStruct = VkAcquireProfilingLockInfoKHR

    public let flags: AcquireProfilingLockFlagsKHR
    public let timeout: UInt64

    public init(flags: AcquireProfilingLockFlagsKHR, timeout: UInt64) {
        self.flags = flags
        self.timeout = timeout
    }

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

public struct PerformanceQuerySubmitInfoKHR: CStructConvertible {
    typealias CStruct = VkPerformanceQuerySubmitInfoKHR

    public let counterPassIndex: UInt32

    public init(counterPassIndex: UInt32) {
        self.counterPassIndex = counterPassIndex
    }

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

public struct HeadlessSurfaceCreateInfoEXT: CStructConvertible {
    typealias CStruct = VkHeadlessSurfaceCreateInfoEXT

    public let flags: HeadlessSurfaceCreateFlagsEXT

    public init(flags: HeadlessSurfaceCreateFlagsEXT) {
        self.flags = flags
    }

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

public struct PhysicalDeviceCoverageReductionModeFeaturesNV: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceCoverageReductionModeFeaturesNV

    public let coverageReductionMode: Bool

    public init(coverageReductionMode: Bool) {
        self.coverageReductionMode = coverageReductionMode
    }

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

public struct PipelineCoverageReductionStateCreateInfoNV: CStructConvertible {
    typealias CStruct = VkPipelineCoverageReductionStateCreateInfoNV

    public let flags: PipelineCoverageReductionStateCreateFlagsNV
    public let coverageReductionMode: CoverageReductionModeNV

    public init(flags: PipelineCoverageReductionStateCreateFlagsNV, coverageReductionMode: CoverageReductionModeNV) {
        self.flags = flags
        self.coverageReductionMode = coverageReductionMode
    }

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

public struct FramebufferMixedSamplesCombinationNV: CStructConvertible {
    typealias CStruct = VkFramebufferMixedSamplesCombinationNV

    public let coverageReductionMode: CoverageReductionModeNV
    public let rasterizationSamples: SampleCountFlags
    public let depthStencilSamples: SampleCountFlags
    public let colorSamples: SampleCountFlags

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

public struct PhysicalDeviceShaderIntegerFunctions2FeaturesINTEL: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceShaderIntegerFunctions2FeaturesINTEL

    public let shaderIntegerFunctions2: Bool

    public init(shaderIntegerFunctions2: Bool) {
        self.shaderIntegerFunctions2 = shaderIntegerFunctions2
    }

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

public struct PerformanceValueINTEL: CStructConvertible {
    typealias CStruct = VkPerformanceValueINTEL

    public let type: PerformanceValueTypeINTEL
    public let data: VkPerformanceValueDataINTEL

    public init(type: PerformanceValueTypeINTEL, data: VkPerformanceValueDataINTEL) {
        self.type = type
        self.data = data
    }

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

public struct InitializePerformanceApiInfoINTEL: CStructConvertible {
    typealias CStruct = VkInitializePerformanceApiInfoINTEL

    public let userData: UnsafeMutableRawPointer

    public init(userData: UnsafeMutableRawPointer) {
        self.userData = userData
    }

    init(cStruct: VkInitializePerformanceApiInfoINTEL) {
        self.userData = cStruct.pUserData
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkInitializePerformanceApiInfoINTEL>) throws -> R) rethrows -> R {
        var cStruct = VkInitializePerformanceApiInfoINTEL()
        cStruct.sType = VK_STRUCTURE_TYPE_INITIALIZE_PERFORMANCE_API_INFO_INTEL
        cStruct.pNext = nil
        cStruct.pUserData = self.userData
        return try body(&cStruct)
    }
}

public struct QueryPoolPerformanceQueryCreateInfoINTEL: CStructConvertible {
    typealias CStruct = VkQueryPoolPerformanceQueryCreateInfoINTEL

    public let performanceCountersSampling: QueryPoolSamplingModeINTEL

    public init(performanceCountersSampling: QueryPoolSamplingModeINTEL) {
        self.performanceCountersSampling = performanceCountersSampling
    }

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

public struct PerformanceMarkerInfoINTEL: CStructConvertible {
    typealias CStruct = VkPerformanceMarkerInfoINTEL

    public let marker: UInt64

    public init(marker: UInt64) {
        self.marker = marker
    }

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

public struct PerformanceStreamMarkerInfoINTEL: CStructConvertible {
    typealias CStruct = VkPerformanceStreamMarkerInfoINTEL

    public let marker: UInt32

    public init(marker: UInt32) {
        self.marker = marker
    }

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

public struct PerformanceOverrideInfoINTEL: CStructConvertible {
    typealias CStruct = VkPerformanceOverrideInfoINTEL

    public let type: PerformanceOverrideTypeINTEL
    public let enable: Bool
    public let parameter: UInt64

    public init(type: PerformanceOverrideTypeINTEL, enable: Bool, parameter: UInt64) {
        self.type = type
        self.enable = enable
        self.parameter = parameter
    }

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

public struct PerformanceConfigurationAcquireInfoINTEL: CStructConvertible {
    typealias CStruct = VkPerformanceConfigurationAcquireInfoINTEL

    public let type: PerformanceConfigurationTypeINTEL

    public init(type: PerformanceConfigurationTypeINTEL) {
        self.type = type
    }

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

public struct PhysicalDeviceShaderClockFeaturesKHR: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceShaderClockFeaturesKHR

    public let shaderSubgroupClock: Bool
    public let shaderDeviceClock: Bool

    public init(shaderSubgroupClock: Bool, shaderDeviceClock: Bool) {
        self.shaderSubgroupClock = shaderSubgroupClock
        self.shaderDeviceClock = shaderDeviceClock
    }

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

public struct PhysicalDeviceIndexTypeUint8FeaturesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceIndexTypeUint8FeaturesEXT

    public let indexTypeUint8: Bool

    public init(indexTypeUint8: Bool) {
        self.indexTypeUint8 = indexTypeUint8
    }

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

public struct PhysicalDeviceShaderSMBuiltinsPropertiesNV: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceShaderSMBuiltinsPropertiesNV

    public let shaderSMCount: UInt32
    public let shaderWarpsPerSM: UInt32

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

public struct PhysicalDeviceShaderSMBuiltinsFeaturesNV: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceShaderSMBuiltinsFeaturesNV

    public let shaderSMBuiltins: Bool

    public init(shaderSMBuiltins: Bool) {
        self.shaderSMBuiltins = shaderSMBuiltins
    }

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

public struct PhysicalDeviceFragmentShaderInterlockFeaturesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceFragmentShaderInterlockFeaturesEXT

    public let fragmentShaderSampleInterlock: Bool
    public let fragmentShaderPixelInterlock: Bool
    public let fragmentShaderShadingRateInterlock: Bool

    public init(fragmentShaderSampleInterlock: Bool, fragmentShaderPixelInterlock: Bool, fragmentShaderShadingRateInterlock: Bool) {
        self.fragmentShaderSampleInterlock = fragmentShaderSampleInterlock
        self.fragmentShaderPixelInterlock = fragmentShaderPixelInterlock
        self.fragmentShaderShadingRateInterlock = fragmentShaderShadingRateInterlock
    }

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

public struct PhysicalDeviceSeparateDepthStencilLayoutsFeatures: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceSeparateDepthStencilLayoutsFeatures

    public let separateDepthStencilLayouts: Bool

    public init(separateDepthStencilLayouts: Bool) {
        self.separateDepthStencilLayouts = separateDepthStencilLayouts
    }

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

public struct AttachmentReferenceStencilLayout: CStructConvertible {
    typealias CStruct = VkAttachmentReferenceStencilLayout

    public let stencilLayout: ImageLayout

    public init(stencilLayout: ImageLayout) {
        self.stencilLayout = stencilLayout
    }

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

public struct AttachmentDescriptionStencilLayout: CStructConvertible {
    typealias CStruct = VkAttachmentDescriptionStencilLayout

    public let stencilInitialLayout: ImageLayout
    public let stencilFinalLayout: ImageLayout

    public init(stencilInitialLayout: ImageLayout, stencilFinalLayout: ImageLayout) {
        self.stencilInitialLayout = stencilInitialLayout
        self.stencilFinalLayout = stencilFinalLayout
    }

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

public struct PhysicalDevicePipelineExecutablePropertiesFeaturesKHR: CStructConvertible {
    typealias CStruct = VkPhysicalDevicePipelineExecutablePropertiesFeaturesKHR

    public let pipelineExecutableInfo: Bool

    public init(pipelineExecutableInfo: Bool) {
        self.pipelineExecutableInfo = pipelineExecutableInfo
    }

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

public struct PipelineInfoKHR: CStructConvertible {
    typealias CStruct = VkPipelineInfoKHR

    public let pipeline: Pipeline

    public init(pipeline: Pipeline) {
        self.pipeline = pipeline
    }


    func withCStruct<R>(_ body: (UnsafePointer<VkPipelineInfoKHR>) throws -> R) rethrows -> R {
        var cStruct = VkPipelineInfoKHR()
        cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_INFO_KHR
        cStruct.pNext = nil
        cStruct.pipeline = self.pipeline.handle
        return try body(&cStruct)
    }
}

public struct PipelineExecutablePropertiesKHR: CStructConvertible {
    typealias CStruct = VkPipelineExecutablePropertiesKHR

    public let stages: ShaderStageFlags
    public let name: String
    public let description: String
    public let subgroupSize: UInt32

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

public struct PipelineExecutableInfoKHR: CStructConvertible {
    typealias CStruct = VkPipelineExecutableInfoKHR

    public let pipeline: Pipeline
    public let executableIndex: UInt32

    public init(pipeline: Pipeline, executableIndex: UInt32) {
        self.pipeline = pipeline
        self.executableIndex = executableIndex
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

public struct PipelineExecutableStatisticKHR: CStructConvertible {
    typealias CStruct = VkPipelineExecutableStatisticKHR

    public let name: String
    public let description: String
    public let format: PipelineExecutableStatisticFormatKHR
    public let value: VkPipelineExecutableStatisticValueKHR

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

public struct PipelineExecutableInternalRepresentationKHR: CStructConvertible {
    typealias CStruct = VkPipelineExecutableInternalRepresentationKHR

    public let name: String
    public let description: String
    public let isText: Bool
    public let dataSize: Int
    public let data: UnsafeMutableRawPointer

    init(cStruct: VkPipelineExecutableInternalRepresentationKHR) {
        self.name = String(unsafeBytesOf: cStruct.name)
        self.description = String(unsafeBytesOf: cStruct.description)
        self.isText = cStruct.isText == VK_TRUE
        self.dataSize = cStruct.dataSize
        self.data = cStruct.pData
    }

    func withCStruct<R>(_ body: (UnsafePointer<VkPipelineExecutableInternalRepresentationKHR>) throws -> R) rethrows -> R {
        var cStruct = VkPipelineExecutableInternalRepresentationKHR()
        cStruct.sType = VK_STRUCTURE_TYPE_PIPELINE_EXECUTABLE_INTERNAL_REPRESENTATION_KHR
        cStruct.pNext = nil
        cStruct.name = self.name.unsafeBytesCopy()
        cStruct.description = self.description.unsafeBytesCopy()
        cStruct.isText = VkBool32(self.isText ? VK_TRUE : VK_FALSE)
        cStruct.dataSize = self.dataSize
        cStruct.pData = self.data
        return try body(&cStruct)
    }
}

public struct PhysicalDeviceShaderDemoteToHelperInvocationFeaturesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceShaderDemoteToHelperInvocationFeaturesEXT

    public let shaderDemoteToHelperInvocation: Bool

    public init(shaderDemoteToHelperInvocation: Bool) {
        self.shaderDemoteToHelperInvocation = shaderDemoteToHelperInvocation
    }

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

public struct PhysicalDeviceTexelBufferAlignmentFeaturesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceTexelBufferAlignmentFeaturesEXT

    public let texelBufferAlignment: Bool

    public init(texelBufferAlignment: Bool) {
        self.texelBufferAlignment = texelBufferAlignment
    }

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

public struct PhysicalDeviceTexelBufferAlignmentPropertiesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceTexelBufferAlignmentPropertiesEXT

    public let storageTexelBufferOffsetAlignmentBytes: VkDeviceSize
    public let storageTexelBufferOffsetSingleTexelAlignment: Bool
    public let uniformTexelBufferOffsetAlignmentBytes: VkDeviceSize
    public let uniformTexelBufferOffsetSingleTexelAlignment: Bool

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

public struct PhysicalDeviceSubgroupSizeControlFeaturesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceSubgroupSizeControlFeaturesEXT

    public let subgroupSizeControl: Bool
    public let computeFullSubgroups: Bool

    public init(subgroupSizeControl: Bool, computeFullSubgroups: Bool) {
        self.subgroupSizeControl = subgroupSizeControl
        self.computeFullSubgroups = computeFullSubgroups
    }

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

public struct PhysicalDeviceSubgroupSizeControlPropertiesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceSubgroupSizeControlPropertiesEXT

    public let minSubgroupSize: UInt32
    public let maxSubgroupSize: UInt32
    public let maxComputeWorkgroupSubgroups: UInt32
    public let requiredSubgroupSizeStages: ShaderStageFlags

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

public struct PipelineShaderStageRequiredSubgroupSizeCreateInfoEXT: CStructConvertible {
    typealias CStruct = VkPipelineShaderStageRequiredSubgroupSizeCreateInfoEXT

    public let requiredSubgroupSize: UInt32

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

public struct MemoryOpaqueCaptureAddressAllocateInfo: CStructConvertible {
    typealias CStruct = VkMemoryOpaqueCaptureAddressAllocateInfo

    public let opaqueCaptureAddress: UInt64

    public init(opaqueCaptureAddress: UInt64) {
        self.opaqueCaptureAddress = opaqueCaptureAddress
    }

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

public struct DeviceMemoryOpaqueCaptureAddressInfo: CStructConvertible {
    typealias CStruct = VkDeviceMemoryOpaqueCaptureAddressInfo

    public let memory: DeviceMemory

    public init(memory: DeviceMemory) {
        self.memory = memory
    }


    func withCStruct<R>(_ body: (UnsafePointer<VkDeviceMemoryOpaqueCaptureAddressInfo>) throws -> R) rethrows -> R {
        var cStruct = VkDeviceMemoryOpaqueCaptureAddressInfo()
        cStruct.sType = VK_STRUCTURE_TYPE_DEVICE_MEMORY_OPAQUE_CAPTURE_ADDRESS_INFO
        cStruct.pNext = nil
        cStruct.memory = self.memory.handle
        return try body(&cStruct)
    }
}

public struct PhysicalDeviceLineRasterizationFeaturesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceLineRasterizationFeaturesEXT

    public let rectangularLines: Bool
    public let bresenhamLines: Bool
    public let smoothLines: Bool
    public let stippledRectangularLines: Bool
    public let stippledBresenhamLines: Bool
    public let stippledSmoothLines: Bool

    public init(rectangularLines: Bool, bresenhamLines: Bool, smoothLines: Bool, stippledRectangularLines: Bool, stippledBresenhamLines: Bool, stippledSmoothLines: Bool) {
        self.rectangularLines = rectangularLines
        self.bresenhamLines = bresenhamLines
        self.smoothLines = smoothLines
        self.stippledRectangularLines = stippledRectangularLines
        self.stippledBresenhamLines = stippledBresenhamLines
        self.stippledSmoothLines = stippledSmoothLines
    }

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

public struct PhysicalDeviceLineRasterizationPropertiesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceLineRasterizationPropertiesEXT

    public let lineSubPixelPrecisionBits: UInt32

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

public struct PipelineRasterizationLineStateCreateInfoEXT: CStructConvertible {
    typealias CStruct = VkPipelineRasterizationLineStateCreateInfoEXT

    public let lineRasterizationMode: LineRasterizationModeEXT
    public let stippledLineEnable: Bool
    public let lineStippleFactor: UInt32
    public let lineStipplePattern: UInt16

    public init(lineRasterizationMode: LineRasterizationModeEXT, stippledLineEnable: Bool, lineStippleFactor: UInt32, lineStipplePattern: UInt16) {
        self.lineRasterizationMode = lineRasterizationMode
        self.stippledLineEnable = stippledLineEnable
        self.lineStippleFactor = lineStippleFactor
        self.lineStipplePattern = lineStipplePattern
    }

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

public struct PhysicalDevicePipelineCreationCacheControlFeaturesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDevicePipelineCreationCacheControlFeaturesEXT

    public let pipelineCreationCacheControl: Bool

    public init(pipelineCreationCacheControl: Bool) {
        self.pipelineCreationCacheControl = pipelineCreationCacheControl
    }

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

public struct PhysicalDeviceVulkan11Features: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceVulkan11Features

    public let storageBuffer16BitAccess: Bool
    public let uniformAndStorageBuffer16BitAccess: Bool
    public let storagePushConstant16: Bool
    public let storageInputOutput16: Bool
    public let multiview: Bool
    public let multiviewGeometryShader: Bool
    public let multiviewTessellationShader: Bool
    public let variablePointersStorageBuffer: Bool
    public let variablePointers: Bool
    public let protectedMemory: Bool
    public let samplerYcbcrConversion: Bool
    public let shaderDrawParameters: Bool

    public init(storageBuffer16BitAccess: Bool, uniformAndStorageBuffer16BitAccess: Bool, storagePushConstant16: Bool, storageInputOutput16: Bool, multiview: Bool, multiviewGeometryShader: Bool, multiviewTessellationShader: Bool, variablePointersStorageBuffer: Bool, variablePointers: Bool, protectedMemory: Bool, samplerYcbcrConversion: Bool, shaderDrawParameters: Bool) {
        self.storageBuffer16BitAccess = storageBuffer16BitAccess
        self.uniformAndStorageBuffer16BitAccess = uniformAndStorageBuffer16BitAccess
        self.storagePushConstant16 = storagePushConstant16
        self.storageInputOutput16 = storageInputOutput16
        self.multiview = multiview
        self.multiviewGeometryShader = multiviewGeometryShader
        self.multiviewTessellationShader = multiviewTessellationShader
        self.variablePointersStorageBuffer = variablePointersStorageBuffer
        self.variablePointers = variablePointers
        self.protectedMemory = protectedMemory
        self.samplerYcbcrConversion = samplerYcbcrConversion
        self.shaderDrawParameters = shaderDrawParameters
    }

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

public struct PhysicalDeviceVulkan11Properties: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceVulkan11Properties

    public let deviceUUID: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
    public let driverUUID: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
    public let deviceLUID: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
    public let deviceNodeMask: UInt32
    public let deviceLUIDValid: Bool
    public let subgroupSize: UInt32
    public let subgroupSupportedStages: ShaderStageFlags
    public let subgroupSupportedOperations: SubgroupFeatureFlags
    public let subgroupQuadOperationsInAllStages: Bool
    public let pointClippingBehavior: PointClippingBehavior
    public let maxMultiviewViewCount: UInt32
    public let maxMultiviewInstanceIndex: UInt32
    public let protectedNoFault: Bool
    public let maxPerSetDescriptors: UInt32
    public let maxMemoryAllocationSize: VkDeviceSize

    public init(deviceUUID: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8), driverUUID: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8), deviceLUID: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8), deviceNodeMask: UInt32, deviceLUIDValid: Bool, subgroupSize: UInt32, subgroupSupportedStages: ShaderStageFlags, subgroupSupportedOperations: SubgroupFeatureFlags, subgroupQuadOperationsInAllStages: Bool, pointClippingBehavior: PointClippingBehavior, maxMultiviewViewCount: UInt32, maxMultiviewInstanceIndex: UInt32, protectedNoFault: Bool, maxPerSetDescriptors: UInt32, maxMemoryAllocationSize: VkDeviceSize) {
        self.deviceUUID = deviceUUID
        self.driverUUID = driverUUID
        self.deviceLUID = deviceLUID
        self.deviceNodeMask = deviceNodeMask
        self.deviceLUIDValid = deviceLUIDValid
        self.subgroupSize = subgroupSize
        self.subgroupSupportedStages = subgroupSupportedStages
        self.subgroupSupportedOperations = subgroupSupportedOperations
        self.subgroupQuadOperationsInAllStages = subgroupQuadOperationsInAllStages
        self.pointClippingBehavior = pointClippingBehavior
        self.maxMultiviewViewCount = maxMultiviewViewCount
        self.maxMultiviewInstanceIndex = maxMultiviewInstanceIndex
        self.protectedNoFault = protectedNoFault
        self.maxPerSetDescriptors = maxPerSetDescriptors
        self.maxMemoryAllocationSize = maxMemoryAllocationSize
    }

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

public struct PhysicalDeviceVulkan12Features: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceVulkan12Features

    public let samplerMirrorClampToEdge: Bool
    public let drawIndirectCount: Bool
    public let storageBuffer8BitAccess: Bool
    public let uniformAndStorageBuffer8BitAccess: Bool
    public let storagePushConstant8: Bool
    public let shaderBufferInt64Atomics: Bool
    public let shaderSharedInt64Atomics: Bool
    public let shaderFloat16: Bool
    public let shaderInt8: Bool
    public let descriptorIndexing: Bool
    public let shaderInputAttachmentArrayDynamicIndexing: Bool
    public let shaderUniformTexelBufferArrayDynamicIndexing: Bool
    public let shaderStorageTexelBufferArrayDynamicIndexing: Bool
    public let shaderUniformBufferArrayNonUniformIndexing: Bool
    public let shaderSampledImageArrayNonUniformIndexing: Bool
    public let shaderStorageBufferArrayNonUniformIndexing: Bool
    public let shaderStorageImageArrayNonUniformIndexing: Bool
    public let shaderInputAttachmentArrayNonUniformIndexing: Bool
    public let shaderUniformTexelBufferArrayNonUniformIndexing: Bool
    public let shaderStorageTexelBufferArrayNonUniformIndexing: Bool
    public let descriptorBindingUniformBufferUpdateAfterBind: Bool
    public let descriptorBindingSampledImageUpdateAfterBind: Bool
    public let descriptorBindingStorageImageUpdateAfterBind: Bool
    public let descriptorBindingStorageBufferUpdateAfterBind: Bool
    public let descriptorBindingUniformTexelBufferUpdateAfterBind: Bool
    public let descriptorBindingStorageTexelBufferUpdateAfterBind: Bool
    public let descriptorBindingUpdateUnusedWhilePending: Bool
    public let descriptorBindingPartiallyBound: Bool
    public let descriptorBindingVariableDescriptorCount: Bool
    public let runtimeDescriptorArray: Bool
    public let samplerFilterMinmax: Bool
    public let scalarBlockLayout: Bool
    public let imagelessFramebuffer: Bool
    public let uniformBufferStandardLayout: Bool
    public let shaderSubgroupExtendedTypes: Bool
    public let separateDepthStencilLayouts: Bool
    public let hostQueryReset: Bool
    public let timelineSemaphore: Bool
    public let bufferDeviceAddress: Bool
    public let bufferDeviceAddressCaptureReplay: Bool
    public let bufferDeviceAddressMultiDevice: Bool
    public let vulkanMemoryModel: Bool
    public let vulkanMemoryModelDeviceScope: Bool
    public let vulkanMemoryModelAvailabilityVisibilityChains: Bool
    public let shaderOutputViewportIndex: Bool
    public let shaderOutputLayer: Bool
    public let subgroupBroadcastDynamicId: Bool

    public init(samplerMirrorClampToEdge: Bool, drawIndirectCount: Bool, storageBuffer8BitAccess: Bool, uniformAndStorageBuffer8BitAccess: Bool, storagePushConstant8: Bool, shaderBufferInt64Atomics: Bool, shaderSharedInt64Atomics: Bool, shaderFloat16: Bool, shaderInt8: Bool, descriptorIndexing: Bool, shaderInputAttachmentArrayDynamicIndexing: Bool, shaderUniformTexelBufferArrayDynamicIndexing: Bool, shaderStorageTexelBufferArrayDynamicIndexing: Bool, shaderUniformBufferArrayNonUniformIndexing: Bool, shaderSampledImageArrayNonUniformIndexing: Bool, shaderStorageBufferArrayNonUniformIndexing: Bool, shaderStorageImageArrayNonUniformIndexing: Bool, shaderInputAttachmentArrayNonUniformIndexing: Bool, shaderUniformTexelBufferArrayNonUniformIndexing: Bool, shaderStorageTexelBufferArrayNonUniformIndexing: Bool, descriptorBindingUniformBufferUpdateAfterBind: Bool, descriptorBindingSampledImageUpdateAfterBind: Bool, descriptorBindingStorageImageUpdateAfterBind: Bool, descriptorBindingStorageBufferUpdateAfterBind: Bool, descriptorBindingUniformTexelBufferUpdateAfterBind: Bool, descriptorBindingStorageTexelBufferUpdateAfterBind: Bool, descriptorBindingUpdateUnusedWhilePending: Bool, descriptorBindingPartiallyBound: Bool, descriptorBindingVariableDescriptorCount: Bool, runtimeDescriptorArray: Bool, samplerFilterMinmax: Bool, scalarBlockLayout: Bool, imagelessFramebuffer: Bool, uniformBufferStandardLayout: Bool, shaderSubgroupExtendedTypes: Bool, separateDepthStencilLayouts: Bool, hostQueryReset: Bool, timelineSemaphore: Bool, bufferDeviceAddress: Bool, bufferDeviceAddressCaptureReplay: Bool, bufferDeviceAddressMultiDevice: Bool, vulkanMemoryModel: Bool, vulkanMemoryModelDeviceScope: Bool, vulkanMemoryModelAvailabilityVisibilityChains: Bool, shaderOutputViewportIndex: Bool, shaderOutputLayer: Bool, subgroupBroadcastDynamicId: Bool) {
        self.samplerMirrorClampToEdge = samplerMirrorClampToEdge
        self.drawIndirectCount = drawIndirectCount
        self.storageBuffer8BitAccess = storageBuffer8BitAccess
        self.uniformAndStorageBuffer8BitAccess = uniformAndStorageBuffer8BitAccess
        self.storagePushConstant8 = storagePushConstant8
        self.shaderBufferInt64Atomics = shaderBufferInt64Atomics
        self.shaderSharedInt64Atomics = shaderSharedInt64Atomics
        self.shaderFloat16 = shaderFloat16
        self.shaderInt8 = shaderInt8
        self.descriptorIndexing = descriptorIndexing
        self.shaderInputAttachmentArrayDynamicIndexing = shaderInputAttachmentArrayDynamicIndexing
        self.shaderUniformTexelBufferArrayDynamicIndexing = shaderUniformTexelBufferArrayDynamicIndexing
        self.shaderStorageTexelBufferArrayDynamicIndexing = shaderStorageTexelBufferArrayDynamicIndexing
        self.shaderUniformBufferArrayNonUniformIndexing = shaderUniformBufferArrayNonUniformIndexing
        self.shaderSampledImageArrayNonUniformIndexing = shaderSampledImageArrayNonUniformIndexing
        self.shaderStorageBufferArrayNonUniformIndexing = shaderStorageBufferArrayNonUniformIndexing
        self.shaderStorageImageArrayNonUniformIndexing = shaderStorageImageArrayNonUniformIndexing
        self.shaderInputAttachmentArrayNonUniformIndexing = shaderInputAttachmentArrayNonUniformIndexing
        self.shaderUniformTexelBufferArrayNonUniformIndexing = shaderUniformTexelBufferArrayNonUniformIndexing
        self.shaderStorageTexelBufferArrayNonUniformIndexing = shaderStorageTexelBufferArrayNonUniformIndexing
        self.descriptorBindingUniformBufferUpdateAfterBind = descriptorBindingUniformBufferUpdateAfterBind
        self.descriptorBindingSampledImageUpdateAfterBind = descriptorBindingSampledImageUpdateAfterBind
        self.descriptorBindingStorageImageUpdateAfterBind = descriptorBindingStorageImageUpdateAfterBind
        self.descriptorBindingStorageBufferUpdateAfterBind = descriptorBindingStorageBufferUpdateAfterBind
        self.descriptorBindingUniformTexelBufferUpdateAfterBind = descriptorBindingUniformTexelBufferUpdateAfterBind
        self.descriptorBindingStorageTexelBufferUpdateAfterBind = descriptorBindingStorageTexelBufferUpdateAfterBind
        self.descriptorBindingUpdateUnusedWhilePending = descriptorBindingUpdateUnusedWhilePending
        self.descriptorBindingPartiallyBound = descriptorBindingPartiallyBound
        self.descriptorBindingVariableDescriptorCount = descriptorBindingVariableDescriptorCount
        self.runtimeDescriptorArray = runtimeDescriptorArray
        self.samplerFilterMinmax = samplerFilterMinmax
        self.scalarBlockLayout = scalarBlockLayout
        self.imagelessFramebuffer = imagelessFramebuffer
        self.uniformBufferStandardLayout = uniformBufferStandardLayout
        self.shaderSubgroupExtendedTypes = shaderSubgroupExtendedTypes
        self.separateDepthStencilLayouts = separateDepthStencilLayouts
        self.hostQueryReset = hostQueryReset
        self.timelineSemaphore = timelineSemaphore
        self.bufferDeviceAddress = bufferDeviceAddress
        self.bufferDeviceAddressCaptureReplay = bufferDeviceAddressCaptureReplay
        self.bufferDeviceAddressMultiDevice = bufferDeviceAddressMultiDevice
        self.vulkanMemoryModel = vulkanMemoryModel
        self.vulkanMemoryModelDeviceScope = vulkanMemoryModelDeviceScope
        self.vulkanMemoryModelAvailabilityVisibilityChains = vulkanMemoryModelAvailabilityVisibilityChains
        self.shaderOutputViewportIndex = shaderOutputViewportIndex
        self.shaderOutputLayer = shaderOutputLayer
        self.subgroupBroadcastDynamicId = subgroupBroadcastDynamicId
    }

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

public struct PhysicalDeviceVulkan12Properties: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceVulkan12Properties

    public let driverID: DriverId
    public let driverName: String
    public let driverInfo: String
    public let conformanceVersion: ConformanceVersion
    public let denormBehaviorIndependence: ShaderFloatControlsIndependence
    public let roundingModeIndependence: ShaderFloatControlsIndependence
    public let shaderSignedZeroInfNanPreserveFloat16: Bool
    public let shaderSignedZeroInfNanPreserveFloat32: Bool
    public let shaderSignedZeroInfNanPreserveFloat64: Bool
    public let shaderDenormPreserveFloat16: Bool
    public let shaderDenormPreserveFloat32: Bool
    public let shaderDenormPreserveFloat64: Bool
    public let shaderDenormFlushToZeroFloat16: Bool
    public let shaderDenormFlushToZeroFloat32: Bool
    public let shaderDenormFlushToZeroFloat64: Bool
    public let shaderRoundingModeRTEFloat16: Bool
    public let shaderRoundingModeRTEFloat32: Bool
    public let shaderRoundingModeRTEFloat64: Bool
    public let shaderRoundingModeRTZFloat16: Bool
    public let shaderRoundingModeRTZFloat32: Bool
    public let shaderRoundingModeRTZFloat64: Bool
    public let maxUpdateAfterBindDescriptorsInAllPools: UInt32
    public let shaderUniformBufferArrayNonUniformIndexingNative: Bool
    public let shaderSampledImageArrayNonUniformIndexingNative: Bool
    public let shaderStorageBufferArrayNonUniformIndexingNative: Bool
    public let shaderStorageImageArrayNonUniformIndexingNative: Bool
    public let shaderInputAttachmentArrayNonUniformIndexingNative: Bool
    public let robustBufferAccessUpdateAfterBind: Bool
    public let quadDivergentImplicitLod: Bool
    public let maxPerStageDescriptorUpdateAfterBindSamplers: UInt32
    public let maxPerStageDescriptorUpdateAfterBindUniformBuffers: UInt32
    public let maxPerStageDescriptorUpdateAfterBindStorageBuffers: UInt32
    public let maxPerStageDescriptorUpdateAfterBindSampledImages: UInt32
    public let maxPerStageDescriptorUpdateAfterBindStorageImages: UInt32
    public let maxPerStageDescriptorUpdateAfterBindInputAttachments: UInt32
    public let maxPerStageUpdateAfterBindResources: UInt32
    public let maxDescriptorSetUpdateAfterBindSamplers: UInt32
    public let maxDescriptorSetUpdateAfterBindUniformBuffers: UInt32
    public let maxDescriptorSetUpdateAfterBindUniformBuffersDynamic: UInt32
    public let maxDescriptorSetUpdateAfterBindStorageBuffers: UInt32
    public let maxDescriptorSetUpdateAfterBindStorageBuffersDynamic: UInt32
    public let maxDescriptorSetUpdateAfterBindSampledImages: UInt32
    public let maxDescriptorSetUpdateAfterBindStorageImages: UInt32
    public let maxDescriptorSetUpdateAfterBindInputAttachments: UInt32
    public let supportedDepthResolveModes: ResolveModeFlags
    public let supportedStencilResolveModes: ResolveModeFlags
    public let independentResolveNone: Bool
    public let independentResolve: Bool
    public let filterMinmaxSingleComponentFormats: Bool
    public let filterMinmaxImageComponentMapping: Bool
    public let maxTimelineSemaphoreValueDifference: UInt64
    public let framebufferIntegerColorSampleCounts: SampleCountFlags

    public init(driverID: DriverId, driverName: String, driverInfo: String, conformanceVersion: ConformanceVersion, denormBehaviorIndependence: ShaderFloatControlsIndependence, roundingModeIndependence: ShaderFloatControlsIndependence, shaderSignedZeroInfNanPreserveFloat16: Bool, shaderSignedZeroInfNanPreserveFloat32: Bool, shaderSignedZeroInfNanPreserveFloat64: Bool, shaderDenormPreserveFloat16: Bool, shaderDenormPreserveFloat32: Bool, shaderDenormPreserveFloat64: Bool, shaderDenormFlushToZeroFloat16: Bool, shaderDenormFlushToZeroFloat32: Bool, shaderDenormFlushToZeroFloat64: Bool, shaderRoundingModeRTEFloat16: Bool, shaderRoundingModeRTEFloat32: Bool, shaderRoundingModeRTEFloat64: Bool, shaderRoundingModeRTZFloat16: Bool, shaderRoundingModeRTZFloat32: Bool, shaderRoundingModeRTZFloat64: Bool, maxUpdateAfterBindDescriptorsInAllPools: UInt32, shaderUniformBufferArrayNonUniformIndexingNative: Bool, shaderSampledImageArrayNonUniformIndexingNative: Bool, shaderStorageBufferArrayNonUniformIndexingNative: Bool, shaderStorageImageArrayNonUniformIndexingNative: Bool, shaderInputAttachmentArrayNonUniformIndexingNative: Bool, robustBufferAccessUpdateAfterBind: Bool, quadDivergentImplicitLod: Bool, maxPerStageDescriptorUpdateAfterBindSamplers: UInt32, maxPerStageDescriptorUpdateAfterBindUniformBuffers: UInt32, maxPerStageDescriptorUpdateAfterBindStorageBuffers: UInt32, maxPerStageDescriptorUpdateAfterBindSampledImages: UInt32, maxPerStageDescriptorUpdateAfterBindStorageImages: UInt32, maxPerStageDescriptorUpdateAfterBindInputAttachments: UInt32, maxPerStageUpdateAfterBindResources: UInt32, maxDescriptorSetUpdateAfterBindSamplers: UInt32, maxDescriptorSetUpdateAfterBindUniformBuffers: UInt32, maxDescriptorSetUpdateAfterBindUniformBuffersDynamic: UInt32, maxDescriptorSetUpdateAfterBindStorageBuffers: UInt32, maxDescriptorSetUpdateAfterBindStorageBuffersDynamic: UInt32, maxDescriptorSetUpdateAfterBindSampledImages: UInt32, maxDescriptorSetUpdateAfterBindStorageImages: UInt32, maxDescriptorSetUpdateAfterBindInputAttachments: UInt32, supportedDepthResolveModes: ResolveModeFlags, supportedStencilResolveModes: ResolveModeFlags, independentResolveNone: Bool, independentResolve: Bool, filterMinmaxSingleComponentFormats: Bool, filterMinmaxImageComponentMapping: Bool, maxTimelineSemaphoreValueDifference: UInt64, framebufferIntegerColorSampleCounts: SampleCountFlags) {
        self.driverID = driverID
        self.driverName = driverName
        self.driverInfo = driverInfo
        self.conformanceVersion = conformanceVersion
        self.denormBehaviorIndependence = denormBehaviorIndependence
        self.roundingModeIndependence = roundingModeIndependence
        self.shaderSignedZeroInfNanPreserveFloat16 = shaderSignedZeroInfNanPreserveFloat16
        self.shaderSignedZeroInfNanPreserveFloat32 = shaderSignedZeroInfNanPreserveFloat32
        self.shaderSignedZeroInfNanPreserveFloat64 = shaderSignedZeroInfNanPreserveFloat64
        self.shaderDenormPreserveFloat16 = shaderDenormPreserveFloat16
        self.shaderDenormPreserveFloat32 = shaderDenormPreserveFloat32
        self.shaderDenormPreserveFloat64 = shaderDenormPreserveFloat64
        self.shaderDenormFlushToZeroFloat16 = shaderDenormFlushToZeroFloat16
        self.shaderDenormFlushToZeroFloat32 = shaderDenormFlushToZeroFloat32
        self.shaderDenormFlushToZeroFloat64 = shaderDenormFlushToZeroFloat64
        self.shaderRoundingModeRTEFloat16 = shaderRoundingModeRTEFloat16
        self.shaderRoundingModeRTEFloat32 = shaderRoundingModeRTEFloat32
        self.shaderRoundingModeRTEFloat64 = shaderRoundingModeRTEFloat64
        self.shaderRoundingModeRTZFloat16 = shaderRoundingModeRTZFloat16
        self.shaderRoundingModeRTZFloat32 = shaderRoundingModeRTZFloat32
        self.shaderRoundingModeRTZFloat64 = shaderRoundingModeRTZFloat64
        self.maxUpdateAfterBindDescriptorsInAllPools = maxUpdateAfterBindDescriptorsInAllPools
        self.shaderUniformBufferArrayNonUniformIndexingNative = shaderUniformBufferArrayNonUniformIndexingNative
        self.shaderSampledImageArrayNonUniformIndexingNative = shaderSampledImageArrayNonUniformIndexingNative
        self.shaderStorageBufferArrayNonUniformIndexingNative = shaderStorageBufferArrayNonUniformIndexingNative
        self.shaderStorageImageArrayNonUniformIndexingNative = shaderStorageImageArrayNonUniformIndexingNative
        self.shaderInputAttachmentArrayNonUniformIndexingNative = shaderInputAttachmentArrayNonUniformIndexingNative
        self.robustBufferAccessUpdateAfterBind = robustBufferAccessUpdateAfterBind
        self.quadDivergentImplicitLod = quadDivergentImplicitLod
        self.maxPerStageDescriptorUpdateAfterBindSamplers = maxPerStageDescriptorUpdateAfterBindSamplers
        self.maxPerStageDescriptorUpdateAfterBindUniformBuffers = maxPerStageDescriptorUpdateAfterBindUniformBuffers
        self.maxPerStageDescriptorUpdateAfterBindStorageBuffers = maxPerStageDescriptorUpdateAfterBindStorageBuffers
        self.maxPerStageDescriptorUpdateAfterBindSampledImages = maxPerStageDescriptorUpdateAfterBindSampledImages
        self.maxPerStageDescriptorUpdateAfterBindStorageImages = maxPerStageDescriptorUpdateAfterBindStorageImages
        self.maxPerStageDescriptorUpdateAfterBindInputAttachments = maxPerStageDescriptorUpdateAfterBindInputAttachments
        self.maxPerStageUpdateAfterBindResources = maxPerStageUpdateAfterBindResources
        self.maxDescriptorSetUpdateAfterBindSamplers = maxDescriptorSetUpdateAfterBindSamplers
        self.maxDescriptorSetUpdateAfterBindUniformBuffers = maxDescriptorSetUpdateAfterBindUniformBuffers
        self.maxDescriptorSetUpdateAfterBindUniformBuffersDynamic = maxDescriptorSetUpdateAfterBindUniformBuffersDynamic
        self.maxDescriptorSetUpdateAfterBindStorageBuffers = maxDescriptorSetUpdateAfterBindStorageBuffers
        self.maxDescriptorSetUpdateAfterBindStorageBuffersDynamic = maxDescriptorSetUpdateAfterBindStorageBuffersDynamic
        self.maxDescriptorSetUpdateAfterBindSampledImages = maxDescriptorSetUpdateAfterBindSampledImages
        self.maxDescriptorSetUpdateAfterBindStorageImages = maxDescriptorSetUpdateAfterBindStorageImages
        self.maxDescriptorSetUpdateAfterBindInputAttachments = maxDescriptorSetUpdateAfterBindInputAttachments
        self.supportedDepthResolveModes = supportedDepthResolveModes
        self.supportedStencilResolveModes = supportedStencilResolveModes
        self.independentResolveNone = independentResolveNone
        self.independentResolve = independentResolve
        self.filterMinmaxSingleComponentFormats = filterMinmaxSingleComponentFormats
        self.filterMinmaxImageComponentMapping = filterMinmaxImageComponentMapping
        self.maxTimelineSemaphoreValueDifference = maxTimelineSemaphoreValueDifference
        self.framebufferIntegerColorSampleCounts = framebufferIntegerColorSampleCounts
    }

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

public struct PipelineCompilerControlCreateInfoAMD: CStructConvertible {
    typealias CStruct = VkPipelineCompilerControlCreateInfoAMD

    public let compilerControlFlags: PipelineCompilerControlFlagsAMD

    public init(compilerControlFlags: PipelineCompilerControlFlagsAMD) {
        self.compilerControlFlags = compilerControlFlags
    }

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

public struct PhysicalDeviceCoherentMemoryFeaturesAMD: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceCoherentMemoryFeaturesAMD

    public let deviceCoherentMemory: Bool

    public init(deviceCoherentMemory: Bool) {
        self.deviceCoherentMemory = deviceCoherentMemory
    }

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

public struct PhysicalDeviceToolPropertiesEXT: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceToolPropertiesEXT

    public let name: String
    public let version: String
    public let purposes: ToolPurposeFlagsEXT
    public let description: String
    public let layer: String

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

public struct RenderPassTransformBeginInfoQCOM: CStructConvertible {
    typealias CStruct = VkRenderPassTransformBeginInfoQCOM

    public let transform: SurfaceTransformFlagsKHR

    public init(transform: SurfaceTransformFlagsKHR) {
        self.transform = transform
    }

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

public struct CommandBufferInheritanceRenderPassTransformInfoQCOM: CStructConvertible {
    typealias CStruct = VkCommandBufferInheritanceRenderPassTransformInfoQCOM

    public let transform: SurfaceTransformFlagsKHR
    public let renderArea: Rect2D

    public init(transform: SurfaceTransformFlagsKHR, renderArea: Rect2D) {
        self.transform = transform
        self.renderArea = renderArea
    }

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

public struct PhysicalDeviceDiagnosticsConfigFeaturesNV: CStructConvertible {
    typealias CStruct = VkPhysicalDeviceDiagnosticsConfigFeaturesNV

    public let diagnosticsConfig: Bool

    public init(diagnosticsConfig: Bool) {
        self.diagnosticsConfig = diagnosticsConfig
    }

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

public struct DeviceDiagnosticsConfigCreateInfoNV: CStructConvertible {
    typealias CStruct = VkDeviceDiagnosticsConfigCreateInfoNV

    public let flags: DeviceDiagnosticsConfigFlagsNV

    public init(flags: DeviceDiagnosticsConfigFlagsNV) {
        self.flags = flags
    }

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

