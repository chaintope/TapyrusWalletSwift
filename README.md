# TapyrusWalletSwift

A Swift library for interacting with the Tapyrus blockchain, providing wallet functionality for iOS applications.

## Overview

TapyrusWalletSwift is a wallet library for the [Tapyrus blockchain](https://github.com/chaintope/tapyrus-core). It provides a Swift interface for managing wallets, handling transactions, and interacting with the Tapyrus network.

Key features:
- HD wallet support
- Transaction creation and signing
- Balance management
- Contract support

### Requirements

- iOS 16.0+
- Swift 5.5+
- Connection to [esplora-tapyrus](https://github.com/chaintope/esplora-tapyrus) for blockchain data

## Installation

### Swift Package Manager

TapyrusWalletSwift can be installed via Swift Package Manager in Xcode:

1. Open your project in Xcode
2. Select **File** → **Add Packages...**
3. Enter the repository URL: `https://github.com/chaintope/TapyrusWalletSwift.git`
4. Select the version you want to use
5. Click **Add Package**
6. After adding the package, go to your target's settings
7. Navigate to **General** → **Frameworks, Libraries, and Embedded Content**
8. Ensure that `TapyrusWallet` is listed


## Usage

Import the library in your Swift files:

```swift
import TapyrusWallet
```

For usage examples, please refer to the [example project](https://github.com/chaintope/rust-tapyrus-wallet-ffi/tree/main/TapyrusWalletSwift/example).

## Documentation

For more detailed documentation, please refer to the documentation archive in the `docs/TapyrusWallet.doccarchive` directory.

## Related Projects

- [Tapyrus Core](https://github.com/chaintope/tapyrus-core) - The Tapyrus blockchain implementation
- [esplora-tapyrus](https://github.com/chaintope/esplora-tapyrus) - Block explorer for Tapyrus (required for this library)

## License

MIT License
