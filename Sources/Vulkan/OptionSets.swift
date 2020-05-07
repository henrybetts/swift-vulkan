struct FramebufferCreateFlags: OptionSet {
    let rawValue: UInt32
}

struct QueryPoolCreateFlags: OptionSet {
    let rawValue: UInt32
}

struct RenderPassCreateFlags: OptionSet {
    let rawValue: UInt32
    static let transformQCOM = RenderPassCreateFlags(rawValue: 2)
}

struct SamplerCreateFlags: OptionSet {
    let rawValue: UInt32
    static let subsampledEXT = SamplerCreateFlags(rawValue: 1)
    static let subsampledCoarseReconstructionEXT = SamplerCreateFlags(rawValue: 2)
}

struct PipelineLayoutCreateFlags: OptionSet {
    let rawValue: UInt32
}

struct PipelineCacheCreateFlags: OptionSet {
    let rawValue: UInt32
    static let externallySynchronizedEXT = PipelineCacheCreateFlags(rawValue: 1)
}

struct PipelineDepthStencilStateCreateFlags: OptionSet {
    let rawValue: UInt32
}

struct PipelineDynamicStateCreateFlags: OptionSet {
    let rawValue: UInt32
}

struct PipelineColorBlendStateCreateFlags: OptionSet {
    let rawValue: UInt32
}

struct PipelineMultisampleStateCreateFlags: OptionSet {
    let rawValue: UInt32
}

struct PipelineRasterizationStateCreateFlags: OptionSet {
    let rawValue: UInt32
}

struct PipelineViewportStateCreateFlags: OptionSet {
    let rawValue: UInt32
}

struct PipelineTessellationStateCreateFlags: OptionSet {
    let rawValue: UInt32
}

struct PipelineInputAssemblyStateCreateFlags: OptionSet {
    let rawValue: UInt32
}

struct PipelineVertexInputStateCreateFlags: OptionSet {
    let rawValue: UInt32
}

struct PipelineShaderStageCreateFlags: OptionSet {
    let rawValue: UInt32
    static let allowVaryingSubgroupSizeEXT = PipelineShaderStageCreateFlags(rawValue: 1)
    static let requireFullSubgroupsEXT = PipelineShaderStageCreateFlags(rawValue: 2)
}

struct DescriptorSetLayoutCreateFlags: OptionSet {
    let rawValue: UInt32
    static let pushDescriptorKHR = DescriptorSetLayoutCreateFlags(rawValue: 1)
}

struct BufferViewCreateFlags: OptionSet {
    let rawValue: UInt32
}

struct InstanceCreateFlags: OptionSet {
    let rawValue: UInt32
}

struct DeviceCreateFlags: OptionSet {
    let rawValue: UInt32
}

struct DeviceQueueCreateFlags: OptionSet {
    let rawValue: UInt32
}

struct QueueFlags: OptionSet {
    let rawValue: UInt32
    static let graphics = QueueFlags(rawValue: 1)
    static let compute = QueueFlags(rawValue: 2)
    static let transfer = QueueFlags(rawValue: 4)
    static let sparseBinding = QueueFlags(rawValue: 8)
}

struct MemoryPropertyFlags: OptionSet {
    let rawValue: UInt32
    static let deviceLocal = MemoryPropertyFlags(rawValue: 1)
    static let hostVisible = MemoryPropertyFlags(rawValue: 2)
    static let hostCoherent = MemoryPropertyFlags(rawValue: 4)
    static let hostCached = MemoryPropertyFlags(rawValue: 8)
    static let lazilyAllocated = MemoryPropertyFlags(rawValue: 16)
    static let deviceCoherentAMD = MemoryPropertyFlags(rawValue: 64)
    static let deviceUncachedAMD = MemoryPropertyFlags(rawValue: 128)
}

struct MemoryHeapFlags: OptionSet {
    let rawValue: UInt32
    static let deviceLocal = MemoryHeapFlags(rawValue: 1)
}

