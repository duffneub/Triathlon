// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TriathlonKit",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "TriathlonKit", targets: ["TriathlonKit"]),
    ],
    targets: [
        .target(name: "TriathlonKit", dependencies: []),
    ]
)
