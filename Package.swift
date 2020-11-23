// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "OpenQuickly",
    platforms: [.macOS(.v10_15)],
    products: [
        .library(
            name: "OpenQuickly",
            targets: ["OpenQuickly"]),
    ],
    targets: [
        .target(
            name: "OpenQuickly",
            path: "OpenQuickly"
        )
    ]
)
