// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "SAApp",
  platforms: [.iOS(.v17)],
  products: [
    .library(name: "SAApp", targets: ["SAApp"])
  ],
  dependencies: [
    .package(url: "https://github.com/solutionarchitectstech/ios_tracker_sdk_release", exact: "1.6.0")
  ],
  targets: [
    .target(
      name: "SAApp",
      dependencies: [
        .product(name: "SATrackingSDKStandard", package: "ios_tracker_sdk_release")
      ]
    )
  ],
  swiftLanguageModes: [.v6]
)
