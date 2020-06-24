import CGLFW
import Vulkan

struct Vector2 {
    let x: Float
    let y: Float
}

struct Vector3 {
    let x: Float
    let y: Float
    let z: Float
}

struct Vertex {
    let position: Vector2
    let color: Vector3
}

struct AppError: Error, CustomStringConvertible {
    let description: String
}

class App {
    
    /// A GLFW window handle.
    var window: OpaquePointer!
    
    /// The size of the window.
    let windowSize = Extent2D(width: 800, height: 600)
    
    /// Initializes GLFW and creates a window.
    func createWindow() throws {
        guard glfwInit() == GLFW_TRUE else {
            throw AppError(description: "Failed to initialize GLFW.")
        }
        glfwWindowHint(GLFW_CLIENT_API, GLFW_NO_API)
        glfwWindowHint(GLFW_RESIZABLE, GLFW_FALSE)
        guard let window = glfwCreateWindow(Int32(windowSize.width), Int32(windowSize.height), "Vulkan Triangle", nil, nil) else {
            throw AppError(description: "Failed to create window.")
        }
        self.window = window
    }

    /// A Vulkan instance.
    var instance: Instance!
    
    /// A Vulkan debug messenger.
    var debugMessenger: DebugUtilsMessengerEXT!
    
    /// Creates a Vulkan instance with the extensions required by GLFW.
    func createInstance() throws {
        var count: UInt32 = 0
        let extensionsPtr = glfwGetRequiredInstanceExtensions(&count)
        var extensions = UnsafeBufferPointer(start: extensionsPtr, count: Int(count)).map{ String(cString: $0!) }
        var layers: [String] = []
        
        #if DEBUG
        extensions.append(VK_EXT_DEBUG_UTILS_EXTENSION_NAME)
        layers.append("VK_LAYER_KHRONOS_validation")
        #endif
        
        let entry = try Entry()
        instance = try entry.createInstance(
            createInfo: .init(
                flags: [],
                applicationInfo: nil,
                enabledLayerNames: layers,
                enabledExtensionNames: extensions
            )
        )
        
        #if DEBUG
        debugMessenger = try instance.createDebugUtilsMessengerEXT(
            createInfo: .init(
                flags: [],
                messageSeverity: [.warning, .error],
                messageType: [.general, .performance, .validation],
                pfnUserCallback: { severity, type, callbackData, userData in
                    print(String(cString: callbackData!.pointee.pMessage))
                    return 0
                },
                userData: nil
            )
        )
        #endif
    }

    /// A Vulkan surface.
    var surface: SurfaceKHR!
    
    /// Creates a surface, via GLFW.
    func createSurface() throws {
        var cSurface: VkSurfaceKHR!
        let result = instance.withHandle { handle in
            glfwCreateWindowSurface(handle, window, nil, &cSurface)
        }
        guard result.rawValue >= 0 else {
            throw Result(rawValue: result.rawValue)!
        }
        surface = SurfaceKHR(handle: cSurface, instance: instance)
    }

    /// A Vulkan physical device.
    var physicalDevice: PhysicalDevice!
    
    /// The index of a graphics queue family.
    var graphicsFamilyIndex: UInt32!
    
    /// The index of a presentation queue family.
    var presentationFamilyIndex: UInt32!
    
    /// Selects a suitable physical device, as well as the graphics and presentation queue families.
    func selectPhysicalDevice() throws {
        let physicalDevices = try instance.getPhysicalDevices()
        
        for physicalDevice in physicalDevices {
            
            // Device must support the VK_KHR_swapchain extension
            let extensions = try physicalDevice.getDeviceExtensionProperties(layerName: nil)
            guard extensions.contains(where: { $0.extensionName == VK_KHR_SWAPCHAIN_EXTENSION_NAME }) else {
                continue
            }
            
            // Device must support the b8g8r8a8Srgb / srgbNonLinear surface format.
            let surfaceFormats = try physicalDevice.getSurfaceFormatsKHR(surface: surface)
            guard surfaceFormats.contains(where: { $0.format == .b8g8r8a8Srgb && $0.colorSpace == .srgbNonlinear }) else {
                continue
            }
            
            // Device must have a graphics queue family.
            let queueFamilies = physicalDevice.getQueueFamilyProperties()
            guard let graphicsFamilyIndex = queueFamilies.firstIndex(where: { $0.queueFlags.contains(.graphics) }) else {
                continue
            }
            
            // Device must have a presentation queue family that is compatible with the surface.
            let queueFamilyIndices = 0..<UInt32(queueFamilies.count)
            guard let presentationFamilyIndex = try queueFamilyIndices.first(where: {
                try physicalDevice.getSurfaceSupportKHR(queueFamilyIndex: $0, surface: surface)
            }) else {
                continue
            }
            
            self.graphicsFamilyIndex = UInt32(graphicsFamilyIndex)
            self.presentationFamilyIndex = presentationFamilyIndex
            self.physicalDevice = physicalDevice
            break
        }
        
        guard physicalDevice != nil else {
            throw AppError(description: "Could not find a suitable device.")
        }
    }

