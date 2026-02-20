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
            url: "https://github.com/chaintope/TapyrusWalletSwift/releases/download/0.1.3/tapyrus_wallet_ffi.xcframework.zip",
            checksum: "8265e23090217605b31f938fecbf6662eba4dea77d789a74f254b36f33fc4e17"),
        .target(
            name: "TapyrusWallet",
            dependencies: ["TapyrusWalletFFI"]),
    ]
)