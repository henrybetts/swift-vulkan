import CGLFW
import Vulkan

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
        guard let window = glfwCreateWindow(Int32(windowSize.width), Int32(windowSize.height), "Vulkan Clear Color", nil, nil) else {
            throw AppError(description: "Failed to create window.")
        }
        self.window = window
    }

    /// A Vulkan instance.
    var instance: Instance!
    
    /// Creates a Vulkan instance with the extensions required by GLFW.
    func createInstance() throws {
        var count: UInt32 = 0
        let extensionsPtr = glfwGetRequiredInstanceExtensions(&count)
        let extensions = UnsafeBufferPointer(start: extensionsPtr, count: Int(count)).map{ String(cString: $0!) }
        
        let entry = try Entry()
        instance = try entry.createInstance(
            createInfo: .init(
                flags: [],
                applicationInfo: nil,
                enabledLayerNames: [],
                enabledExtensionNames: extensions
            )
        )
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
        let graphicsQueueInfo = DeviceQueueCreateInfo(
            flags: [],
            queueFamilyIndex: graphicsFamilyIndex,
            queuePriorities: [1.0]
        )
        
        let presentationQueueInfo = DeviceQueueCreateInfo(
            flags: [],
            queueFamilyIndex: presentationFamilyIndex,
            queuePriorities: [1.0]
        )
        
        device = try physicalDevice.createDevice(
            createInfo: .init(
                flags: [],
                queueCreateInfos: [graphicsQueueInfo, presentationQueueInfo],
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
    
    /// An array of Vulkan swapchain images.
    var swapchainImages: [Image] = []
    
    /// Creates a swapchain and retrieves its images.
    func createSwapchain() throws {
        let capabilities = try physicalDevice.getSurfaceCapabilitiesKHR(surface: surface)
        
        var imageCount = capabilities.minImageCount + 1
        if capabilities.maxImageCount > 0 && imageCount > capabilities.maxImageCount {
            imageCount = capabilities.maxImageCount
        }
        
        let extent: Extent2D
        if capabilities.currentExtent.width != UInt32.max {
            extent = capabilities.currentExtent
        } else {
            let width = max(capabilities.minImageExtent.width, min(capabilities.maxImageExtent.width, windowSize.width))
            let height = max(capabilities.minImageExtent.height, min(capabilities.maxImageExtent.height, windowSize.height))
            extent = Extent2D(width: width, height: height)
        }
        
        swapchain = try device.createSwapchainKHR(
            createInfo: .init(
                flags: [],
                surface: surface,
                minImageCount: imageCount,
                imageFormat: .b8g8r8a8Srgb,
                imageColorSpace: .srgbNonlinear,
                imageExtent: extent,
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

    /// A Vulkan command pool.
    var commandPool: CommandPool!
    
    /// Creates a command pool.
    func createCommandPool() throws {
        commandPool = try device.createCommandPool(
            createInfo: .init(
                flags: [],
                queueFamilyIndex: graphicsFamilyIndex
            )
        )
    }

    /// A Vulkan command buffer.
    var commandBuffer: CommandBuffer!
    
    /// Allocates a single command buffer.
    func createCommandBuffer() throws {
        commandBuffer = try device.allocateCommandBuffers(
            allocateInfo: .init(
                commandPool: commandPool,
                level: .primary,
                commandBufferCount: 1
            )
        )[0]
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

    /// The hue component of the clear color.
    var hue: Float = 0.0
    
    /// Records a command to clear an image with a color that is updated each time.
    func recordCommandBuffer(image: Image) throws {
        try commandBuffer.begin(beginInfo: .init(flags: [], inheritanceInfo: nil))
        
        hue = (hue + 0.5).truncatingRemainder(dividingBy: 360)
        let rgb = hsvToRgb(h: hue, s: 0.9, v: 0.9)
        var color = VkClearColorValue.init(float32: (rgb.r, rgb.g, rgb.b, 1.0))
        
        let range = ImageSubresourceRange(
            aspectMask: .color,
            baseMipLevel: 0,
            levelCount: 1,
            baseArrayLayer: 0,
            layerCount: 1)
        
        commandBuffer.cmdClearColorImage(
            image: image,
            imageLayout: .general,
            color: &color,
            ranges: [range]
        )
        
        try commandBuffer.end()
    }
    
    /// Aquires an image from the swapchain, records and submits the command buffer, and finally presents the image.
    func drawFrame() throws {
        let index = try swapchain.acquireNextImageKHR(timeout: UInt64.max, semaphore: imageAvailable, fence: nil)
        
        try recordCommandBuffer(image: swapchainImages[Int(index)])
        
        let graphicsSubmit = SubmitInfo(
            waitSemaphores: [imageAvailable],
            waitDstStageMask: [],
            commandBuffers: [commandBuffer],
            signalSemaphores: [renderComplete]
        )
        try graphicsQueue.submit(submits: [graphicsSubmit], fence: nil)
        
        var result = VkResult(rawValue: 0)
        try presentationQueue.presentKHR(
            presentInfo: .init(
                waitSemaphores: [renderComplete],
                swapchains: [swapchain],
                imageIndices: [index],
                results: &result
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
            try createCommandPool()
            try createCommandBuffer()
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
        swapchain?.destroyKHR()
        device?.destroy()
        surface?.destroyKHR()
        instance?.destroy()
        glfwDestroyWindow(window)
        glfwTerminate()
    }
}

App().run()
