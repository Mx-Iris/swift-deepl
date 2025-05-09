// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swift-deepl",
    platforms: [.macOS(.v10_15), .iOS(.v13), .watchOS(.v6), .tvOS(.v13), .visionOS(.v1), .macCatalyst(.v13)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "DeepL",
            targets: ["DeepL"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/MxIris-Library-Forks/papyrus", branch: "main"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "DeepL",
            dependencies: [
                .product(name: "Papyrus", package: "papyrus")
            ]
        ),
        .testTarget(
            name: "DeepLTests",
            dependencies: [
                "DeepL"
            ]
        ),
    ]
)
