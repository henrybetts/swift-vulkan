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

