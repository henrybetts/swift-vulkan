public struct FramebufferCreateFlags: OptionSet {
    public let rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct QueryPoolCreateFlags: OptionSet {
    public let rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct RenderPassCreateFlags: OptionSet {
    public let rawValue: UInt32

    public static let transformQCOM = RenderPassCreateFlags(rawValue: 2)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct SamplerCreateFlags: OptionSet {
    public let rawValue: UInt32

    public static let subsampledEXT = SamplerCreateFlags(rawValue: 1)
    public static let subsampledCoarseReconstructionEXT = SamplerCreateFlags(rawValue: 2)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct PipelineLayoutCreateFlags: OptionSet {
    public let rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct PipelineCacheCreateFlags: OptionSet {
    public let rawValue: UInt32

    public static let externallySynchronizedEXT = PipelineCacheCreateFlags(rawValue: 1)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct PipelineDepthStencilStateCreateFlags: OptionSet {
    public let rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct PipelineDynamicStateCreateFlags: OptionSet {
    public let rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct PipelineColorBlendStateCreateFlags: OptionSet {
    public let rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct PipelineMultisampleStateCreateFlags: OptionSet {
    public let rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct PipelineRasterizationStateCreateFlags: OptionSet {
    public let rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct PipelineViewportStateCreateFlags: OptionSet {
    public let rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct PipelineTessellationStateCreateFlags: OptionSet {
    public let rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct PipelineInputAssemblyStateCreateFlags: OptionSet {
    public let rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct PipelineVertexInputStateCreateFlags: OptionSet {
    public let rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct PipelineShaderStageCreateFlags: OptionSet {
    public let rawValue: UInt32

    public static let allowVaryingSubgroupSizeEXT = PipelineShaderStageCreateFlags(rawValue: 1)
    public static let requireFullSubgroupsEXT = PipelineShaderStageCreateFlags(rawValue: 2)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct DescriptorSetLayoutCreateFlags: OptionSet {
    public let rawValue: UInt32

    public static let pushDescriptorKHR = DescriptorSetLayoutCreateFlags(rawValue: 1)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct BufferViewCreateFlags: OptionSet {
    public let rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct InstanceCreateFlags: OptionSet {
    public let rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct DeviceCreateFlags: OptionSet {
    public let rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct DeviceQueueCreateFlags: OptionSet {
    public let rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct QueueFlags: OptionSet {
    public let rawValue: UInt32

    public static let graphics = QueueFlags(rawValue: 1)
    public static let compute = QueueFlags(rawValue: 2)
    public static let transfer = QueueFlags(rawValue: 4)
    public static let sparseBinding = QueueFlags(rawValue: 8)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct MemoryPropertyFlags: OptionSet {
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
}

public struct MemoryHeapFlags: OptionSet {
    public let rawValue: UInt32

    public static let deviceLocal = MemoryHeapFlags(rawValue: 1)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct AccessFlags: OptionSet {
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
}

public struct BufferUsageFlags: OptionSet {
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
}

public struct BufferCreateFlags: OptionSet {
    public let rawValue: UInt32

    public static let sparseBinding = BufferCreateFlags(rawValue: 1)
    public static let sparseResidency = BufferCreateFlags(rawValue: 2)
    public static let sparseAliased = BufferCreateFlags(rawValue: 4)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct ShaderStageFlags: OptionSet {
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
}

public struct ImageUsageFlags: OptionSet {
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
}

public struct ImageCreateFlags: OptionSet {
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
}

public struct ImageViewCreateFlags: OptionSet {
    public let rawValue: UInt32

    public static let fragmentDensityMapDynamicEXT = ImageViewCreateFlags(rawValue: 1)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct PipelineCreateFlags: OptionSet {
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
}

public struct ColorComponentFlags: OptionSet {
    public let rawValue: UInt32

    public static let r = ColorComponentFlags(rawValue: 1)
    public static let g = ColorComponentFlags(rawValue: 2)
    public static let b = ColorComponentFlags(rawValue: 4)
    public static let a = ColorComponentFlags(rawValue: 8)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct FenceCreateFlags: OptionSet {
    public let rawValue: UInt32

    public static let signaled = FenceCreateFlags(rawValue: 1)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct SemaphoreCreateFlags: OptionSet {
    public let rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct FormatFeatureFlags: OptionSet {
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
}

public struct QueryControlFlags: OptionSet {
    public let rawValue: UInt32

    public static let precise = QueryControlFlags(rawValue: 1)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct QueryResultFlags: OptionSet {
    public let rawValue: UInt32

    public static let type64 = QueryResultFlags(rawValue: 1)
    public static let typeWait = QueryResultFlags(rawValue: 2)
    public static let typeWithAvailability = QueryResultFlags(rawValue: 4)
    public static let typePartial = QueryResultFlags(rawValue: 8)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct ShaderModuleCreateFlags: OptionSet {
    public let rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct EventCreateFlags: OptionSet {
    public let rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct CommandPoolCreateFlags: OptionSet {
    public let rawValue: UInt32

    public static let transient = CommandPoolCreateFlags(rawValue: 1)
    public static let resetCommandBuffer = CommandPoolCreateFlags(rawValue: 2)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct CommandPoolResetFlags: OptionSet {
    public let rawValue: UInt32

    public static let releaseResources = CommandPoolResetFlags(rawValue: 1)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct CommandBufferResetFlags: OptionSet {
    public let rawValue: UInt32

    public static let releaseResources = CommandBufferResetFlags(rawValue: 1)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct CommandBufferUsageFlags: OptionSet {
    public let rawValue: UInt32

    public static let oneTimeSubmit = CommandBufferUsageFlags(rawValue: 1)
    public static let renderPassContinue = CommandBufferUsageFlags(rawValue: 2)
    public static let simultaneousUse = CommandBufferUsageFlags(rawValue: 4)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct QueryPipelineStatisticFlags: OptionSet {
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
}

public struct MemoryMapFlags: OptionSet {
    public let rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct ImageAspectFlags: OptionSet {
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
}

public struct SparseMemoryBindFlags: OptionSet {
    public let rawValue: UInt32

    public static let metadata = SparseMemoryBindFlags(rawValue: 1)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct SparseImageFormatFlags: OptionSet {
    public let rawValue: UInt32

    public static let singleMiptail = SparseImageFormatFlags(rawValue: 1)
    public static let alignedMipSize = SparseImageFormatFlags(rawValue: 2)
    public static let nonstandardBlockSize = SparseImageFormatFlags(rawValue: 4)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct SubpassDescriptionFlags: OptionSet {
    public let rawValue: UInt32

    public static let perViewAttributesNVX = SubpassDescriptionFlags(rawValue: 1)
    public static let perViewPositionXOnlyNVX = SubpassDescriptionFlags(rawValue: 2)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct PipelineStageFlags: OptionSet {
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
}

public struct SampleCountFlags: OptionSet {
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
}

public struct AttachmentDescriptionFlags: OptionSet {
    public let rawValue: UInt32

    public static let mayAlias = AttachmentDescriptionFlags(rawValue: 1)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct StencilFaceFlags: OptionSet {
    public let rawValue: UInt32

    public static let front = StencilFaceFlags(rawValue: 1)
    public static let back = StencilFaceFlags(rawValue: 2)
    public static let frontAndBack = StencilFaceFlags(rawValue: 0x00000003)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct CullModeFlags: OptionSet {
    public let rawValue: UInt32

    public static let none = CullModeFlags(rawValue: 0)
    public static let front = CullModeFlags(rawValue: 1)
    public static let back = CullModeFlags(rawValue: 2)
    public static let frontAndBack = CullModeFlags(rawValue: 0x00000003)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct DescriptorPoolCreateFlags: OptionSet {
    public let rawValue: UInt32

    public static let freeDescriptorSet = DescriptorPoolCreateFlags(rawValue: 1)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct DescriptorPoolResetFlags: OptionSet {
    public let rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct DependencyFlags: OptionSet {
    public let rawValue: UInt32

    public static let byRegion = DependencyFlags(rawValue: 1)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct SubgroupFeatureFlags: OptionSet {
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
}

public struct IndirectCommandsLayoutUsageFlagsNV: OptionSet {
    public let rawValue: UInt32

    public static let explicitPreprocess = IndirectCommandsLayoutUsageFlagsNV(rawValue: 1)
    public static let indexedSequences = IndirectCommandsLayoutUsageFlagsNV(rawValue: 2)
    public static let unorderedSequences = IndirectCommandsLayoutUsageFlagsNV(rawValue: 4)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct IndirectStateFlagsNV: OptionSet {
    public let rawValue: UInt32

    public static let flagFrontface = IndirectStateFlagsNV(rawValue: 1)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct DescriptorUpdateTemplateCreateFlags: OptionSet {
    public let rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct PipelineCreationFeedbackFlagsEXT: OptionSet {
    public let rawValue: UInt32

    public static let valid = PipelineCreationFeedbackFlagsEXT(rawValue: 1)
    public static let applicationPipelineCacheHit = PipelineCreationFeedbackFlagsEXT(rawValue: 2)
    public static let basePipelineAcceleration = PipelineCreationFeedbackFlagsEXT(rawValue: 4)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct PerformanceCounterDescriptionFlagsKHR: OptionSet {
    public let rawValue: UInt32

    public static let performanceImpacting = PerformanceCounterDescriptionFlagsKHR(rawValue: 1)
    public static let concurrentlyImpacted = PerformanceCounterDescriptionFlagsKHR(rawValue: 2)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct AcquireProfilingLockFlagsKHR: OptionSet {
    public let rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct SemaphoreWaitFlags: OptionSet {
    public let rawValue: UInt32

    public static let any = SemaphoreWaitFlags(rawValue: 1)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct PipelineCompilerControlFlagsAMD: OptionSet {
    public let rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct ShaderCorePropertiesFlagsAMD: OptionSet {
    public let rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct DeviceDiagnosticsConfigFlagsNV: OptionSet {
    public let rawValue: UInt32

    public static let enableShaderDebugInfo = DeviceDiagnosticsConfigFlagsNV(rawValue: 1)
    public static let enableResourceTracking = DeviceDiagnosticsConfigFlagsNV(rawValue: 2)
    public static let enableAutomaticCheckpoints = DeviceDiagnosticsConfigFlagsNV(rawValue: 4)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct CompositeAlphaFlagsKHR: OptionSet {
    public let rawValue: UInt32

    public static let opaque = CompositeAlphaFlagsKHR(rawValue: 1)
    public static let preMultiplied = CompositeAlphaFlagsKHR(rawValue: 2)
    public static let postMultiplied = CompositeAlphaFlagsKHR(rawValue: 4)
    public static let inherit = CompositeAlphaFlagsKHR(rawValue: 8)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct DisplayPlaneAlphaFlagsKHR: OptionSet {
    public let rawValue: UInt32

    public static let opaque = DisplayPlaneAlphaFlagsKHR(rawValue: 1)
    public static let global = DisplayPlaneAlphaFlagsKHR(rawValue: 2)
    public static let perPixel = DisplayPlaneAlphaFlagsKHR(rawValue: 4)
    public static let perPixelPremultiplied = DisplayPlaneAlphaFlagsKHR(rawValue: 8)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct SurfaceTransformFlagsKHR: OptionSet {
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
}

public struct SwapchainCreateFlagsKHR: OptionSet {
    public let rawValue: UInt32

    public static let splitInstanceBindRegions = SwapchainCreateFlagsKHR(rawValue: 1)
    public static let protected = SwapchainCreateFlagsKHR(rawValue: 2)
    public static let mutableFormat = SwapchainCreateFlagsKHR(rawValue: 4)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct DisplayModeCreateFlagsKHR: OptionSet {
    public let rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct DisplaySurfaceCreateFlagsKHR: OptionSet {
    public let rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct HeadlessSurfaceCreateFlagsEXT: OptionSet {
    public let rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct PeerMemoryFeatureFlags: OptionSet {
    public let rawValue: UInt32

    public static let copySrc = PeerMemoryFeatureFlags(rawValue: 1)
    public static let copyDst = PeerMemoryFeatureFlags(rawValue: 2)
    public static let genericSrc = PeerMemoryFeatureFlags(rawValue: 4)
    public static let genericDst = PeerMemoryFeatureFlags(rawValue: 8)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct MemoryAllocateFlags: OptionSet {
    public let rawValue: UInt32

    public static let deviceMask = MemoryAllocateFlags(rawValue: 1)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct DeviceGroupPresentModeFlagsKHR: OptionSet {
    public let rawValue: UInt32

    public static let local = DeviceGroupPresentModeFlagsKHR(rawValue: 1)
    public static let remote = DeviceGroupPresentModeFlagsKHR(rawValue: 2)
    public static let sum = DeviceGroupPresentModeFlagsKHR(rawValue: 4)
    public static let localMultiDevice = DeviceGroupPresentModeFlagsKHR(rawValue: 8)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct DebugReportFlagsEXT: OptionSet {
    public let rawValue: UInt32

    public static let information = DebugReportFlagsEXT(rawValue: 1)
    public static let warning = DebugReportFlagsEXT(rawValue: 2)
    public static let performanceWarning = DebugReportFlagsEXT(rawValue: 4)
    public static let error = DebugReportFlagsEXT(rawValue: 8)
    public static let debug = DebugReportFlagsEXT(rawValue: 16)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct CommandPoolTrimFlags: OptionSet {
    public let rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct ExternalMemoryHandleTypeFlagsNV: OptionSet {
    public let rawValue: UInt32

    public static let opaqueWin32 = ExternalMemoryHandleTypeFlagsNV(rawValue: 1)
    public static let opaqueWin32Kmt = ExternalMemoryHandleTypeFlagsNV(rawValue: 2)
    public static let d3d11Image = ExternalMemoryHandleTypeFlagsNV(rawValue: 4)
    public static let d3d11ImageKmt = ExternalMemoryHandleTypeFlagsNV(rawValue: 8)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct ExternalMemoryFeatureFlagsNV: OptionSet {
    public let rawValue: UInt32

    public static let dedicatedOnly = ExternalMemoryFeatureFlagsNV(rawValue: 1)
    public static let exportable = ExternalMemoryFeatureFlagsNV(rawValue: 2)
    public static let importable = ExternalMemoryFeatureFlagsNV(rawValue: 4)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct ExternalMemoryHandleTypeFlags: OptionSet {
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
}

public struct ExternalMemoryFeatureFlags: OptionSet {
    public let rawValue: UInt32

    public static let dedicatedOnly = ExternalMemoryFeatureFlags(rawValue: 1)
    public static let exportable = ExternalMemoryFeatureFlags(rawValue: 2)
    public static let importable = ExternalMemoryFeatureFlags(rawValue: 4)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct ExternalSemaphoreHandleTypeFlags: OptionSet {
    public let rawValue: UInt32

    public static let opaqueFd = ExternalSemaphoreHandleTypeFlags(rawValue: 1)
    public static let opaqueWin32 = ExternalSemaphoreHandleTypeFlags(rawValue: 2)
    public static let opaqueWin32Kmt = ExternalSemaphoreHandleTypeFlags(rawValue: 4)
    public static let d3d12Fence = ExternalSemaphoreHandleTypeFlags(rawValue: 8)
    public static let syncFd = ExternalSemaphoreHandleTypeFlags(rawValue: 16)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct ExternalSemaphoreFeatureFlags: OptionSet {
    public let rawValue: UInt32

    public static let exportable = ExternalSemaphoreFeatureFlags(rawValue: 1)
    public static let importable = ExternalSemaphoreFeatureFlags(rawValue: 2)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct SemaphoreImportFlags: OptionSet {
    public let rawValue: UInt32

    public static let temporary = SemaphoreImportFlags(rawValue: 1)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct ExternalFenceHandleTypeFlags: OptionSet {
    public let rawValue: UInt32

    public static let opaqueFd = ExternalFenceHandleTypeFlags(rawValue: 1)
    public static let opaqueWin32 = ExternalFenceHandleTypeFlags(rawValue: 2)
    public static let opaqueWin32Kmt = ExternalFenceHandleTypeFlags(rawValue: 4)
    public static let syncFd = ExternalFenceHandleTypeFlags(rawValue: 8)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct ExternalFenceFeatureFlags: OptionSet {
    public let rawValue: UInt32

    public static let exportable = ExternalFenceFeatureFlags(rawValue: 1)
    public static let importable = ExternalFenceFeatureFlags(rawValue: 2)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct FenceImportFlags: OptionSet {
    public let rawValue: UInt32

    public static let temporary = FenceImportFlags(rawValue: 1)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct SurfaceCounterFlagsEXT: OptionSet {
    public let rawValue: UInt32

    public static let vblank = SurfaceCounterFlagsEXT(rawValue: 1)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct PipelineViewportSwizzleStateCreateFlagsNV: OptionSet {
    public let rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct PipelineDiscardRectangleStateCreateFlagsEXT: OptionSet {
    public let rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct PipelineCoverageToColorStateCreateFlagsNV: OptionSet {
    public let rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct PipelineCoverageModulationStateCreateFlagsNV: OptionSet {
    public let rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct PipelineCoverageReductionStateCreateFlagsNV: OptionSet {
    public let rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct ValidationCacheCreateFlagsEXT: OptionSet {
    public let rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct DebugUtilsMessageSeverityFlagsEXT: OptionSet {
    public let rawValue: UInt32

    public static let verbose = DebugUtilsMessageSeverityFlagsEXT(rawValue: 1)
    public static let info = DebugUtilsMessageSeverityFlagsEXT(rawValue: 16)
    public static let warning = DebugUtilsMessageSeverityFlagsEXT(rawValue: 256)
    public static let error = DebugUtilsMessageSeverityFlagsEXT(rawValue: 4096)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct DebugUtilsMessageTypeFlagsEXT: OptionSet {
    public let rawValue: UInt32

    public static let general = DebugUtilsMessageTypeFlagsEXT(rawValue: 1)
    public static let validation = DebugUtilsMessageTypeFlagsEXT(rawValue: 2)
    public static let performance = DebugUtilsMessageTypeFlagsEXT(rawValue: 4)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct DebugUtilsMessengerCreateFlagsEXT: OptionSet {
    public let rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct DebugUtilsMessengerCallbackDataFlagsEXT: OptionSet {
    public let rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct PipelineRasterizationConservativeStateCreateFlagsEXT: OptionSet {
    public let rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct DescriptorBindingFlags: OptionSet {
    public let rawValue: UInt32

    public static let updateAfterBind = DescriptorBindingFlags(rawValue: 1)
    public static let updateUnusedWhilePending = DescriptorBindingFlags(rawValue: 2)
    public static let partiallyBound = DescriptorBindingFlags(rawValue: 4)
    public static let variableDescriptorCount = DescriptorBindingFlags(rawValue: 8)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct ConditionalRenderingFlagsEXT: OptionSet {
    public let rawValue: UInt32

    public static let inverted = ConditionalRenderingFlagsEXT(rawValue: 1)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct ResolveModeFlags: OptionSet {
    public let rawValue: UInt32

    public static let none = ResolveModeFlags(rawValue: 0)
    public static let sampleZero = ResolveModeFlags(rawValue: 1)
    public static let average = ResolveModeFlags(rawValue: 2)
    public static let min = ResolveModeFlags(rawValue: 4)
    public static let max = ResolveModeFlags(rawValue: 8)

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct PipelineRasterizationStateStreamCreateFlagsEXT: OptionSet {
    public let rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct PipelineRasterizationDepthClipStateCreateFlagsEXT: OptionSet {
    public let rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public struct ToolPurposeFlagsEXT: OptionSet {
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
}