    /// A Vulkan device.
    var device: Device!
    
    /// A Vulkan queue that supports graphics commands.
    var graphicsQueue: Queue!
    
    /// A Vulkan queue that supports presentation commands.
    var presentationQueue: Queue!
    
    /// Creates a logical device and retrieves its queues.
    func createDevice() throws {
        let families: Set = [graphicsFamilyIndex!, presentationFamilyIndex!]
        
        let queueInfos = families.map {
            DeviceQueueCreateInfo(
                flags: [],
                queueFamilyIndex: UInt32($0),
                queuePriorities: [1.0]
            )
        }
        
        device = try physicalDevice.createDevice(
            createInfo: .init(
                flags: [],
                queueCreateInfos: queueInfos,
                enabledLayerNames: [],
                enabledExtensionNames: [VK_KHR_SWAPCHAIN_EXTENSION_NAME],
                enabledFeatures: nil
            )
        )
        
        graphicsQueue = device.getQueue(queueFamilyIndex: graphicsFamilyIndex, queueIndex: 0)
        presentationQueue = device.getQueue(queueFamilyIndex: presentationFamilyIndex, queueIndex: 0)
    }

    /// A Vulkan swapchain.
    var swapchain: SwapchainKHR!
    
    /// The size of the swapchain images.
    var swapchainExtent: Extent2D!
    
    /// An array of Vulkan swapchain images.
    var swapchainImages: [Image] = []
    
    /// Creates a swapchain and retrieves its images.
    func createSwapchain() throws {
        let capabilities = try physicalDevice.getSurfaceCapabilitiesKHR(surface: surface)
        
        var imageCount = capabilities.minImageCount + 1
        if capabilities.maxImageCount > 0 && imageCount > capabilities.maxImageCount {
            imageCount = capabilities.maxImageCount
        }
        
        if capabilities.currentExtent.width != UInt32.max {
            swapchainExtent = capabilities.currentExtent
        } else {
            let width = max(capabilities.minImageExtent.width, min(capabilities.maxImageExtent.width, windowSize.width))
            let height = max(capabilities.minImageExtent.height, min(capabilities.maxImageExtent.height, windowSize.height))
            swapchainExtent = Extent2D(width: width, height: height)
        }
        
        swapchain = try device.createSwapchainKHR(
            createInfo: .init(
                flags: [],
                surface: surface,
                minImageCount: imageCount,
                imageFormat: .b8g8r8a8Srgb,
                imageColorSpace: .srgbNonlinear,
                imageExtent: swapchainExtent,
                imageArrayLayers: 1,
                imageUsage: .colorAttachment,
                imageSharingMode: graphicsFamilyIndex == presentationFamilyIndex ? .exclusive : .concurrent,
                queueFamilyIndices: [graphicsFamilyIndex, presentationFamilyIndex],
                preTransform: capabilities.currentTransform,
                compositeAlpha: .opaque,
                presentMode: .fifo,
                clipped: true,
                oldSwapchain: nil
            )
        )
        
        swapchainImages = try swapchain.getImagesKHR()
    }
    
    /// An array of Vulkan image views.
    var imageViews: [ImageView] = []
    
