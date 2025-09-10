// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "IntroduccionSwiftUI",
    platforms: [
        .macOS(.v13) // o la versión mínima que quieras
    ],
    products: [
        .library(
            name: "IntroduccionSwiftUI",
            targets: ["IntroduccionSwiftUI"]
        ),
    ],
    dependencies: [
        // Stubs de SwiftUI para Linux
        .package(url: "https://github.com/OpenSwiftUIProject/OpenSwiftUI.git", branch: "main"),
    ],
    targets: [
        .target(
            name: "IntroduccionSwiftUI",
            dependencies: [
                "OpenSwiftUI"
            ],
            path: "Sources/IntroduccionSwiftUI"
        ),
        .testTarget(
            name: "IntroduccionSwiftUITests",
            dependencies: ["IntroduccionSwiftUI"],
            path: "Sources/IntroduccionSwiftUITests"
        ),
    ]
)
