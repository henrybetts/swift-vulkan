protocol CStructConvertible {
    associatedtype CStruct
    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<CStruct>) throws -> R) rethrows -> R
}

extension String {
    init<T>(unsafeBytesOf value: T) {
        self = withUnsafeBytes(of: value) { ptr in
            String(cString: ptr.bindMemory(to: CChar.self).baseAddress!)
        }
    }
    
    func unsafeBytesCopy<T>() -> T {
        let size = MemoryLayout<T>.size
        let ptr = UnsafeMutableBufferPointer<CChar>.allocate(capacity: size)
        ptr.initialize(repeating: 0)
        UnsafeMutableRawBufferPointer(ptr).copyBytes(from: utf8.prefix(size-1))
        return ptr.withMemoryRebound(to: T.self) { ptr2 in
            ptr2.baseAddress!.pointee
        }
    }
}
