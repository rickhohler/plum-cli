// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "plum-cli",
    platforms: [
        .macOS(.v12), .iOS(.v13)
    ],
    products: [
        .executable(
            name: "plum",
            targets: ["PlumCLI"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-argument-parser", from: "1.0.0"),
    ],
    targets: [
        .executableTarget(
            name: "PlumCLI",
                dependencies: [
                    .product(name: "ArgumentParser", package: "swift-argument-parser"),
                ]),
        .testTarget(
            name: "PlumCLITests",
            dependencies: ["PlumCLI"]),
    ]
)
