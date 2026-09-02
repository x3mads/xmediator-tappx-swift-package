// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "XMediatorTappx",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "XMediatorTappx", targets: ["XMediatorTappxTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/tappx-com/TappxSDK-swift-package-manager.git", exact: "4.2.14"),
        .package(url: "https://github.com/x3mads/xmediator-swift-package.git", .upToNextMajor(from: "1.163.0")),
    ],
    targets: [
        .target(
            name: "XMediatorTappxTarget",
            dependencies: [
                .target(name: "XMediatorTappx"),
                .product(name: "XMediator", package: "xmediator-swift-package"),
                .product(name: "TappxSDK", package: "TappxSDK-swift-package-manager"),
            ],
            path: "XMediatorTappxTarget",
            linkerSettings: [
                .linkedFramework("AdSupport"),
            ]
        ),
        .binaryTarget(
            name: "XMediatorTappx",
            url: "https://ios-artifact-registry.x3mads.com/cocoapods/XMediatorTappx/XMediatorTappx-4.2.14.0.zip",
            checksum: "d16be4b116a8b3d0d748a3d9befafdd6fc0576322ef9bf25fed09fe26cdad820"
        ),
    ]
)
