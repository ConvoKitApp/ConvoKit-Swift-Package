// swift-tools-version: 5.9
import PackageDescription

let version = "0.2.3"
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
            checksum: "4e6476b9f3557307f924a4888a4e41ece386ad7a6da943f5a1cc651edef539a1"
        ),
        .binaryTarget(
            name: "ConvoKitUI",
            url: "\(artifactRoot)/ui/\(version)/ConvoKitUI.xcframework.zip",
            checksum: "df85f9de4a0953a56ae3a6d3aba36c0a96a4d60530ca30698303b6de6d1333a9"
        ),
    ]
)
