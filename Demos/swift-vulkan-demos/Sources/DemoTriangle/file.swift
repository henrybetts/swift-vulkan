#if os(Linux)
    import Glibc
#else
    import Darwin
#endif

func readFile(path: String) -> [UInt8]? {
    guard let file = fopen(path, "rb") else {
        return nil
    }
    
    defer { fclose(file) }
    
    var status = stat()
    guard fstat(fileno(file), &status) == 0 else {
        return nil
    }
    
    let capacity = Int(status.st_size)

    let buffer = Array<UInt8>(unsafeUninitializedCapacity: capacity) { buffer, initializedCount in
        initializedCount = fread(buffer.baseAddress, MemoryLayout<UInt8>.stride, capacity, file)
    }
    
    guard buffer.count == capacity else {
        return nil
    }
    
    return buffer
}
