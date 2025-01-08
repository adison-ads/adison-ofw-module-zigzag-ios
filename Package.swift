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
        .package(url: "https://github.com/adison-ads/adison-offerwall-ios-sdk", exact: "3.9.2")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(
            name: "ZigzagOfwModule",
            url: "https://github.com/adison-ads/adison-ofw-module-zigzag-ios/releases/download/1.4.0/ZigzagOfwModule.zip",
            checksum: "7127a30e1b4a3055129df5c3e8fac3a4ce4d8c76f72781b99bb21ddee446774b"
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
