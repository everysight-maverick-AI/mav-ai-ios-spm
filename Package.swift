// swift-tools-version:5.9
import PackageDescription

let releaseName = "v0.2.0"
let checksumMav2Sdk = "57c632b4f5b39f6675d021955f73b18c28699e1589bff4a58145f37c0abae29f"

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
