// swift-tools-version:5.4

import PackageDescription

let package = Package(
    name: "JustOpenCV",
    targets: [
        .executableTarget(
            name: "JustOpenCV",
            dependencies: ["opencv"]
        ),
        .testTarget(
            name: "JustOpenCVTests",
            dependencies: ["JustOpenCV"]
        ),
        .systemLibrary(
            name: "opencv",
            pkgConfig: "opencv4",
            providers: [
                .apt(["opencv-dev"]),
                .brew(["opencv"])
            ]
        )
    ],
    cxxLanguageStandard: CXXLanguageStandard.cxx14
)
