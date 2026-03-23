// swift-tools-version:5.9
import PackageDescription

let releaseName = "v1.0.5"
let checksumMav2Sdk = "187fc8b5274d49b4937b2efc17b708a2af245626cdf7918a0e946ea9b4977902"

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
            path: "Sources/MaverickAISDK",
            resources: [.copy("compose-resources")]
        )
    ]
)
