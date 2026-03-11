// swift-tools-version:5.5
import PackageDescription

let releaseName = "v1.1.2"
let checksumMav2Sdk = "454e5bc6ee4ed9d00fef84f715eb9b6aa6b879ee2e2eecd54765b53b3910d114"

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
