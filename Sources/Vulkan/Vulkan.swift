import CVulkan

enum ImageLayout: UInt32 {
    case undefined = 0
    case general = 1
    case colorAttachmentOptimal = 2
    case depthStencilAttachmentOptimal = 3
    case depthStencilReadOnlyOptimal = 4
    case shaderReadOnlyOptimal = 5
    case transferSrcOptimal = 6
    case transferDstOptimal = 7
    case preinitialized = 8
    case presentSrcKHR = 1000001002
    case sharedPresentKHR = 1000111000
    case shadingRateOptimalNV = 1000164003
    case fragmentDensityMapOptimalEXT = 1000218000
}

enum AttachmentLoadOp: UInt32 {
    case load = 0
    case clear = 1
    case dontCare = 2
}

enum AttachmentStoreOp: UInt32 {
    case store = 0
    case dontCare = 1
}

enum ImageType: UInt32 {
    case type1d = 0
    case type2d = 1
    case type3d = 2
}

enum ImageTiling: UInt32 {
    case optimal = 0
    case linear = 1
    case drmFormatModifierEXT = 1000158000
}

enum ImageViewType: UInt32 {
    case type1d = 0
    case type2d = 1
    case type3d = 2
    case typeCube = 3
    case type1dArray = 4
    case type2dArray = 5
    case typeCubeArray = 6
}

enum CommandBufferLevel: UInt32 {
    case primary = 0
    case secondary = 1
}

enum ComponentSwizzle: UInt32 {
    case identity = 0
    case zero = 1
    case one = 2
    case r = 3
    case g = 4
    case b = 5
    case a = 6
}

enum DescriptorType: UInt32 {
    case sampler = 0
    case combinedImageSampler = 1
    case sampledImage = 2
    case storageImage = 3
    case uniformTexelBuffer = 4
    case storageTexelBuffer = 5
    case uniformBuffer = 6
    case storageBuffer = 7
    case uniformBufferDynamic = 8
    case storageBufferDynamic = 9
    case inputAttachment = 10
    case inlineUniformBlockEXT = 1000138000
}

enum QueryType: UInt32 {
    case occlusion = 0
    case pipelineStatistics = 1
    case timestamp = 2
    case transformFeedbackStreamEXT = 1000028004
    case performanceQueryKHR = 1000116000
    case performanceQueryINTEL = 1000210000
}

enum BorderColor: UInt32 {
    case floatTransparentBlack = 0
    case intTransparentBlack = 1
    case floatOpaqueBlack = 2
    case intOpaqueBlack = 3
    case floatOpaqueWhite = 4
    case intOpaqueWhite = 5
}

enum PipelineBindPoint: UInt32 {
    case graphics = 0
    case compute = 1
}

enum PipelineCacheHeaderVersion: UInt32 {
    case one = 1
}

enum PrimitiveTopology: UInt32 {
    case pointList = 0
    case lineList = 1
    case lineStrip = 2
    case triangleList = 3
    case triangleStrip = 4
    case triangleFan = 5
    case lineListWithAdjacency = 6
    case lineStripWithAdjacency = 7
    case triangleListWithAdjacency = 8
    case triangleStripWithAdjacency = 9
    case patchList = 10
}

enum SharingMode: UInt32 {
    case exclusive = 0
    case concurrent = 1
}

enum IndexType: UInt32 {
    case uint16 = 0
    case uint32 = 1
    case uint8EXT = 1000265000
}

enum Filter: UInt32 {
    case nearest = 0
    case linear = 1
    case cubicIMG = 1000015000
}

enum SamplerMipmapMode: UInt32 {
    case nearest = 0
    case linear = 1
}

enum SamplerAddressMode: UInt32 {
    case `repeat` = 0
    case mirroredRepeat = 1
    case clampToEdge = 2
    case clampToBorder = 3
    case mirrorClampToEdge = 4
}

enum CompareOp: UInt32 {
    case never = 0
    case less = 1
    case equal = 2
    case lessOrEqual = 3
    case greater = 4
    case notEqual = 5
    case greaterOrEqual = 6
    case always = 7
}

enum PolygonMode: UInt32 {
    case fill = 0
    case line = 1
    case point = 2
    case fillRectangleNV = 1000153000
}

enum FrontFace: UInt32 {
    case counterClockwise = 0
    case clockwise = 1
}

enum BlendFactor: UInt32 {
    case zero = 0
    case one = 1
    case srcColor = 2
    case oneMinusSrcColor = 3
    case dstColor = 4
    case oneMinusDstColor = 5
    case srcAlpha = 6
    case oneMinusSrcAlpha = 7
    case dstAlpha = 8
    case oneMinusDstAlpha = 9
    case constantColor = 10
    case oneMinusConstantColor = 11
    case constantAlpha = 12
    case oneMinusConstantAlpha = 13
    case srcAlphaSaturate = 14
    case src1Color = 15
    case oneMinusSrc1Color = 16
    case src1Alpha = 17
    case oneMinusSrc1Alpha = 18
}

enum BlendOp: UInt32 {
    case add = 0
    case subtract = 1
    case reverseSubtract = 2
    case min = 3
    case max = 4
    case zeroEXT = 1000148000
    case srcEXT = 1000148001
    case dstEXT = 1000148002
    case srcOverEXT = 1000148003
    case dstOverEXT = 1000148004
    case srcInEXT = 1000148005
    case dstInEXT = 1000148006
    case srcOutEXT = 1000148007
    case dstOutEXT = 1000148008
    case srcAtopEXT = 1000148009
    case dstAtopEXT = 1000148010
    case xorEXT = 1000148011
    case multiplyEXT = 1000148012
    case screenEXT = 1000148013
    case overlayEXT = 1000148014
    case darkenEXT = 1000148015
    case lightenEXT = 1000148016
    case colordodgeEXT = 1000148017
    case colorburnEXT = 1000148018
    case hardlightEXT = 1000148019
    case softlightEXT = 1000148020
    case differenceEXT = 1000148021
    case exclusionEXT = 1000148022
    case invertEXT = 1000148023
    case invertRgbEXT = 1000148024
    case lineardodgeEXT = 1000148025
    case linearburnEXT = 1000148026
    case vividlightEXT = 1000148027
    case linearlightEXT = 1000148028
    case pinlightEXT = 1000148029
    case hardmixEXT = 1000148030
    case hslHueEXT = 1000148031
    case hslSaturationEXT = 1000148032
    case hslColorEXT = 1000148033
    case hslLuminosityEXT = 1000148034
    case plusEXT = 1000148035
    case plusClampedEXT = 1000148036
    case plusClampedAlphaEXT = 1000148037
    case plusDarkerEXT = 1000148038
    case minusEXT = 1000148039
    case minusClampedEXT = 1000148040
    case contrastEXT = 1000148041
    case invertOvgEXT = 1000148042
    case redEXT = 1000148043
    case greenEXT = 1000148044
    case blueEXT = 1000148045
}

enum StencilOp: UInt32 {
    case keep = 0
    case zero = 1
    case replace = 2
    case incrementAndClamp = 3
    case decrementAndClamp = 4
    case invert = 5
    case incrementAndWrap = 6
    case decrementAndWrap = 7
}

enum LogicOp: UInt32 {
    case clear = 0
    case and = 1
    case andReverse = 2
    case copy = 3
    case andInverted = 4
    case noOp = 5
    case xor = 6
    case or = 7
    case nor = 8
    case equivalent = 9
    case invert = 10
    case orReverse = 11
    case copyInverted = 12
    case orInverted = 13
    case nand = 14
    case set = 15
}

enum InternalAllocationType: UInt32 {
    case executable = 0
}

enum SystemAllocationScope: UInt32 {
    case command = 0
    case object = 1
    case cache = 2
    case device = 3
    case instance = 4
}

enum PhysicalDeviceType: UInt32 {
    case other = 0
    case integratedGpu = 1
    case discreteGpu = 2
    case virtualGpu = 3
    case cpu = 4
}

enum VertexInputRate: UInt32 {
    case vertex = 0
    case instance = 1
}

enum Format: UInt32 {
    case undefined = 0
    case r4g4UnormPack8 = 1
    case r4g4b4a4UnormPack16 = 2
    case b4g4r4a4UnormPack16 = 3
    case r5g6b5UnormPack16 = 4
    case b5g6r5UnormPack16 = 5
    case r5g5b5a1UnormPack16 = 6
    case b5g5r5a1UnormPack16 = 7
    case a1r5g5b5UnormPack16 = 8
    case r8Unorm = 9
    case r8Snorm = 10
    case r8Uscaled = 11
    case r8Sscaled = 12
    case r8Uint = 13
    case r8Sint = 14
    case r8Srgb = 15
    case r8g8Unorm = 16
    case r8g8Snorm = 17
    case r8g8Uscaled = 18
    case r8g8Sscaled = 19
    case r8g8Uint = 20
    case r8g8Sint = 21
    case r8g8Srgb = 22
    case r8g8b8Unorm = 23
    case r8g8b8Snorm = 24
    case r8g8b8Uscaled = 25
    case r8g8b8Sscaled = 26
    case r8g8b8Uint = 27
    case r8g8b8Sint = 28
    case r8g8b8Srgb = 29
    case b8g8r8Unorm = 30
    case b8g8r8Snorm = 31
    case b8g8r8Uscaled = 32
    case b8g8r8Sscaled = 33
    case b8g8r8Uint = 34
    case b8g8r8Sint = 35
    case b8g8r8Srgb = 36
    case r8g8b8a8Unorm = 37
    case r8g8b8a8Snorm = 38
    case r8g8b8a8Uscaled = 39
    case r8g8b8a8Sscaled = 40
    case r8g8b8a8Uint = 41
    case r8g8b8a8Sint = 42
    case r8g8b8a8Srgb = 43
    case b8g8r8a8Unorm = 44
    case b8g8r8a8Snorm = 45
    case b8g8r8a8Uscaled = 46
    case b8g8r8a8Sscaled = 47
    case b8g8r8a8Uint = 48
    case b8g8r8a8Sint = 49
    case b8g8r8a8Srgb = 50
    case a8b8g8r8UnormPack32 = 51
    case a8b8g8r8SnormPack32 = 52
    case a8b8g8r8UscaledPack32 = 53
    case a8b8g8r8SscaledPack32 = 54
    case a8b8g8r8UintPack32 = 55
    case a8b8g8r8SintPack32 = 56
    case a8b8g8r8SrgbPack32 = 57
    case a2r10g10b10UnormPack32 = 58
    case a2r10g10b10SnormPack32 = 59
    case a2r10g10b10UscaledPack32 = 60
    case a2r10g10b10SscaledPack32 = 61
    case a2r10g10b10UintPack32 = 62
    case a2r10g10b10SintPack32 = 63
    case a2b10g10r10UnormPack32 = 64
    case a2b10g10r10SnormPack32 = 65
    case a2b10g10r10UscaledPack32 = 66
    case a2b10g10r10SscaledPack32 = 67
    case a2b10g10r10UintPack32 = 68
    case a2b10g10r10SintPack32 = 69
    case r16Unorm = 70
    case r16Snorm = 71
    case r16Uscaled = 72
    case r16Sscaled = 73
    case r16Uint = 74
    case r16Sint = 75
    case r16Sfloat = 76
    case r16g16Unorm = 77
    case r16g16Snorm = 78
    case r16g16Uscaled = 79
    case r16g16Sscaled = 80
    case r16g16Uint = 81
    case r16g16Sint = 82
    case r16g16Sfloat = 83
    case r16g16b16Unorm = 84
    case r16g16b16Snorm = 85
    case r16g16b16Uscaled = 86
    case r16g16b16Sscaled = 87
    case r16g16b16Uint = 88
    case r16g16b16Sint = 89
    case r16g16b16Sfloat = 90
    case r16g16b16a16Unorm = 91
    case r16g16b16a16Snorm = 92
    case r16g16b16a16Uscaled = 93
    case r16g16b16a16Sscaled = 94
    case r16g16b16a16Uint = 95
    case r16g16b16a16Sint = 96
    case r16g16b16a16Sfloat = 97
    case r32Uint = 98
    case r32Sint = 99
    case r32Sfloat = 100
    case r32g32Uint = 101
    case r32g32Sint = 102
    case r32g32Sfloat = 103
    case r32g32b32Uint = 104
    case r32g32b32Sint = 105
    case r32g32b32Sfloat = 106
    case r32g32b32a32Uint = 107
    case r32g32b32a32Sint = 108
    case r32g32b32a32Sfloat = 109
    case r64Uint = 110
    case r64Sint = 111
    case r64Sfloat = 112
    case r64g64Uint = 113
    case r64g64Sint = 114
    case r64g64Sfloat = 115
    case r64g64b64Uint = 116
    case r64g64b64Sint = 117
    case r64g64b64Sfloat = 118
    case r64g64b64a64Uint = 119
    case r64g64b64a64Sint = 120
    case r64g64b64a64Sfloat = 121
    case b10g11r11UfloatPack32 = 122
    case e5b9g9r9UfloatPack32 = 123
    case d16Unorm = 124
    case x8D24UnormPack32 = 125
    case d32Sfloat = 126
    case s8Uint = 127
    case d16UnormS8Uint = 128
    case d24UnormS8Uint = 129
    case d32SfloatS8Uint = 130
    case bc1RgbUnormBlock = 131
    case bc1RgbSrgbBlock = 132
    case bc1RgbaUnormBlock = 133
    case bc1RgbaSrgbBlock = 134
    case bc2UnormBlock = 135
    case bc2SrgbBlock = 136
    case bc3UnormBlock = 137
    case bc3SrgbBlock = 138
    case bc4UnormBlock = 139
    case bc4SnormBlock = 140
    case bc5UnormBlock = 141
    case bc5SnormBlock = 142
    case bc6hUfloatBlock = 143
    case bc6hSfloatBlock = 144
    case bc7UnormBlock = 145
    case bc7SrgbBlock = 146
    case etc2R8g8b8UnormBlock = 147
    case etc2R8g8b8SrgbBlock = 148
    case etc2R8g8b8a1UnormBlock = 149
    case etc2R8g8b8a1SrgbBlock = 150
    case etc2R8g8b8a8UnormBlock = 151
    case etc2R8g8b8a8SrgbBlock = 152
    case eacR11UnormBlock = 153
    case eacR11SnormBlock = 154
    case eacR11g11UnormBlock = 155
    case eacR11g11SnormBlock = 156
    case astc4x4UnormBlock = 157
    case astc4x4SrgbBlock = 158
    case astc5x4UnormBlock = 159
    case astc5x4SrgbBlock = 160
    case astc5x5UnormBlock = 161
    case astc5x5SrgbBlock = 162
    case astc6x5UnormBlock = 163
    case astc6x5SrgbBlock = 164
    case astc6x6UnormBlock = 165
    case astc6x6SrgbBlock = 166
    case astc8x5UnormBlock = 167
    case astc8x5SrgbBlock = 168
    case astc8x6UnormBlock = 169
    case astc8x6SrgbBlock = 170
    case astc8x8UnormBlock = 171
    case astc8x8SrgbBlock = 172
    case astc10x5UnormBlock = 173
    case astc10x5SrgbBlock = 174
    case astc10x6UnormBlock = 175
    case astc10x6SrgbBlock = 176
    case astc10x8UnormBlock = 177
    case astc10x8SrgbBlock = 178
    case astc10x10UnormBlock = 179
    case astc10x10SrgbBlock = 180
    case astc12x10UnormBlock = 181
    case astc12x10SrgbBlock = 182
    case astc12x12UnormBlock = 183
    case astc12x12SrgbBlock = 184
    case pvrtc12bppUnormBlockIMG = 1000054000
    case pvrtc14bppUnormBlockIMG = 1000054001
    case pvrtc22bppUnormBlockIMG = 1000054002
    case pvrtc24bppUnormBlockIMG = 1000054003
    case pvrtc12bppSrgbBlockIMG = 1000054004
    case pvrtc14bppSrgbBlockIMG = 1000054005
    case pvrtc22bppSrgbBlockIMG = 1000054006
    case pvrtc24bppSrgbBlockIMG = 1000054007
    case astc4x4SfloatBlockEXT = 1000066000
    case astc5x4SfloatBlockEXT = 1000066001
    case astc5x5SfloatBlockEXT = 1000066002
    case astc6x5SfloatBlockEXT = 1000066003
    case astc6x6SfloatBlockEXT = 1000066004
    case astc8x5SfloatBlockEXT = 1000066005
    case astc8x6SfloatBlockEXT = 1000066006
    case astc8x8SfloatBlockEXT = 1000066007
    case astc10x5SfloatBlockEXT = 1000066008
    case astc10x6SfloatBlockEXT = 1000066009
    case astc10x8SfloatBlockEXT = 1000066010
    case astc10x10SfloatBlockEXT = 1000066011
    case astc12x10SfloatBlockEXT = 1000066012
    case astc12x12SfloatBlockEXT = 1000066013
}

