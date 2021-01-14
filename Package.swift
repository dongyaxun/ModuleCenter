// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ModuleCenter",
    platforms: [
      .iOS(.v9)
    ],
    products: [
        .library(name: "ModuleCenter", targets: ["ModuleCenter"]),
    ],
    dependencies: [
        .package(name: "URLNavigator", url: "https://github.com/devxoul/URLNavigator.git", .upToNextMajor(from: "2.3.0"))
    ],
    targets: [
        .target(name: "ModuleCenter", dependencies: ["URLNavigator"]),
        .testTarget(name: "ModuleCenterTests", dependencies: ["ModuleCenter"]),
    ]
)
