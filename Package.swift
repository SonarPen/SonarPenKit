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
                    url: "https://github.com/SonarPen/SonarPenKitBinary/raw/main/SonarPenKit.xcframework-0.7.2.zip",
                    checksum: "b5a6fc3343282c8e4c2124ad4c310d2457ad6e1f604f49ad77163d361fd61fe3"
                ),
    ]
)