enum StructureType: UInt32 {
    case applicationInfo = 0
    case instanceCreateInfo = 1
    case deviceQueueCreateInfo = 2
    case deviceCreateInfo = 3
    case submitInfo = 4
    case memoryAllocateInfo = 5
    case mappedMemoryRange = 6
    case bindSparseInfo = 7
    case fenceCreateInfo = 8
    case semaphoreCreateInfo = 9
    case eventCreateInfo = 10
    case queryPoolCreateInfo = 11
    case bufferCreateInfo = 12
    case bufferViewCreateInfo = 13
    case imageCreateInfo = 14
    case imageViewCreateInfo = 15
    case shaderModuleCreateInfo = 16
    case pipelineCacheCreateInfo = 17
    case pipelineShaderStageCreateInfo = 18
    case pipelineVertexInputStateCreateInfo = 19
    case pipelineInputAssemblyStateCreateInfo = 20
    case pipelineTessellationStateCreateInfo = 21
    case pipelineViewportStateCreateInfo = 22
    case pipelineRasterizationStateCreateInfo = 23
    case pipelineMultisampleStateCreateInfo = 24
    case pipelineDepthStencilStateCreateInfo = 25
    case pipelineColorBlendStateCreateInfo = 26
    case pipelineDynamicStateCreateInfo = 27
    case graphicsPipelineCreateInfo = 28
    case computePipelineCreateInfo = 29
    case pipelineLayoutCreateInfo = 30
    case samplerCreateInfo = 31
    case descriptorSetLayoutCreateInfo = 32
    case descriptorPoolCreateInfo = 33
    case descriptorSetAllocateInfo = 34
    case writeDescriptorSet = 35
    case copyDescriptorSet = 36
    case framebufferCreateInfo = 37
    case renderPassCreateInfo = 38
    case commandPoolCreateInfo = 39
    case commandBufferAllocateInfo = 40
    case commandBufferInheritanceInfo = 41
    case commandBufferBeginInfo = 42
    case renderPassBeginInfo = 43
    case bufferMemoryBarrier = 44
    case imageMemoryBarrier = 45
    case memoryBarrier = 46
    case loaderInstanceCreateInfo = 47
    case loaderDeviceCreateInfo = 48
    case swapchainCreateInfoKHR = 1000001000
    case presentInfoKHR = 1000001001
    case deviceGroupPresentCapabilitiesKHR = 1000060007
    case imageSwapchainCreateInfoKHR = 1000060008
    case bindImageMemorySwapchainInfoKHR = 1000060009
    case acquireNextImageInfoKHR = 1000060010
    case deviceGroupPresentInfoKHR = 1000060011
    case deviceGroupSwapchainCreateInfoKHR = 1000060012
    case displayModeCreateInfoKHR = 1000002000
    case displaySurfaceCreateInfoKHR = 1000002001
    case displayPresentInfoKHR = 1000003000
    case debugReportCallbackCreateInfoEXT = 1000011000
    case pipelineRasterizationStateRasterizationOrderAMD = 1000018000
    case debugMarkerObjectNameInfoEXT = 1000022000
    case debugMarkerObjectTagInfoEXT = 1000022001
    case debugMarkerMarkerInfoEXT = 1000022002
    case dedicatedAllocationImageCreateInfoNV = 1000026000
    case dedicatedAllocationBufferCreateInfoNV = 1000026001
    case dedicatedAllocationMemoryAllocateInfoNV = 1000026002
    case physicalDeviceTransformFeedbackFeaturesEXT = 1000028000
    case physicalDeviceTransformFeedbackPropertiesEXT = 1000028001
    case pipelineRasterizationStateStreamCreateInfoEXT = 1000028002
    case imageViewHandleInfoNVX = 1000030000
    case textureLodGatherFormatPropertiesAMD = 1000041000
    case physicalDeviceCornerSampledImageFeaturesNV = 1000050000
    case externalMemoryImageCreateInfoNV = 1000056000
    case exportMemoryAllocateInfoNV = 1000056001
    case validationFlagsEXT = 1000061000
    case physicalDeviceTextureCompressionAstcHdrFeaturesEXT = 1000066000
    case imageViewAstcDecodeModeEXT = 1000067000
    case physicalDeviceAstcDecodeFeaturesEXT = 1000067001
    case importMemoryFdInfoKHR = 1000074000
    case memoryFdPropertiesKHR = 1000074001
    case memoryGetFdInfoKHR = 1000074002
    case importSemaphoreFdInfoKHR = 1000079000
    case semaphoreGetFdInfoKHR = 1000079001
    case physicalDevicePushDescriptorPropertiesKHR = 1000080000
    case commandBufferInheritanceConditionalRenderingInfoEXT = 1000081000
    case physicalDeviceConditionalRenderingFeaturesEXT = 1000081001
    case conditionalRenderingBeginInfoEXT = 1000081002
    case presentRegionsKHR = 1000084000
    case pipelineViewportWScalingStateCreateInfoNV = 1000087000
    case surfaceCapabilities2EXT = 1000090000
    case displayPowerInfoEXT = 1000091000
    case deviceEventInfoEXT = 1000091001
    case displayEventInfoEXT = 1000091002
    case swapchainCounterCreateInfoEXT = 1000091003
    case presentTimesInfoGOOGLE = 1000092000
    case physicalDeviceMultiviewPerViewAttributesPropertiesNVX = 1000097000
    case pipelineViewportSwizzleStateCreateInfoNV = 1000098000
    case physicalDeviceDiscardRectanglePropertiesEXT = 1000099000
    case pipelineDiscardRectangleStateCreateInfoEXT = 1000099001
    case physicalDeviceConservativeRasterizationPropertiesEXT = 1000101000
    case pipelineRasterizationConservativeStateCreateInfoEXT = 1000101001
    case physicalDeviceDepthClipEnableFeaturesEXT = 1000102000
    case pipelineRasterizationDepthClipStateCreateInfoEXT = 1000102001
    case hdrMetadataEXT = 1000105000
    case sharedPresentSurfaceCapabilitiesKHR = 1000111000
    case importFenceFdInfoKHR = 1000115000
    case fenceGetFdInfoKHR = 1000115001
    case physicalDevicePerformanceQueryFeaturesKHR = 1000116000
    case physicalDevicePerformanceQueryPropertiesKHR = 1000116001
    case queryPoolPerformanceCreateInfoKHR = 1000116002
    case performanceQuerySubmitInfoKHR = 1000116003
    case acquireProfilingLockInfoKHR = 1000116004
    case performanceCounterKHR = 1000116005
    case performanceCounterDescriptionKHR = 1000116006
    case physicalDeviceSurfaceInfo2KHR = 1000119000
    case surfaceCapabilities2KHR = 1000119001
    case surfaceFormat2KHR = 1000119002
    case displayProperties2KHR = 1000121000
    case displayPlaneProperties2KHR = 1000121001
    case displayModeProperties2KHR = 1000121002
    case displayPlaneInfo2KHR = 1000121003
    case displayPlaneCapabilities2KHR = 1000121004
    case debugUtilsObjectNameInfoEXT = 1000128000
    case debugUtilsObjectTagInfoEXT = 1000128001
    case debugUtilsLabelEXT = 1000128002
    case debugUtilsMessengerCallbackDataEXT = 1000128003
    case debugUtilsMessengerCreateInfoEXT = 1000128004
    case physicalDeviceInlineUniformBlockFeaturesEXT = 1000138000
    case physicalDeviceInlineUniformBlockPropertiesEXT = 1000138001
    case writeDescriptorSetInlineUniformBlockEXT = 1000138002
    case descriptorPoolInlineUniformBlockCreateInfoEXT = 1000138003
    case sampleLocationsInfoEXT = 1000143000
    case renderPassSampleLocationsBeginInfoEXT = 1000143001
    case pipelineSampleLocationsStateCreateInfoEXT = 1000143002
    case physicalDeviceSampleLocationsPropertiesEXT = 1000143003
    case multisamplePropertiesEXT = 1000143004
    case physicalDeviceBlendOperationAdvancedFeaturesEXT = 1000148000
    case physicalDeviceBlendOperationAdvancedPropertiesEXT = 1000148001
    case pipelineColorBlendAdvancedStateCreateInfoEXT = 1000148002
    case pipelineCoverageToColorStateCreateInfoNV = 1000149000
    case pipelineCoverageModulationStateCreateInfoNV = 1000152000
    case physicalDeviceShaderSmBuiltinsFeaturesNV = 1000154000
    case physicalDeviceShaderSmBuiltinsPropertiesNV = 1000154001
    case drmFormatModifierPropertiesListEXT = 1000158000
    case drmFormatModifierPropertiesEXT = 1000158001
    case physicalDeviceImageDrmFormatModifierInfoEXT = 1000158002
    case imageDrmFormatModifierListCreateInfoEXT = 1000158003
    case imageDrmFormatModifierExplicitCreateInfoEXT = 1000158004
    case imageDrmFormatModifierPropertiesEXT = 1000158005
    case validationCacheCreateInfoEXT = 1000160000
    case shaderModuleValidationCacheCreateInfoEXT = 1000160001
    case pipelineViewportShadingRateImageStateCreateInfoNV = 1000164000
    case physicalDeviceShadingRateImageFeaturesNV = 1000164001
    case physicalDeviceShadingRateImagePropertiesNV = 1000164002
    case pipelineViewportCoarseSampleOrderStateCreateInfoNV = 1000164005
    case rayTracingPipelineCreateInfoNV = 1000165000
    case accelerationStructureCreateInfoNV = 1000165001
    case geometryNV = 1000165003
    case geometryTrianglesNV = 1000165004
    case geometryAabbNV = 1000165005
    case accelerationStructureMemoryRequirementsInfoNV = 1000165008
    case physicalDeviceRayTracingPropertiesNV = 1000165009
    case rayTracingShaderGroupCreateInfoNV = 1000165011
    case accelerationStructureInfoNV = 1000165012
    case physicalDeviceRepresentativeFragmentTestFeaturesNV = 1000166000
    case pipelineRepresentativeFragmentTestStateCreateInfoNV = 1000166001
    case physicalDeviceImageViewImageFormatInfoEXT = 1000170000
    case filterCubicImageViewImageFormatPropertiesEXT = 1000170001
    case deviceQueueGlobalPriorityCreateInfoEXT = 1000174000
    case importMemoryHostPointerInfoEXT = 1000178000
    case memoryHostPointerPropertiesEXT = 1000178001
    case physicalDeviceExternalMemoryHostPropertiesEXT = 1000178002
    case physicalDeviceShaderClockFeaturesKHR = 1000181000
    case pipelineCompilerControlCreateInfoAMD = 1000183000
    case calibratedTimestampInfoEXT = 1000184000
    case physicalDeviceShaderCorePropertiesAMD = 1000185000
    case deviceMemoryOverallocationCreateInfoAMD = 1000189000
    case physicalDeviceVertexAttributeDivisorPropertiesEXT = 1000190000
    case pipelineVertexInputDivisorStateCreateInfoEXT = 1000190001
    case physicalDeviceVertexAttributeDivisorFeaturesEXT = 1000190002
    case pipelineCreationFeedbackCreateInfoEXT = 1000192000
    case physicalDeviceComputeShaderDerivativesFeaturesNV = 1000201000
    case physicalDeviceMeshShaderFeaturesNV = 1000202000
    case physicalDeviceMeshShaderPropertiesNV = 1000202001
    case physicalDeviceFragmentShaderBarycentricFeaturesNV = 1000203000
    case physicalDeviceShaderImageFootprintFeaturesNV = 1000204000
    case pipelineViewportExclusiveScissorStateCreateInfoNV = 1000205000
    case physicalDeviceExclusiveScissorFeaturesNV = 1000205002
    case checkpointDataNV = 1000206000
    case queueFamilyCheckpointPropertiesNV = 1000206001
    case physicalDeviceShaderIntegerFunctions2FeaturesINTEL = 1000209000
    case queryPoolCreateInfoINTEL = 1000210000
    case initializePerformanceApiInfoINTEL = 1000210001
    case performanceMarkerInfoINTEL = 1000210002
    case performanceStreamMarkerInfoINTEL = 1000210003
    case performanceOverrideInfoINTEL = 1000210004
    case performanceConfigurationAcquireInfoINTEL = 1000210005
    case physicalDevicePciBusInfoPropertiesEXT = 1000212000
    case displayNativeHdrSurfaceCapabilitiesAMD = 1000213000
    case swapchainDisplayNativeHdrCreateInfoAMD = 1000213001
    case physicalDeviceFragmentDensityMapFeaturesEXT = 1000218000
    case physicalDeviceFragmentDensityMapPropertiesEXT = 1000218001
    case renderPassFragmentDensityMapCreateInfoEXT = 1000218002
    case physicalDeviceSubgroupSizeControlPropertiesEXT = 1000225000
    case pipelineShaderStageRequiredSubgroupSizeCreateInfoEXT = 1000225001
    case physicalDeviceSubgroupSizeControlFeaturesEXT = 1000225002
    case physicalDeviceShaderCoreProperties2AMD = 1000227000
    case physicalDeviceCoherentMemoryFeaturesAMD = 1000229000
    case physicalDeviceMemoryBudgetPropertiesEXT = 1000237000
    case physicalDeviceMemoryPriorityFeaturesEXT = 1000238000
    case memoryPriorityAllocateInfoEXT = 1000238001
    case surfaceProtectedCapabilitiesKHR = 1000239000
    case physicalDeviceDedicatedAllocationImageAliasingFeaturesNV = 1000240000
    case physicalDeviceBufferDeviceAddressFeaturesEXT = 1000244000
    case bufferDeviceAddressCreateInfoEXT = 1000244002
    case physicalDeviceToolPropertiesEXT = 1000245000
    case validationFeaturesEXT = 1000247000
    case physicalDeviceCooperativeMatrixFeaturesNV = 1000249000
    case cooperativeMatrixPropertiesNV = 1000249001
    case physicalDeviceCooperativeMatrixPropertiesNV = 1000249002
    case physicalDeviceCoverageReductionModeFeaturesNV = 1000250000
    case pipelineCoverageReductionStateCreateInfoNV = 1000250001
    case framebufferMixedSamplesCombinationNV = 1000250002
    case physicalDeviceFragmentShaderInterlockFeaturesEXT = 1000251000
    case physicalDeviceYcbcrImageArraysFeaturesEXT = 1000252000
    case headlessSurfaceCreateInfoEXT = 1000256000
    case physicalDeviceLineRasterizationFeaturesEXT = 1000259000
    case pipelineRasterizationLineStateCreateInfoEXT = 1000259001
    case physicalDeviceLineRasterizationPropertiesEXT = 1000259002
    case physicalDeviceIndexTypeUint8FeaturesEXT = 1000265000
    case physicalDevicePipelineExecutablePropertiesFeaturesKHR = 1000269000
    case pipelineInfoKHR = 1000269001
    case pipelineExecutablePropertiesKHR = 1000269002
    case pipelineExecutableInfoKHR = 1000269003
    case pipelineExecutableStatisticKHR = 1000269004
    case pipelineExecutableInternalRepresentationKHR = 1000269005
    case physicalDeviceShaderDemoteToHelperInvocationFeaturesEXT = 1000276000
    case physicalDeviceDeviceGeneratedCommandsPropertiesNV = 1000277000
    case graphicsShaderGroupCreateInfoNV = 1000277001
    case graphicsPipelineShaderGroupsCreateInfoNV = 1000277002
    case indirectCommandsLayoutTokenNV = 1000277003
    case indirectCommandsLayoutCreateInfoNV = 1000277004
    case generatedCommandsInfoNV = 1000277005
    case generatedCommandsMemoryRequirementsInfoNV = 1000277006
    case physicalDeviceDeviceGeneratedCommandsFeaturesNV = 1000277007
    case physicalDeviceTexelBufferAlignmentFeaturesEXT = 1000281000
    case physicalDeviceTexelBufferAlignmentPropertiesEXT = 1000281001
    case commandBufferInheritanceRenderPassTransformInfoQCOM = 1000282000
    case renderPassTransformBeginInfoQCOM = 1000282001
    case physicalDevicePipelineCreationCacheControlFeaturesEXT = 1000297000
    case physicalDeviceDiagnosticsConfigFeaturesNV = 1000300000
    case deviceDiagnosticsConfigCreateInfoNV = 1000300001
}

