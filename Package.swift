// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "Complex",

    platforms: [
        .iOS("8.0"),
        .macOS("10.10"),
        .tvOS("9.0"),
        .watchOS("2.0")
    ],

    products: [
        .library(name: "Complex", type: .dynamic, targets: ["Complex"])
    ],

    targets: [
        .target(name: "Complex"),
        .testTarget(name: "ComplexTests", dependencies: ["Complex"])
    ],

    swiftLanguageVersions: [.version("4.0"), .version("4.2"), .version("5.0")]
)
