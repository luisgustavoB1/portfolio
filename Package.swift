// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "IgniteStarter",
    platforms: [.macOS(.v13)],
    dependencies: [
        .package(url: "https://github.com/sookim-1/Ignite.git", .revision("bb7902ef7922cf191792026ced78515d9f616b2c"))
    ],
    targets: [
        .executableTarget(
            name: "IgniteStarter",
            dependencies: ["Ignite"])
    ]
)
