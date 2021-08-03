// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PexelsKit",
    platforms: [.macOS(.v10_12)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "PexelsKit",
            targets: ["PexelsKit"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.4.3"),
        .package(url: "https://github.com/JohnSundell/Codextended.git", from: "0.3.0"),
        .package(url: "https://github.com/ConfusedVorlon/HSHelpers.git", from: "0.3.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "PexelsKit",
            dependencies: ["Alamofire","HSHelpers"]),
        .testTarget(
            name: "PexelsKitTests",
            dependencies: ["PexelsKit","Codextended","HSHelpers","Alamofire"]),
    ]
)
