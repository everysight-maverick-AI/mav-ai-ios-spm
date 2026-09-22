// swift-tools-version:5.9
import PackageDescription

let releaseName = "v0.2.0"
let checksumMav2Sdk = "22cf6d484b45985312187dc9fa59d2ddc3e51520ee9c2c8bebf8c53c6975c842"

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