struct AccessFlags: OptionSet {
    let rawValue: UInt32
    static let indirectCommandRead = AccessFlags(rawValue: 1)
    static let indexRead = AccessFlags(rawValue: 2)
    static let vertexAttributeRead = AccessFlags(rawValue: 4)
    static let uniformRead = AccessFlags(rawValue: 8)
    static let inputAttachmentRead = AccessFlags(rawValue: 16)
    static let shaderRead = AccessFlags(rawValue: 32)
    static let shaderWrite = AccessFlags(rawValue: 64)
    static let colorAttachmentRead = AccessFlags(rawValue: 128)
    static let colorAttachmentWrite = AccessFlags(rawValue: 256)
    static let depthStencilAttachmentRead = AccessFlags(rawValue: 512)
    static let depthStencilAttachmentWrite = AccessFlags(rawValue: 1024)
    static let transferRead = AccessFlags(rawValue: 2048)
    static let transferWrite = AccessFlags(rawValue: 4096)
    static let hostRead = AccessFlags(rawValue: 8192)
    static let hostWrite = AccessFlags(rawValue: 16384)
    static let memoryRead = AccessFlags(rawValue: 32768)
    static let memoryWrite = AccessFlags(rawValue: 65536)
    static let transformFeedbackWriteEXT = AccessFlags(rawValue: 33554432)
    static let transformFeedbackCounterReadEXT = AccessFlags(rawValue: 67108864)
    static let transformFeedbackCounterWriteEXT = AccessFlags(rawValue: 134217728)
    static let conditionalRenderingReadEXT = AccessFlags(rawValue: 1048576)
    static let colorAttachmentReadNoncoherentEXT = AccessFlags(rawValue: 524288)
    static let shadingRateImageReadNV = AccessFlags(rawValue: 8388608)
    static let fragmentDensityMapReadEXT = AccessFlags(rawValue: 16777216)
    static let commandPreprocessReadNV = AccessFlags(rawValue: 131072)
    static let commandPreprocessWriteNV = AccessFlags(rawValue: 262144)
}

struct BufferUsageFlags: OptionSet {
    let rawValue: UInt32
    static let transferSrc = BufferUsageFlags(rawValue: 1)
    static let transferDst = BufferUsageFlags(rawValue: 2)
    static let uniformTexelBuffer = BufferUsageFlags(rawValue: 4)
    static let storageTexelBuffer = BufferUsageFlags(rawValue: 8)
    static let uniformBuffer = BufferUsageFlags(rawValue: 16)
    static let storageBuffer = BufferUsageFlags(rawValue: 32)
    static let indexBuffer = BufferUsageFlags(rawValue: 64)
    static let vertexBuffer = BufferUsageFlags(rawValue: 128)
    static let indirectBuffer = BufferUsageFlags(rawValue: 256)
    static let transformFeedbackBufferEXT = BufferUsageFlags(rawValue: 2048)
    static let transformFeedbackCounterBufferEXT = BufferUsageFlags(rawValue: 4096)
    static let conditionalRenderingEXT = BufferUsageFlags(rawValue: 512)
}

struct BufferCreateFlags: OptionSet {
    let rawValue: UInt32
    static let sparseBinding = BufferCreateFlags(rawValue: 1)
    static let sparseResidency = BufferCreateFlags(rawValue: 2)
    static let sparseAliased = BufferCreateFlags(rawValue: 4)
}

struct ShaderStageFlags: OptionSet {
    let rawValue: UInt32
    static let vertex = ShaderStageFlags(rawValue: 1)
    static let tessellationControl = ShaderStageFlags(rawValue: 2)
    static let tessellationEvaluation = ShaderStageFlags(rawValue: 4)
    static let geometry = ShaderStageFlags(rawValue: 8)
    static let fragment = ShaderStageFlags(rawValue: 16)
    static let compute = ShaderStageFlags(rawValue: 32)
    static let allGraphics = ShaderStageFlags(rawValue: 0x0000001F)
    static let all = ShaderStageFlags(rawValue: 0x7FFFFFFF)
    static let taskNV = ShaderStageFlags(rawValue: 64)
    static let meshNV = ShaderStageFlags(rawValue: 128)
}

struct ImageUsageFlags: OptionSet {
    let rawValue: UInt32
    static let transferSrc = ImageUsageFlags(rawValue: 1)
    static let transferDst = ImageUsageFlags(rawValue: 2)
    static let sampled = ImageUsageFlags(rawValue: 4)
    static let storage = ImageUsageFlags(rawValue: 8)
    static let colorAttachment = ImageUsageFlags(rawValue: 16)
    static let depthStencilAttachment = ImageUsageFlags(rawValue: 32)
    static let transientAttachment = ImageUsageFlags(rawValue: 64)
    static let inputAttachment = ImageUsageFlags(rawValue: 128)
    static let shadingRateImageNV = ImageUsageFlags(rawValue: 256)
    static let fragmentDensityMapEXT = ImageUsageFlags(rawValue: 512)
}

