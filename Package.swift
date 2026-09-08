// swift-tools-version: 5.9
import PackageDescription

let version = "0.3.0"
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
            checksum: "c962b8bf7eb07bdec198e6fdc025b513410c2ff719d3170cf6ac85f2ae3af4b1"
        ),
        .binaryTarget(
            name: "ConvoKitUI",
            url: "\(artifactRoot)/ui/\(version)/ConvoKitUI.xcframework.zip",
            checksum: "ac4aa08d951feca464861b2e7c26d8938a6b77b8a8650a4976c5157078075aab"
        ),
    ]
)
