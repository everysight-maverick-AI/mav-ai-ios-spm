// swift-tools-version:5.9
import PackageDescription

let releaseName = "v0.1.0"
let checksumMav2Sdk = "7af1b64cd41c81ff3da87daafe587ba2ffeeaa7ab7d451262ef97e0c7ff59b5c"

let package = Package(
    name: "MaverickAI",
    platforms: [
        .iOS(.v15),
        .watchOS(.v8)
    ],
    products: [
        .library(name: "MaverickAI", targets: ["MaverickAI"])
    ],
    targets: [
        .binaryTarget(
            name: "MaverickAI",
            url: "https://github.com/everysight-maverick-AI/mav-ai-ios-spm/releases/download/\(releaseName)/maverick-ai-sdk.xcframework.zip",
            checksum: "\(checksumMav2Sdk)"
        )
    ]
)
