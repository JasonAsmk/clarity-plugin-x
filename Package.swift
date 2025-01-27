// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "CapacitorClarityX",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "CapacitorClarityX",
            targets: ["ClarityPluginXPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", from: "7.0.0"),
        .package(url: "https://github.com/microsoft/clarity-apps", branch: "main")
    ],
    targets: [
        .target(
            name: "ClarityPluginXPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm"),
                .product(name: "Clarity", package: "clarity-apps")

            ],
            path: "ios/Sources/ClarityPluginXPlugin"),
        .testTarget(
            name: "ClarityPluginXPluginTests",
            dependencies: ["ClarityPluginXPlugin"],
            path: "ios/Tests/ClarityPluginXPluginTests")
    ]
)
