// swift-tools-version:5.4

import PackageDescription

let package = Package(
    name: "JustOpenCV",
    dependencies: [
    ],
    targets: [
        .executableTarget(
            name: "JustOpenCV",
            dependencies: ["opencv"]),
        .testTarget(
            name: "JustOpenCVTests",
            dependencies: ["JustOpenCV"]),
        .systemLibrary(name: "opencv",
            pkgConfig: "opencv",
            providers: [ .apt(["opencv-dev"]), .brew(["opencv"]) ])
    ],
    // -- Optionally, specify the minimum language version --
    //swiftLanguageVersions: [SwiftVersion.v5],
    //cLanguageStandard: CLanguageStandard.c11,
    cxxLanguageStandard: CXXLanguageStandard.cxx14
)
