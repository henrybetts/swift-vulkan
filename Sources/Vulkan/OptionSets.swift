public struct FramebufferCreateFlags: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
    ]
}

public struct QueryPoolCreateFlags: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
    ]
}

public struct RenderPassCreateFlags: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public static let transformQCOM = RenderPassCreateFlags(rawValue: 2)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
        (.transformQCOM, "transformQCOM"),
    ]
}

public struct SamplerCreateFlags: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public static let subsampledEXT = SamplerCreateFlags(rawValue: 1)
    public static let subsampledCoarseReconstructionEXT = SamplerCreateFlags(rawValue: 2)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
        (.subsampledEXT, "subsampledEXT"),
        (.subsampledCoarseReconstructionEXT, "subsampledCoarseReconstructionEXT"),
    ]
}

public struct PipelineLayoutCreateFlags: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
    ]
}

public struct PipelineCacheCreateFlags: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public static let externallySynchronizedEXT = PipelineCacheCreateFlags(rawValue: 1)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
        (.externallySynchronizedEXT, "externallySynchronizedEXT"),
    ]
}

public struct PipelineDepthStencilStateCreateFlags: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
    ]
}

public struct PipelineDynamicStateCreateFlags: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
    ]
}

public struct PipelineColorBlendStateCreateFlags: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
    ]
}

public struct PipelineMultisampleStateCreateFlags: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
    ]
}

public struct PipelineRasterizationStateCreateFlags: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
    ]
}

public struct PipelineViewportStateCreateFlags: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
    ]
}

public struct PipelineTessellationStateCreateFlags: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
    ]
}

public struct PipelineInputAssemblyStateCreateFlags: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
    ]
}

public struct PipelineVertexInputStateCreateFlags: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
    ]
}

public struct PipelineShaderStageCreateFlags: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public static let allowVaryingSubgroupSizeEXT = PipelineShaderStageCreateFlags(rawValue: 1)
    public static let requireFullSubgroupsEXT = PipelineShaderStageCreateFlags(rawValue: 2)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
        (.allowVaryingSubgroupSizeEXT, "allowVaryingSubgroupSizeEXT"),
        (.requireFullSubgroupsEXT, "requireFullSubgroupsEXT"),
    ]
}

public struct DescriptorSetLayoutCreateFlags: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public static let pushDescriptorKHR = DescriptorSetLayoutCreateFlags(rawValue: 1)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
        (.pushDescriptorKHR, "pushDescriptorKHR"),
    ]
}

public struct BufferViewCreateFlags: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
    ]
}

public struct InstanceCreateFlags: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
    ]
}

public struct DeviceCreateFlags: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
    ]
}

public struct DeviceQueueCreateFlags: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
    ]
}

public struct QueueFlags: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public static let graphics = QueueFlags(rawValue: 1)
    public static let compute = QueueFlags(rawValue: 2)
    public static let transfer = QueueFlags(rawValue: 4)
    public static let sparseBinding = QueueFlags(rawValue: 8)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
        (.graphics, "graphics"),
        (.compute, "compute"),
        (.transfer, "transfer"),
        (.sparseBinding, "sparseBinding"),
    ]
}

public struct MemoryPropertyFlags: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public static let deviceLocal = MemoryPropertyFlags(rawValue: 1)
    public static let hostVisible = MemoryPropertyFlags(rawValue: 2)
    public static let hostCoherent = MemoryPropertyFlags(rawValue: 4)
    public static let hostCached = MemoryPropertyFlags(rawValue: 8)
    public static let lazilyAllocated = MemoryPropertyFlags(rawValue: 16)
    public static let deviceCoherentAMD = MemoryPropertyFlags(rawValue: 64)
    public static let deviceUncachedAMD = MemoryPropertyFlags(rawValue: 128)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
        (.deviceLocal, "deviceLocal"),
        (.hostVisible, "hostVisible"),
        (.hostCoherent, "hostCoherent"),
        (.hostCached, "hostCached"),
        (.lazilyAllocated, "lazilyAllocated"),
        (.deviceCoherentAMD, "deviceCoherentAMD"),
        (.deviceUncachedAMD, "deviceUncachedAMD"),
    ]
}

public struct MemoryHeapFlags: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public static let deviceLocal = MemoryHeapFlags(rawValue: 1)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
        (.deviceLocal, "deviceLocal"),
    ]
}

