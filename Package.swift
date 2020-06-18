// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swift-vulkan",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "Vulkan",
            targets: ["Vulkan"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .systemLibrary(
            name: "CVulkan"),
        .target(
            name: "Vulkan",
            dependencies: ["CVulkan"]),
        .systemLibrary(
            name: "CGLFW"),
        .target(
            name: "DemoInfo",
            dependencies: ["Vulkan"]),
        .target(
            name: "DemoClearColor",
            dependencies: ["Vulkan", "CGLFW"]),
        .target(
            name: "DemoTriangle",
            dependencies: ["Vulkan", "CGLFW"])
    ]
)
