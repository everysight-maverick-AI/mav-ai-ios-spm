// swift-tools-version:5.5
import PackageDescription

let releaseName = "v1.0.3"
let checksumMav2Sdk = "eda1446df1fe8c78a3ac5457bced01a4c8c0b35937d50f2dd3d74306cd1b393d"

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