struct ImageCreateFlags: OptionSet {
    let rawValue: UInt32
    static let sparseBinding = ImageCreateFlags(rawValue: 1)
    static let sparseResidency = ImageCreateFlags(rawValue: 2)
    static let sparseAliased = ImageCreateFlags(rawValue: 4)
    static let mutableFormat = ImageCreateFlags(rawValue: 8)
    static let cubeCompatible = ImageCreateFlags(rawValue: 16)
    static let cornerSampledNV = ImageCreateFlags(rawValue: 8192)
    static let sampleLocationsCompatibleDepthEXT = ImageCreateFlags(rawValue: 4096)
    static let subsampledEXT = ImageCreateFlags(rawValue: 16384)
}

struct ImageViewCreateFlags: OptionSet {
    let rawValue: UInt32
    static let fragmentDensityMapDynamicEXT = ImageViewCreateFlags(rawValue: 1)
}

struct PipelineCreateFlags: OptionSet {
    let rawValue: UInt32
    static let disableOptimization = PipelineCreateFlags(rawValue: 1)
    static let allowDerivatives = PipelineCreateFlags(rawValue: 2)
    static let derivative = PipelineCreateFlags(rawValue: 4)
    static let deferCompileNV = PipelineCreateFlags(rawValue: 32)
    static let captureStatisticsKHR = PipelineCreateFlags(rawValue: 64)
    static let captureInternalRepresentationsKHR = PipelineCreateFlags(rawValue: 128)
    static let indirectBindableNV = PipelineCreateFlags(rawValue: 262144)
    static let failOnPipelineCompileRequiredEXT = PipelineCreateFlags(rawValue: 256)
    static let earlyReturnOnFailureEXT = PipelineCreateFlags(rawValue: 512)
}

struct ColorComponentFlags: OptionSet {
    let rawValue: UInt32
    static let r = ColorComponentFlags(rawValue: 1)
    static let g = ColorComponentFlags(rawValue: 2)
    static let b = ColorComponentFlags(rawValue: 4)
    static let a = ColorComponentFlags(rawValue: 8)
}

struct FenceCreateFlags: OptionSet {
    let rawValue: UInt32
    static let signaled = FenceCreateFlags(rawValue: 1)
}

struct SemaphoreCreateFlags: OptionSet {
    let rawValue: UInt32
}

struct FormatFeatureFlags: OptionSet {
    let rawValue: UInt32
    static let sampledImage = FormatFeatureFlags(rawValue: 1)
    static let storageImage = FormatFeatureFlags(rawValue: 2)
    static let storageImageAtomic = FormatFeatureFlags(rawValue: 4)
    static let uniformTexelBuffer = FormatFeatureFlags(rawValue: 8)
    static let storageTexelBuffer = FormatFeatureFlags(rawValue: 16)
    static let storageTexelBufferAtomic = FormatFeatureFlags(rawValue: 32)
    static let vertexBuffer = FormatFeatureFlags(rawValue: 64)
    static let colorAttachment = FormatFeatureFlags(rawValue: 128)
    static let colorAttachmentBlend = FormatFeatureFlags(rawValue: 256)
    static let depthStencilAttachment = FormatFeatureFlags(rawValue: 512)
    static let blitSrc = FormatFeatureFlags(rawValue: 1024)
    static let blitDst = FormatFeatureFlags(rawValue: 2048)
    static let sampledImageFilterLinear = FormatFeatureFlags(rawValue: 4096)
    static let sampledImageFilterCubicIMG = FormatFeatureFlags(rawValue: 8192)
    static let fragmentDensityMapEXT = FormatFeatureFlags(rawValue: 16777216)
}

struct QueryControlFlags: OptionSet {
    let rawValue: UInt32
    static let precise = QueryControlFlags(rawValue: 1)
}

struct QueryResultFlags: OptionSet {
    let rawValue: UInt32
    static let type64 = QueryResultFlags(rawValue: 1)
    static let typeWait = QueryResultFlags(rawValue: 2)
    static let typeWithAvailability = QueryResultFlags(rawValue: 4)
    static let typePartial = QueryResultFlags(rawValue: 8)
}

struct ShaderModuleCreateFlags: OptionSet {
    let rawValue: UInt32
}

struct EventCreateFlags: OptionSet {
    let rawValue: UInt32
}

struct CommandPoolCreateFlags: OptionSet {
    let rawValue: UInt32
    static let transient = CommandPoolCreateFlags(rawValue: 1)
    static let resetCommandBuffer = CommandPoolCreateFlags(rawValue: 2)
}

