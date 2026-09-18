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
                    url: "https://github.com/SonarPen/SonarPenKitBinary/raw/main/SonarPenKit.xcframework-0.9.9.zip",
                    checksum: "db7b90add23eb3f5f69cb030ec2d23eecf0edd11bcda3687400a5e984c01915f"
                ),
    ]
)
