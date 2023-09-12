// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "someProject",
    products: [
        .library(
            name: "someProject",
            targets: ["someProject"]),
    ],
    dependencies: [
        .package(url: "https://git-codecommit.ap-southeast-1.amazonaws.com/v1/repos/sampleMonorepo", .branch("main")),
    ],
    targets: [
        .target(
            name: "someProject",
            dependencies: [
                .product(name: "someComponent", package: "sampleMonorepo"),
                .product(name: "anotherComponent", package: "sampleMonorepo")]),
        .testTarget(
            name: "someProjectTests",
            dependencies: ["someProject"]),
    ]
)
