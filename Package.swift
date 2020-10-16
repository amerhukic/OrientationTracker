// swift-tools-version:5.3
import PackageDescription

let package = Package(
  name: "OrientationTracker",
  products: [
    .library(
      name: "OrientationTracker",
      targets: ["OrientationTracker"]
    ),
  ],
  targets: [
    .target(
      name: "OrientationTracker",
      path: "OrientationTracker/Classes"
    ),
  ]
)
