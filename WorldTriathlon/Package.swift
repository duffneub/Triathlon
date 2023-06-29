// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "WorldTriathlon",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "WorldTriathlon", targets: ["WorldTriathlon"]),
    ],
    dependencies: [
        .package(path: "../TriathlonKit"),
    ],
    targets: [
        .target(name: "WorldTriathlon", dependencies: ["TriathlonKit"]),
    ]
)
