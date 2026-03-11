// swift-tools-version:5.5
import PackageDescription

let releaseName = "v1.1.2"
let checksumMav2Sdk = "1e4b97eafbca65f5c44664081e508c1e7adf564e8f809584dfbd2bda2843d152"

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
