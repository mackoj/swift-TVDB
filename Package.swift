// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "TVDB",
    platforms: [.iOS(.v12)],
    products: [
        .library(name: "TVDB", targets: ["TVDB"])
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", .exact("4.8.2")),
    ],
    targets: [
        .target(name: "TVDB", dependencies: [
          "Alamofire",
        ], path: "Sources")
    ],
    swiftLanguageVersions: [.v4_2, .v5]
)
