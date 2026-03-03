// swift-tools-version:5.5
import PackageDescription

let releaseName = "v1.0.0"
let checksumMaverickAiSdk = "de34a09239562264acba9891e0da89333703e66c545f4a541b37176f7164e5b4"

let package = Package(
    name: "Maverick-AI-SDK",
    platforms: [
        .iOS(.v15),
        .watchOS(.v8)
    ],
    products: [
        .library(name: "Maverick-AI-SDK", targets: ["sdk"])
    ],
    targets: [
        .binaryTarget(
            name: "sdk",
            url: "https://github.com/everysight-maverick-AI/mav-ai-ios-spm/releases/download/\(releaseName)/maverick-ai-sdk.xcframework.zip",
            checksum: "\(checksumMaverickAiSdk)"
        )
    ]
)