    /// Creates an image view for each of the swapchain images.
    func createImageViews() throws {
        for image in swapchainImages {
            let imageView = try device.createImageView(
                createInfo: .init(
                    flags: [],
                    image: image,
                    viewType: .type2d,
                    format: .b8g8r8a8Srgb,
                    components: .init(r: .r, g: .g, b: .b, a: .a),
                    subresourceRange: .init(
                        aspectMask: .color,
                        baseMipLevel: 0,
                        levelCount: 1,
                        baseArrayLayer: 0,
                        layerCount: 1
                    )
                )
            )
            imageViews.append(imageView)
        }
    }
    
    /// A Vulkan render pass.
    var renderPass: RenderPass!
    
    /// Creates a Vulkan render pass.
    func createRenderPass() throws {
        let colorAttachment = AttachmentDescription(
            flags: [],
            format: .b8g8r8a8Srgb,
            samples: .type1,
            loadOp: .clear,
            storeOp: .store,
            stencilLoadOp: .dontCare,
            stencilStoreOp: .dontCare,
            initialLayout: .undefined,
            finalLayout: .presentSrcKHR
        )
        
        let colorAttachmentRef = AttachmentReference(attachment: 0, layout: .colorAttachmentOptimal)
        
        let subpass = SubpassDescription(
            flags: [],
            pipelineBindPoint: .graphics,
            inputAttachments: [],
            colorAttachments: [colorAttachmentRef],
            resolveAttachments: nil,
            depthStencilAttachment: nil,
            preserveAttachments: []
        )
        
        let dependency = SubpassDependency(
            srcSubpass: VK_SUBPASS_EXTERNAL,
            dstSubpass: 0,
            srcStageMask: .colorAttachmentOutput,
            dstStageMask: .colorAttachmentOutput,
            srcAccessMask: [],
            dstAccessMask: .colorAttachmentWrite,
            dependencyFlags: []
        )
        
        renderPass = try device.createRenderPass(
            createInfo: .init(
                flags: [],
                attachments: [colorAttachment],
                subpasses: [subpass],
                dependencies: [dependency]
            )
        )
    }
    
    /// Creates a Vulkan shader module from the source file at the given path.
    func createShaderModule(path: String) throws -> ShaderModule {
        guard let buffer = readFile(path: path) else {
            throw AppError(description: "Failed to read file: \(path)")
        }
        
        return try buffer.withUnsafeBytes { bytes in
            try device.createShaderModule(
                createInfo: .init(
                    flags: [],
                    codeSize: buffer.count,
                    code: bytes.bindMemory(to: UInt32.self).baseAddress!
                )
            )
        }
    }
    
    /// A Vulkan pipeline layout.
    var pipelineLayout: PipelineLayout!
    
    /// A Vulkan graphics pipeline.
    var pipeline: Pipeline!
    
