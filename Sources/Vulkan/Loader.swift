import CVulkan
#if os(Linux)
    import Glibc
#else
    import Darwin
#endif


public protocol Loader {
    var vkGetInstanceProcAddr: PFN_vkGetInstanceProcAddr { get }
}

public enum LoaderError: Error {
    case loaderNotFound
    case symbolNotFound
}

public class DynamicLoader: Loader {
    let handle: UnsafeMutableRawPointer
    public let vkGetInstanceProcAddr: PFN_vkGetInstanceProcAddr
    
    public init(path: String) throws {
        guard let handle = dlopen(path, RTLD_LAZY) else {
            throw LoaderError.loaderNotFound
        }
        guard let vkGetInstanceProcAddr = dlsym(handle, "vkGetInstanceProcAddr") else {
            dlclose(handle)
            throw LoaderError.symbolNotFound
        }
        self.handle = handle
        self.vkGetInstanceProcAddr = unsafeBitCast(vkGetInstanceProcAddr, to: PFN_vkGetInstanceProcAddr.self)
    }
    
    public convenience init() throws {
        #if os(Linux)
            try self.init(path: "libvulkan.so.1")
        #else
            try self.init(path: "libvulkan.1.dylib")
        #endif
    }
    
    deinit {
        dlclose(handle)
    }
}

extension Entry {
    public convenience init() throws {
        self.init(loader: try DynamicLoader())
    }
}
