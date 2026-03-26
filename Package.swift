// swift-tools-version:5.9
import PackageDescription

let releaseName = "v1.0.7"
let checksumMav2Sdk = "29ad709f23e753422c545c1654f5dcae8b0c2c7e74283075c3b4aa9df34c1409"

let package = Package(
    name: "MaverickAISDK",
    platforms: [
        .iOS(.v15),
        .watchOS(.v8)
    ],
    products: [
        .library(name: "MaverickAISDK", targets: ["MaverickAISDK"])
    ],
    targets: [
        .binaryTarget(
            name: "MaverickAI",
            url: "https://github.com/everysight-maverick-AI/mav-ai-ios-spm/releases/download/\(releaseName)/maverick-ai-sdk.xcframework.zip",
            checksum: "\(checksumMav2Sdk)"
        ),
        .target(
            name: "MaverickAISDK",
            dependencies: ["MaverickAI"],
            path: "Sources/MaverickAISDK"
        )
    ]
)