public struct AccessFlags: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public static let indirectCommandRead = AccessFlags(rawValue: 1)
    public static let indexRead = AccessFlags(rawValue: 2)
    public static let vertexAttributeRead = AccessFlags(rawValue: 4)
    public static let uniformRead = AccessFlags(rawValue: 8)
    public static let inputAttachmentRead = AccessFlags(rawValue: 16)
    public static let shaderRead = AccessFlags(rawValue: 32)
    public static let shaderWrite = AccessFlags(rawValue: 64)
    public static let colorAttachmentRead = AccessFlags(rawValue: 128)
    public static let colorAttachmentWrite = AccessFlags(rawValue: 256)
    public static let depthStencilAttachmentRead = AccessFlags(rawValue: 512)
    public static let depthStencilAttachmentWrite = AccessFlags(rawValue: 1024)
    public static let transferRead = AccessFlags(rawValue: 2048)
    public static let transferWrite = AccessFlags(rawValue: 4096)
    public static let hostRead = AccessFlags(rawValue: 8192)
    public static let hostWrite = AccessFlags(rawValue: 16384)
    public static let memoryRead = AccessFlags(rawValue: 32768)
    public static let memoryWrite = AccessFlags(rawValue: 65536)
    public static let transformFeedbackWriteEXT = AccessFlags(rawValue: 33554432)
    public static let transformFeedbackCounterReadEXT = AccessFlags(rawValue: 67108864)
    public static let transformFeedbackCounterWriteEXT = AccessFlags(rawValue: 134217728)
    public static let conditionalRenderingReadEXT = AccessFlags(rawValue: 1048576)
    public static let colorAttachmentReadNoncoherentEXT = AccessFlags(rawValue: 524288)
    public static let shadingRateImageReadNV = AccessFlags(rawValue: 8388608)
    public static let fragmentDensityMapReadEXT = AccessFlags(rawValue: 16777216)
    public static let commandPreprocessReadNV = AccessFlags(rawValue: 131072)
    public static let commandPreprocessWriteNV = AccessFlags(rawValue: 262144)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
        (.indirectCommandRead, "indirectCommandRead"),
        (.indexRead, "indexRead"),
        (.vertexAttributeRead, "vertexAttributeRead"),
        (.uniformRead, "uniformRead"),
        (.inputAttachmentRead, "inputAttachmentRead"),
        (.shaderRead, "shaderRead"),
        (.shaderWrite, "shaderWrite"),
        (.colorAttachmentRead, "colorAttachmentRead"),
        (.colorAttachmentWrite, "colorAttachmentWrite"),
        (.depthStencilAttachmentRead, "depthStencilAttachmentRead"),
        (.depthStencilAttachmentWrite, "depthStencilAttachmentWrite"),
        (.transferRead, "transferRead"),
        (.transferWrite, "transferWrite"),
        (.hostRead, "hostRead"),
        (.hostWrite, "hostWrite"),
        (.memoryRead, "memoryRead"),
        (.memoryWrite, "memoryWrite"),
        (.transformFeedbackWriteEXT, "transformFeedbackWriteEXT"),
        (.transformFeedbackCounterReadEXT, "transformFeedbackCounterReadEXT"),
        (.transformFeedbackCounterWriteEXT, "transformFeedbackCounterWriteEXT"),
        (.conditionalRenderingReadEXT, "conditionalRenderingReadEXT"),
        (.colorAttachmentReadNoncoherentEXT, "colorAttachmentReadNoncoherentEXT"),
        (.shadingRateImageReadNV, "shadingRateImageReadNV"),
        (.fragmentDensityMapReadEXT, "fragmentDensityMapReadEXT"),
        (.commandPreprocessReadNV, "commandPreprocessReadNV"),
        (.commandPreprocessWriteNV, "commandPreprocessWriteNV"),
    ]
}

public struct BufferUsageFlags: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public static let transferSrc = BufferUsageFlags(rawValue: 1)
    public static let transferDst = BufferUsageFlags(rawValue: 2)
    public static let uniformTexelBuffer = BufferUsageFlags(rawValue: 4)
    public static let storageTexelBuffer = BufferUsageFlags(rawValue: 8)
    public static let uniformBuffer = BufferUsageFlags(rawValue: 16)
    public static let storageBuffer = BufferUsageFlags(rawValue: 32)
    public static let indexBuffer = BufferUsageFlags(rawValue: 64)
    public static let vertexBuffer = BufferUsageFlags(rawValue: 128)
    public static let indirectBuffer = BufferUsageFlags(rawValue: 256)
    public static let transformFeedbackBufferEXT = BufferUsageFlags(rawValue: 2048)
    public static let transformFeedbackCounterBufferEXT = BufferUsageFlags(rawValue: 4096)
    public static let conditionalRenderingEXT = BufferUsageFlags(rawValue: 512)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
        (.transferSrc, "transferSrc"),
        (.transferDst, "transferDst"),
        (.uniformTexelBuffer, "uniformTexelBuffer"),
        (.storageTexelBuffer, "storageTexelBuffer"),
        (.uniformBuffer, "uniformBuffer"),
        (.storageBuffer, "storageBuffer"),
        (.indexBuffer, "indexBuffer"),
        (.vertexBuffer, "vertexBuffer"),
        (.indirectBuffer, "indirectBuffer"),
        (.transformFeedbackBufferEXT, "transformFeedbackBufferEXT"),
        (.transformFeedbackCounterBufferEXT, "transformFeedbackCounterBufferEXT"),
        (.conditionalRenderingEXT, "conditionalRenderingEXT"),
    ]
}

public struct BufferCreateFlags: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public static let sparseBinding = BufferCreateFlags(rawValue: 1)
    public static let sparseResidency = BufferCreateFlags(rawValue: 2)
    public static let sparseAliased = BufferCreateFlags(rawValue: 4)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
        (.sparseBinding, "sparseBinding"),
        (.sparseResidency, "sparseResidency"),
        (.sparseAliased, "sparseAliased"),
    ]
}

public struct ShaderStageFlags: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public static let vertex = ShaderStageFlags(rawValue: 1)
    public static let tessellationControl = ShaderStageFlags(rawValue: 2)
    public static let tessellationEvaluation = ShaderStageFlags(rawValue: 4)
    public static let geometry = ShaderStageFlags(rawValue: 8)
    public static let fragment = ShaderStageFlags(rawValue: 16)
    public static let compute = ShaderStageFlags(rawValue: 32)
    public static let allGraphics = ShaderStageFlags(rawValue: 0x0000001F)
    public static let all = ShaderStageFlags(rawValue: 0x7FFFFFFF)
    public static let taskNV = ShaderStageFlags(rawValue: 64)
    public static let meshNV = ShaderStageFlags(rawValue: 128)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
        (.vertex, "vertex"),
        (.tessellationControl, "tessellationControl"),
        (.tessellationEvaluation, "tessellationEvaluation"),
        (.geometry, "geometry"),
        (.fragment, "fragment"),
        (.compute, "compute"),
        (.allGraphics, "allGraphics"),
        (.all, "all"),
        (.taskNV, "taskNV"),
        (.meshNV, "meshNV"),
    ]
}

public struct ImageUsageFlags: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public static let transferSrc = ImageUsageFlags(rawValue: 1)
    public static let transferDst = ImageUsageFlags(rawValue: 2)
    public static let sampled = ImageUsageFlags(rawValue: 4)
    public static let storage = ImageUsageFlags(rawValue: 8)
    public static let colorAttachment = ImageUsageFlags(rawValue: 16)
    public static let depthStencilAttachment = ImageUsageFlags(rawValue: 32)
    public static let transientAttachment = ImageUsageFlags(rawValue: 64)
    public static let inputAttachment = ImageUsageFlags(rawValue: 128)
    public static let shadingRateImageNV = ImageUsageFlags(rawValue: 256)
    public static let fragmentDensityMapEXT = ImageUsageFlags(rawValue: 512)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
        (.transferSrc, "transferSrc"),
        (.transferDst, "transferDst"),
        (.sampled, "sampled"),
        (.storage, "storage"),
        (.colorAttachment, "colorAttachment"),
        (.depthStencilAttachment, "depthStencilAttachment"),
        (.transientAttachment, "transientAttachment"),
        (.inputAttachment, "inputAttachment"),
        (.shadingRateImageNV, "shadingRateImageNV"),
        (.fragmentDensityMapEXT, "fragmentDensityMapEXT"),
    ]
}

