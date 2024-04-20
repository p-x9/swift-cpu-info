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
    targets: [
        .target(
            name: "CPUInfo"
        ),
        .testTarget(
            name: "CPUInfoTests",
            dependencies: ["CPUInfo"]
        ),
    ]
)
