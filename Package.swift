// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "Fluorine",
    platforms: [
        .iOS(.v8),
    ],
    products: [
        .library(name: "Fluorine", targets: ["Fluorine"])
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "Fluorine",
            dependencies: [ ],
            path: "Sources"
        )
    ]
)