public struct ImageCreateFlags: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public static let sparseBinding = ImageCreateFlags(rawValue: 1)
    public static let sparseResidency = ImageCreateFlags(rawValue: 2)
    public static let sparseAliased = ImageCreateFlags(rawValue: 4)
    public static let mutableFormat = ImageCreateFlags(rawValue: 8)
    public static let cubeCompatible = ImageCreateFlags(rawValue: 16)
    public static let cornerSampledNV = ImageCreateFlags(rawValue: 8192)
    public static let sampleLocationsCompatibleDepthEXT = ImageCreateFlags(rawValue: 4096)
    public static let subsampledEXT = ImageCreateFlags(rawValue: 16384)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
        (.sparseBinding, "sparseBinding"),
        (.sparseResidency, "sparseResidency"),
        (.sparseAliased, "sparseAliased"),
        (.mutableFormat, "mutableFormat"),
        (.cubeCompatible, "cubeCompatible"),
        (.cornerSampledNV, "cornerSampledNV"),
        (.sampleLocationsCompatibleDepthEXT, "sampleLocationsCompatibleDepthEXT"),
        (.subsampledEXT, "subsampledEXT"),
    ]
}

public struct ImageViewCreateFlags: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public static let fragmentDensityMapDynamicEXT = ImageViewCreateFlags(rawValue: 1)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
        (.fragmentDensityMapDynamicEXT, "fragmentDensityMapDynamicEXT"),
    ]
}

public struct PipelineCreateFlags: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public static let disableOptimization = PipelineCreateFlags(rawValue: 1)
    public static let allowDerivatives = PipelineCreateFlags(rawValue: 2)
    public static let derivative = PipelineCreateFlags(rawValue: 4)
    public static let deferCompileNV = PipelineCreateFlags(rawValue: 32)
    public static let captureStatisticsKHR = PipelineCreateFlags(rawValue: 64)
    public static let captureInternalRepresentationsKHR = PipelineCreateFlags(rawValue: 128)
    public static let indirectBindableNV = PipelineCreateFlags(rawValue: 262144)
    public static let failOnPipelineCompileRequiredEXT = PipelineCreateFlags(rawValue: 256)
    public static let earlyReturnOnFailureEXT = PipelineCreateFlags(rawValue: 512)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
        (.disableOptimization, "disableOptimization"),
        (.allowDerivatives, "allowDerivatives"),
        (.derivative, "derivative"),
        (.deferCompileNV, "deferCompileNV"),
        (.captureStatisticsKHR, "captureStatisticsKHR"),
        (.captureInternalRepresentationsKHR, "captureInternalRepresentationsKHR"),
        (.indirectBindableNV, "indirectBindableNV"),
        (.failOnPipelineCompileRequiredEXT, "failOnPipelineCompileRequiredEXT"),
        (.earlyReturnOnFailureEXT, "earlyReturnOnFailureEXT"),
    ]
}

public struct ColorComponentFlags: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public static let r = ColorComponentFlags(rawValue: 1)
    public static let g = ColorComponentFlags(rawValue: 2)
    public static let b = ColorComponentFlags(rawValue: 4)
    public static let a = ColorComponentFlags(rawValue: 8)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
        (.r, "r"),
        (.g, "g"),
        (.b, "b"),
        (.a, "a"),
    ]
}

public struct FenceCreateFlags: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public static let signaled = FenceCreateFlags(rawValue: 1)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
        (.signaled, "signaled"),
    ]
}

public struct SemaphoreCreateFlags: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
    ]
}

public struct FormatFeatureFlags: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public static let sampledImage = FormatFeatureFlags(rawValue: 1)
    public static let storageImage = FormatFeatureFlags(rawValue: 2)
    public static let storageImageAtomic = FormatFeatureFlags(rawValue: 4)
    public static let uniformTexelBuffer = FormatFeatureFlags(rawValue: 8)
    public static let storageTexelBuffer = FormatFeatureFlags(rawValue: 16)
    public static let storageTexelBufferAtomic = FormatFeatureFlags(rawValue: 32)
    public static let vertexBuffer = FormatFeatureFlags(rawValue: 64)
    public static let colorAttachment = FormatFeatureFlags(rawValue: 128)
    public static let colorAttachmentBlend = FormatFeatureFlags(rawValue: 256)
    public static let depthStencilAttachment = FormatFeatureFlags(rawValue: 512)
    public static let blitSrc = FormatFeatureFlags(rawValue: 1024)
    public static let blitDst = FormatFeatureFlags(rawValue: 2048)
    public static let sampledImageFilterLinear = FormatFeatureFlags(rawValue: 4096)
    public static let sampledImageFilterCubicIMG = FormatFeatureFlags(rawValue: 8192)
    public static let fragmentDensityMapEXT = FormatFeatureFlags(rawValue: 16777216)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
        (.sampledImage, "sampledImage"),
        (.storageImage, "storageImage"),
        (.storageImageAtomic, "storageImageAtomic"),
        (.uniformTexelBuffer, "uniformTexelBuffer"),
        (.storageTexelBuffer, "storageTexelBuffer"),
        (.storageTexelBufferAtomic, "storageTexelBufferAtomic"),
        (.vertexBuffer, "vertexBuffer"),
        (.colorAttachment, "colorAttachment"),
        (.colorAttachmentBlend, "colorAttachmentBlend"),
        (.depthStencilAttachment, "depthStencilAttachment"),
        (.blitSrc, "blitSrc"),
        (.blitDst, "blitDst"),
        (.sampledImageFilterLinear, "sampledImageFilterLinear"),
        (.sampledImageFilterCubicIMG, "sampledImageFilterCubicIMG"),
        (.fragmentDensityMapEXT, "fragmentDensityMapEXT"),
    ]
}