enum SubpassContents: UInt32 {
    case inline = 0
    case secondaryCommandBuffers = 1
}

enum Result: Int32 {
    case success = 0
    case notReady = 1
    case timeout = 2
    case eventSet = 3
    case eventReset = 4
    case incomplete = 5
    case errorOutOfHostMemory = -1
    case errorOutOfDeviceMemory = -2
    case errorInitializationFailed = -3
    case errorDeviceLost = -4
    case errorMemoryMapFailed = -5
    case errorLayerNotPresent = -6
    case errorExtensionNotPresent = -7
    case errorFeatureNotPresent = -8
    case errorIncompatibleDriver = -9
    case errorTooManyObjects = -10
    case errorFormatNotSupported = -11
    case errorFragmentedPool = -12
    case errorUnknown = -13
    case errorSurfaceLostKHR = -1000000000
    case errorNativeWindowInUseKHR = -1000000001
    case suboptimalKHR = 1000001003
    case errorOutOfDateKHR = -1000001004
    case errorIncompatibleDisplayKHR = -1000003001
    case errorValidationFailedEXT = -1000011001
    case errorInvalidShaderNV = -1000012000
    case errorInvalidDrmFormatModifierPlaneLayoutEXT = -1000158000
    case errorNotPermittedEXT = -1000174001
    case errorPipelineCompileRequiredEXT = 1000297000
}

enum DynamicState: UInt32 {
    case viewport = 0
    case scissor = 1
    case lineWidth = 2
    case depthBias = 3
    case blendConstants = 4
    case depthBounds = 5
    case stencilCompareMask = 6
    case stencilWriteMask = 7
    case stencilReference = 8
    case viewportWScalingNV = 1000087000
    case discardRectangleEXT = 1000099000
    case sampleLocationsEXT = 1000143000
    case viewportShadingRatePaletteNV = 1000164004
    case viewportCoarseSampleOrderNV = 1000164006
    case exclusiveScissorNV = 1000205001
    case lineStippleEXT = 1000259000
}

enum DescriptorUpdateTemplateType: UInt32 {
    case descriptorSet = 0
    case pushDescriptorsKHR = 1
}

enum ObjectType: UInt32 {
    case unknown = 0
    case instance = 1
    case physicalDevice = 2
    case device = 3
    case queue = 4
    case semaphore = 5
    case commandBuffer = 6
    case fence = 7
    case deviceMemory = 8
    case buffer = 9
    case image = 10
    case event = 11
    case queryPool = 12
    case bufferView = 13
    case imageView = 14
    case shaderModule = 15
    case pipelineCache = 16
    case pipelineLayout = 17
    case renderPass = 18
    case pipeline = 19
    case descriptorSetLayout = 20
    case sampler = 21
    case descriptorPool = 22
    case descriptorSet = 23
    case framebuffer = 24
    case commandPool = 25
    case surfaceKHR = 1000000000
    case swapchainKHR = 1000001000
    case displayKHR = 1000002000
    case displayModeKHR = 1000002001
    case debugReportCallbackEXT = 1000011000
    case debugUtilsMessengerEXT = 1000128000
    case validationCacheEXT = 1000160000
    case performanceConfigurationINTEL = 1000210000
    case indirectCommandsLayoutNV = 1000277000
}

enum SemaphoreType: UInt32 {
    case binary = 0
    case timeline = 1
}

enum PresentModeKHR: UInt32 {
    case immediate = 0
    case mailbox = 1
    case fifo = 2
    case fifoRelaxed = 3
    case sharedDemandRefresh = 1000111000
    case sharedContinuousRefresh = 1000111001
}

enum ColorSpaceKHR: UInt32 {
    case srgbNonlinear = 0
    case displayP3NonlinearEXT = 1000104001
    case extendedSrgbLinearEXT = 1000104002
    case displayP3LinearEXT = 1000104003
    case dciP3NonlinearEXT = 1000104004
    case bt709LinearEXT = 1000104005
    case bt709NonlinearEXT = 1000104006
    case bt2020LinearEXT = 1000104007
    case hdr10St2084EXT = 1000104008
    case dolbyvisionEXT = 1000104009
    case hdr10HlgEXT = 1000104010
    case adobergbLinearEXT = 1000104011
    case adobergbNonlinearEXT = 1000104012
    case passThroughEXT = 1000104013
    case extendedSrgbNonlinearEXT = 1000104014
    case displayNativeAMD = 1000213000
}

enum TimeDomainEXT: UInt32 {
    case device = 0
    case clockMonotonic = 1
    case clockMonotonicRaw = 2
    case queryPerformanceCounter = 3
}

