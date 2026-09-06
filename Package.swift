// swift-tools-version: 5.9
import PackageDescription

let version = "0.2.1"
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
            checksum: "6d414bf5368b77998d1dbfae199b3add222012e68713ae491140ed5f9ffd57df"
        ),
        .binaryTarget(
            name: "ConvoKitUI",
            url: "\(artifactRoot)/ui/\(version)/ConvoKitUI.xcframework.zip",
            checksum: "66ebcf897e593faacb2a6a79c391ede730d20001b1ae92fc57ddbf2fc1a18749"
        ),
    ]
)