struct CommandPoolResetFlags: OptionSet {
    let rawValue: UInt32
    static let releaseResources = CommandPoolResetFlags(rawValue: 1)
}

struct CommandBufferResetFlags: OptionSet {
    let rawValue: UInt32
    static let releaseResources = CommandBufferResetFlags(rawValue: 1)
}

struct CommandBufferUsageFlags: OptionSet {
    let rawValue: UInt32
    static let oneTimeSubmit = CommandBufferUsageFlags(rawValue: 1)
    static let renderPassContinue = CommandBufferUsageFlags(rawValue: 2)
    static let simultaneousUse = CommandBufferUsageFlags(rawValue: 4)
}

struct QueryPipelineStatisticFlags: OptionSet {
    let rawValue: UInt32
    static let inputAssemblyVertices = QueryPipelineStatisticFlags(rawValue: 1)
    static let inputAssemblyPrimitives = QueryPipelineStatisticFlags(rawValue: 2)
    static let vertexShaderInvocations = QueryPipelineStatisticFlags(rawValue: 4)
    static let geometryShaderInvocations = QueryPipelineStatisticFlags(rawValue: 8)
    static let geometryShaderPrimitives = QueryPipelineStatisticFlags(rawValue: 16)
    static let clippingInvocations = QueryPipelineStatisticFlags(rawValue: 32)
    static let clippingPrimitives = QueryPipelineStatisticFlags(rawValue: 64)
    static let fragmentShaderInvocations = QueryPipelineStatisticFlags(rawValue: 128)
    static let tessellationControlShaderPatches = QueryPipelineStatisticFlags(rawValue: 256)
    static let tessellationEvaluationShaderInvocations = QueryPipelineStatisticFlags(rawValue: 512)
    static let computeShaderInvocations = QueryPipelineStatisticFlags(rawValue: 1024)
}

struct MemoryMapFlags: OptionSet {
    let rawValue: UInt32
}

struct ImageAspectFlags: OptionSet {
    let rawValue: UInt32
    static let color = ImageAspectFlags(rawValue: 1)
    static let depth = ImageAspectFlags(rawValue: 2)
    static let stencil = ImageAspectFlags(rawValue: 4)
    static let metadata = ImageAspectFlags(rawValue: 8)
    static let memoryPlane0EXT = ImageAspectFlags(rawValue: 128)
    static let memoryPlane1EXT = ImageAspectFlags(rawValue: 256)
    static let memoryPlane2EXT = ImageAspectFlags(rawValue: 512)
    static let memoryPlane3EXT = ImageAspectFlags(rawValue: 1024)
}

struct SparseMemoryBindFlags: OptionSet {
    let rawValue: UInt32
    static let metadata = SparseMemoryBindFlags(rawValue: 1)
}

struct SparseImageFormatFlags: OptionSet {
    let rawValue: UInt32
    static let singleMiptail = SparseImageFormatFlags(rawValue: 1)
    static let alignedMipSize = SparseImageFormatFlags(rawValue: 2)
    static let nonstandardBlockSize = SparseImageFormatFlags(rawValue: 4)
}

struct SubpassDescriptionFlags: OptionSet {
    let rawValue: UInt32
    static let perViewAttributesNVX = SubpassDescriptionFlags(rawValue: 1)
    static let perViewPositionXOnlyNVX = SubpassDescriptionFlags(rawValue: 2)
}

struct PipelineStageFlags: OptionSet {
    let rawValue: UInt32
    static let topOfPipe = PipelineStageFlags(rawValue: 1)
    static let drawIndirect = PipelineStageFlags(rawValue: 2)
    static let vertexInput = PipelineStageFlags(rawValue: 4)
    static let vertexShader = PipelineStageFlags(rawValue: 8)
    static let tessellationControlShader = PipelineStageFlags(rawValue: 16)
    static let tessellationEvaluationShader = PipelineStageFlags(rawValue: 32)
    static let geometryShader = PipelineStageFlags(rawValue: 64)
    static let fragmentShader = PipelineStageFlags(rawValue: 128)
    static let earlyFragmentTests = PipelineStageFlags(rawValue: 256)
    static let lateFragmentTests = PipelineStageFlags(rawValue: 512)
    static let colorAttachmentOutput = PipelineStageFlags(rawValue: 1024)
    static let computeShader = PipelineStageFlags(rawValue: 2048)
    static let transfer = PipelineStageFlags(rawValue: 4096)
    static let bottomOfPipe = PipelineStageFlags(rawValue: 8192)
    static let host = PipelineStageFlags(rawValue: 16384)
    static let allGraphics = PipelineStageFlags(rawValue: 32768)
    static let allCommands = PipelineStageFlags(rawValue: 65536)
    static let transformFeedbackEXT = PipelineStageFlags(rawValue: 16777216)
    static let conditionalRenderingEXT = PipelineStageFlags(rawValue: 262144)
    static let shadingRateImageNV = PipelineStageFlags(rawValue: 4194304)
    static let taskShaderNV = PipelineStageFlags(rawValue: 524288)
    static let meshShaderNV = PipelineStageFlags(rawValue: 1048576)
    static let fragmentDensityProcessEXT = PipelineStageFlags(rawValue: 8388608)
    static let commandPreprocessNV = PipelineStageFlags(rawValue: 131072)
}

