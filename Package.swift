// swift-tools-version: 5.9
import PackageDescription

let version = "0.7.0"
let artifactRoot = "https://convokit.app/artifacts/swift"

let package = Package(
    name: "ConvoKit",
    platforms: [.iOS(.v15)],
    products: [
        .library(name: "ConvoKit", targets: ["ConvoKit"]),
        .library(name: "ConvoKitUI", targets: ["ConvoKit", "ConvoKitUI"]),
    ],
    targets: [
        .binaryTarget(
            name: "ConvoKit",
            url: "\(artifactRoot)/convokit/\(version)/ConvoKit.xcframework.zip",
            checksum: "a0ba20f1a86c3b2266e3e2cfa4fefd37ba75914d4cc90bd0dff79c3a50e46342"
        ),
        .binaryTarget(
            name: "ConvoKitUI",
            url: "\(artifactRoot)/ui/\(version)/ConvoKitUI.xcframework.zip",
            checksum: "7f6c6b3bc94ba3505379390ddff4ce4200a68818d628ece94b4115968b606d1e"
        ),
    ]
)