public struct QueryControlFlags: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public static let precise = QueryControlFlags(rawValue: 1)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
        (.precise, "precise"),
    ]
}

public struct QueryResultFlags: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public static let type64 = QueryResultFlags(rawValue: 1)
    public static let typeWait = QueryResultFlags(rawValue: 2)
    public static let typeWithAvailability = QueryResultFlags(rawValue: 4)
    public static let typePartial = QueryResultFlags(rawValue: 8)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
        (.type64, "type64"),
        (.typeWait, "typeWait"),
        (.typeWithAvailability, "typeWithAvailability"),
        (.typePartial, "typePartial"),
    ]
}

public struct ShaderModuleCreateFlags: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
    ]
}

public struct EventCreateFlags: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
    ]
}

public struct CommandPoolCreateFlags: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public static let transient = CommandPoolCreateFlags(rawValue: 1)
    public static let resetCommandBuffer = CommandPoolCreateFlags(rawValue: 2)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
        (.transient, "transient"),
        (.resetCommandBuffer, "resetCommandBuffer"),
    ]
}

public struct CommandPoolResetFlags: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public static let releaseResources = CommandPoolResetFlags(rawValue: 1)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
        (.releaseResources, "releaseResources"),
    ]
}

public struct CommandBufferResetFlags: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public static let releaseResources = CommandBufferResetFlags(rawValue: 1)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
        (.releaseResources, "releaseResources"),
    ]
}

public struct CommandBufferUsageFlags: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public static let oneTimeSubmit = CommandBufferUsageFlags(rawValue: 1)
    public static let renderPassContinue = CommandBufferUsageFlags(rawValue: 2)
    public static let simultaneousUse = CommandBufferUsageFlags(rawValue: 4)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
        (.oneTimeSubmit, "oneTimeSubmit"),
        (.renderPassContinue, "renderPassContinue"),
        (.simultaneousUse, "simultaneousUse"),
    ]
}

public struct QueryPipelineStatisticFlags: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public static let inputAssemblyVertices = QueryPipelineStatisticFlags(rawValue: 1)
    public static let inputAssemblyPrimitives = QueryPipelineStatisticFlags(rawValue: 2)
    public static let vertexShaderInvocations = QueryPipelineStatisticFlags(rawValue: 4)
    public static let geometryShaderInvocations = QueryPipelineStatisticFlags(rawValue: 8)
    public static let geometryShaderPrimitives = QueryPipelineStatisticFlags(rawValue: 16)
    public static let clippingInvocations = QueryPipelineStatisticFlags(rawValue: 32)
    public static let clippingPrimitives = QueryPipelineStatisticFlags(rawValue: 64)
    public static let fragmentShaderInvocations = QueryPipelineStatisticFlags(rawValue: 128)
    public static let tessellationControlShaderPatches = QueryPipelineStatisticFlags(rawValue: 256)
    public static let tessellationEvaluationShaderInvocations = QueryPipelineStatisticFlags(rawValue: 512)
    public static let computeShaderInvocations = QueryPipelineStatisticFlags(rawValue: 1024)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
        (.inputAssemblyVertices, "inputAssemblyVertices"),
        (.inputAssemblyPrimitives, "inputAssemblyPrimitives"),
        (.vertexShaderInvocations, "vertexShaderInvocations"),
        (.geometryShaderInvocations, "geometryShaderInvocations"),
        (.geometryShaderPrimitives, "geometryShaderPrimitives"),
        (.clippingInvocations, "clippingInvocations"),
        (.clippingPrimitives, "clippingPrimitives"),
        (.fragmentShaderInvocations, "fragmentShaderInvocations"),
        (.tessellationControlShaderPatches, "tessellationControlShaderPatches"),
        (.tessellationEvaluationShaderInvocations, "tessellationEvaluationShaderInvocations"),
        (.computeShaderInvocations, "computeShaderInvocations"),
    ]
}

public struct MemoryMapFlags: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
    ]
}

public struct ImageAspectFlags: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public static let color = ImageAspectFlags(rawValue: 1)
    public static let depth = ImageAspectFlags(rawValue: 2)
    public static let stencil = ImageAspectFlags(rawValue: 4)
    public static let metadata = ImageAspectFlags(rawValue: 8)
    public static let memoryPlane0EXT = ImageAspectFlags(rawValue: 128)
    public static let memoryPlane1EXT = ImageAspectFlags(rawValue: 256)
    public static let memoryPlane2EXT = ImageAspectFlags(rawValue: 512)
    public static let memoryPlane3EXT = ImageAspectFlags(rawValue: 1024)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
        (.color, "color"),
        (.depth, "depth"),
        (.stencil, "stencil"),
        (.metadata, "metadata"),
        (.memoryPlane0EXT, "memoryPlane0EXT"),
        (.memoryPlane1EXT, "memoryPlane1EXT"),
        (.memoryPlane2EXT, "memoryPlane2EXT"),
        (.memoryPlane3EXT, "memoryPlane3EXT"),
    ]
}

public struct SparseMemoryBindFlags: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public static let metadata = SparseMemoryBindFlags(rawValue: 1)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
        (.metadata, "metadata"),
    ]
}

public struct SparseImageFormatFlags: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public static let singleMiptail = SparseImageFormatFlags(rawValue: 1)
    public static let alignedMipSize = SparseImageFormatFlags(rawValue: 2)
    public static let nonstandardBlockSize = SparseImageFormatFlags(rawValue: 4)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
        (.singleMiptail, "singleMiptail"),
        (.alignedMipSize, "alignedMipSize"),
        (.nonstandardBlockSize, "nonstandardBlockSize"),
    ]
}

public struct SubpassDescriptionFlags: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public static let perViewAttributesNVX = SubpassDescriptionFlags(rawValue: 1)
    public static let perViewPositionXOnlyNVX = SubpassDescriptionFlags(rawValue: 2)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
        (.perViewAttributesNVX, "perViewAttributesNVX"),
        (.perViewPositionXOnlyNVX, "perViewPositionXOnlyNVX"),
    ]
}