struct SampleCountFlags: OptionSet {
    let rawValue: UInt32
    static let type1 = SampleCountFlags(rawValue: 1)
    static let type2 = SampleCountFlags(rawValue: 2)
    static let type4 = SampleCountFlags(rawValue: 4)
    static let type8 = SampleCountFlags(rawValue: 8)
    static let type16 = SampleCountFlags(rawValue: 16)
    static let type32 = SampleCountFlags(rawValue: 32)
    static let type64 = SampleCountFlags(rawValue: 64)
}

struct AttachmentDescriptionFlags: OptionSet {
    let rawValue: UInt32
    static let mayAlias = AttachmentDescriptionFlags(rawValue: 1)
}

struct StencilFaceFlags: OptionSet {
    let rawValue: UInt32
    static let front = StencilFaceFlags(rawValue: 1)
    static let back = StencilFaceFlags(rawValue: 2)
    static let frontAndBack = StencilFaceFlags(rawValue: 0x00000003)
}

struct CullModeFlags: OptionSet {
    let rawValue: UInt32
    static let none = CullModeFlags(rawValue: 0)
    static let front = CullModeFlags(rawValue: 1)
    static let back = CullModeFlags(rawValue: 2)
    static let frontAndBack = CullModeFlags(rawValue: 0x00000003)
}

struct DescriptorPoolCreateFlags: OptionSet {
    let rawValue: UInt32
    static let freeDescriptorSet = DescriptorPoolCreateFlags(rawValue: 1)
}

struct DescriptorPoolResetFlags: OptionSet {
    let rawValue: UInt32
}

struct DependencyFlags: OptionSet {
    let rawValue: UInt32
    static let byRegion = DependencyFlags(rawValue: 1)
}

struct SubgroupFeatureFlags: OptionSet {
    let rawValue: UInt32
    static let basic = SubgroupFeatureFlags(rawValue: 1)
    static let vote = SubgroupFeatureFlags(rawValue: 2)
    static let arithmetic = SubgroupFeatureFlags(rawValue: 4)
    static let ballot = SubgroupFeatureFlags(rawValue: 8)
    static let shuffle = SubgroupFeatureFlags(rawValue: 16)
    static let shuffleRelative = SubgroupFeatureFlags(rawValue: 32)
    static let clustered = SubgroupFeatureFlags(rawValue: 64)
    static let quad = SubgroupFeatureFlags(rawValue: 128)
    static let partitionedNV = SubgroupFeatureFlags(rawValue: 256)
}

struct IndirectCommandsLayoutUsageFlagsNV: OptionSet {
    let rawValue: UInt32
    static let explicitPreprocess = IndirectCommandsLayoutUsageFlagsNV(rawValue: 1)
    static let indexedSequences = IndirectCommandsLayoutUsageFlagsNV(rawValue: 2)
    static let unorderedSequences = IndirectCommandsLayoutUsageFlagsNV(rawValue: 4)
}

struct IndirectStateFlagsNV: OptionSet {
    let rawValue: UInt32
    static let flagFrontface = IndirectStateFlagsNV(rawValue: 1)
}

struct DescriptorUpdateTemplateCreateFlags: OptionSet {
    let rawValue: UInt32
}

struct PipelineCreationFeedbackFlagsEXT: OptionSet {
    let rawValue: UInt32
    static let valid = PipelineCreationFeedbackFlagsEXT(rawValue: 1)
    static let applicationPipelineCacheHit = PipelineCreationFeedbackFlagsEXT(rawValue: 2)
    static let basePipelineAcceleration = PipelineCreationFeedbackFlagsEXT(rawValue: 4)
}

