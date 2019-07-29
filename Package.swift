// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "CombineX",
    platforms: [
        .macOS(.v10_12),
        .iOS(.v10),
        .tvOS(.v10),
        .watchOS(.v3)
    ],
    products: [
        .library(name: "CombineX", targets: ["CombineX"]),
        .library(name: "CombineXFoundation", targets: ["CombineXFoundation"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Quick/Quick.git", from: "2.0.0"),
        .package(url: "https://github.com/Quick/Nimble.git", from: "8.0.0"),
    ],
    targets: [
        .target(name: "CombineX", dependencies: []),
        .target(name: "CombineXFoundation", dependencies: ["CombineX"]),
        .testTarget(name: "CombineXTests", dependencies: ["CombineX", "Quick", "Nimble"]),
        .testTarget(name: "CombineXFoundationTests", dependencies: ["CombineX", "Quick", "Nimble"]),
    ],
    swiftLanguageVersions: [
        .v5
    ]
)
