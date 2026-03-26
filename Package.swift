// swift-tools-version:5.9
import PackageDescription

let releaseName = "v1.0.7"
let checksumMav2Sdk = "95843827d1e85495f5ed3dde94fcf9803253caaa6c59f8a438a58166015a4faf"

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