struct PerformanceCounterDescriptionFlagsKHR: OptionSet {
    let rawValue: UInt32
    static let performanceImpacting = PerformanceCounterDescriptionFlagsKHR(rawValue: 1)
    static let concurrentlyImpacted = PerformanceCounterDescriptionFlagsKHR(rawValue: 2)
}

struct AcquireProfilingLockFlagsKHR: OptionSet {
    let rawValue: UInt32
}

struct SemaphoreWaitFlags: OptionSet {
    let rawValue: UInt32
    static let any = SemaphoreWaitFlags(rawValue: 1)
}

struct PipelineCompilerControlFlagsAMD: OptionSet {
    let rawValue: UInt32
}

struct ShaderCorePropertiesFlagsAMD: OptionSet {
    let rawValue: UInt32
}

struct DeviceDiagnosticsConfigFlagsNV: OptionSet {
    let rawValue: UInt32
    static let enableShaderDebugInfo = DeviceDiagnosticsConfigFlagsNV(rawValue: 1)
    static let enableResourceTracking = DeviceDiagnosticsConfigFlagsNV(rawValue: 2)
    static let enableAutomaticCheckpoints = DeviceDiagnosticsConfigFlagsNV(rawValue: 4)
}

struct CompositeAlphaFlagsKHR: OptionSet {
    let rawValue: UInt32
    static let opaque = CompositeAlphaFlagsKHR(rawValue: 1)
    static let preMultiplied = CompositeAlphaFlagsKHR(rawValue: 2)
    static let postMultiplied = CompositeAlphaFlagsKHR(rawValue: 4)
    static let inherit = CompositeAlphaFlagsKHR(rawValue: 8)
}

struct DisplayPlaneAlphaFlagsKHR: OptionSet {
    let rawValue: UInt32
    static let opaque = DisplayPlaneAlphaFlagsKHR(rawValue: 1)
    static let global = DisplayPlaneAlphaFlagsKHR(rawValue: 2)
    static let perPixel = DisplayPlaneAlphaFlagsKHR(rawValue: 4)
    static let perPixelPremultiplied = DisplayPlaneAlphaFlagsKHR(rawValue: 8)
}

struct SurfaceTransformFlagsKHR: OptionSet {
    let rawValue: UInt32
    static let identity = SurfaceTransformFlagsKHR(rawValue: 1)
    static let rotate90 = SurfaceTransformFlagsKHR(rawValue: 2)
    static let rotate180 = SurfaceTransformFlagsKHR(rawValue: 4)
    static let rotate270 = SurfaceTransformFlagsKHR(rawValue: 8)
    static let horizontalMirror = SurfaceTransformFlagsKHR(rawValue: 16)
    static let horizontalMirrorRotate90 = SurfaceTransformFlagsKHR(rawValue: 32)
    static let horizontalMirrorRotate180 = SurfaceTransformFlagsKHR(rawValue: 64)
    static let horizontalMirrorRotate270 = SurfaceTransformFlagsKHR(rawValue: 128)
    static let inherit = SurfaceTransformFlagsKHR(rawValue: 256)
}

struct SwapchainCreateFlagsKHR: OptionSet {
    let rawValue: UInt32
    static let splitInstanceBindRegions = SwapchainCreateFlagsKHR(rawValue: 1)
    static let protected = SwapchainCreateFlagsKHR(rawValue: 2)
    static let mutableFormat = SwapchainCreateFlagsKHR(rawValue: 4)
}

struct DisplayModeCreateFlagsKHR: OptionSet {
    let rawValue: UInt32
}

struct DisplaySurfaceCreateFlagsKHR: OptionSet {
    let rawValue: UInt32
}

struct HeadlessSurfaceCreateFlagsEXT: OptionSet {
    let rawValue: UInt32
}

struct PeerMemoryFeatureFlags: OptionSet {
    let rawValue: UInt32
    static let copySrc = PeerMemoryFeatureFlags(rawValue: 1)
    static let copyDst = PeerMemoryFeatureFlags(rawValue: 2)
    static let genericSrc = PeerMemoryFeatureFlags(rawValue: 4)
    static let genericDst = PeerMemoryFeatureFlags(rawValue: 8)
}

struct MemoryAllocateFlags: OptionSet {
    let rawValue: UInt32
    static let deviceMask = MemoryAllocateFlags(rawValue: 1)
}

struct DeviceGroupPresentModeFlagsKHR: OptionSet {
    let rawValue: UInt32
    static let local = DeviceGroupPresentModeFlagsKHR(rawValue: 1)
    static let remote = DeviceGroupPresentModeFlagsKHR(rawValue: 2)
    static let sum = DeviceGroupPresentModeFlagsKHR(rawValue: 4)
    static let localMultiDevice = DeviceGroupPresentModeFlagsKHR(rawValue: 8)
}

