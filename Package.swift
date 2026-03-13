// swift-tools-version:5.5
import PackageDescription

let releaseName = "v1.0.1"
let checksumMav2Sdk = "ffe9dfb7aa8b7ee241b9e75e2602c972d8fe94769f3ae532a205ce8ba80e6104"

let package = Package(
    name: "MaverickAISDK",
    platforms: [
        .iOS(.v15),
        .watchOS(.v8)
    ],
    products: [
        .library(name: "MaverickAISDK", targets: ["MaverickAI"])
    ],
    targets: [
        .binaryTarget(
            name: "MaverickAI",
            url: "https://github.com/everysight-maverick-AI/mav-ai-ios-spm/releases/download/\(releaseName)/maverick-ai-sdk.xcframework.zip",
            checksum: "\(checksumMav2Sdk)"
        )
    ]
)
