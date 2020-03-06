// swift-tools-version:4.2
import PackageDescription

let package = Package(
    name: "Complex",

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

    swiftLanguageVersions: [.v4_2]
)
