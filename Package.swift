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
        .package(url: "https://github.com/adison-ads/adison-offerwall-ios-sdk", exact: "3.5.18")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(
            name: "ZigzagOfwModule",
            url: "https://github.com/adison-ads/adison-ofw-module-zigzag-ios/releases/download/1.3.2/ZigzagOfwModule.zip",
            checksum: "7753e23e5c848c58afed0dcff7352db7e0d25c6ed946c0a19d93ba46ccb2900d"
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
