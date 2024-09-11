// swift-tools-version: 5.10

import PackageDescription

let package = Package(
  name: "CodableDecimal",
  platforms: [.iOS(.v12)],
  products: [
    .library(
      name: "CodableDecimal",
      targets: ["CodableDecimal"]),
  ],
  targets: [
    .target(
      name: "CodableDecimal"),
    .testTarget(
      name: "CodableDecimalTests",
      dependencies: ["CodableDecimal"]),
  ]
)
