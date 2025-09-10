// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "IntroduccionSwiftUI",
    platforms: [
        .macOS(.v13), .iOS(.v16) // adjust to your project
    ],
    products: [
        .executable(
            name: "IntroduccionSwiftUI",
            targets: ["IntroduccionSwiftUI"]
        ),
    ],
    dependencies: [
        // Pull in OpenSwiftUI only for Linux
        .package(url: "https://github.com/OpenSwiftUIProject/OpenSwiftUI.git", from: "0.8.0")
    ],
    targets: [
        // Your app target
        .executableTarget(
            name: "IntroduccionSwiftUI",
            dependencies: [
                "SwiftUI" // depend on fake SwiftUI module
            ]
        ),
        // Fake SwiftUI module target
        .target(
            name: "SwiftUI",
            dependencies: [
                .product(name: "OpenSwiftUI", package: "OpenSwiftUI")
            ],
            path: "Sources/SwiftUI"
        ),
        // Tests
        .testTarget(
            name: "IntroduccionSwiftUITests",
            dependencies: ["IntroduccionSwiftUI"]
        )
    ]
)
