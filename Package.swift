// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftFFTW",
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "SwiftFFTW",
            dependencies: ["CFFTW"]),
        .target(
            name: "CFFTW",
            dependencies: ["fftw3"]),
        .systemLibrary(name: "fftw3", pkgConfig: "fftw3"),
        .testTarget(
            name: "SwiftFFTWTests",
            dependencies: ["SwiftFFTW"]),
    ]
)
