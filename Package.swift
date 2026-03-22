// swift-tools-version:5.5
import PackageDescription

let releaseName = "v1.0.2"
let checksumMav2Sdk = "7e9a424e1d29e0ea50709933d09a766c87bba1dbb803c6b72fbb1aa3100918f7"

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
