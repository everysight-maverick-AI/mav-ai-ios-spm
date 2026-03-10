// swift-tools-version:5.5
import PackageDescription

let releaseName = "v1.1.2"
let checksumMav2Sdk = "e2d1895edc1ab72d1ceb9fdb3e39825ceb52f59ba8740cbe1b636973ded60c65"

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