struct DebugReportFlagsEXT: OptionSet {
    let rawValue: UInt32
    static let information = DebugReportFlagsEXT(rawValue: 1)
    static let warning = DebugReportFlagsEXT(rawValue: 2)
    static let performanceWarning = DebugReportFlagsEXT(rawValue: 4)
    static let error = DebugReportFlagsEXT(rawValue: 8)
    static let debug = DebugReportFlagsEXT(rawValue: 16)
}

struct CommandPoolTrimFlags: OptionSet {
    let rawValue: UInt32
}

struct ExternalMemoryHandleTypeFlagsNV: OptionSet {
    let rawValue: UInt32
    static let opaqueWin32 = ExternalMemoryHandleTypeFlagsNV(rawValue: 1)
    static let opaqueWin32Kmt = ExternalMemoryHandleTypeFlagsNV(rawValue: 2)
    static let d3d11Image = ExternalMemoryHandleTypeFlagsNV(rawValue: 4)
    static let d3d11ImageKmt = ExternalMemoryHandleTypeFlagsNV(rawValue: 8)
}

struct ExternalMemoryFeatureFlagsNV: OptionSet {
    let rawValue: UInt32
    static let dedicatedOnly = ExternalMemoryFeatureFlagsNV(rawValue: 1)
    static let exportable = ExternalMemoryFeatureFlagsNV(rawValue: 2)
    static let importable = ExternalMemoryFeatureFlagsNV(rawValue: 4)
}

struct ExternalMemoryHandleTypeFlags: OptionSet {
    let rawValue: UInt32
    static let opaqueFd = ExternalMemoryHandleTypeFlags(rawValue: 1)
    static let opaqueWin32 = ExternalMemoryHandleTypeFlags(rawValue: 2)
    static let opaqueWin32Kmt = ExternalMemoryHandleTypeFlags(rawValue: 4)
    static let d3d11Texture = ExternalMemoryHandleTypeFlags(rawValue: 8)
    static let d3d11TextureKmt = ExternalMemoryHandleTypeFlags(rawValue: 16)
    static let d3d12Heap = ExternalMemoryHandleTypeFlags(rawValue: 32)
    static let d3d12Resource = ExternalMemoryHandleTypeFlags(rawValue: 64)
    static let dmaBufEXT = ExternalMemoryHandleTypeFlags(rawValue: 512)
    static let hostAllocationEXT = ExternalMemoryHandleTypeFlags(rawValue: 128)
    static let hostMappedForeignMemoryEXT = ExternalMemoryHandleTypeFlags(rawValue: 256)
}

struct ExternalMemoryFeatureFlags: OptionSet {
    let rawValue: UInt32
    static let dedicatedOnly = ExternalMemoryFeatureFlags(rawValue: 1)
    static let exportable = ExternalMemoryFeatureFlags(rawValue: 2)
    static let importable = ExternalMemoryFeatureFlags(rawValue: 4)
}

struct ExternalSemaphoreHandleTypeFlags: OptionSet {
    let rawValue: UInt32
    static let opaqueFd = ExternalSemaphoreHandleTypeFlags(rawValue: 1)
    static let opaqueWin32 = ExternalSemaphoreHandleTypeFlags(rawValue: 2)
    static let opaqueWin32Kmt = ExternalSemaphoreHandleTypeFlags(rawValue: 4)
    static let d3d12Fence = ExternalSemaphoreHandleTypeFlags(rawValue: 8)
    static let syncFd = ExternalSemaphoreHandleTypeFlags(rawValue: 16)
}

struct ExternalSemaphoreFeatureFlags: OptionSet {
    let rawValue: UInt32
    static let exportable = ExternalSemaphoreFeatureFlags(rawValue: 1)
    static let importable = ExternalSemaphoreFeatureFlags(rawValue: 2)
}

struct SemaphoreImportFlags: OptionSet {
    let rawValue: UInt32
    static let temporary = SemaphoreImportFlags(rawValue: 1)
}

struct ExternalFenceHandleTypeFlags: OptionSet {
    let rawValue: UInt32
    static let opaqueFd = ExternalFenceHandleTypeFlags(rawValue: 1)
    static let opaqueWin32 = ExternalFenceHandleTypeFlags(rawValue: 2)
    static let opaqueWin32Kmt = ExternalFenceHandleTypeFlags(rawValue: 4)
    static let syncFd = ExternalFenceHandleTypeFlags(rawValue: 8)
}