    /// Creates a Vulkan graphics pipeline.
    func createGraphicsPipeline() throws {
        let vertexShader = try createShaderModule(path: "vert.spv")
        let fragmentShader = try createShaderModule(path: "frag.spv")
        defer {
            vertexShader.destroy()
            fragmentShader.destroy()
        }
        
        let vertexStage = PipelineShaderStageCreateInfo(
            flags: [],
            stage: .vertex,
            module: vertexShader,
            name: "main",
            specializationInfo: nil
        )
        
        let fragmentStage = PipelineShaderStageCreateInfo(
            flags: [],
            stage: .fragment,
            module: fragmentShader,
            name: "main",
            specializationInfo: nil
        )
        
        let vertexBinding = VertexInputBindingDescription(
            binding: 0,
            stride: UInt32(MemoryLayout<Vertex>.stride),
            inputRate: .vertex
        )
        
        let positionAttribute = VertexInputAttributeDescription(
            location: 0,
            binding: 0,
            format: .r32g32Sfloat,
            offset: UInt32(MemoryLayout.offset(of: \Vertex.position)!)
        )
        
        let colorAttribute = VertexInputAttributeDescription(
            location: 1,
            binding: 0,
            format: .r32g32b32Sfloat,
            offset: UInt32(MemoryLayout.offset(of: \Vertex.color)!)
        )
        
        let vertexInputState = PipelineVertexInputStateCreateInfo(
            flags: [],
            vertexBindingDescriptions: [vertexBinding],
            vertexAttributeDescriptions: [positionAttribute, colorAttribute]
        )
        
        let inputAssemblyState = PipelineInputAssemblyStateCreateInfo(
            flags: [],
            topology: .triangleList,
            primitiveRestartEnable: false
        )
        
        let viewport = Viewport(
            x: 0,
            y: 0,
            width: Float(swapchainExtent.width),
            height: Float(swapchainExtent.height),
            minDepth: 0,
            maxDepth: 1
        )
        
        let scissor = Rect2D(offset: .init(x: 0, y: 0), extent: swapchainExtent)
        
        let viewportState = PipelineViewportStateCreateInfo(
            flags: [],
            viewports: [viewport],
            scissors: [scissor]
        )
        
        let rasterizationState = PipelineRasterizationStateCreateInfo(
            flags: [],
            depthClampEnable: false,
            rasterizerDiscardEnable: false,
            polygonMode: .fill,
            cullMode: .back,
            frontFace: .clockwise,
            depthBiasEnable: false,
            depthBiasConstantFactor: 0,
            depthBiasClamp: 0,
            depthBiasSlopeFactor: 0,
            lineWidth: 1
        )
        
        let multisampleState = PipelineMultisampleStateCreateInfo(
            flags: [],
            rasterizationSamples: .type1,
            sampleShadingEnable: false,
            minSampleShading: 0,
            sampleMask: nil,
            alphaToCoverageEnable: false,
            alphaToOneEnable: false
        )
        
        let colorBlendAttachmentState = PipelineColorBlendAttachmentState(
            blendEnable: false,
            srcColorBlendFactor: .zero,
            dstColorBlendFactor: .zero,
            colorBlendOp: .add,
            srcAlphaBlendFactor: .zero,
            dstAlphaBlendFactor: .zero,
            alphaBlendOp: .add,
            colorWriteMask: [.r, .g, .b, .a]
        )
        
        let colorBlendState = PipelineColorBlendStateCreateInfo(
            flags: [],
            logicOpEnable: false,
            logicOp: .copy,
            attachments: [colorBlendAttachmentState],
            blendConstants: (0, 0, 0, 0)
        )
        
        pipelineLayout = try device.createPipelineLayout(
            createInfo: .init(
                flags: [],
                setLayouts: [],
                pushConstantRanges: []
            )
        )
        
        let pipelineInfo = GraphicsPipelineCreateInfo(
            flags: [],
            stages: [vertexStage, fragmentStage],
            vertexInputState: vertexInputState,
            inputAssemblyState: inputAssemblyState,
            tessellationState: nil,
            viewportState: viewportState,
            rasterizationState: rasterizationState,
            multisampleState: multisampleState,
            depthStencilState: nil,
            colorBlendState: colorBlendState,
            dynamicState: nil,
            layout: pipelineLayout,
            renderPass: renderPass,
            subpass: 0,
            basePipelineHandle: nil,
            basePipelineIndex: 0
        )
        
        pipeline = try device.createGraphicsPipelines(
            pipelineCache: nil,
            createInfos: [pipelineInfo]
        )[0]
    }
    
    /// An array of Vulkan framebuffers.
    var framebuffers: [Framebuffer] = []
    
    /// Creates a Vulkan framebuffer for each of the swapchain image views.
    func createFramebuffers() throws {
        for imageView in imageViews {
            let framebuffer = try device.createFramebuffer(
                createInfo: .init(
                    flags: [],
                    renderPass: renderPass,
                    attachments: [imageView],
                    width: swapchainExtent.width,
                    height: swapchainExtent.height,
                    layers: 1
                )
            )
            framebuffers.append(framebuffer)
        }
    }
    
    /// Creates a Vulkan buffer and allocates memory for it, with the given properties.
    func createBuffer(size: VkDeviceSize, usage: BufferUsageFlags, properties: MemoryPropertyFlags) throws -> (Buffer, DeviceMemory) {
        let buffer = try device.createBuffer(
            createInfo: .init(
                flags: [],
                size: size,
                usage: usage,
                sharingMode: .exclusive,
                queueFamilyIndices: []
            )
        )
        
        let memoryRequirements = buffer.getMemoryRequirements()
        let memoryProperties = physicalDevice.getMemoryProperties()
        
        guard let memoryType = memoryProperties.memoryTypes.enumerated().first(where: { index, type in
            (memoryRequirements.memoryTypeBits & (1 << index) != 0) &&
                type.propertyFlags.contains(properties)
        }) else {
            throw AppError(description: "Could not find suitable memory type.")
        }
        
        let memory = try device.allocateMemory(
            allocateInfo: .init(
                allocationSize: memoryRequirements.size,
                memoryTypeIndex: UInt32(memoryType.offset)
            )
        )
        
        try buffer.bindMemory(memory: memory, memoryOffset: 0)
        
        return (buffer, memory)
    }
    
