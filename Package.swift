// swift-tools-version: 5.9
import PackageDescription

let version = "0.2.2"
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
            checksum: "8cacdaf156e53be65f9c2cea734afdda21636c125056702748e113fd02443145"
        ),
        .binaryTarget(
            name: "ConvoKitUI",
            url: "\(artifactRoot)/ui/\(version)/ConvoKitUI.xcframework.zip",
            checksum: "4afd014e631b113e56b4ea0ecf0282f79a10ac6f9f75a7cf9d6c0d305ac0bff1"
        ),
    ]
)
