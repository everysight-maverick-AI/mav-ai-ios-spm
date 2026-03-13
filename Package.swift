// swift-tools-version:5.5
import PackageDescription

let releaseName = "v1.0.0"
let checksumMav2Sdk = "aa0d642a8d831f79185788a0731bedc4def65fa14f740dbd4e06e9d55c7f47a7"

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
            url: "https://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@github.com/everysight-maverick-AI/mav-ai-ios-spm/releases/download/\(releaseName)/maverick-ai-sdk.xcframework.zip",
            checksum: "\(checksumMav2Sdk)"
        )
    ]
)
