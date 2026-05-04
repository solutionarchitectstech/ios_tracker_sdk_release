// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SATrackingSDK",
    platforms: [.iOS(.v12)],
    products: [
        .library(name: "SATrackingSDKStandard", targets: ["SATrackingSDKStandard"])
    ],
    dependencies: [
    ],
    targets: [
        .binaryTarget(
            name: "SATrackingSDKStandard",
            path: "SATrackingSDKStandard.xcframework"
        )
    ],
    swiftLanguageModes: [.v6]
)