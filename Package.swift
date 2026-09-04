// swift-tools-version: 5.9
import PackageDescription

let version = "0.1.0"
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
            checksum: "58259658e4997048892b3422943c1d70e07c21a08219326eef4da1e2462258e5"
        ),
        .binaryTarget(
            name: "ConvoKitUI",
            url: "\(artifactRoot)/ui/\(version)/ConvoKitUI.xcframework.zip",
            checksum: "25f43b45bccd9b460f51da8ff39c5e3e77bdcece4586c848c1d5a7765bc65070"
        ),
    ]
)
