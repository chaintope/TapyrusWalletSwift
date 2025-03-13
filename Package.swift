// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TapyrusWalletSwift",
    platforms: [
        .iOS(.v13)
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
            url: "https://github.com/chaintope/TapyrusWalletSwift/releases/download/0.1.2/tapyrus_wallet_ffi.xcframework.zip",
            checksum: "928bf712fdf9af70417de34c880305f21e54276506c12a28c0c4f80cb5523079"),
        .target(
            name: "TapyrusWallet",
            dependencies: ["TapyrusWalletFFI"]),
    ]
)