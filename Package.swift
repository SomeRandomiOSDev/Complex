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
        .library(name: "Complex", targets: ["Complex"])
    ],

    dependencies: [
        .package(url: "https://github.com/SomeRandomiOSDev/Half", from: "1.2.0")
    ],

    targets: [
        .target(name: "Complex"),
        .testTarget(name: "ComplexTests", dependencies: ["Complex", "Half"])
    ],

    swiftLanguageVersions: [.version("4.2"), .version("5")]
)