public struct PipelineStageFlags: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public static let topOfPipe = PipelineStageFlags(rawValue: 1)
    public static let drawIndirect = PipelineStageFlags(rawValue: 2)
    public static let vertexInput = PipelineStageFlags(rawValue: 4)
    public static let vertexShader = PipelineStageFlags(rawValue: 8)
    public static let tessellationControlShader = PipelineStageFlags(rawValue: 16)
    public static let tessellationEvaluationShader = PipelineStageFlags(rawValue: 32)
    public static let geometryShader = PipelineStageFlags(rawValue: 64)
    public static let fragmentShader = PipelineStageFlags(rawValue: 128)
    public static let earlyFragmentTests = PipelineStageFlags(rawValue: 256)
    public static let lateFragmentTests = PipelineStageFlags(rawValue: 512)
    public static let colorAttachmentOutput = PipelineStageFlags(rawValue: 1024)
    public static let computeShader = PipelineStageFlags(rawValue: 2048)
    public static let transfer = PipelineStageFlags(rawValue: 4096)
    public static let bottomOfPipe = PipelineStageFlags(rawValue: 8192)
    public static let host = PipelineStageFlags(rawValue: 16384)
    public static let allGraphics = PipelineStageFlags(rawValue: 32768)
    public static let allCommands = PipelineStageFlags(rawValue: 65536)
    public static let transformFeedbackEXT = PipelineStageFlags(rawValue: 16777216)
    public static let conditionalRenderingEXT = PipelineStageFlags(rawValue: 262144)
    public static let shadingRateImageNV = PipelineStageFlags(rawValue: 4194304)
    public static let taskShaderNV = PipelineStageFlags(rawValue: 524288)
    public static let meshShaderNV = PipelineStageFlags(rawValue: 1048576)
    public static let fragmentDensityProcessEXT = PipelineStageFlags(rawValue: 8388608)
    public static let commandPreprocessNV = PipelineStageFlags(rawValue: 131072)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
        (.topOfPipe, "topOfPipe"),
        (.drawIndirect, "drawIndirect"),
        (.vertexInput, "vertexInput"),
        (.vertexShader, "vertexShader"),
        (.tessellationControlShader, "tessellationControlShader"),
        (.tessellationEvaluationShader, "tessellationEvaluationShader"),
        (.geometryShader, "geometryShader"),
        (.fragmentShader, "fragmentShader"),
        (.earlyFragmentTests, "earlyFragmentTests"),
        (.lateFragmentTests, "lateFragmentTests"),
        (.colorAttachmentOutput, "colorAttachmentOutput"),
        (.computeShader, "computeShader"),
        (.transfer, "transfer"),
        (.bottomOfPipe, "bottomOfPipe"),
        (.host, "host"),
        (.allGraphics, "allGraphics"),
        (.allCommands, "allCommands"),
        (.transformFeedbackEXT, "transformFeedbackEXT"),
        (.conditionalRenderingEXT, "conditionalRenderingEXT"),
        (.shadingRateImageNV, "shadingRateImageNV"),
        (.taskShaderNV, "taskShaderNV"),
        (.meshShaderNV, "meshShaderNV"),
        (.fragmentDensityProcessEXT, "fragmentDensityProcessEXT"),
        (.commandPreprocessNV, "commandPreprocessNV"),
    ]
}

public struct SampleCountFlags: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public static let type1 = SampleCountFlags(rawValue: 1)
    public static let type2 = SampleCountFlags(rawValue: 2)
    public static let type4 = SampleCountFlags(rawValue: 4)
    public static let type8 = SampleCountFlags(rawValue: 8)
    public static let type16 = SampleCountFlags(rawValue: 16)
    public static let type32 = SampleCountFlags(rawValue: 32)
    public static let type64 = SampleCountFlags(rawValue: 64)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
        (.type1, "type1"),
        (.type2, "type2"),
        (.type4, "type4"),
        (.type8, "type8"),
        (.type16, "type16"),
        (.type32, "type32"),
        (.type64, "type64"),
    ]
}

public struct AttachmentDescriptionFlags: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public static let mayAlias = AttachmentDescriptionFlags(rawValue: 1)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
        (.mayAlias, "mayAlias"),
    ]
}

public struct StencilFaceFlags: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public static let front = StencilFaceFlags(rawValue: 1)
    public static let back = StencilFaceFlags(rawValue: 2)
    public static let frontAndBack = StencilFaceFlags(rawValue: 0x00000003)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
        (.front, "front"),
        (.back, "back"),
        (.frontAndBack, "frontAndBack"),
    ]
}

public struct CullModeFlags: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public static let none = CullModeFlags(rawValue: 0)
    public static let front = CullModeFlags(rawValue: 1)
    public static let back = CullModeFlags(rawValue: 2)
    public static let frontAndBack = CullModeFlags(rawValue: 0x00000003)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
        (.none, "none"),
        (.front, "front"),
        (.back, "back"),
        (.frontAndBack, "frontAndBack"),
    ]
}

public struct DescriptorPoolCreateFlags: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public static let freeDescriptorSet = DescriptorPoolCreateFlags(rawValue: 1)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
        (.freeDescriptorSet, "freeDescriptorSet"),
    ]
}

public struct DescriptorPoolResetFlags: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
    ]
}

public struct DependencyFlags: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public static let byRegion = DependencyFlags(rawValue: 1)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
        (.byRegion, "byRegion"),
    ]
}

public struct SubgroupFeatureFlags: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public static let basic = SubgroupFeatureFlags(rawValue: 1)
    public static let vote = SubgroupFeatureFlags(rawValue: 2)
    public static let arithmetic = SubgroupFeatureFlags(rawValue: 4)
    public static let ballot = SubgroupFeatureFlags(rawValue: 8)
    public static let shuffle = SubgroupFeatureFlags(rawValue: 16)
    public static let shuffleRelative = SubgroupFeatureFlags(rawValue: 32)
    public static let clustered = SubgroupFeatureFlags(rawValue: 64)
    public static let quad = SubgroupFeatureFlags(rawValue: 128)
    public static let partitionedNV = SubgroupFeatureFlags(rawValue: 256)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
        (.basic, "basic"),
        (.vote, "vote"),
        (.arithmetic, "arithmetic"),
        (.ballot, "ballot"),
        (.shuffle, "shuffle"),
        (.shuffleRelative, "shuffleRelative"),
        (.clustered, "clustered"),
        (.quad, "quad"),
        (.partitionedNV, "partitionedNV"),
    ]
}

