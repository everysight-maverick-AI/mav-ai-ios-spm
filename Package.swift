// swift-tools-version:5.9
import PackageDescription

let releaseName = "v1.0.5"
let checksumMav2Sdk = "58df2f034a980c249f1da7515bd9cb3927aa2568facb38f2adbe34bd5501f3c4"

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
