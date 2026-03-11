// swift-tools-version:5.5
import PackageDescription

let releaseName = "v1.1.2"
let checksumMav2Sdk = "61178be55732cd7d002d6e53ac649a078b36b3307b43f5f7b08baa0f762f4450"

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