public struct IndirectCommandsLayoutUsageFlagsNV: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public static let explicitPreprocess = IndirectCommandsLayoutUsageFlagsNV(rawValue: 1)
    public static let indexedSequences = IndirectCommandsLayoutUsageFlagsNV(rawValue: 2)
    public static let unorderedSequences = IndirectCommandsLayoutUsageFlagsNV(rawValue: 4)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
        (.explicitPreprocess, "explicitPreprocess"),
        (.indexedSequences, "indexedSequences"),
        (.unorderedSequences, "unorderedSequences"),
    ]
}

public struct IndirectStateFlagsNV: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public static let flagFrontface = IndirectStateFlagsNV(rawValue: 1)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
        (.flagFrontface, "flagFrontface"),
    ]
}

public struct DescriptorUpdateTemplateCreateFlags: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
    ]
}

public struct PipelineCreationFeedbackFlagsEXT: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public static let valid = PipelineCreationFeedbackFlagsEXT(rawValue: 1)
    public static let applicationPipelineCacheHit = PipelineCreationFeedbackFlagsEXT(rawValue: 2)
    public static let basePipelineAcceleration = PipelineCreationFeedbackFlagsEXT(rawValue: 4)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
        (.valid, "valid"),
        (.applicationPipelineCacheHit, "applicationPipelineCacheHit"),
        (.basePipelineAcceleration, "basePipelineAcceleration"),
    ]
}

public struct PerformanceCounterDescriptionFlagsKHR: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public static let performanceImpacting = PerformanceCounterDescriptionFlagsKHR(rawValue: 1)
    public static let concurrentlyImpacted = PerformanceCounterDescriptionFlagsKHR(rawValue: 2)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
        (.performanceImpacting, "performanceImpacting"),
        (.concurrentlyImpacted, "concurrentlyImpacted"),
    ]
}

public struct AcquireProfilingLockFlagsKHR: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
    ]
}

public struct SemaphoreWaitFlags: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public static let any = SemaphoreWaitFlags(rawValue: 1)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
        (.any, "any"),
    ]
}

public struct PipelineCompilerControlFlagsAMD: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
    ]
}

public struct ShaderCorePropertiesFlagsAMD: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
    ]
}

public struct DeviceDiagnosticsConfigFlagsNV: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public static let enableShaderDebugInfo = DeviceDiagnosticsConfigFlagsNV(rawValue: 1)
    public static let enableResourceTracking = DeviceDiagnosticsConfigFlagsNV(rawValue: 2)
    public static let enableAutomaticCheckpoints = DeviceDiagnosticsConfigFlagsNV(rawValue: 4)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
        (.enableShaderDebugInfo, "enableShaderDebugInfo"),
        (.enableResourceTracking, "enableResourceTracking"),
        (.enableAutomaticCheckpoints, "enableAutomaticCheckpoints"),
    ]
}

public struct CompositeAlphaFlagsKHR: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public static let opaque = CompositeAlphaFlagsKHR(rawValue: 1)
    public static let preMultiplied = CompositeAlphaFlagsKHR(rawValue: 2)
    public static let postMultiplied = CompositeAlphaFlagsKHR(rawValue: 4)
    public static let inherit = CompositeAlphaFlagsKHR(rawValue: 8)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
        (.opaque, "opaque"),
        (.preMultiplied, "preMultiplied"),
        (.postMultiplied, "postMultiplied"),
        (.inherit, "inherit"),
    ]
}

public struct DisplayPlaneAlphaFlagsKHR: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public static let opaque = DisplayPlaneAlphaFlagsKHR(rawValue: 1)
    public static let global = DisplayPlaneAlphaFlagsKHR(rawValue: 2)
    public static let perPixel = DisplayPlaneAlphaFlagsKHR(rawValue: 4)
    public static let perPixelPremultiplied = DisplayPlaneAlphaFlagsKHR(rawValue: 8)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
        (.opaque, "opaque"),
        (.global, "global"),
        (.perPixel, "perPixel"),
        (.perPixelPremultiplied, "perPixelPremultiplied"),
    ]
}

public struct SurfaceTransformFlagsKHR: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public static let identity = SurfaceTransformFlagsKHR(rawValue: 1)
    public static let rotate90 = SurfaceTransformFlagsKHR(rawValue: 2)
    public static let rotate180 = SurfaceTransformFlagsKHR(rawValue: 4)
    public static let rotate270 = SurfaceTransformFlagsKHR(rawValue: 8)
    public static let horizontalMirror = SurfaceTransformFlagsKHR(rawValue: 16)
    public static let horizontalMirrorRotate90 = SurfaceTransformFlagsKHR(rawValue: 32)
    public static let horizontalMirrorRotate180 = SurfaceTransformFlagsKHR(rawValue: 64)
    public static let horizontalMirrorRotate270 = SurfaceTransformFlagsKHR(rawValue: 128)
    public static let inherit = SurfaceTransformFlagsKHR(rawValue: 256)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
        (.identity, "identity"),
        (.rotate90, "rotate90"),
        (.rotate180, "rotate180"),
        (.rotate270, "rotate270"),
        (.horizontalMirror, "horizontalMirror"),
        (.horizontalMirrorRotate90, "horizontalMirrorRotate90"),
        (.horizontalMirrorRotate180, "horizontalMirrorRotate180"),
        (.horizontalMirrorRotate270, "horizontalMirrorRotate270"),
        (.inherit, "inherit"),
    ]
}

public struct SwapchainCreateFlagsKHR: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public static let splitInstanceBindRegions = SwapchainCreateFlagsKHR(rawValue: 1)
    public static let protected = SwapchainCreateFlagsKHR(rawValue: 2)
    public static let mutableFormat = SwapchainCreateFlagsKHR(rawValue: 4)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
        (.splitInstanceBindRegions, "splitInstanceBindRegions"),
        (.protected, "protected"),
        (.mutableFormat, "mutableFormat"),
    ]
}

public struct DisplayModeCreateFlagsKHR: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
    ]
}

public struct DisplaySurfaceCreateFlagsKHR: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
    ]
}

public struct HeadlessSurfaceCreateFlagsEXT: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
    ]
}

