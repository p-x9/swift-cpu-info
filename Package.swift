// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "CPUInfo",
    products: [
        .library(
            name: "CPUInfo",
            targets: ["CPUInfo"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/p-x9/swift-sysctl.git", from: "0.1.0")
    ],
    targets: [
        .target(
            name: "CPUInfo",
            dependencies: [
                .product(name: "SwiftSysctl", package: "swift-sysctl")
            ]
        ),
        .testTarget(
            name: "CPUInfoTests",
            dependencies: ["CPUInfo"]
        ),
    ]
)
