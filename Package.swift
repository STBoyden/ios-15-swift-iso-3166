// swift-tools-version: 6.0

import PackageDescription

extension String {
    static let iso3166: Self = "ISO 3166"
}

extension String { var tests: Self { self + " Tests" } }

let package = Package(
    name: "ios-15-swift-iso-3166",
    platforms: [
        .iOS(.v15),
    ],
    products: [
        .library(name: "ISO 3166", targets: ["ISO 3166"])
    ],
    targets: [
        .target(
            name: "ISO 3166",
            exclude: [
                "Resources"
            ]
        ),
        .testTarget(
            name: "ISO 3166 Tests",
            dependencies: [
                "ISO 3166"
            ]
        ),
    ],
    swiftLanguageModes: [.v6]
)
