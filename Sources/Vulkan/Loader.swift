import CVulkan

protocol Loader {
    var vkGetInstanceProcAddr: PFN_vkGetInstanceProcAddr { get }
}
