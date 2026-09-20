// swift-tools-version: 5.9
import PackageDescription

let version = "0.4.1"
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
            checksum: "053bc0a5b16b4a3e3712a11d64004a419ecb4e7512bf3ecc7518c3996ba49579"
        ),
        .binaryTarget(
            name: "ConvoKitUI",
            url: "\(artifactRoot)/ui/\(version)/ConvoKitUI.xcframework.zip",
            checksum: "cea10e0e0c52786e74611784a242a778e9030d78dbc9a72b7f5f40cddc11bf60"
        ),
    ]
)