public struct PeerMemoryFeatureFlags: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public static let copySrc = PeerMemoryFeatureFlags(rawValue: 1)
    public static let copyDst = PeerMemoryFeatureFlags(rawValue: 2)
    public static let genericSrc = PeerMemoryFeatureFlags(rawValue: 4)
    public static let genericDst = PeerMemoryFeatureFlags(rawValue: 8)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
        (.copySrc, "copySrc"),
        (.copyDst, "copyDst"),
        (.genericSrc, "genericSrc"),
        (.genericDst, "genericDst"),
    ]
}

public struct MemoryAllocateFlags: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public static let deviceMask = MemoryAllocateFlags(rawValue: 1)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
        (.deviceMask, "deviceMask"),
    ]
}

public struct DeviceGroupPresentModeFlagsKHR: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public static let local = DeviceGroupPresentModeFlagsKHR(rawValue: 1)
    public static let remote = DeviceGroupPresentModeFlagsKHR(rawValue: 2)
    public static let sum = DeviceGroupPresentModeFlagsKHR(rawValue: 4)
    public static let localMultiDevice = DeviceGroupPresentModeFlagsKHR(rawValue: 8)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
        (.local, "local"),
        (.remote, "remote"),
        (.sum, "sum"),
        (.localMultiDevice, "localMultiDevice"),
    ]
}

public struct DebugReportFlagsEXT: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public static let information = DebugReportFlagsEXT(rawValue: 1)
    public static let warning = DebugReportFlagsEXT(rawValue: 2)
    public static let performanceWarning = DebugReportFlagsEXT(rawValue: 4)
    public static let error = DebugReportFlagsEXT(rawValue: 8)
    public static let debug = DebugReportFlagsEXT(rawValue: 16)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
        (.information, "information"),
        (.warning, "warning"),
        (.performanceWarning, "performanceWarning"),
        (.error, "error"),
        (.debug, "debug"),
    ]
}

public struct CommandPoolTrimFlags: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
    ]
}

public struct ExternalMemoryHandleTypeFlagsNV: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public static let opaqueWin32 = ExternalMemoryHandleTypeFlagsNV(rawValue: 1)
    public static let opaqueWin32Kmt = ExternalMemoryHandleTypeFlagsNV(rawValue: 2)
    public static let d3d11Image = ExternalMemoryHandleTypeFlagsNV(rawValue: 4)
    public static let d3d11ImageKmt = ExternalMemoryHandleTypeFlagsNV(rawValue: 8)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
        (.opaqueWin32, "opaqueWin32"),
        (.opaqueWin32Kmt, "opaqueWin32Kmt"),
        (.d3d11Image, "d3d11Image"),
        (.d3d11ImageKmt, "d3d11ImageKmt"),
    ]
}

public struct ExternalMemoryFeatureFlagsNV: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public static let dedicatedOnly = ExternalMemoryFeatureFlagsNV(rawValue: 1)
    public static let exportable = ExternalMemoryFeatureFlagsNV(rawValue: 2)
    public static let importable = ExternalMemoryFeatureFlagsNV(rawValue: 4)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
        (.dedicatedOnly, "dedicatedOnly"),
        (.exportable, "exportable"),
        (.importable, "importable"),
    ]
}

public struct ExternalMemoryHandleTypeFlags: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public static let opaqueFd = ExternalMemoryHandleTypeFlags(rawValue: 1)
    public static let opaqueWin32 = ExternalMemoryHandleTypeFlags(rawValue: 2)
    public static let opaqueWin32Kmt = ExternalMemoryHandleTypeFlags(rawValue: 4)
    public static let d3d11Texture = ExternalMemoryHandleTypeFlags(rawValue: 8)
    public static let d3d11TextureKmt = ExternalMemoryHandleTypeFlags(rawValue: 16)
    public static let d3d12Heap = ExternalMemoryHandleTypeFlags(rawValue: 32)
    public static let d3d12Resource = ExternalMemoryHandleTypeFlags(rawValue: 64)
    public static let dmaBufEXT = ExternalMemoryHandleTypeFlags(rawValue: 512)
    public static let hostAllocationEXT = ExternalMemoryHandleTypeFlags(rawValue: 128)
    public static let hostMappedForeignMemoryEXT = ExternalMemoryHandleTypeFlags(rawValue: 256)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
        (.opaqueFd, "opaqueFd"),
        (.opaqueWin32, "opaqueWin32"),
        (.opaqueWin32Kmt, "opaqueWin32Kmt"),
        (.d3d11Texture, "d3d11Texture"),
        (.d3d11TextureKmt, "d3d11TextureKmt"),
        (.d3d12Heap, "d3d12Heap"),
        (.d3d12Resource, "d3d12Resource"),
        (.dmaBufEXT, "dmaBufEXT"),
        (.hostAllocationEXT, "hostAllocationEXT"),
        (.hostMappedForeignMemoryEXT, "hostMappedForeignMemoryEXT"),
    ]
}

public struct ExternalMemoryFeatureFlags: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public static let dedicatedOnly = ExternalMemoryFeatureFlags(rawValue: 1)
    public static let exportable = ExternalMemoryFeatureFlags(rawValue: 2)
    public static let importable = ExternalMemoryFeatureFlags(rawValue: 4)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
        (.dedicatedOnly, "dedicatedOnly"),
        (.exportable, "exportable"),
        (.importable, "importable"),
    ]
}

public struct ExternalSemaphoreHandleTypeFlags: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public static let opaqueFd = ExternalSemaphoreHandleTypeFlags(rawValue: 1)
    public static let opaqueWin32 = ExternalSemaphoreHandleTypeFlags(rawValue: 2)
    public static let opaqueWin32Kmt = ExternalSemaphoreHandleTypeFlags(rawValue: 4)
    public static let d3d12Fence = ExternalSemaphoreHandleTypeFlags(rawValue: 8)
    public static let syncFd = ExternalSemaphoreHandleTypeFlags(rawValue: 16)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
        (.opaqueFd, "opaqueFd"),
        (.opaqueWin32, "opaqueWin32"),
        (.opaqueWin32Kmt, "opaqueWin32Kmt"),
        (.d3d12Fence, "d3d12Fence"),
        (.syncFd, "syncFd"),
    ]
}

