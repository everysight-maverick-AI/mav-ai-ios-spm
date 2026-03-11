// swift-tools-version:5.5
import PackageDescription

let releaseName = "v1.1.2"
let checksumMav2Sdk = "7eb0130974ea1568b409d766bcc2bbfab505de9955436555c962f471523ecc13"

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
