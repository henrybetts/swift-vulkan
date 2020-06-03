struct Version: RawRepresentable {
    let rawValue: UInt32
    
    init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
    
    init(major: UInt32, minor: UInt32, patch: UInt32) {
        self.rawValue = (major << 22) | (minor << 12) | patch
    }
    
    var major: UInt32 {
        return rawValue >> 22
    }
    
    var minor: UInt32 {
        return (rawValue >> 12) & 0x3ff
    }
    
    var patch: UInt32 {
        return rawValue & 0xfff
    }
}