    /// An array of vertices that describe a triangle.
    let vertices = [
        Vertex(position: .init(x: 0, y: -0.5), color: .init(x: 1, y: 0, z: 0)),
        Vertex(position: .init(x: 0.5, y: 0.5), color: .init(x: 0, y: 1, z: 0)),
        Vertex(position: .init(x: -0.5, y: 0.5), color: .init(x: 0, y: 0, z: 1))
    ]
    
    /// The size, in bytes, of the vertices.
    var bufferSize: VkDeviceSize!
    
    /// A Vulkan buffer used to stage the vertices before transfering them to the GPU.
    var stagingBuffer: Buffer!
    
    /// Host visible memory that is bound to the staging buffer.
    var stagingBufferMemory: DeviceMemory!
    
    /// A Vulkan buffer used to store the vertices that will be accessed by the GPU.
    var vertexBuffer: Buffer!
    
    /// Device local memory that is bound to the vertex buffer.
    var vertexBufferMemory: DeviceMemory!
    
    /// Creates the staging and vertex buffers.
    func createVertexBuffer() throws {
        bufferSize = VkDeviceSize(MemoryLayout<Vertex>.stride * vertices.count)
        
        (stagingBuffer, stagingBufferMemory) = try createBuffer(size: bufferSize, usage: .transferSrc, properties: [.hostVisible, .hostCoherent])
        
        (vertexBuffer, vertexBufferMemory) = try createBuffer(size: bufferSize, usage: [.vertexBuffer, .transferDst], properties: .deviceLocal)
    }

    /// A Vulkan command pool.
    var commandPool: CommandPool!
    
    /// Creates a command pool.
    func createCommandPool() throws {
        commandPool = try device.createCommandPool(
            createInfo: .init(
                flags: [.resetCommandBuffer],
                queueFamilyIndex: graphicsFamilyIndex
            )
        )
    }
    
    /// Copies the vertices to the staging buffer, then transfers the contents of the staging buffer to the vertex buffer.
    func copyVertexBuffer() throws {
        let ptr = try stagingBufferMemory.mapMemory(offset: 0, size: bufferSize, flags: [])
        vertices.withUnsafeBytes { bytes in
            ptr.copyMemory(from: bytes.baseAddress!, byteCount: bytes.count)
        }
        stagingBufferMemory.unmapMemory()
        
        let commandBuffer = try device.allocateCommandBuffers(
            allocateInfo: .init(
                commandPool: commandPool,
                level: .primary,
                commandBufferCount: 1
            )
        )[0]
        defer {
            commandPool.freeCommandBuffers(commandBuffers: [commandBuffer])
        }
        
        try commandBuffer.begin(
            beginInfo: .init(
                flags: .oneTimeSubmit,
                inheritanceInfo: nil
            )
        )
        
        let copyRegion = BufferCopy(srcOffset: 0, dstOffset: 0, size: bufferSize)
        commandBuffer.cmdCopyBuffer(srcBuffer: stagingBuffer, dstBuffer: vertexBuffer, regions: [copyRegion])
        
        try commandBuffer.end()
        
        let submitInfo = SubmitInfo(
            waitSemaphores: [],
            waitDstStageMask: [],
            commandBuffers: [commandBuffer],
            signalSemaphores: []
        )
        try graphicsQueue.submit(submits: [submitInfo], fence: nil)
        try graphicsQueue.waitIdle()
    }

    /// A Vulkan command buffer.
    var commandBuffers: [CommandBuffer] = []
    
    /// Allocates a command buffer for each of the swapchain images.
    func createCommandBuffers() throws {
        commandBuffers = try device.allocateCommandBuffers(
            allocateInfo: .init(
                commandPool: commandPool,
                level: .primary,
                commandBufferCount: UInt32(swapchainImages.count)
            )
        )
    }
    
