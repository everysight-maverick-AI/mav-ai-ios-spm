// swift-tools-version:5.9
import PackageDescription

let releaseName = "v1.0.6"
let checksumMav2Sdk = "fab8b217015f343996ee32031e73ff6dce01907d5af0cf87bdb75de389a53f10"

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
