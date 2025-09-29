// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "apollo-ios-xcframework",
    platforms: [
        .iOS(.v15),
        .watchOS(.v8)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Apollo",
            targets: ["Apollo"]),
        .library(
            name: "ApolloAPI",
            targets: ["ApolloAPI"]),
        .library(
            name: "ApolloSQLite",
            targets: ["ApolloSQLite"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
            name: "Apollo",
            path: "Apollo.xcframework"),
        .binaryTarget(
            name: "ApolloAPI",
            path: "ApolloAPI.xcframework"),
        .binaryTarget(
            name: "ApolloSQLite",
            path: "ApolloSQLite.xcframework"),
    ]
)
