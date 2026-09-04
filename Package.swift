// swift-tools-version: 5.9
import PackageDescription

let version = "0.1.1"
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
            checksum: "55d0c755e26f19480a30482208f4ac74f58ab3fcd76ec5bc92168d9ea08f212c"
        ),
        .binaryTarget(
            name: "ConvoKitUI",
            url: "\(artifactRoot)/ui/\(version)/ConvoKitUI.xcframework.zip",
            checksum: "d78cf203c7927a84bd74b0ee358096c7963fbda6ff75541d3983b69b0a98baf7"
        ),
    ]
)
