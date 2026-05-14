// swift-tools-version:5.9
import PackageDescription

let releaseName = "v0.1.0"
let checksumMav2Sdk = "e0a2a245561c2cc8dd3bfa426d1053ac82d731bfcaf22ef287d2a7193467cd41"

let package = Package(
    name: "MaverickAI",
    platforms: [
        .iOS(.v15),
        .watchOS(.v8)
    ],
    products: [
        .library(name: "MaverickAI", targets: ["MaverickAI"])
    ],
    targets: [
        .binaryTarget(
            name: "MaverickAI",
            url: "https://github.com/everysight-maverick-AI/mav-ai-ios-spm/releases/download/\(releaseName)/maverick-ai-sdk.xcframework.zip",
            checksum: "\(checksumMav2Sdk)"
        )
    ]
)