enum DebugReportObjectTypeEXT: UInt32 {
    case unknown = 0
    case instance = 1
    case physicalDevice = 2
    case device = 3
    case queue = 4
    case semaphore = 5
    case commandBuffer = 6
    case fence = 7
    case deviceMemory = 8
    case buffer = 9
    case image = 10
    case event = 11
    case queryPool = 12
    case bufferView = 13
    case imageView = 14
    case shaderModule = 15
    case pipelineCache = 16
    case pipelineLayout = 17
    case renderPass = 18
    case pipeline = 19
    case descriptorSetLayout = 20
    case sampler = 21
    case descriptorPool = 22
    case descriptorSet = 23
    case framebuffer = 24
    case commandPool = 25
    case surfaceKhr = 26
    case swapchainKhr = 27
    case debugReportCallbackExt = 28
    case displayKhr = 29
    case displayModeKhr = 30
    case validationCacheExt = 33
    case samplerYcbcrConversion = 1000156000
    case descriptorUpdateTemplate = 1000085000
}

enum RasterizationOrderAMD: UInt32 {
    case strict = 0
    case relaxed = 1
}

enum ValidationCheckEXT: UInt32 {
    case all = 0
    case shaders = 1
}

enum ValidationFeatureEnableEXT: UInt32 {
    case gpuAssisted = 0
    case gpuAssistedReserveBindingSlot = 1
    case bestPractices = 2
    case debugPrintf = 3
}

enum ValidationFeatureDisableEXT: UInt32 {
    case all = 0
    case shaders = 1
    case threadSafety = 2
    case apiParameters = 3
    case objectLifetimes = 4
    case coreChecks = 5
    case uniqueHandles = 6
}

enum IndirectCommandsTokenTypeNV: UInt32 {
    case shaderGroup = 0
    case stateFlags = 1
    case indexBuffer = 2
    case vertexBuffer = 3
    case pushConstant = 4
    case drawIndexed = 5
    case draw = 6
    case drawTasks = 7
}

enum DisplayPowerStateEXT: UInt32 {
    case off = 0
    case suspend = 1
    case on = 2
}

enum DeviceEventTypeEXT: UInt32 {
    case displayHotplug = 0
}

enum DisplayEventTypeEXT: UInt32 {
    case firstPixelOut = 0
}

enum ViewportCoordinateSwizzleNV: UInt32 {
    case positiveX = 0
    case negativeX = 1
    case positiveY = 2
    case negativeY = 3
    case positiveZ = 4
    case negativeZ = 5
    case positiveW = 6
    case negativeW = 7
}

enum DiscardRectangleModeEXT: UInt32 {
    case inclusive = 0
    case exclusive = 1
}

enum PointClippingBehavior: UInt32 {
    case allClipPlanes = 0
    case userClipPlanesOnly = 1
}

enum SamplerReductionMode: UInt32 {
    case weightedAverage = 0
    case min = 1
    case max = 2
}

enum TessellationDomainOrigin: UInt32 {
    case upperLeft = 0
    case lowerLeft = 1
}

enum SamplerYcbcrModelConversion: UInt32 {
    case rgbIdentity = 0
    case ycbcrIdentity = 1
    case ycbcr709 = 2
    case ycbcr601 = 3
    case ycbcr2020 = 4
}

enum SamplerYcbcrRange: UInt32 {
    case ituFull = 0
    case ituNarrow = 1
}

enum ChromaLocation: UInt32 {
    case cositedEven = 0
    case midpoint = 1
}

enum BlendOverlapEXT: UInt32 {
    case uncorrelated = 0
    case disjoint = 1
    case conjoint = 2
}

enum CoverageModulationModeNV: UInt32 {
    case none = 0
    case rgb = 1
    case alpha = 2
    case rgba = 3
}

enum CoverageReductionModeNV: UInt32 {
    case merge = 0
    case truncate = 1
}

enum ValidationCacheHeaderVersionEXT: UInt32 {
    case one = 1
}

enum ShaderInfoTypeAMD: UInt32 {
    case statistics = 0
    case binary = 1
    case disassembly = 2
}

enum QueueGlobalPriorityEXT: UInt32 {
    case low = 128
    case medium = 256
    case high = 512
    case realtime = 1024
}

enum ConservativeRasterizationModeEXT: UInt32 {
    case disabled = 0
    case overestimate = 1
    case underestimate = 2
}

enum VendorId: UInt32 {
    case viv = 0x10001
    case vsi = 0x10002
    case kazan = 0x10003
    case codeplay = 0x10004
}

enum DriverId: UInt32 {
    case amdProprietary = 1
    case amdOpenSource = 2
    case mesaRadv = 3
    case nvidiaProprietary = 4
    case intelProprietaryWindows = 5
    case intelOpenSourceMESA = 6
    case imaginationProprietary = 7
    case qualcommProprietary = 8
    case armProprietary = 9
    case googleSwiftshader = 10
    case ggpProprietary = 11
    case broadcomProprietary = 12
}

enum ShadingRatePaletteEntryNV: UInt32 {
    case typeNoInvocations = 0
    case type16InvocationsPerPixel = 1
    case type8InvocationsPerPixel = 2
    case type4InvocationsPerPixel = 3
    case type2InvocationsPerPixel = 4
    case type1InvocationPerPixel = 5
    case type1InvocationPer2x1Pixels = 6
    case type1InvocationPer1x2Pixels = 7
    case type1InvocationPer2x2Pixels = 8
    case type1InvocationPer4x2Pixels = 9
    case type1InvocationPer2x4Pixels = 10
    case type1InvocationPer4x4Pixels = 11
}

enum CoarseSampleOrderTypeNV: UInt32 {
    case `default` = 0
    case custom = 1
    case pixelMajor = 2
    case sampleMajor = 3
}

enum MemoryOverallocationBehaviorAMD: UInt32 {
    case `default` = 0
    case allowed = 1
    case disallowed = 2
}

enum ScopeNV: UInt32 {
    case device = 1
    case workgroup = 2
    case subgroup = 3
    case queueFamily = 5
}

enum ComponentTypeNV: UInt32 {
    case float16 = 0
    case float32 = 1
    case float64 = 2
    case sint8 = 3
    case sint16 = 4
    case sint32 = 5
    case sint64 = 6
    case uint8 = 7
    case uint16 = 8
    case uint32 = 9
    case uint64 = 10
}

enum PerformanceCounterScopeKHR: UInt32 {
    case commandBuffer = 0
    case renderPass = 1
    case command = 2
}

enum PerformanceCounterUnitKHR: UInt32 {
    case generic = 0
    case percentage = 1
    case nanoseconds = 2
    case bytes = 3
    case bytesPerSecond = 4
    case kelvin = 5
    case watts = 6
    case volts = 7
    case amps = 8
    case hertz = 9
    case cycles = 10
}

enum PerformanceCounterStorageKHR: UInt32 {
    case int32 = 0
    case int64 = 1
    case uint32 = 2
    case uint64 = 3
    case float32 = 4
    case float64 = 5
}

enum PerformanceConfigurationTypeINTEL: UInt32 {
    case commandQueueMetricsDiscoveryActivated = 0
}

enum QueryPoolSamplingModeINTEL: UInt32 {
    case manual = 0
}

enum PerformanceOverrideTypeINTEL: UInt32 {
    case nullHardware = 0
    case flushGpuCaches = 1
}

enum PerformanceParameterTypeINTEL: UInt32 {
    case hwCountersSupported = 0
    case streamMarkerValidBits = 1
}

enum PerformanceValueTypeINTEL: UInt32 {
    case uint32 = 0
    case uint64 = 1
    case float = 2
    case bool = 3
    case string = 4
}

enum ShaderFloatControlsIndependence: UInt32 {
    case type32BitOnly = 0
    case typeAll = 1
    case typeNone = 2
}

enum PipelineExecutableStatisticFormatKHR: UInt32 {
    case bool32 = 0
    case int64 = 1
    case uint64 = 2
    case float64 = 3
}

enum LineRasterizationModeEXT: UInt32 {
    case `default` = 0
    case rectangular = 1
    case bresenham = 2
    case rectangularSmooth = 3
}

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

struct BaseOutStructure {
    var cStruct: VkBaseOutStructure
}

struct BaseInStructure {
    var cStruct: VkBaseInStructure
}

struct Offset2D {
    var cStruct: VkOffset2D
}

struct Offset3D {
    var cStruct: VkOffset3D
}

struct Extent2D {
    var cStruct: VkExtent2D
}

struct Extent3D {
    var cStruct: VkExtent3D
}

struct Viewport {
    var cStruct: VkViewport
}

struct Rect2D {
    var cStruct: VkRect2D
}

struct ClearRect {
    var cStruct: VkClearRect
}

struct ComponentMapping {
    var cStruct: VkComponentMapping
}

struct PhysicalDeviceProperties {
    var cStruct: VkPhysicalDeviceProperties
}

struct ExtensionProperties {
    var cStruct: VkExtensionProperties
}

struct LayerProperties {
    var cStruct: VkLayerProperties
}

struct ApplicationInfo {
    var cStruct: VkApplicationInfo
}

struct AllocationCallbacks {
    var cStruct: VkAllocationCallbacks
}

struct DeviceQueueCreateInfo {
    var cStruct: VkDeviceQueueCreateInfo
}

struct DeviceCreateInfo {
    var cStruct: VkDeviceCreateInfo
}

struct InstanceCreateInfo {
    var cStruct: VkInstanceCreateInfo
}

struct QueueFamilyProperties {
    var cStruct: VkQueueFamilyProperties
}

struct PhysicalDeviceMemoryProperties {
    var cStruct: VkPhysicalDeviceMemoryProperties
}

struct MemoryAllocateInfo {
    var cStruct: VkMemoryAllocateInfo
}

struct MemoryRequirements {
    var cStruct: VkMemoryRequirements
}

struct SparseImageFormatProperties {
    var cStruct: VkSparseImageFormatProperties
}

struct SparseImageMemoryRequirements {
    var cStruct: VkSparseImageMemoryRequirements
}

struct MemoryType {
    var cStruct: VkMemoryType
}

struct MemoryHeap {
    var cStruct: VkMemoryHeap
}

struct MappedMemoryRange {
    var cStruct: VkMappedMemoryRange
}

struct FormatProperties {
    var cStruct: VkFormatProperties
}

struct ImageFormatProperties {
    var cStruct: VkImageFormatProperties
}

struct DescriptorBufferInfo {
    var cStruct: VkDescriptorBufferInfo
}

struct DescriptorImageInfo {
    var cStruct: VkDescriptorImageInfo
}

struct WriteDescriptorSet {
    var cStruct: VkWriteDescriptorSet
}

struct CopyDescriptorSet {
    var cStruct: VkCopyDescriptorSet
}

struct BufferCreateInfo {
    var cStruct: VkBufferCreateInfo
}

struct BufferViewCreateInfo {
    var cStruct: VkBufferViewCreateInfo
}

struct ImageSubresource {
    var cStruct: VkImageSubresource
}

struct ImageSubresourceLayers {
    var cStruct: VkImageSubresourceLayers
}

struct ImageSubresourceRange {
    var cStruct: VkImageSubresourceRange
}

struct MemoryBarrier {
    var cStruct: VkMemoryBarrier
}

struct BufferMemoryBarrier {
    var cStruct: VkBufferMemoryBarrier
}

struct ImageMemoryBarrier {
    var cStruct: VkImageMemoryBarrier
}

struct ImageCreateInfo {
    var cStruct: VkImageCreateInfo
}

struct SubresourceLayout {
    var cStruct: VkSubresourceLayout
}

struct ImageViewCreateInfo {
    var cStruct: VkImageViewCreateInfo
}

struct BufferCopy {
    var cStruct: VkBufferCopy
}

struct SparseMemoryBind {
    var cStruct: VkSparseMemoryBind
}

struct SparseImageMemoryBind {
    var cStruct: VkSparseImageMemoryBind
}

struct SparseBufferMemoryBindInfo {
    var cStruct: VkSparseBufferMemoryBindInfo
}

struct SparseImageOpaqueMemoryBindInfo {
    var cStruct: VkSparseImageOpaqueMemoryBindInfo
}

struct SparseImageMemoryBindInfo {
    var cStruct: VkSparseImageMemoryBindInfo
}

struct BindSparseInfo {
    var cStruct: VkBindSparseInfo
}

struct ImageCopy {
    var cStruct: VkImageCopy
}

struct ImageBlit {
    var cStruct: VkImageBlit
}

struct BufferImageCopy {
    var cStruct: VkBufferImageCopy
}

struct ImageResolve {
    var cStruct: VkImageResolve
}

struct ShaderModuleCreateInfo {
    var cStruct: VkShaderModuleCreateInfo
}

struct DescriptorSetLayoutBinding {
    var cStruct: VkDescriptorSetLayoutBinding
}

struct DescriptorSetLayoutCreateInfo {
    var cStruct: VkDescriptorSetLayoutCreateInfo
}

struct DescriptorPoolSize {
    var cStruct: VkDescriptorPoolSize
}

struct DescriptorPoolCreateInfo {
    var cStruct: VkDescriptorPoolCreateInfo
}

struct DescriptorSetAllocateInfo {
    var cStruct: VkDescriptorSetAllocateInfo
}

