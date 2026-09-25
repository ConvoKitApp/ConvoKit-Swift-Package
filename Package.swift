// swift-tools-version: 5.9
import PackageDescription

let version = "0.10.1"
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
            checksum: "0add5f4bea7f3584148cbd0c762e6afcba14a148f189fbf8f05e6065dd5721cc"
        ),
        .binaryTarget(
            name: "ConvoKitUI",
            url: "\(artifactRoot)/ui/\(version)/ConvoKitUI.xcframework.zip",
            checksum: "179add5297851df715b8736803f57f658641639deb3454a73fbc8f8fd331155a"
        ),
    ]
)
