// swift-tools-version: 5.9
import PackageDescription

let version = "0.1.4"
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
            checksum: "dc3715f610420d478549e5be9a8f77fa14cd4260abda91760b2dc0d63821fc60"
        ),
        .binaryTarget(
            name: "ConvoKitUI",
            url: "\(artifactRoot)/ui/\(version)/ConvoKitUI.xcframework.zip",
            checksum: "004f55b2da3a6ad7aa2bf299494085ab58ded3d23c6015a434bb912bdbcc9813"
        ),
    ]
)