struct SpecializationMapEntry {
    var cStruct: VkSpecializationMapEntry
}

struct SpecializationInfo {
    var cStruct: VkSpecializationInfo
}

struct PipelineShaderStageCreateInfo {
    var cStruct: VkPipelineShaderStageCreateInfo
}

struct ComputePipelineCreateInfo {
    var cStruct: VkComputePipelineCreateInfo
}

struct VertexInputBindingDescription {
    var cStruct: VkVertexInputBindingDescription
}

struct VertexInputAttributeDescription {
    var cStruct: VkVertexInputAttributeDescription
}

struct PipelineVertexInputStateCreateInfo {
    var cStruct: VkPipelineVertexInputStateCreateInfo
}

struct PipelineInputAssemblyStateCreateInfo {
    var cStruct: VkPipelineInputAssemblyStateCreateInfo
}

struct PipelineTessellationStateCreateInfo {
    var cStruct: VkPipelineTessellationStateCreateInfo
}

struct PipelineViewportStateCreateInfo {
    var cStruct: VkPipelineViewportStateCreateInfo
}

struct PipelineRasterizationStateCreateInfo {
    var cStruct: VkPipelineRasterizationStateCreateInfo
}

struct PipelineMultisampleStateCreateInfo {
    var cStruct: VkPipelineMultisampleStateCreateInfo
}

struct PipelineColorBlendAttachmentState {
    var cStruct: VkPipelineColorBlendAttachmentState
}

struct PipelineColorBlendStateCreateInfo {
    var cStruct: VkPipelineColorBlendStateCreateInfo
}

struct PipelineDynamicStateCreateInfo {
    var cStruct: VkPipelineDynamicStateCreateInfo
}

struct StencilOpState {
    var cStruct: VkStencilOpState
}

struct PipelineDepthStencilStateCreateInfo {
    var cStruct: VkPipelineDepthStencilStateCreateInfo
}

struct GraphicsPipelineCreateInfo {
    var cStruct: VkGraphicsPipelineCreateInfo
}

struct PipelineCacheCreateInfo {
    var cStruct: VkPipelineCacheCreateInfo
}

struct PushConstantRange {
    var cStruct: VkPushConstantRange
}

struct PipelineLayoutCreateInfo {
    var cStruct: VkPipelineLayoutCreateInfo
}

struct SamplerCreateInfo {
    var cStruct: VkSamplerCreateInfo
}

struct CommandPoolCreateInfo {
    var cStruct: VkCommandPoolCreateInfo
}

struct CommandBufferAllocateInfo {
    var cStruct: VkCommandBufferAllocateInfo
}

struct CommandBufferInheritanceInfo {
    var cStruct: VkCommandBufferInheritanceInfo
}

struct CommandBufferBeginInfo {
    var cStruct: VkCommandBufferBeginInfo
}

struct RenderPassBeginInfo {
    var cStruct: VkRenderPassBeginInfo
}

struct ClearDepthStencilValue {
    var cStruct: VkClearDepthStencilValue
}

struct ClearAttachment {
    var cStruct: VkClearAttachment
}

struct AttachmentDescription {
    var cStruct: VkAttachmentDescription
}

struct AttachmentReference {
    var cStruct: VkAttachmentReference
}

struct SubpassDescription {
    var cStruct: VkSubpassDescription
}

struct SubpassDependency {
    var cStruct: VkSubpassDependency
}

struct RenderPassCreateInfo {
    var cStruct: VkRenderPassCreateInfo
}

struct EventCreateInfo {
    var cStruct: VkEventCreateInfo
}

struct FenceCreateInfo {
    var cStruct: VkFenceCreateInfo
}

struct PhysicalDeviceFeatures {
    var cStruct: VkPhysicalDeviceFeatures
}

struct PhysicalDeviceSparseProperties {
    var cStruct: VkPhysicalDeviceSparseProperties
}

struct PhysicalDeviceLimits {
    var cStruct: VkPhysicalDeviceLimits
}

struct SemaphoreCreateInfo {
    var cStruct: VkSemaphoreCreateInfo
}

struct QueryPoolCreateInfo {
    var cStruct: VkQueryPoolCreateInfo
}

struct FramebufferCreateInfo {
    var cStruct: VkFramebufferCreateInfo
}

struct DrawIndirectCommand {
    var cStruct: VkDrawIndirectCommand
}

struct DrawIndexedIndirectCommand {
    var cStruct: VkDrawIndexedIndirectCommand
}

struct DispatchIndirectCommand {
    var cStruct: VkDispatchIndirectCommand
}

struct SubmitInfo {
    var cStruct: VkSubmitInfo
}

struct DisplayPropertiesKHR {
    var cStruct: VkDisplayPropertiesKHR
}

struct DisplayPlanePropertiesKHR {
    var cStruct: VkDisplayPlanePropertiesKHR
}

struct DisplayModeParametersKHR {
    var cStruct: VkDisplayModeParametersKHR
}

struct DisplayModePropertiesKHR {
    var cStruct: VkDisplayModePropertiesKHR
}

struct DisplayModeCreateInfoKHR {
    var cStruct: VkDisplayModeCreateInfoKHR
}

struct DisplayPlaneCapabilitiesKHR {
    var cStruct: VkDisplayPlaneCapabilitiesKHR
}

struct DisplaySurfaceCreateInfoKHR {
    var cStruct: VkDisplaySurfaceCreateInfoKHR
}

struct DisplayPresentInfoKHR {
    var cStruct: VkDisplayPresentInfoKHR
}

struct SurfaceCapabilitiesKHR {
    var cStruct: VkSurfaceCapabilitiesKHR
}

struct SurfaceFormatKHR {
    var cStruct: VkSurfaceFormatKHR
}

struct SwapchainCreateInfoKHR {
    var cStruct: VkSwapchainCreateInfoKHR
}

struct PresentInfoKHR {
    var cStruct: VkPresentInfoKHR
}

struct DebugReportCallbackCreateInfoEXT {
    var cStruct: VkDebugReportCallbackCreateInfoEXT
}

struct ValidationFlagsEXT {
    var cStruct: VkValidationFlagsEXT
}

struct ValidationFeaturesEXT {
    var cStruct: VkValidationFeaturesEXT
}

struct PipelineRasterizationStateRasterizationOrderAMD {
    var cStruct: VkPipelineRasterizationStateRasterizationOrderAMD
}

struct DebugMarkerObjectNameInfoEXT {
    var cStruct: VkDebugMarkerObjectNameInfoEXT
}

struct DebugMarkerObjectTagInfoEXT {
    var cStruct: VkDebugMarkerObjectTagInfoEXT
}

struct DebugMarkerMarkerInfoEXT {
    var cStruct: VkDebugMarkerMarkerInfoEXT
}

struct DedicatedAllocationImageCreateInfoNV {
    var cStruct: VkDedicatedAllocationImageCreateInfoNV
}

struct DedicatedAllocationBufferCreateInfoNV {
    var cStruct: VkDedicatedAllocationBufferCreateInfoNV
}

struct DedicatedAllocationMemoryAllocateInfoNV {
    var cStruct: VkDedicatedAllocationMemoryAllocateInfoNV
}

struct ExternalImageFormatPropertiesNV {
    var cStruct: VkExternalImageFormatPropertiesNV
}

struct ExternalMemoryImageCreateInfoNV {
    var cStruct: VkExternalMemoryImageCreateInfoNV
}

struct ExportMemoryAllocateInfoNV {
    var cStruct: VkExportMemoryAllocateInfoNV
}

struct PhysicalDeviceDeviceGeneratedCommandsFeaturesNV {
    var cStruct: VkPhysicalDeviceDeviceGeneratedCommandsFeaturesNV
}

struct PhysicalDeviceDeviceGeneratedCommandsPropertiesNV {
    var cStruct: VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV
}

struct GraphicsShaderGroupCreateInfoNV {
    var cStruct: VkGraphicsShaderGroupCreateInfoNV
}

struct GraphicsPipelineShaderGroupsCreateInfoNV {
    var cStruct: VkGraphicsPipelineShaderGroupsCreateInfoNV
}

struct BindShaderGroupIndirectCommandNV {
    var cStruct: VkBindShaderGroupIndirectCommandNV
}

struct BindIndexBufferIndirectCommandNV {
    var cStruct: VkBindIndexBufferIndirectCommandNV
}

struct BindVertexBufferIndirectCommandNV {
    var cStruct: VkBindVertexBufferIndirectCommandNV
}

struct SetStateFlagsIndirectCommandNV {
    var cStruct: VkSetStateFlagsIndirectCommandNV
}

struct IndirectCommandsStreamNV {
    var cStruct: VkIndirectCommandsStreamNV
}

struct IndirectCommandsLayoutTokenNV {
    var cStruct: VkIndirectCommandsLayoutTokenNV
}

struct IndirectCommandsLayoutCreateInfoNV {
    var cStruct: VkIndirectCommandsLayoutCreateInfoNV
}

struct GeneratedCommandsInfoNV {
    var cStruct: VkGeneratedCommandsInfoNV
}

struct GeneratedCommandsMemoryRequirementsInfoNV {
    var cStruct: VkGeneratedCommandsMemoryRequirementsInfoNV
}

struct PhysicalDeviceFeatures2 {
    var cStruct: VkPhysicalDeviceFeatures2
}

struct PhysicalDeviceProperties2 {
    var cStruct: VkPhysicalDeviceProperties2
}

struct FormatProperties2 {
    var cStruct: VkFormatProperties2
}

struct ImageFormatProperties2 {
    var cStruct: VkImageFormatProperties2
}

struct PhysicalDeviceImageFormatInfo2 {
    var cStruct: VkPhysicalDeviceImageFormatInfo2
}

struct QueueFamilyProperties2 {
    var cStruct: VkQueueFamilyProperties2
}

struct PhysicalDeviceMemoryProperties2 {
    var cStruct: VkPhysicalDeviceMemoryProperties2
}

struct SparseImageFormatProperties2 {
    var cStruct: VkSparseImageFormatProperties2
}

struct PhysicalDeviceSparseImageFormatInfo2 {
    var cStruct: VkPhysicalDeviceSparseImageFormatInfo2
}

struct PhysicalDevicePushDescriptorPropertiesKHR {
    var cStruct: VkPhysicalDevicePushDescriptorPropertiesKHR
}

struct ConformanceVersion {
    var cStruct: VkConformanceVersion
}

struct PhysicalDeviceDriverProperties {
    var cStruct: VkPhysicalDeviceDriverProperties
}

struct PresentRegionsKHR {
    var cStruct: VkPresentRegionsKHR
}

struct PresentRegionKHR {
    var cStruct: VkPresentRegionKHR
}

struct RectLayerKHR {
    var cStruct: VkRectLayerKHR
}

struct PhysicalDeviceVariablePointersFeatures {
    var cStruct: VkPhysicalDeviceVariablePointersFeatures
}

struct ExternalMemoryProperties {
    var cStruct: VkExternalMemoryProperties
}

struct PhysicalDeviceExternalImageFormatInfo {
    var cStruct: VkPhysicalDeviceExternalImageFormatInfo
}

struct ExternalImageFormatProperties {
    var cStruct: VkExternalImageFormatProperties
}

struct PhysicalDeviceExternalBufferInfo {
    var cStruct: VkPhysicalDeviceExternalBufferInfo
}

struct ExternalBufferProperties {
    var cStruct: VkExternalBufferProperties
}

struct PhysicalDeviceIDProperties {
    var cStruct: VkPhysicalDeviceIDProperties
}

struct ExternalMemoryImageCreateInfo {
    var cStruct: VkExternalMemoryImageCreateInfo
}

struct ExternalMemoryBufferCreateInfo {
    var cStruct: VkExternalMemoryBufferCreateInfo
}

struct ExportMemoryAllocateInfo {
    var cStruct: VkExportMemoryAllocateInfo
}

struct ImportMemoryFdInfoKHR {
    var cStruct: VkImportMemoryFdInfoKHR
}

struct MemoryFdPropertiesKHR {
    var cStruct: VkMemoryFdPropertiesKHR
}

struct MemoryGetFdInfoKHR {
    var cStruct: VkMemoryGetFdInfoKHR
}

struct PhysicalDeviceExternalSemaphoreInfo {
    var cStruct: VkPhysicalDeviceExternalSemaphoreInfo
}

struct ExternalSemaphoreProperties {
    var cStruct: VkExternalSemaphoreProperties
}

struct ExportSemaphoreCreateInfo {
    var cStruct: VkExportSemaphoreCreateInfo
}

struct ImportSemaphoreFdInfoKHR {
    var cStruct: VkImportSemaphoreFdInfoKHR
}

struct SemaphoreGetFdInfoKHR {
    var cStruct: VkSemaphoreGetFdInfoKHR
}

struct PhysicalDeviceExternalFenceInfo {
    var cStruct: VkPhysicalDeviceExternalFenceInfo
}