struct ExternalFenceFeatureFlags: OptionSet {
    let rawValue: UInt32
    static let exportable = ExternalFenceFeatureFlags(rawValue: 1)
    static let importable = ExternalFenceFeatureFlags(rawValue: 2)
}

struct FenceImportFlags: OptionSet {
    let rawValue: UInt32
    static let temporary = FenceImportFlags(rawValue: 1)
}

struct SurfaceCounterFlagsEXT: OptionSet {
    let rawValue: UInt32
    static let vblank = SurfaceCounterFlagsEXT(rawValue: 1)
}

struct PipelineViewportSwizzleStateCreateFlagsNV: OptionSet {
    let rawValue: UInt32
}

struct PipelineDiscardRectangleStateCreateFlagsEXT: OptionSet {
    let rawValue: UInt32
}

struct PipelineCoverageToColorStateCreateFlagsNV: OptionSet {
    let rawValue: UInt32
}

struct PipelineCoverageModulationStateCreateFlagsNV: OptionSet {
    let rawValue: UInt32
}

struct PipelineCoverageReductionStateCreateFlagsNV: OptionSet {
    let rawValue: UInt32
}

struct ValidationCacheCreateFlagsEXT: OptionSet {
    let rawValue: UInt32
}

struct DebugUtilsMessageSeverityFlagsEXT: OptionSet {
    let rawValue: UInt32
    static let verbose = DebugUtilsMessageSeverityFlagsEXT(rawValue: 1)
    static let info = DebugUtilsMessageSeverityFlagsEXT(rawValue: 16)
    static let warning = DebugUtilsMessageSeverityFlagsEXT(rawValue: 256)
    static let error = DebugUtilsMessageSeverityFlagsEXT(rawValue: 4096)
}

struct DebugUtilsMessageTypeFlagsEXT: OptionSet {
    let rawValue: UInt32
    static let general = DebugUtilsMessageTypeFlagsEXT(rawValue: 1)
    static let validation = DebugUtilsMessageTypeFlagsEXT(rawValue: 2)
    static let performance = DebugUtilsMessageTypeFlagsEXT(rawValue: 4)
}

struct DebugUtilsMessengerCreateFlagsEXT: OptionSet {
    let rawValue: UInt32
}

struct DebugUtilsMessengerCallbackDataFlagsEXT: OptionSet {
    let rawValue: UInt32
}

struct PipelineRasterizationConservativeStateCreateFlagsEXT: OptionSet {
    let rawValue: UInt32
}

struct DescriptorBindingFlags: OptionSet {
    let rawValue: UInt32
    static let updateAfterBind = DescriptorBindingFlags(rawValue: 1)
    static let updateUnusedWhilePending = DescriptorBindingFlags(rawValue: 2)
    static let partiallyBound = DescriptorBindingFlags(rawValue: 4)
    static let variableDescriptorCount = DescriptorBindingFlags(rawValue: 8)
}

struct ConditionalRenderingFlagsEXT: OptionSet {
    let rawValue: UInt32
    static let inverted = ConditionalRenderingFlagsEXT(rawValue: 1)
}

struct ResolveModeFlags: OptionSet {
    let rawValue: UInt32
    static let none = ResolveModeFlags(rawValue: 0)
    static let sampleZero = ResolveModeFlags(rawValue: 1)
    static let average = ResolveModeFlags(rawValue: 2)
    static let min = ResolveModeFlags(rawValue: 4)
    static let max = ResolveModeFlags(rawValue: 8)
}

struct PipelineRasterizationStateStreamCreateFlagsEXT: OptionSet {
    let rawValue: UInt32
}

struct PipelineRasterizationDepthClipStateCreateFlagsEXT: OptionSet {
    let rawValue: UInt32
}

struct ToolPurposeFlagsEXT: OptionSet {
    let rawValue: UInt32
    static let validation = ToolPurposeFlagsEXT(rawValue: 1)
    static let profiling = ToolPurposeFlagsEXT(rawValue: 2)
    static let tracing = ToolPurposeFlagsEXT(rawValue: 4)
    static let additionalFeatures = ToolPurposeFlagsEXT(rawValue: 8)
    static let modifyingFeatures = ToolPurposeFlagsEXT(rawValue: 16)
    static let debugReporting = ToolPurposeFlagsEXT(rawValue: 32)
    static let debugMarkers = ToolPurposeFlagsEXT(rawValue: 64)
}

