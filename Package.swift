// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TapyrusWalletSwift",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "TapyrusWallet",
            targets: ["TapyrusWalletFFI", "TapyrusWallet"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
            name: "TapyrusWalletFFI",
            url: "https://github.com/chaintope/TapyrusWalletSwift/releases/download/0.1.4-beta.3/tapyrus_wallet_ffi.xcframework.zip",
            checksum: "6874520ef64fdb828bfcf2b5eeb6eee5f645c8c14377321adfd724748009e1f2"),
        .target(
            name: "TapyrusWallet",
            dependencies: ["TapyrusWalletFFI"]),
    ]
)