struct ExternalFenceProperties {
    var cStruct: VkExternalFenceProperties
}

struct ExportFenceCreateInfo {
    var cStruct: VkExportFenceCreateInfo
}

struct ImportFenceFdInfoKHR {
    var cStruct: VkImportFenceFdInfoKHR
}

struct FenceGetFdInfoKHR {
    var cStruct: VkFenceGetFdInfoKHR
}

struct PhysicalDeviceMultiviewFeatures {
    var cStruct: VkPhysicalDeviceMultiviewFeatures
}

struct PhysicalDeviceMultiviewProperties {
    var cStruct: VkPhysicalDeviceMultiviewProperties
}

struct RenderPassMultiviewCreateInfo {
    var cStruct: VkRenderPassMultiviewCreateInfo
}

struct SurfaceCapabilities2EXT {
    var cStruct: VkSurfaceCapabilities2EXT
}

struct DisplayPowerInfoEXT {
    var cStruct: VkDisplayPowerInfoEXT
}

struct DeviceEventInfoEXT {
    var cStruct: VkDeviceEventInfoEXT
}

struct DisplayEventInfoEXT {
    var cStruct: VkDisplayEventInfoEXT
}

struct SwapchainCounterCreateInfoEXT {
    var cStruct: VkSwapchainCounterCreateInfoEXT
}

struct PhysicalDeviceGroupProperties {
    var cStruct: VkPhysicalDeviceGroupProperties
}

struct MemoryAllocateFlagsInfo {
    var cStruct: VkMemoryAllocateFlagsInfo
}

struct BindBufferMemoryInfo {
    var cStruct: VkBindBufferMemoryInfo
}

struct BindBufferMemoryDeviceGroupInfo {
    var cStruct: VkBindBufferMemoryDeviceGroupInfo
}

struct BindImageMemoryInfo {
    var cStruct: VkBindImageMemoryInfo
}

struct BindImageMemoryDeviceGroupInfo {
    var cStruct: VkBindImageMemoryDeviceGroupInfo
}

struct DeviceGroupRenderPassBeginInfo {
    var cStruct: VkDeviceGroupRenderPassBeginInfo
}

struct DeviceGroupCommandBufferBeginInfo {
    var cStruct: VkDeviceGroupCommandBufferBeginInfo
}

struct DeviceGroupSubmitInfo {
    var cStruct: VkDeviceGroupSubmitInfo
}

struct DeviceGroupBindSparseInfo {
    var cStruct: VkDeviceGroupBindSparseInfo
}

struct DeviceGroupPresentCapabilitiesKHR {
    var cStruct: VkDeviceGroupPresentCapabilitiesKHR
}

struct ImageSwapchainCreateInfoKHR {
    var cStruct: VkImageSwapchainCreateInfoKHR
}

struct BindImageMemorySwapchainInfoKHR {
    var cStruct: VkBindImageMemorySwapchainInfoKHR
}

struct AcquireNextImageInfoKHR {
    var cStruct: VkAcquireNextImageInfoKHR
}

struct DeviceGroupPresentInfoKHR {
    var cStruct: VkDeviceGroupPresentInfoKHR
}

struct DeviceGroupDeviceCreateInfo {
    var cStruct: VkDeviceGroupDeviceCreateInfo
}

struct DeviceGroupSwapchainCreateInfoKHR {
    var cStruct: VkDeviceGroupSwapchainCreateInfoKHR
}

struct DescriptorUpdateTemplateEntry {
    var cStruct: VkDescriptorUpdateTemplateEntry
}

struct DescriptorUpdateTemplateCreateInfo {
    var cStruct: VkDescriptorUpdateTemplateCreateInfo
}

struct XYColorEXT {
    var cStruct: VkXYColorEXT
}

struct HdrMetadataEXT {
    var cStruct: VkHdrMetadataEXT
}

struct DisplayNativeHdrSurfaceCapabilitiesAMD {
    var cStruct: VkDisplayNativeHdrSurfaceCapabilitiesAMD
}

struct SwapchainDisplayNativeHdrCreateInfoAMD {
    var cStruct: VkSwapchainDisplayNativeHdrCreateInfoAMD
}

struct RefreshCycleDurationGOOGLE {
    var cStruct: VkRefreshCycleDurationGOOGLE
}

struct PastPresentationTimingGOOGLE {
    var cStruct: VkPastPresentationTimingGOOGLE
}

struct PresentTimesInfoGOOGLE {
    var cStruct: VkPresentTimesInfoGOOGLE
}

struct PresentTimeGOOGLE {
    var cStruct: VkPresentTimeGOOGLE
}

struct ViewportWScalingNV {
    var cStruct: VkViewportWScalingNV
}

struct PipelineViewportWScalingStateCreateInfoNV {
    var cStruct: VkPipelineViewportWScalingStateCreateInfoNV
}

struct ViewportSwizzleNV {
    var cStruct: VkViewportSwizzleNV
}

struct PipelineViewportSwizzleStateCreateInfoNV {
    var cStruct: VkPipelineViewportSwizzleStateCreateInfoNV
}

struct PhysicalDeviceDiscardRectanglePropertiesEXT {
    var cStruct: VkPhysicalDeviceDiscardRectanglePropertiesEXT
}

struct PipelineDiscardRectangleStateCreateInfoEXT {
    var cStruct: VkPipelineDiscardRectangleStateCreateInfoEXT
}

struct PhysicalDeviceMultiviewPerViewAttributesPropertiesNVX {
    var cStruct: VkPhysicalDeviceMultiviewPerViewAttributesPropertiesNVX
}

struct InputAttachmentAspectReference {
    var cStruct: VkInputAttachmentAspectReference
}

struct RenderPassInputAttachmentAspectCreateInfo {
    var cStruct: VkRenderPassInputAttachmentAspectCreateInfo
}

struct PhysicalDeviceSurfaceInfo2KHR {
    var cStruct: VkPhysicalDeviceSurfaceInfo2KHR
}

struct SurfaceCapabilities2KHR {
    var cStruct: VkSurfaceCapabilities2KHR
}

struct SurfaceFormat2KHR {
    var cStruct: VkSurfaceFormat2KHR
}

struct DisplayProperties2KHR {
    var cStruct: VkDisplayProperties2KHR
}

struct DisplayPlaneProperties2KHR {
    var cStruct: VkDisplayPlaneProperties2KHR
}

struct DisplayModeProperties2KHR {
    var cStruct: VkDisplayModeProperties2KHR
}

struct DisplayPlaneInfo2KHR {
    var cStruct: VkDisplayPlaneInfo2KHR
}

struct DisplayPlaneCapabilities2KHR {
    var cStruct: VkDisplayPlaneCapabilities2KHR
}

struct SharedPresentSurfaceCapabilitiesKHR {
    var cStruct: VkSharedPresentSurfaceCapabilitiesKHR
}

struct PhysicalDevice16BitStorageFeatures {
    var cStruct: VkPhysicalDevice16BitStorageFeatures
}

struct PhysicalDeviceSubgroupProperties {
    var cStruct: VkPhysicalDeviceSubgroupProperties
}

struct PhysicalDeviceShaderSubgroupExtendedTypesFeatures {
    var cStruct: VkPhysicalDeviceShaderSubgroupExtendedTypesFeatures
}

struct BufferMemoryRequirementsInfo2 {
    var cStruct: VkBufferMemoryRequirementsInfo2
}

struct ImageMemoryRequirementsInfo2 {
    var cStruct: VkImageMemoryRequirementsInfo2
}

struct ImageSparseMemoryRequirementsInfo2 {
    var cStruct: VkImageSparseMemoryRequirementsInfo2
}

struct MemoryRequirements2 {
    var cStruct: VkMemoryRequirements2
}

struct SparseImageMemoryRequirements2 {
    var cStruct: VkSparseImageMemoryRequirements2
}

struct PhysicalDevicePointClippingProperties {
    var cStruct: VkPhysicalDevicePointClippingProperties
}

struct MemoryDedicatedRequirements {
    var cStruct: VkMemoryDedicatedRequirements
}

struct MemoryDedicatedAllocateInfo {
    var cStruct: VkMemoryDedicatedAllocateInfo
}

struct ImageViewUsageCreateInfo {
    var cStruct: VkImageViewUsageCreateInfo
}

struct PipelineTessellationDomainOriginStateCreateInfo {
    var cStruct: VkPipelineTessellationDomainOriginStateCreateInfo
}

struct SamplerYcbcrConversionInfo {
    var cStruct: VkSamplerYcbcrConversionInfo
}

struct SamplerYcbcrConversionCreateInfo {
    var cStruct: VkSamplerYcbcrConversionCreateInfo
}

struct BindImagePlaneMemoryInfo {
    var cStruct: VkBindImagePlaneMemoryInfo
}

struct ImagePlaneMemoryRequirementsInfo {
    var cStruct: VkImagePlaneMemoryRequirementsInfo
}

struct PhysicalDeviceSamplerYcbcrConversionFeatures {
    var cStruct: VkPhysicalDeviceSamplerYcbcrConversionFeatures
}

struct SamplerYcbcrConversionImageFormatProperties {
    var cStruct: VkSamplerYcbcrConversionImageFormatProperties
}

struct TextureLODGatherFormatPropertiesAMD {
    var cStruct: VkTextureLODGatherFormatPropertiesAMD
}

struct ConditionalRenderingBeginInfoEXT {
    var cStruct: VkConditionalRenderingBeginInfoEXT
}

struct ProtectedSubmitInfo {
    var cStruct: VkProtectedSubmitInfo
}

struct PhysicalDeviceProtectedMemoryFeatures {
    var cStruct: VkPhysicalDeviceProtectedMemoryFeatures
}

struct PhysicalDeviceProtectedMemoryProperties {
    var cStruct: VkPhysicalDeviceProtectedMemoryProperties
}

struct DeviceQueueInfo2 {
    var cStruct: VkDeviceQueueInfo2
}

struct PipelineCoverageToColorStateCreateInfoNV {
    var cStruct: VkPipelineCoverageToColorStateCreateInfoNV
}

struct PhysicalDeviceSamplerFilterMinmaxProperties {
    var cStruct: VkPhysicalDeviceSamplerFilterMinmaxProperties
}

struct SampleLocationEXT {
    var cStruct: VkSampleLocationEXT
}

struct SampleLocationsInfoEXT {
    var cStruct: VkSampleLocationsInfoEXT
}

struct AttachmentSampleLocationsEXT {
    var cStruct: VkAttachmentSampleLocationsEXT
}

struct SubpassSampleLocationsEXT {
    var cStruct: VkSubpassSampleLocationsEXT
}

struct RenderPassSampleLocationsBeginInfoEXT {
    var cStruct: VkRenderPassSampleLocationsBeginInfoEXT
}

struct PipelineSampleLocationsStateCreateInfoEXT {
    var cStruct: VkPipelineSampleLocationsStateCreateInfoEXT
}

struct PhysicalDeviceSampleLocationsPropertiesEXT {
    var cStruct: VkPhysicalDeviceSampleLocationsPropertiesEXT
}

struct MultisamplePropertiesEXT {
    var cStruct: VkMultisamplePropertiesEXT
}

struct SamplerReductionModeCreateInfo {
    var cStruct: VkSamplerReductionModeCreateInfo
}

struct PhysicalDeviceBlendOperationAdvancedFeaturesEXT {
    var cStruct: VkPhysicalDeviceBlendOperationAdvancedFeaturesEXT
}

struct PhysicalDeviceBlendOperationAdvancedPropertiesEXT {
    var cStruct: VkPhysicalDeviceBlendOperationAdvancedPropertiesEXT
}

struct PipelineColorBlendAdvancedStateCreateInfoEXT {
    var cStruct: VkPipelineColorBlendAdvancedStateCreateInfoEXT
}

struct PhysicalDeviceInlineUniformBlockFeaturesEXT {
    var cStruct: VkPhysicalDeviceInlineUniformBlockFeaturesEXT
}

struct PhysicalDeviceInlineUniformBlockPropertiesEXT {
    var cStruct: VkPhysicalDeviceInlineUniformBlockPropertiesEXT
}

struct WriteDescriptorSetInlineUniformBlockEXT {
    var cStruct: VkWriteDescriptorSetInlineUniformBlockEXT
}

struct DescriptorPoolInlineUniformBlockCreateInfoEXT {
    var cStruct: VkDescriptorPoolInlineUniformBlockCreateInfoEXT
}

struct PipelineCoverageModulationStateCreateInfoNV {
    var cStruct: VkPipelineCoverageModulationStateCreateInfoNV
}

struct ImageFormatListCreateInfo {
    var cStruct: VkImageFormatListCreateInfo
}

struct ValidationCacheCreateInfoEXT {
    var cStruct: VkValidationCacheCreateInfoEXT
}

