// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SonarPenKit",
    platforms: [.iOS(.v13)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "SonarPenKit",
            targets: ["SonarPenKit"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
                    name: "SonarPenKit",
                    url: "https://github.com/SonarPen/SonarPenKitBinary/raw/main/SonarPenKit.xcframework-0.8.4.zip",
                    checksum: "dc487629d7c0aa6516f8d333bbd65c8e48fa112c2a604a71f0f50b0afa699a4c"
                ),
    ]
)
