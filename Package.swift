// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "freetype",
    products: [
        .library(name: "freetype", targets: ["freetype2"]),
    ],
    targets: [
        .target(
            name: "freetype2",
            path: "src",
            sources: [
                "base/ftbase.c",
                "base/ftinit.c",
                "base/ftsystem.c",
                "base/ftdebug.c",
                
                "autofit/autofit.c",
                "bdf/bdf.c",
                "cff/cff.c",
                "cid/type1cid.c",
                "pcf/pcf.c",
                "pfr/pfr.c",
                "psaux/psaux.c",
                "pshinter/pshinter.c",
                "psnames/psnames.c",
                "raster/raster.c",
                "sfnt/sfnt.c",
                "smooth/smooth.c",
                "truetype/truetype.c",
                "type1/type1.c",
                "type42/type42.c",
                "winfonts/winfnt.c",
            ],
            publicHeadersPath: "include",
            cSettings: [
                .define("FT2_BUILD_LIBRARY"),
                
                .headerSearchPath("include"),
                .headerSearchPath("include/freetype"),
                .headerSearchPath("src"),
            ],
        )
    ]
)