struct ShaderModuleValidationCacheCreateInfoEXT {
    var cStruct: VkShaderModuleValidationCacheCreateInfoEXT
}

struct PhysicalDeviceMaintenance3Properties {
    var cStruct: VkPhysicalDeviceMaintenance3Properties
}

struct DescriptorSetLayoutSupport {
    var cStruct: VkDescriptorSetLayoutSupport
}

struct PhysicalDeviceShaderDrawParametersFeatures {
    var cStruct: VkPhysicalDeviceShaderDrawParametersFeatures
}

struct PhysicalDeviceShaderFloat16Int8Features {
    var cStruct: VkPhysicalDeviceShaderFloat16Int8Features
}

struct PhysicalDeviceFloatControlsProperties {
    var cStruct: VkPhysicalDeviceFloatControlsProperties
}

struct PhysicalDeviceHostQueryResetFeatures {
    var cStruct: VkPhysicalDeviceHostQueryResetFeatures
}

struct ShaderResourceUsageAMD {
    var cStruct: VkShaderResourceUsageAMD
}

struct ShaderStatisticsInfoAMD {
    var cStruct: VkShaderStatisticsInfoAMD
}

struct DeviceQueueGlobalPriorityCreateInfoEXT {
    var cStruct: VkDeviceQueueGlobalPriorityCreateInfoEXT
}

struct DebugUtilsObjectNameInfoEXT {
    var cStruct: VkDebugUtilsObjectNameInfoEXT
}

struct DebugUtilsObjectTagInfoEXT {
    var cStruct: VkDebugUtilsObjectTagInfoEXT
}

struct DebugUtilsLabelEXT {
    var cStruct: VkDebugUtilsLabelEXT
}

struct DebugUtilsMessengerCreateInfoEXT {
    var cStruct: VkDebugUtilsMessengerCreateInfoEXT
}

struct DebugUtilsMessengerCallbackDataEXT {
    var cStruct: VkDebugUtilsMessengerCallbackDataEXT
}

struct ImportMemoryHostPointerInfoEXT {
    var cStruct: VkImportMemoryHostPointerInfoEXT
}

struct MemoryHostPointerPropertiesEXT {
    var cStruct: VkMemoryHostPointerPropertiesEXT
}

struct PhysicalDeviceExternalMemoryHostPropertiesEXT {
    var cStruct: VkPhysicalDeviceExternalMemoryHostPropertiesEXT
}

struct PhysicalDeviceConservativeRasterizationPropertiesEXT {
    var cStruct: VkPhysicalDeviceConservativeRasterizationPropertiesEXT
}

struct CalibratedTimestampInfoEXT {
    var cStruct: VkCalibratedTimestampInfoEXT
}

struct PhysicalDeviceShaderCorePropertiesAMD {
    var cStruct: VkPhysicalDeviceShaderCorePropertiesAMD
}

struct PhysicalDeviceShaderCoreProperties2AMD {
    var cStruct: VkPhysicalDeviceShaderCoreProperties2AMD
}

struct PipelineRasterizationConservativeStateCreateInfoEXT {
    var cStruct: VkPipelineRasterizationConservativeStateCreateInfoEXT
}

struct PhysicalDeviceDescriptorIndexingFeatures {
    var cStruct: VkPhysicalDeviceDescriptorIndexingFeatures
}

struct PhysicalDeviceDescriptorIndexingProperties {
    var cStruct: VkPhysicalDeviceDescriptorIndexingProperties
}

struct DescriptorSetLayoutBindingFlagsCreateInfo {
    var cStruct: VkDescriptorSetLayoutBindingFlagsCreateInfo
}

struct DescriptorSetVariableDescriptorCountAllocateInfo {
    var cStruct: VkDescriptorSetVariableDescriptorCountAllocateInfo
}

struct DescriptorSetVariableDescriptorCountLayoutSupport {
    var cStruct: VkDescriptorSetVariableDescriptorCountLayoutSupport
}

struct AttachmentDescription2 {
    var cStruct: VkAttachmentDescription2
}

struct AttachmentReference2 {
    var cStruct: VkAttachmentReference2
}

struct SubpassDescription2 {
    var cStruct: VkSubpassDescription2
}

struct SubpassDependency2 {
    var cStruct: VkSubpassDependency2
}

struct RenderPassCreateInfo2 {
    var cStruct: VkRenderPassCreateInfo2
}

struct SubpassBeginInfo {
    var cStruct: VkSubpassBeginInfo
}

struct SubpassEndInfo {
    var cStruct: VkSubpassEndInfo
}

struct PhysicalDeviceTimelineSemaphoreFeatures {
    var cStruct: VkPhysicalDeviceTimelineSemaphoreFeatures
}

struct PhysicalDeviceTimelineSemaphoreProperties {
    var cStruct: VkPhysicalDeviceTimelineSemaphoreProperties
}

struct SemaphoreTypeCreateInfo {
    var cStruct: VkSemaphoreTypeCreateInfo
}

struct TimelineSemaphoreSubmitInfo {
    var cStruct: VkTimelineSemaphoreSubmitInfo
}

struct SemaphoreWaitInfo {
    var cStruct: VkSemaphoreWaitInfo
}

struct SemaphoreSignalInfo {
    var cStruct: VkSemaphoreSignalInfo
}

struct VertexInputBindingDivisorDescriptionEXT {
    var cStruct: VkVertexInputBindingDivisorDescriptionEXT
}

struct PipelineVertexInputDivisorStateCreateInfoEXT {
    var cStruct: VkPipelineVertexInputDivisorStateCreateInfoEXT
}

struct PhysicalDeviceVertexAttributeDivisorPropertiesEXT {
    var cStruct: VkPhysicalDeviceVertexAttributeDivisorPropertiesEXT
}

struct PhysicalDevicePCIBusInfoPropertiesEXT {
    var cStruct: VkPhysicalDevicePCIBusInfoPropertiesEXT
}

struct CommandBufferInheritanceConditionalRenderingInfoEXT {
    var cStruct: VkCommandBufferInheritanceConditionalRenderingInfoEXT
}

struct PhysicalDevice8BitStorageFeatures {
    var cStruct: VkPhysicalDevice8BitStorageFeatures
}

struct PhysicalDeviceConditionalRenderingFeaturesEXT {
    var cStruct: VkPhysicalDeviceConditionalRenderingFeaturesEXT
}

struct PhysicalDeviceVulkanMemoryModelFeatures {
    var cStruct: VkPhysicalDeviceVulkanMemoryModelFeatures
}

struct PhysicalDeviceShaderAtomicInt64Features {
    var cStruct: VkPhysicalDeviceShaderAtomicInt64Features
}

struct PhysicalDeviceVertexAttributeDivisorFeaturesEXT {
    var cStruct: VkPhysicalDeviceVertexAttributeDivisorFeaturesEXT
}

struct QueueFamilyCheckpointPropertiesNV {
    var cStruct: VkQueueFamilyCheckpointPropertiesNV
}

struct CheckpointDataNV {
    var cStruct: VkCheckpointDataNV
}

struct PhysicalDeviceDepthStencilResolveProperties {
    var cStruct: VkPhysicalDeviceDepthStencilResolveProperties
}

struct SubpassDescriptionDepthStencilResolve {
    var cStruct: VkSubpassDescriptionDepthStencilResolve
}

struct ImageViewASTCDecodeModeEXT {
    var cStruct: VkImageViewASTCDecodeModeEXT
}

struct PhysicalDeviceASTCDecodeFeaturesEXT {
    var cStruct: VkPhysicalDeviceASTCDecodeFeaturesEXT
}

struct PhysicalDeviceTransformFeedbackFeaturesEXT {
    var cStruct: VkPhysicalDeviceTransformFeedbackFeaturesEXT
}

struct PhysicalDeviceTransformFeedbackPropertiesEXT {
    var cStruct: VkPhysicalDeviceTransformFeedbackPropertiesEXT
}

struct PipelineRasterizationStateStreamCreateInfoEXT {
    var cStruct: VkPipelineRasterizationStateStreamCreateInfoEXT
}

struct PhysicalDeviceRepresentativeFragmentTestFeaturesNV {
    var cStruct: VkPhysicalDeviceRepresentativeFragmentTestFeaturesNV
}

struct PipelineRepresentativeFragmentTestStateCreateInfoNV {
    var cStruct: VkPipelineRepresentativeFragmentTestStateCreateInfoNV
}

struct PhysicalDeviceExclusiveScissorFeaturesNV {
    var cStruct: VkPhysicalDeviceExclusiveScissorFeaturesNV
}

struct PipelineViewportExclusiveScissorStateCreateInfoNV {
    var cStruct: VkPipelineViewportExclusiveScissorStateCreateInfoNV
}

struct PhysicalDeviceCornerSampledImageFeaturesNV {
    var cStruct: VkPhysicalDeviceCornerSampledImageFeaturesNV
}

struct PhysicalDeviceComputeShaderDerivativesFeaturesNV {
    var cStruct: VkPhysicalDeviceComputeShaderDerivativesFeaturesNV
}

struct PhysicalDeviceFragmentShaderBarycentricFeaturesNV {
    var cStruct: VkPhysicalDeviceFragmentShaderBarycentricFeaturesNV
}

struct PhysicalDeviceShaderImageFootprintFeaturesNV {
    var cStruct: VkPhysicalDeviceShaderImageFootprintFeaturesNV
}

struct PhysicalDeviceDedicatedAllocationImageAliasingFeaturesNV {
    var cStruct: VkPhysicalDeviceDedicatedAllocationImageAliasingFeaturesNV
}

struct ShadingRatePaletteNV {
    var cStruct: VkShadingRatePaletteNV
}

struct PipelineViewportShadingRateImageStateCreateInfoNV {
    var cStruct: VkPipelineViewportShadingRateImageStateCreateInfoNV
}

struct PhysicalDeviceShadingRateImageFeaturesNV {
    var cStruct: VkPhysicalDeviceShadingRateImageFeaturesNV
}

struct PhysicalDeviceShadingRateImagePropertiesNV {
    var cStruct: VkPhysicalDeviceShadingRateImagePropertiesNV
}

struct CoarseSampleLocationNV {
    var cStruct: VkCoarseSampleLocationNV
}

struct CoarseSampleOrderCustomNV {
    var cStruct: VkCoarseSampleOrderCustomNV
}

struct PipelineViewportCoarseSampleOrderStateCreateInfoNV {
    var cStruct: VkPipelineViewportCoarseSampleOrderStateCreateInfoNV
}

struct PhysicalDeviceMeshShaderFeaturesNV {
    var cStruct: VkPhysicalDeviceMeshShaderFeaturesNV
}

struct PhysicalDeviceMeshShaderPropertiesNV {
    var cStruct: VkPhysicalDeviceMeshShaderPropertiesNV
}

struct DrawMeshTasksIndirectCommandNV {
    var cStruct: VkDrawMeshTasksIndirectCommandNV
}

struct RayTracingShaderGroupCreateInfoNV {
    var cStruct: VkRayTracingShaderGroupCreateInfoNV
}

struct RayTracingPipelineCreateInfoNV {
    var cStruct: VkRayTracingPipelineCreateInfoNV
}

struct GeometryTrianglesNV {
    var cStruct: VkGeometryTrianglesNV
}

struct GeometryAABBNV {
    var cStruct: VkGeometryAABBNV
}

struct GeometryDataNV {
    var cStruct: VkGeometryDataNV
}

struct GeometryNV {
    var cStruct: VkGeometryNV
}

struct AccelerationStructureInfoNV {
    var cStruct: VkAccelerationStructureInfoNV
}

struct AccelerationStructureCreateInfoNV {
    var cStruct: VkAccelerationStructureCreateInfoNV
}

struct AccelerationStructureMemoryRequirementsInfoNV {
    var cStruct: VkAccelerationStructureMemoryRequirementsInfoNV
}

struct PhysicalDeviceRayTracingPropertiesNV {
    var cStruct: VkPhysicalDeviceRayTracingPropertiesNV
}

struct DrmFormatModifierPropertiesListEXT {
    var cStruct: VkDrmFormatModifierPropertiesListEXT
}

struct DrmFormatModifierPropertiesEXT {
    var cStruct: VkDrmFormatModifierPropertiesEXT
}

struct PhysicalDeviceImageDrmFormatModifierInfoEXT {
    var cStruct: VkPhysicalDeviceImageDrmFormatModifierInfoEXT
}

struct ImageDrmFormatModifierListCreateInfoEXT {
    var cStruct: VkImageDrmFormatModifierListCreateInfoEXT
}

struct ImageDrmFormatModifierExplicitCreateInfoEXT {
    var cStruct: VkImageDrmFormatModifierExplicitCreateInfoEXT
}

struct ImageDrmFormatModifierPropertiesEXT {
    var cStruct: VkImageDrmFormatModifierPropertiesEXT
}

