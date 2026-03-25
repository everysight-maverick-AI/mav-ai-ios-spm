// swift-tools-version:5.9
import PackageDescription

let releaseName = "v1.0.6"
let checksumMav2Sdk = "b57bae9eea00f2de415ee23e2e84346fff865812c6676799166e660e5f9994cb"

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
