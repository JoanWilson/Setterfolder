// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Setterfolder",
    dependencies: [
        .package(url: "https://github.com/apple/swift-tools-support-core.git", branch: "main"),
    ],
    targets: [
        .executableTarget(
            name: "Setterfolder",
            dependencies: [.product(name: "SwiftToolsSupport", package: "swift-tools-support-core")]),
        .testTarget(
            name: "SetterfolderTests",
            dependencies: ["Setterfolder"]),
    ]
)
