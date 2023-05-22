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
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "SonarPenKit",
            dependencies: []),
        .binaryTarget(
                    name: "SonarPenKitBinaryPackage",
                    url: "https://github.com/SonarPen/SonarPenKit/raw/main/Bin/SonarPenKit.xcframework.zip",
                    checksum: "1e894677a49a427ddcfc599ad85bbe82beaccedee8fc1e65a21e1f2910a83c30"
                ),
        .testTarget(
            name: "SonarPenKitTests",
            dependencies: ["SonarPenKit"]),
    ]
)
