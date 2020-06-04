public struct Version: RawRepresentable {
    public let rawValue: UInt32
    
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
    
    public init(major: UInt32, minor: UInt32, patch: UInt32) {
        self.rawValue = (major << 22) | (minor << 12) | patch
    }
    
    public var major: UInt32 {
        return rawValue >> 22
    }
    
    public var minor: UInt32 {
        return (rawValue >> 12) & 0x3ff
    }
    
    public var patch: UInt32 {
        return rawValue & 0xfff
    }
}

extension Version: CustomStringConvertible {
    public var description: String {
        return "\(major).\(minor).\(patch)"
    }
}
