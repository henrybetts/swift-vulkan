protocol CStructConvertible {
    associatedtype CStruct
    func withUnsafeCStructPointer<R>(_ body: (UnsafePointer<CStruct>) throws -> R) rethrows -> R
}
