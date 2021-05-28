# JustOpenCV

_Question: How to use 'brew' to provide a C system library for a Swift Package target dependency?_

How does one use `SystemPackageProvider.brew(…)` to provide a C/C++ system library for a Swift Package target dependency?

After search the internet, it seemed that the following should work:

``` swift
// swift-tools-version:5.4

import PackageDescription

let package = Package(
    name: "JustOpenCV",
    dependencies: [ ],
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
    cxxLanguageStandard: CXXLanguageStandard.cxx14
)
```

Note: the library has already been installed via `brew install opencv`.

However, the following error occurs…

> _error: Source files for target opencv should be located under 'Sources/opencv', or a custom sources path can be set with the 'path' property in Package.swift_

Both the suggested error remedies imply not using the `SystemPackageProvider`. Is there a way to use `SystemPackageProvider` for a Homebrew installed library?

Repository: [JustOpenCV](https://github.com/marc-medley/JustOpenCV)