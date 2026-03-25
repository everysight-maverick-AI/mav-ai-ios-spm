// swift-tools-version:5.9
import PackageDescription

let releaseName = "v1.0.6"
let checksumMav2Sdk = "83019a2c3b5b9949b898d78a9ca10af482e8e9111a7c69a3a60b02bac24364ea"

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
