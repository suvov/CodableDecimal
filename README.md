# Codable Decimal

Wrapper around Decimal that preserves exact value when encoded and decoded.

## Requirements

* iOS 12.0+

## Installation

### Swift Package Manager

[Swift Package Manager](https://swift.org/package-manager/) is a tool for managing the distribution of Swift code. It’s integrated with the Swift build system to automate the process of downloading, compiling, and linking dependencies.

To integrate CodableDecimal into your Xcode project using Swift Package Manager, add it to the dependencies value of your `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/suvov/CodableDecimal.git", .upToNextMajor(from: "1.0.0"))
]
```

## Author

Vladimir Shutyuk, vladimir.shutyuk@gmail.com

## License

CodableDecimal is available under the MIT license. See the LICENSE file for more info.
