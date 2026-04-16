// swift-tools-version: 5.5

import PackageDescription

let package = Package(
    name: "ScrollUI",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(name: "ScrollUI", targets: ["ScrollUI"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/siteline/SwiftUI-Introspect",
            from: "26.0.1"
        )
    ],
    targets: [
        .target(
            name: "ScrollUI",
            dependencies: [
                .product(
                    name: "SwiftUIIntrospect",
                    package: "SwiftUI-Introspect"
                )
            ]
        ),
    ]
)