    /// Records a set of commands for each command buffer.
    func recordCommandBuffers() throws {
        for (commandBuffer, framebuffer) in zip(commandBuffers, framebuffers) {
            try commandBuffer.begin(beginInfo: .init(flags: [], inheritanceInfo: nil))
            
            let clearColor = VkClearValue(color: .init(float32: (0, 0, 0, 1)))
            commandBuffer.cmdBeginRenderPass(
                renderPassBegin: .init(
                    renderPass: renderPass,
                    framebuffer: framebuffer,
                    renderArea: .init(offset: .init(x: 0, y: 0), extent: swapchainExtent),
                    clearValues: [clearColor]),
                contents: .inline
            )
            
            commandBuffer.cmdBindPipeline(pipelineBindPoint: .graphics, pipeline: pipeline)
            commandBuffer.cmdBindVertexBuffers(firstBinding: 0, buffers: [vertexBuffer], offsets: [0])
            commandBuffer.cmdDraw(vertexCount: UInt32(vertices.count), instanceCount: 1, firstVertex: 0, firstInstance: 0)
            
            commandBuffer.cmdEndRenderPass()
            
            try commandBuffer.end()
        }
    }

    /// A semaphore to signal when an image is available for rendering.
    var imageAvailable: Semaphore!
    
    /// A semaphore to signal when rendering is complete.
    var renderComplete: Semaphore!
        
    /// Creates any objects required for synchronization.
    func createSync() throws {
        imageAvailable = try device.createSemaphore(createInfo: .init(flags: []))
        renderComplete = try device.createSemaphore(createInfo: .init(flags: []))
    }
    
    
    /// Aquires an image from the swapchain, submits the associated command buffer, and finally presents the image.
    func drawFrame() throws {
        let index = try swapchain.acquireNextImageKHR(timeout: UInt64.max, semaphore: imageAvailable, fence: nil)
        
        let graphicsSubmit = SubmitInfo(
            waitSemaphores: [imageAvailable],
            waitDstStageMask: [.colorAttachmentOutput],
            commandBuffers: [commandBuffers[Int(index)]],
            signalSemaphores: [renderComplete]
        )
        try graphicsQueue.submit(submits: [graphicsSubmit], fence: nil)
        
        try presentationQueue.presentKHR(
            presentInfo: .init(
                waitSemaphores: [renderComplete],
                swapchains: [swapchain],
                imageIndices: [index],
                results: nil
            )
        )
        
        // Note: Don't use this in the real world. It is not an efficient method of synchronization.
        try presentationQueue.waitIdle()
    }

    /// Runs the main draw loop until the window is closed.
    func mainLoop() throws {
        while glfwWindowShouldClose(window) == GLFW_FALSE {
            glfwPollEvents()
            try drawFrame()
        }
        try device.waitIdle()
    }
    
    /// Initializes and runs the application.
    func run() {
        do {
            try createWindow()
            try createInstance()
            try createSurface()
            try selectPhysicalDevice()
            try createDevice()
            try createSwapchain()
            try createImageViews()
            try createRenderPass()
            try createGraphicsPipeline()
            try createFramebuffers()
            try createVertexBuffer()
            try createCommandPool()
            try copyVertexBuffer()
            try createCommandBuffers()
            try recordCommandBuffers()
            try createSync()
            try mainLoop()
        } catch let e as Result {
            print("Encountered Vulkan error: \(e)")
        } catch let e {
            print(e)
        }
    }

    /// Cleans up any resources that were created.
    deinit {
        imageAvailable?.destroy()
        renderComplete?.destroy()
        commandPool?.destroy()
        vertexBuffer?.destroy()
        vertexBufferMemory?.freeMemory()
        stagingBuffer?.destroy()
        stagingBufferMemory?.freeMemory()
        for framebuffer in framebuffers { framebuffer.destroy() }
        pipeline?.destroy()
        pipelineLayout?.destroy()
        renderPass?.destroy()
        for imageView in imageViews { imageView.destroy() }
        swapchain?.destroyKHR()
        device?.destroy()
        surface?.destroyKHR()
        debugMessenger?.destroyEXT()
        instance?.destroy()
        glfwDestroyWindow(window)
        glfwTerminate()
    }
}

App().run()