struct ImageStencilUsageCreateInfo {
    var cStruct: VkImageStencilUsageCreateInfo
}

struct DeviceMemoryOverallocationCreateInfoAMD {
    var cStruct: VkDeviceMemoryOverallocationCreateInfoAMD
}

struct PhysicalDeviceFragmentDensityMapFeaturesEXT {
    var cStruct: VkPhysicalDeviceFragmentDensityMapFeaturesEXT
}

struct PhysicalDeviceFragmentDensityMapPropertiesEXT {
    var cStruct: VkPhysicalDeviceFragmentDensityMapPropertiesEXT
}

struct RenderPassFragmentDensityMapCreateInfoEXT {
    var cStruct: VkRenderPassFragmentDensityMapCreateInfoEXT
}

struct PhysicalDeviceScalarBlockLayoutFeatures {
    var cStruct: VkPhysicalDeviceScalarBlockLayoutFeatures
}

struct SurfaceProtectedCapabilitiesKHR {
    var cStruct: VkSurfaceProtectedCapabilitiesKHR
}

struct PhysicalDeviceUniformBufferStandardLayoutFeatures {
    var cStruct: VkPhysicalDeviceUniformBufferStandardLayoutFeatures
}

struct PhysicalDeviceDepthClipEnableFeaturesEXT {
    var cStruct: VkPhysicalDeviceDepthClipEnableFeaturesEXT
}

struct PipelineRasterizationDepthClipStateCreateInfoEXT {
    var cStruct: VkPipelineRasterizationDepthClipStateCreateInfoEXT
}

struct PhysicalDeviceMemoryBudgetPropertiesEXT {
    var cStruct: VkPhysicalDeviceMemoryBudgetPropertiesEXT
}

struct PhysicalDeviceMemoryPriorityFeaturesEXT {
    var cStruct: VkPhysicalDeviceMemoryPriorityFeaturesEXT
}

struct MemoryPriorityAllocateInfoEXT {
    var cStruct: VkMemoryPriorityAllocateInfoEXT
}

struct PhysicalDeviceBufferDeviceAddressFeatures {
    var cStruct: VkPhysicalDeviceBufferDeviceAddressFeatures
}

struct PhysicalDeviceBufferDeviceAddressFeaturesEXT {
    var cStruct: VkPhysicalDeviceBufferDeviceAddressFeaturesEXT
}

struct BufferDeviceAddressInfo {
    var cStruct: VkBufferDeviceAddressInfo
}

struct BufferOpaqueCaptureAddressCreateInfo {
    var cStruct: VkBufferOpaqueCaptureAddressCreateInfo
}

struct BufferDeviceAddressCreateInfoEXT {
    var cStruct: VkBufferDeviceAddressCreateInfoEXT
}

struct PhysicalDeviceImageViewImageFormatInfoEXT {
    var cStruct: VkPhysicalDeviceImageViewImageFormatInfoEXT
}

struct FilterCubicImageViewImageFormatPropertiesEXT {
    var cStruct: VkFilterCubicImageViewImageFormatPropertiesEXT
}

struct PhysicalDeviceImagelessFramebufferFeatures {
    var cStruct: VkPhysicalDeviceImagelessFramebufferFeatures
}

struct FramebufferAttachmentsCreateInfo {
    var cStruct: VkFramebufferAttachmentsCreateInfo
}

struct FramebufferAttachmentImageInfo {
    var cStruct: VkFramebufferAttachmentImageInfo
}

struct RenderPassAttachmentBeginInfo {
    var cStruct: VkRenderPassAttachmentBeginInfo
}

struct PhysicalDeviceTextureCompressionASTCHDRFeaturesEXT {
    var cStruct: VkPhysicalDeviceTextureCompressionASTCHDRFeaturesEXT
}

struct PhysicalDeviceCooperativeMatrixFeaturesNV {
    var cStruct: VkPhysicalDeviceCooperativeMatrixFeaturesNV
}

struct PhysicalDeviceCooperativeMatrixPropertiesNV {
    var cStruct: VkPhysicalDeviceCooperativeMatrixPropertiesNV
}

struct CooperativeMatrixPropertiesNV {
    var cStruct: VkCooperativeMatrixPropertiesNV
}

struct PhysicalDeviceYcbcrImageArraysFeaturesEXT {
    var cStruct: VkPhysicalDeviceYcbcrImageArraysFeaturesEXT
}

struct ImageViewHandleInfoNVX {
    var cStruct: VkImageViewHandleInfoNVX
}

struct PipelineCreationFeedbackEXT {
    var cStruct: VkPipelineCreationFeedbackEXT
}

struct PipelineCreationFeedbackCreateInfoEXT {
    var cStruct: VkPipelineCreationFeedbackCreateInfoEXT
}

struct PhysicalDevicePerformanceQueryFeaturesKHR {
    var cStruct: VkPhysicalDevicePerformanceQueryFeaturesKHR
}

struct PhysicalDevicePerformanceQueryPropertiesKHR {
    var cStruct: VkPhysicalDevicePerformanceQueryPropertiesKHR
}

struct PerformanceCounterKHR {
    var cStruct: VkPerformanceCounterKHR
}

struct PerformanceCounterDescriptionKHR {
    var cStruct: VkPerformanceCounterDescriptionKHR
}

struct QueryPoolPerformanceCreateInfoKHR {
    var cStruct: VkQueryPoolPerformanceCreateInfoKHR
}

struct AcquireProfilingLockInfoKHR {
    var cStruct: VkAcquireProfilingLockInfoKHR
}

struct PerformanceQuerySubmitInfoKHR {
    var cStruct: VkPerformanceQuerySubmitInfoKHR
}

struct HeadlessSurfaceCreateInfoEXT {
    var cStruct: VkHeadlessSurfaceCreateInfoEXT
}

struct PhysicalDeviceCoverageReductionModeFeaturesNV {
    var cStruct: VkPhysicalDeviceCoverageReductionModeFeaturesNV
}

struct PipelineCoverageReductionStateCreateInfoNV {
    var cStruct: VkPipelineCoverageReductionStateCreateInfoNV
}

struct FramebufferMixedSamplesCombinationNV {
    var cStruct: VkFramebufferMixedSamplesCombinationNV
}

struct PhysicalDeviceShaderIntegerFunctions2FeaturesINTEL {
    var cStruct: VkPhysicalDeviceShaderIntegerFunctions2FeaturesINTEL
}

struct PerformanceValueINTEL {
    var cStruct: VkPerformanceValueINTEL
}

struct InitializePerformanceApiInfoINTEL {
    var cStruct: VkInitializePerformanceApiInfoINTEL
}

struct QueryPoolPerformanceQueryCreateInfoINTEL {
    var cStruct: VkQueryPoolPerformanceQueryCreateInfoINTEL
}

struct PerformanceMarkerInfoINTEL {
    var cStruct: VkPerformanceMarkerInfoINTEL
}

struct PerformanceStreamMarkerInfoINTEL {
    var cStruct: VkPerformanceStreamMarkerInfoINTEL
}

struct PerformanceOverrideInfoINTEL {
    var cStruct: VkPerformanceOverrideInfoINTEL
}

struct PerformanceConfigurationAcquireInfoINTEL {
    var cStruct: VkPerformanceConfigurationAcquireInfoINTEL
}

struct PhysicalDeviceShaderClockFeaturesKHR {
    var cStruct: VkPhysicalDeviceShaderClockFeaturesKHR
}

struct PhysicalDeviceIndexTypeUint8FeaturesEXT {
    var cStruct: VkPhysicalDeviceIndexTypeUint8FeaturesEXT
}

struct PhysicalDeviceShaderSMBuiltinsPropertiesNV {
    var cStruct: VkPhysicalDeviceShaderSMBuiltinsPropertiesNV
}

struct PhysicalDeviceShaderSMBuiltinsFeaturesNV {
    var cStruct: VkPhysicalDeviceShaderSMBuiltinsFeaturesNV
}

struct PhysicalDeviceFragmentShaderInterlockFeaturesEXT {
    var cStruct: VkPhysicalDeviceFragmentShaderInterlockFeaturesEXT
}

struct PhysicalDeviceSeparateDepthStencilLayoutsFeatures {
    var cStruct: VkPhysicalDeviceSeparateDepthStencilLayoutsFeatures
}

struct AttachmentReferenceStencilLayout {
    var cStruct: VkAttachmentReferenceStencilLayout
}

struct AttachmentDescriptionStencilLayout {
    var cStruct: VkAttachmentDescriptionStencilLayout
}

struct PhysicalDevicePipelineExecutablePropertiesFeaturesKHR {
    var cStruct: VkPhysicalDevicePipelineExecutablePropertiesFeaturesKHR
}

struct PipelineInfoKHR {
    var cStruct: VkPipelineInfoKHR
}

struct PipelineExecutablePropertiesKHR {
    var cStruct: VkPipelineExecutablePropertiesKHR
}

struct PipelineExecutableInfoKHR {
    var cStruct: VkPipelineExecutableInfoKHR
}

struct PipelineExecutableStatisticKHR {
    var cStruct: VkPipelineExecutableStatisticKHR
}

struct PipelineExecutableInternalRepresentationKHR {
    var cStruct: VkPipelineExecutableInternalRepresentationKHR
}

struct PhysicalDeviceShaderDemoteToHelperInvocationFeaturesEXT {
    var cStruct: VkPhysicalDeviceShaderDemoteToHelperInvocationFeaturesEXT
}

struct PhysicalDeviceTexelBufferAlignmentFeaturesEXT {
    var cStruct: VkPhysicalDeviceTexelBufferAlignmentFeaturesEXT
}

struct PhysicalDeviceTexelBufferAlignmentPropertiesEXT {
    var cStruct: VkPhysicalDeviceTexelBufferAlignmentPropertiesEXT
}

struct PhysicalDeviceSubgroupSizeControlFeaturesEXT {
    var cStruct: VkPhysicalDeviceSubgroupSizeControlFeaturesEXT
}

struct PhysicalDeviceSubgroupSizeControlPropertiesEXT {
    var cStruct: VkPhysicalDeviceSubgroupSizeControlPropertiesEXT
}

struct PipelineShaderStageRequiredSubgroupSizeCreateInfoEXT {
    var cStruct: VkPipelineShaderStageRequiredSubgroupSizeCreateInfoEXT
}

struct MemoryOpaqueCaptureAddressAllocateInfo {
    var cStruct: VkMemoryOpaqueCaptureAddressAllocateInfo
}

struct DeviceMemoryOpaqueCaptureAddressInfo {
    var cStruct: VkDeviceMemoryOpaqueCaptureAddressInfo
}

struct PhysicalDeviceLineRasterizationFeaturesEXT {
    var cStruct: VkPhysicalDeviceLineRasterizationFeaturesEXT
}

struct PhysicalDeviceLineRasterizationPropertiesEXT {
    var cStruct: VkPhysicalDeviceLineRasterizationPropertiesEXT
}

struct PipelineRasterizationLineStateCreateInfoEXT {
    var cStruct: VkPipelineRasterizationLineStateCreateInfoEXT
}

struct PhysicalDevicePipelineCreationCacheControlFeaturesEXT {
    var cStruct: VkPhysicalDevicePipelineCreationCacheControlFeaturesEXT
}

struct PhysicalDeviceVulkan11Features {
    var cStruct: VkPhysicalDeviceVulkan11Features
}

struct PhysicalDeviceVulkan11Properties {
    var cStruct: VkPhysicalDeviceVulkan11Properties
}

struct PhysicalDeviceVulkan12Features {
    var cStruct: VkPhysicalDeviceVulkan12Features
}

struct PhysicalDeviceVulkan12Properties {
    var cStruct: VkPhysicalDeviceVulkan12Properties
}

struct PipelineCompilerControlCreateInfoAMD {
    var cStruct: VkPipelineCompilerControlCreateInfoAMD
}

struct PhysicalDeviceCoherentMemoryFeaturesAMD {
    var cStruct: VkPhysicalDeviceCoherentMemoryFeaturesAMD
}

struct PhysicalDeviceToolPropertiesEXT {
    var cStruct: VkPhysicalDeviceToolPropertiesEXT
}

struct RenderPassTransformBeginInfoQCOM {
    var cStruct: VkRenderPassTransformBeginInfoQCOM
}

struct CommandBufferInheritanceRenderPassTransformInfoQCOM {
    var cStruct: VkCommandBufferInheritanceRenderPassTransformInfoQCOM
}

struct PhysicalDeviceDiagnosticsConfigFeaturesNV {
    var cStruct: VkPhysicalDeviceDiagnosticsConfigFeaturesNV
}

struct DeviceDiagnosticsConfigCreateInfoNV {
    var cStruct: VkDeviceDiagnosticsConfigCreateInfoNV
}

