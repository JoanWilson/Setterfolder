// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Setterfolder",
    platforms: [.macOS(.v10_12)],
    dependencies: [],
    targets: [
        .executableTarget(
            name: "Setterfolder",
            dependencies: []),
        .testTarget(
            name: "SetterfolderTests",
            dependencies: ["Setterfolder"]),
    ]
)
