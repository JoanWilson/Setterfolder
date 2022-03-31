// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Setterfolder",
    platforms: [.macOS(.v10_12)],
    dependencies: [
        .package(url: "https://github.com/QiuZhiFei/swift-commands.git", .upToNextMajor(from: "0.6.0")),
    ],
    targets: [
        .executableTarget(
            name: "Setterfolder",
            dependencies: [.product(
                name: "Commands",
                package: "swift-commands")]),
        .testTarget(
            name: "SetterfolderTests",
            dependencies: ["Setterfolder"]),
    ]
)
