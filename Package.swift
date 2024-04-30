// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ZigzagOfwModule",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "ZigzagOfwModule",
            targets: ["ZigzagOfwModule", "ZigzagOfwModuleTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/adison-ads/adison-offerwall-ios-sdk", exact: "3.6.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(
            name: "ZigzagOfwModule",
            url: "https://github.com/adison-ads/adison-ofw-module-zigzag-ios/releases/download/0.10.12/ZigzagOfwModule.zip",
            checksum: "412f2e8bd31fd1fa7a77a0662423360c07739c6d3793c793d846f997e8a914db"
        ),
        .target(
            name: "ZigzagOfwModuleTarget",
            dependencies: [
                .product(name: "AdisonOfferwallSDK", package: "adison-offerwall-ios-sdk")
            ],
            path: "Sources"
        )
    ]
)
