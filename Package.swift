// swift-tools-version: 5.9
import PackageDescription

let version = "0.5.0"
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
            checksum: "88308ff1e6710a100c8055789052a56fec3610fb82dad60ffe1ad07a5a51a5ad"
        ),
        .binaryTarget(
            name: "ConvoKitUI",
            url: "\(artifactRoot)/ui/\(version)/ConvoKitUI.xcframework.zip",
            checksum: "7bb5aac55e3d7d0c7a75805244cc86bd2fed692072675d679d302f47a807a752"
        ),
    ]
)
