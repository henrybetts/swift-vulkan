import CVulkan

class Instance {
    let handle: VkInstance!

    init(handle: VkInstance!) {
        self.handle = handle
    }
}

class PhysicalDevice {
    let handle: VkPhysicalDevice!
    let instance: Instance

    init(handle: VkPhysicalDevice!, instance: Instance) {
        self.handle = handle
        self.instance = instance
    }
}

class Device {
    let handle: VkDevice!
    let physicalDevice: PhysicalDevice

    init(handle: VkDevice!, physicalDevice: PhysicalDevice) {
        self.handle = handle
        self.physicalDevice = physicalDevice
    }
}

class Queue {
    let handle: VkQueue!
    let device: Device

    init(handle: VkQueue!, device: Device) {
        self.handle = handle
        self.device = device
    }
}

class CommandBuffer {
    let handle: VkCommandBuffer!
    let commandPool: CommandPool

    init(handle: VkCommandBuffer!, commandPool: CommandPool) {
        self.handle = handle
        self.commandPool = commandPool
    }
}

class DeviceMemory {
    let handle: VkDeviceMemory!
    let device: Device

    init(handle: VkDeviceMemory!, device: Device) {
        self.handle = handle
        self.device = device
    }
}

class CommandPool {
    let handle: VkCommandPool!
    let device: Device

    init(handle: VkCommandPool!, device: Device) {
        self.handle = handle
        self.device = device
    }
}

class Buffer {
    let handle: VkBuffer!
    let device: Device

    init(handle: VkBuffer!, device: Device) {
        self.handle = handle
        self.device = device
    }
}

class BufferView {
    let handle: VkBufferView!
    let device: Device

    init(handle: VkBufferView!, device: Device) {
        self.handle = handle
        self.device = device
    }
}

class Image {
    let handle: VkImage!
    let device: Device

    init(handle: VkImage!, device: Device) {
        self.handle = handle
        self.device = device
    }
}

class ImageView {
    let handle: VkImageView!
    let device: Device

    init(handle: VkImageView!, device: Device) {
        self.handle = handle
        self.device = device
    }
}

class ShaderModule {
    let handle: VkShaderModule!
    let device: Device

    init(handle: VkShaderModule!, device: Device) {
        self.handle = handle
        self.device = device
    }
}

class Pipeline {
    let handle: VkPipeline!
    let device: Device

    init(handle: VkPipeline!, device: Device) {
        self.handle = handle
        self.device = device
    }
}

class PipelineLayout {
    let handle: VkPipelineLayout!
    let device: Device

    init(handle: VkPipelineLayout!, device: Device) {
        self.handle = handle
        self.device = device
    }
}

class Sampler {
    let handle: VkSampler!
    let device: Device

    init(handle: VkSampler!, device: Device) {
        self.handle = handle
        self.device = device
    }
}

class DescriptorSet {
    let handle: VkDescriptorSet!
    let descriptorPool: DescriptorPool

    init(handle: VkDescriptorSet!, descriptorPool: DescriptorPool) {
        self.handle = handle
        self.descriptorPool = descriptorPool
    }
}

class DescriptorSetLayout {
    let handle: VkDescriptorSetLayout!
    let device: Device

    init(handle: VkDescriptorSetLayout!, device: Device) {
        self.handle = handle
        self.device = device
    }
}

class DescriptorPool {
    let handle: VkDescriptorPool!
    let device: Device

    init(handle: VkDescriptorPool!, device: Device) {
        self.handle = handle
        self.device = device
    }
}

class Fence {
    let handle: VkFence!
    let device: Device

    init(handle: VkFence!, device: Device) {
        self.handle = handle
        self.device = device
    }
}

class Semaphore {
    let handle: VkSemaphore!
    let device: Device

    init(handle: VkSemaphore!, device: Device) {
        self.handle = handle
        self.device = device
    }
}

class Event {
    let handle: VkEvent!
    let device: Device

    init(handle: VkEvent!, device: Device) {
        self.handle = handle
        self.device = device
    }
}

class QueryPool {
    let handle: VkQueryPool!
    let device: Device

    init(handle: VkQueryPool!, device: Device) {
        self.handle = handle
        self.device = device
    }
}

class Framebuffer {
    let handle: VkFramebuffer!
    let device: Device

    init(handle: VkFramebuffer!, device: Device) {
        self.handle = handle
        self.device = device
    }
}

class RenderPass {
    let handle: VkRenderPass!
    let device: Device

    init(handle: VkRenderPass!, device: Device) {
        self.handle = handle
        self.device = device
    }
}

class PipelineCache {
    let handle: VkPipelineCache!
    let device: Device

    init(handle: VkPipelineCache!, device: Device) {
        self.handle = handle
        self.device = device
    }
}

class IndirectCommandsLayoutNV {
    let handle: VkIndirectCommandsLayoutNV!
    let device: Device

    init(handle: VkIndirectCommandsLayoutNV!, device: Device) {
        self.handle = handle
        self.device = device
    }
}

class DescriptorUpdateTemplate {
    let handle: VkDescriptorUpdateTemplate!
    let device: Device

    init(handle: VkDescriptorUpdateTemplate!, device: Device) {
        self.handle = handle
        self.device = device
    }
}

class SamplerYcbcrConversion {
    let handle: VkSamplerYcbcrConversion!
    let device: Device

    init(handle: VkSamplerYcbcrConversion!, device: Device) {
        self.handle = handle
        self.device = device
    }
}

class ValidationCacheEXT {
    let handle: VkValidationCacheEXT!
    let device: Device

    init(handle: VkValidationCacheEXT!, device: Device) {
        self.handle = handle
        self.device = device
    }
}

class PerformanceConfigurationINTEL {
    let handle: VkPerformanceConfigurationINTEL!
    let device: Device

    init(handle: VkPerformanceConfigurationINTEL!, device: Device) {
        self.handle = handle
        self.device = device
    }
}

class DisplayKHR {
    let handle: VkDisplayKHR!
    let physicalDevice: PhysicalDevice

    init(handle: VkDisplayKHR!, physicalDevice: PhysicalDevice) {
        self.handle = handle
        self.physicalDevice = physicalDevice
    }
}

class DisplayModeKHR {
    let handle: VkDisplayModeKHR!
    let display: DisplayKHR

    init(handle: VkDisplayModeKHR!, display: DisplayKHR) {
        self.handle = handle
        self.display = display
    }
}

class SurfaceKHR {
    let handle: VkSurfaceKHR!
    let instance: Instance

    init(handle: VkSurfaceKHR!, instance: Instance) {
        self.handle = handle
        self.instance = instance
    }
}

class SwapchainKHR {
    let handle: VkSwapchainKHR!
    let surface: SurfaceKHR

    init(handle: VkSwapchainKHR!, surface: SurfaceKHR) {
        self.handle = handle
        self.surface = surface
    }
}

class DebugReportCallbackEXT {
    let handle: VkDebugReportCallbackEXT!
    let instance: Instance

    init(handle: VkDebugReportCallbackEXT!, instance: Instance) {
        self.handle = handle
        self.instance = instance
    }
}

class DebugUtilsMessengerEXT {
    let handle: VkDebugUtilsMessengerEXT!
    let instance: Instance

    init(handle: VkDebugUtilsMessengerEXT!, instance: Instance) {
        self.handle = handle
        self.instance = instance
    }
}

