import CVulkan

struct Instance {
    let handle: VkInstance!
}

struct PhysicalDevice {
    let handle: VkPhysicalDevice!
}

struct Device {
    let handle: VkDevice!
}

struct Queue {
    let handle: VkQueue!
}

struct CommandBuffer {
    let handle: VkCommandBuffer!
}

struct DeviceMemory {
    let handle: VkDeviceMemory!
}

struct CommandPool {
    let handle: VkCommandPool!
}

struct Buffer {
    let handle: VkBuffer!
}

struct BufferView {
    let handle: VkBufferView!
}

struct Image {
    let handle: VkImage!
}

struct ImageView {
    let handle: VkImageView!
}

struct ShaderModule {
    let handle: VkShaderModule!
}

struct Pipeline {
    let handle: VkPipeline!
}

struct PipelineLayout {
    let handle: VkPipelineLayout!
}

struct Sampler {
    let handle: VkSampler!
}

struct DescriptorSet {
    let handle: VkDescriptorSet!
}

struct DescriptorSetLayout {
    let handle: VkDescriptorSetLayout!
}

struct DescriptorPool {
    let handle: VkDescriptorPool!
}

struct Fence {
    let handle: VkFence!
}

struct Semaphore {
    let handle: VkSemaphore!
}

struct Event {
    let handle: VkEvent!
}

struct QueryPool {
    let handle: VkQueryPool!
}

struct Framebuffer {
    let handle: VkFramebuffer!
}

struct RenderPass {
    let handle: VkRenderPass!
}

struct PipelineCache {
    let handle: VkPipelineCache!
}

struct IndirectCommandsLayoutNV {
    let handle: VkIndirectCommandsLayoutNV!
}

struct DescriptorUpdateTemplate {
    let handle: VkDescriptorUpdateTemplate!
}

struct SamplerYcbcrConversion {
    let handle: VkSamplerYcbcrConversion!
}

struct ValidationCacheEXT {
    let handle: VkValidationCacheEXT!
}

struct PerformanceConfigurationINTEL {
    let handle: VkPerformanceConfigurationINTEL!
}

struct DisplayKHR {
    let handle: VkDisplayKHR!
}

struct DisplayModeKHR {
    let handle: VkDisplayModeKHR!
}

struct SurfaceKHR {
    let handle: VkSurfaceKHR!
}

struct SwapchainKHR {
    let handle: VkSwapchainKHR!
}

struct DebugReportCallbackEXT {
    let handle: VkDebugReportCallbackEXT!
}

struct DebugUtilsMessengerEXT {
    let handle: VkDebugUtilsMessengerEXT!
}

