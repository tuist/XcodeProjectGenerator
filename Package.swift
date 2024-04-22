// swift-tools-version:5.10

import PackageDescription

// let swiftToolsSupportDependency: Target.Dependency = .product(name: "SwiftToolsSupport-auto", package: "swift-tools-support-core")
// let loggingDependency: Target.Dependency = .product(name: "Logging", package: "swift-log")
// let argumentParserDependency: Target.Dependency = .product(name: "ArgumentParser", package: "swift-argument-parser")
// let swiftGenKitDependency: Target.Dependency = .product(name: "SwiftGenKit", package: "SwiftGen")
// let combineExtDependency: Target.Dependency = .byName(name: "CombineExt")

var targets: [Target] = [
    .target(
        name: "XcodeProjectGraph",
        dependencies: [
            // swiftToolsSupportDependency,
            // "AnyCodable",
            // "TuistSupport",
            // "Mockable",
        ],
        swiftSettings: [
            .define("MOCKING", .when(configuration: .debug)),
        ]
    )
]

#if TUIST
    import struct ProjectDescription.PackageSettings

    let packageSettings = PackageSettings(
        productTypes: [
            // "SystemPackage": .staticFramework,
            // "TSCBasic": .staticFramework,
            // "TSCUtility": .staticFramework,
            // "TSCclibc": .staticFramework,
            // "TSCLibc": .staticFramework,
            // "ArgumentParser": .staticFramework,
            // "Mockable": .staticFramework,
            // "MockableTest": .staticFramework,
        ]
    )

#endif

let package = Package(
    name: "XcodeProjectGenerator",
    platforms: [.macOS(.v12)],
    products: [
        .library(
            name: "XcodeProjectGraph",
            targets: ["XcodeProjectGraph"]
        ),
    ],
    dependencies: [
        // .package(url: "https://github.com/apple/swift-argument-parser", from: "1.2.3"),
        // .package(url: "https://github.com/apple/swift-log", from: "1.5.3"),
        // .package(url: "https://github.com/apple/swift-tools-support-core", from: "0.6.1"),
        // .package(url: "https://github.com/CombineCommunity/CombineExt", from: "1.8.1"),
        // .package(url: "https://github.com/FabrizioBrancati/Queuer", from: "2.1.1"),
        // .package(url: "https://github.com/Flight-School/AnyCodable", from: "0.6.7"),
        // .package(url: "https://github.com/weichsel/ZIPFoundation", from: "0.9.17"),
        // .package(url: "https://github.com/kishikawakatsumi/KeychainAccess", from: "4.2.2"),
        // .package(url: "https://github.com/stencilproject/Stencil", exact: "0.15.1"),
        // .package(url: "https://github.com/SwiftDocOrg/GraphViz", exact: "0.2.0"),
        // .package(url: "https://github.com/SwiftGen/StencilSwiftKit", exact: "2.10.1"),
        // .package(url: "https://github.com/SwiftGen/SwiftGen", exact: "6.6.2"),
        // .package(url: "https://github.com/tuist/XcodeProj", exact: "8.19.0"),
        // .package(url: "https://github.com/cpisciotta/xcbeautify", exact: "2.0.1"),
        // .package(url: "https://github.com/krzysztofzablocki/Difference.git", from: "1.0.2"),
        // .package(url: "https://github.com/Kolos65/Mockable.git", from: "0.0.2"),
    ],
    targets: targets
)
