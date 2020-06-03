import CVulkan

public protocol Loader {
    var vkGetInstanceProcAddr: PFN_vkGetInstanceProcAddr { get }
}
