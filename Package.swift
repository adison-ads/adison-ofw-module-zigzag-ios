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
        .package(url: "https://github.com/adison-ads/adison-offerwall-ios-sdk", exact: "3.6.0"),
        .package(url: "https://github.com/airbnb/lottie-spm", from: "4.3.4")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(
            name: "ZigzagOfwModule",
            url: "https://github.com/adison-ads/adison-ofw-module-zigzag-ios/releases/download/0.10.8/ZigzagOfwModule.zip",
            checksum: "4693d88bd1048b6d5db5ad56bf74d70e87112dbcf21d65a4be87d5e29e7941ac"
        ),
        .target(
            name: "ZigzagOfwModuleTarget",
            dependencies: [
                .product(name: "AdisonOfferwallSDK", package: "adison-offerwall-ios-sdk"),
                .product(name: "Lottie", package: "lottie-spm")
            ],
            path: "Sources"
        )
    ]
)
