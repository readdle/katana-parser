// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "KatanaParser",
    products: [
        .library(name: "KatanaParser", targets: ["KatanaParser"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "KatanaParser", dependencies: []),
    ]
)
