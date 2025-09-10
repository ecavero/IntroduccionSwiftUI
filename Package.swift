// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "IntroduccionSwiftUI",
    platforms: [
        .macOS(.v13),
        .iOS(.v16)
    ],
    products: [
        .executable(
            name: "IntroduccionSwiftUI",
            targets: ["IntroduccionSwiftUI"]
        )
    ],
    dependencies: [
        // No external deps needed since we’re using our own stubs
    ],
    targets: [
        // Main app
        .executableTarget(
            name: "IntroduccionSwiftUI",
            dependencies: [
                "SwiftUI", // always depend on SwiftUI
                "SwiftData"
            ],
            path: "Sources/IntroduccionSwiftUI",
            resources: [
                // Handle your asset catalogs so SwiftPM ignores the warnings
                .process("Assets.xcassets"),
                .process("Preview Content/Preview Assets.xcassets")
            ]
        ),

        // Stub SwiftUI target (used only on Linux)
        .target(
            name: "SwiftUI",
            dependencies: [],
            path: "Sources/SwiftUI"
        ),

        .target(
            name: "SwiftData",
            dependencies: [],
            path: "Sources/SwiftData"
        ),

        // Tests
        .testTarget(
            name: "IntroduccionSwiftUITests",
            dependencies: ["IntroduccionSwiftUI"],
            path: "Sources/IntroduccionSwiftUITests"
        )
    ]
)
