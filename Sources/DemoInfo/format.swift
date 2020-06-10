var indentSize = 0

func print(_ line: String) {
    let indent = String(repeating: " ", count: indentSize * 4)
    Swift.print(indent + line)
}

func withIndent(_ body: () throws -> Void) rethrows {
    indentSize += 1
    try body()
    indentSize -= 1
}

func print(title: String) {
    print(title)
    print(String(repeating: "=", count: title.count))
}

func print(subtitle: String) {
    print(subtitle)
    print(String(repeating: "-", count: subtitle.count))
}

func print(index: Int) {
    print("[\(index)]")
}

func print(key: String, value: Any) {
    print("\(key): \(value)")
}

func printChildren(of value: Any) {
    for (label, value) in Mirror(reflecting: value).children {
        if let label = label {
            print(key: label, value: value)
        }
    }
}

func hex<T: BinaryInteger>(_ value: T) -> String {
    return "0x" + String(value, radix: 16, uppercase: false)
}