public struct ExternalSemaphoreFeatureFlags: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public static let exportable = ExternalSemaphoreFeatureFlags(rawValue: 1)
    public static let importable = ExternalSemaphoreFeatureFlags(rawValue: 2)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
        (.exportable, "exportable"),
        (.importable, "importable"),
    ]
}

public struct SemaphoreImportFlags: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public static let temporary = SemaphoreImportFlags(rawValue: 1)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
        (.temporary, "temporary"),
    ]
}

public struct ExternalFenceHandleTypeFlags: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public static let opaqueFd = ExternalFenceHandleTypeFlags(rawValue: 1)
    public static let opaqueWin32 = ExternalFenceHandleTypeFlags(rawValue: 2)
    public static let opaqueWin32Kmt = ExternalFenceHandleTypeFlags(rawValue: 4)
    public static let syncFd = ExternalFenceHandleTypeFlags(rawValue: 8)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
        (.opaqueFd, "opaqueFd"),
        (.opaqueWin32, "opaqueWin32"),
        (.opaqueWin32Kmt, "opaqueWin32Kmt"),
        (.syncFd, "syncFd"),
    ]
}

public struct ExternalFenceFeatureFlags: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public static let exportable = ExternalFenceFeatureFlags(rawValue: 1)
    public static let importable = ExternalFenceFeatureFlags(rawValue: 2)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
        (.exportable, "exportable"),
        (.importable, "importable"),
    ]
}

public struct FenceImportFlags: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public static let temporary = FenceImportFlags(rawValue: 1)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
        (.temporary, "temporary"),
    ]
}

public struct SurfaceCounterFlagsEXT: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public static let vblank = SurfaceCounterFlagsEXT(rawValue: 1)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
        (.vblank, "vblank"),
    ]
}

public struct PipelineViewportSwizzleStateCreateFlagsNV: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
    ]
}

public struct PipelineDiscardRectangleStateCreateFlagsEXT: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
    ]
}

public struct PipelineCoverageToColorStateCreateFlagsNV: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
    ]
}

public struct PipelineCoverageModulationStateCreateFlagsNV: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
    ]
}

public struct PipelineCoverageReductionStateCreateFlagsNV: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
    ]
}

public struct ValidationCacheCreateFlagsEXT: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
    ]
}

public struct DebugUtilsMessageSeverityFlagsEXT: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public static let verbose = DebugUtilsMessageSeverityFlagsEXT(rawValue: 1)
    public static let info = DebugUtilsMessageSeverityFlagsEXT(rawValue: 16)
    public static let warning = DebugUtilsMessageSeverityFlagsEXT(rawValue: 256)
    public static let error = DebugUtilsMessageSeverityFlagsEXT(rawValue: 4096)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
        (.verbose, "verbose"),
        (.info, "info"),
        (.warning, "warning"),
        (.error, "error"),
    ]
}

public struct DebugUtilsMessageTypeFlagsEXT: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public static let general = DebugUtilsMessageTypeFlagsEXT(rawValue: 1)
    public static let validation = DebugUtilsMessageTypeFlagsEXT(rawValue: 2)
    public static let performance = DebugUtilsMessageTypeFlagsEXT(rawValue: 4)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
        (.general, "general"),
        (.validation, "validation"),
        (.performance, "performance"),
    ]
}

public struct DebugUtilsMessengerCreateFlagsEXT: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
    ]
}

public struct DebugUtilsMessengerCallbackDataFlagsEXT: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
    ]
}

public struct PipelineRasterizationConservativeStateCreateFlagsEXT: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
    ]
}

public struct DescriptorBindingFlags: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public static let updateAfterBind = DescriptorBindingFlags(rawValue: 1)
    public static let updateUnusedWhilePending = DescriptorBindingFlags(rawValue: 2)
    public static let partiallyBound = DescriptorBindingFlags(rawValue: 4)
    public static let variableDescriptorCount = DescriptorBindingFlags(rawValue: 8)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
        (.updateAfterBind, "updateAfterBind"),
        (.updateUnusedWhilePending, "updateUnusedWhilePending"),
        (.partiallyBound, "partiallyBound"),
        (.variableDescriptorCount, "variableDescriptorCount"),
    ]
}

public struct ConditionalRenderingFlagsEXT: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public static let inverted = ConditionalRenderingFlagsEXT(rawValue: 1)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
        (.inverted, "inverted"),
    ]
}

public struct ResolveModeFlags: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public static let none = ResolveModeFlags(rawValue: 0)
    public static let sampleZero = ResolveModeFlags(rawValue: 1)
    public static let average = ResolveModeFlags(rawValue: 2)
    public static let min = ResolveModeFlags(rawValue: 4)
    public static let max = ResolveModeFlags(rawValue: 8)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
        (.none, "none"),
        (.sampleZero, "sampleZero"),
        (.average, "average"),
        (.min, "min"),
        (.max, "max"),
    ]
}

public struct PipelineRasterizationStateStreamCreateFlagsEXT: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
    ]
}

public struct PipelineRasterizationDepthClipStateCreateFlagsEXT: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
    ]
}

public struct ToolPurposeFlagsEXT: OptionSet, StringConvertibleOptionSet {
    public let rawValue: UInt32

    public static let validation = ToolPurposeFlagsEXT(rawValue: 1)
    public static let profiling = ToolPurposeFlagsEXT(rawValue: 2)
    public static let tracing = ToolPurposeFlagsEXT(rawValue: 4)
    public static let additionalFeatures = ToolPurposeFlagsEXT(rawValue: 8)
    public static let modifyingFeatures = ToolPurposeFlagsEXT(rawValue: 16)
    public static let debugReporting = ToolPurposeFlagsEXT(rawValue: 32)
    public static let debugMarkers = ToolPurposeFlagsEXT(rawValue: 64)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let descriptions: [(Self, String)] = [
        (.validation, "validation"),
        (.profiling, "profiling"),
        (.tracing, "tracing"),
        (.additionalFeatures, "additionalFeatures"),
        (.modifyingFeatures, "modifyingFeatures"),
        (.debugReporting, "debugReporting"),
        (.debugMarkers, "debugMarkers"),
    ]
}

