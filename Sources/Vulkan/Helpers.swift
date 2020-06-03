import CVulkan


func checkResult(_ result: VkResult) throws {
    if result.rawValue < 0 {
        throw Result(rawValue: result.rawValue)!
    }
}

protocol CStructConvertible {
    associatedtype CStruct
    func withCStruct<R>(_ body: (UnsafePointer<CStruct>) throws -> R) rethrows -> R
}

extension Optional where Wrapped: CStructConvertible {
    func withOptionalCStruct<R>(_ body: (UnsafePointer<Wrapped.CStruct>?) throws -> R) rethrows -> R {
        guard let s = self else { return try body(nil) }
        return try s.withCStruct(body)
    }
}

extension Optional where Wrapped == String {
    func withOptionalCString<R>(_ body: (UnsafePointer<CChar>?) throws -> R) rethrows -> R {
        guard let s = self else { return try body(nil) }
        return try s.withCString(body)
    }
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

fileprivate func _withCStringBufferPointer<I: IteratorProtocol, R>(to array: inout [UnsafePointer<CChar>?], appending iterator: inout I, _ body: (UnsafeBufferPointer<UnsafePointer<CChar>?>) throws -> R) rethrows -> R where I.Element == String {
    if let string = iterator.next() {
        return try string.withCString { cString in
            array.append(cString)
            return try _withCStringBufferPointer(to: &array, appending: &iterator, body)
        }
    }else{
        return try array.withUnsafeBufferPointer { ptr in
            try body(ptr)
        }
    }
}

extension Array where Element == String {
    func withCStringBufferPointer<R>(_ body: (UnsafeBufferPointer<UnsafePointer<CChar>?>) throws -> R) rethrows -> R {
        var cStrings: [UnsafePointer<CChar>?] = []
        cStrings.reserveCapacity(self.count)
        var iterator = makeIterator()
        return try _withCStringBufferPointer(to: &cStrings, appending: &iterator, body)
    }
}


fileprivate func _withCStructBufferPointer<S: CStructConvertible, I: IteratorProtocol, R>(to array: inout [S.CStruct], appending iterator: inout I, _ body: (UnsafeBufferPointer<S.CStruct>) throws -> R) rethrows -> R where I.Element == S {
    if let structure = iterator.next() {
        return try structure.withCStruct { cStruct in
            array.append(cStruct.pointee)
            return try _withCStructBufferPointer(to: &array, appending: &iterator, body)
        }
    }else{
        return try array.withUnsafeBufferPointer { ptr in
            try body(ptr)
        }
    }
}

extension Array where Element: CStructConvertible {
    func withCStructBufferPointer<R>(_ body: (UnsafeBufferPointer<Element.CStruct>) throws -> R) rethrows -> R {
        var cStructs: [Element.CStruct] = []
        cStructs.reserveCapacity(self.count)
        var iterator = makeIterator()
        return try _withCStructBufferPointer(to: &cStructs, appending: &iterator, body)
    }
}

extension Optional {
    func withOptionalCStructBufferPointer<T: CStructConvertible, R>(_ body: (UnsafeBufferPointer<T.CStruct>) throws -> R) rethrows -> R where Wrapped == Array<T>{
        guard let array = self else { return try body(UnsafeBufferPointer(start: nil, count: 0)) }
        return try array.withCStructBufferPointer(body)
    }
    
    func withOptionalUnsafeBufferPointer<T, R>(_ body: (UnsafeBufferPointer<T>) throws -> R) rethrows -> R where Wrapped == Array<T> {
        guard let array = self else { return try body(UnsafeBufferPointer(start: nil, count: 0)) }
        return try array.withUnsafeBufferPointer(body)
    }
}

func enumerate<R>(_ body: (UnsafeMutablePointer<R>?, UnsafeMutablePointer<UInt32>) -> VkResult) throws -> [R] {
    var count: UInt32 = 0
    var result = VK_SUCCESS
    var array: [R]
    
    repeat {
        try checkResult(body(nil, &count))
    
        if (count == 0) {
            return []
        }
    
        array = Array<R>(unsafeUninitializedCapacity: Int(count)) { buffer, initializedCount in
            result = body(buffer.baseAddress!, &count)
            initializedCount = Int(count)
        }
    } while result == VK_INCOMPLETE
    
    try checkResult(result)
    return array
}

func enumerate<R>(_ body: (UnsafeMutablePointer<R>?, UnsafeMutablePointer<UInt32>) -> Void) -> [R] {
    var count: UInt32 = 0
    body(nil, &count)
    
    if (count == 0) {
        return []
    }
    
    return Array<R>(unsafeUninitializedCapacity: Int(count)) { buffer, initializedCount in
        body(buffer.baseAddress!, &count)
        initializedCount = Int(count)
    }
}
