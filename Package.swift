// swift-tools-version: 5.9;
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "YandexMobileAdsMediationPackage",
    platforms: [
        .iOS("13.0")
    ],
    products: [
        .library(
            name: "YandexMobileAdsAdMobAdapters",
            targets: ["YandexMobileAdsAdMobAdaptersWrapper"]
        ),
        .library(
            name: "GoogleYandexMobileAdsAdapters",
            targets: ["GoogleYandexMobileAdsAdaptersWrapper"]
        ),
        .library(
            name: "VungleYandexMobileAdsAdapters",
            targets: ["VungleYandexMobileAdsAdaptersWrapper"]
        ),
        .library(
            name: "AppLovinYandexMobileAdsAdapters",
            targets: ["AppLovinYandexMobileAdsAdaptersWrapper"]
        ),
        .library(
            name: "MyTargetYandexMobileAdsAdapters",
            targets: ["MyTargetYandexMobileAdsAdaptersWrapper"]
        ),
        .library(
            name: "MintegralYandexMobileAdsAdapters",
            targets: ["MintegralYandexMobileAdsAdaptersWrapper"]
        ),
        .library(
            name: "DigitalTurbineYandexMobileAdsAdapters",
            targets: ["DigitalTurbineYandexMobileAdsAdaptersWrapper"]
        ),
        .library(
            name: "UnityAdsYandexMobileAdsAdapters",
            targets: ["UnityAdsYandexMobileAdsAdaptersWrapper"]
        ),
        .library(
            name: "IronSourceYandexMobileAdsAdapters",
            targets: ["IronSourceYandexMobileAdsAdaptersWrapper"]
        ),
        .library(
            name: "ChartboostYandexMobileAdsAdapters",
            targets: ["ChartboostYandexMobileAdsAdaptersWrapper"]
        ),
        .library(
            name: "InMobiYandexMobileAdsAdapters",
            targets: ["InMobiYandexMobileAdsAdaptersWrapper"]
        ),
        .library(
            name: "StartAppYandexMobileAdsAdaptersWrapper",
            targets: ["StartAppYandexMobileAdsAdapters"]
        ),
        .library(
            name: "YandexMobileAdsMediation",
            targets: [
                "YandexMobileAdsMediation",
                "GoogleYandexMobileAdsAdaptersWrapper",
                "VungleYandexMobileAdsAdaptersWrapper",
                "AppLovinYandexMobileAdsAdaptersWrapper",
                "MyTargetYandexMobileAdsAdaptersWrapper",
                "MintegralYandexMobileAdsAdaptersWrapper",
                "DigitalTurbineYandexMobileAdsAdaptersWrapper",
                "UnityAdsYandexMobileAdsAdaptersWrapper",
                "IronSourceYandexMobileAdsAdaptersWrapper",
                "ChartboostYandexMobileAdsAdaptersWrapper",
                "InMobiYandexMobileAdsAdaptersWrapper",
                "StartAppYandexMobileAdsAdaptersWrapper",
            ]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads", .upToNextMinor(from: "13.3.0")),
        .package(url: "https://github.com/Vungle/VungleAdsSDK-SwiftPackageManager", .upToNextMinor(from: "7.7.0")),
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package", .upToNextMinor(from: "13.5.1")),
        .package(url: "https://github.com/myTargetSDK/mytarget-ios-spm", .upToNextMinor(from: "5.36.2")),
        .package(url: "https://github.com/Mintegral-official/MintegralAdSDK-Swift-Package", .upToNextMinor(from: "8.0.7")),
        .package(url: "https://github.com/inner-active/DTExchangeSDK-iOS-SPM", .upToNextMinor(from: "8.4.4")),
        .package(url: "https://github.com/yandexmobile/yandex-ads-sdk-ios", .upToNextMinor(from: "8.2.0")),
    ],
    targets: [
        .target(
            name: "YandexMobileAdsAdMobAdaptersWrapper",
            dependencies: [
                .target(name: "YandexMobileAdsAdMobAdapters"),
                .product(name: "YandexMobileAds", package: "yandex-ads-sdk-ios"),
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads"),
            ]
        ),
        .target(
            name: "GoogleYandexMobileAdsAdaptersWrapper",
            dependencies: [
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads"),
                .target(name: "GoogleYandexMobileAdsAdapters"),
                .product(name: "YandexMobileAds", package: "yandex-ads-sdk-ios")
            ]
        ),
        .target(
            name: "VungleYandexMobileAdsAdaptersWrapper",
            dependencies: [
                .product(name: "VungleAdsSDK", package: "VungleAdsSDK-SwiftPackageManager"),
                .target(name: "VungleYandexMobileAdsAdapters"),
                .product(name: "YandexMobileAds", package: "yandex-ads-sdk-ios")
            ]
        ),
        .target(
            name: "AppLovinYandexMobileAdsAdaptersWrapper",
            dependencies: [
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
                .target(name: "AppLovinYandexMobileAdsAdapters"),
                .product(name: "YandexMobileAds", package: "yandex-ads-sdk-ios")
            ]
        ),
        .target(
            name: "MyTargetYandexMobileAdsAdaptersWrapper",
            dependencies: [
                .product(name: "MyTargetSDK", package: "mytarget-ios-spm"),
                .target(name: "MyTargetYandexMobileAdsAdapters"),
                .product(name: "YandexMobileAds", package: "yandex-ads-sdk-ios")
            ]
        ),
        .target(
            name: "MintegralYandexMobileAdsAdaptersWrapper",
            dependencies: [
                .product(name: "MintegralAdSDK", package: "MintegralAdSDK-Swift-Package"),
                .target(name: "MintegralYandexMobileAdsAdapters"),
                .product(name: "YandexMobileAds", package: "yandex-ads-sdk-ios"),
            ]
        ),
        .target(
            name: "DigitalTurbineYandexMobileAdsAdaptersWrapper",
            dependencies: [
                .product(name: "DTExchangeSDK", package: "DTExchangeSDK-iOS-SPM"),
                .target(name: "DigitalTurbineYandexMobileAdsAdapters"),
                .product(name: "YandexMobileAds", package: "yandex-ads-sdk-ios"),
            ]
        ),
        .target(
            name: "UnityAdsYandexMobileAdsAdaptersWrapper",
            dependencies: [
                .target(name: "UnityAds"),
                .target(name: "UnityAdsYandexMobileAdsAdapters"),
                .product(name: "YandexMobileAds", package: "yandex-ads-sdk-ios"),
            ]
        ),
        .target(
            name: "IronSourceYandexMobileAdsAdaptersWrapper",
            dependencies: [
                .target(name: "IronSource"),
                .target(name: "IronSourceYandexMobileAdsAdapters"),
                .product(name: "YandexMobileAds", package: "yandex-ads-sdk-ios"),
            ]
        ),
        .target(
            name: "ChartboostYandexMobileAdsAdaptersWrapper",
            dependencies: [
                .target(name: "ChartboostSDK"),
                .target(name: "ChartboostYandexMobileAdsAdapters"),
                .product(name: "YandexMobileAds", package: "yandex-ads-sdk-ios"),
            ]
        ),
        .target(
            name: "InMobiYandexMobileAdsAdaptersWrapper",
            dependencies: [
                .target(name: "InMobiSDK"),
                .target(name: "InMobiYandexMobileAdsAdapters"),
                .product(name: "YandexMobileAds", package: "yandex-ads-sdk-ios"),
            ]
        ),
        .target(
            name: "StartAppYandexMobileAdsAdaptersWrapper",
            dependencies: [
                .target(name: "StartAppSDK"),
                .target(name: "StartAppYandexMobileAdsAdapters"),
                .product(name: "YandexMobileAds", package: "yandex-ads-sdk-ios"),
            ]
        ),
        .binaryTarget(
            name: "YandexMobileAdsAdMobAdapters",
            url: "https://ads-mobile-sdk.s3.yandex.net/Yandex/YandexMobileAdsAdMobAdapters/8.2.0.0/spm/296b22ec-89e6-41ed-a1d5-8c7fa14b824c.zip",
            checksum: "1a36bebce60f89b2d87aa2b2f0baf7767ac2f86504fa0c74fc531a107f47faa1"
        ),
        .binaryTarget(
            name: "GoogleYandexMobileAdsAdapters",
            url: "https://ads-mobile-sdk.s3.yandex.net/Yandex/GoogleYandexMobileAdsAdapters/13.3.0.1/spm/8cf9ffa4-9ed4-415f-8955-1dc0e8d37f2e.zip",
            checksum: "9dd7671c5b9de41d879b86cddc5769964de0e419c8c562513834367218bf5c7e"
        ),
        .binaryTarget(
            name: "VungleYandexMobileAdsAdapters",
            url: "https://ads-mobile-sdk.s3.yandex.net/Yandex/VungleYandexMobileAdsAdapters/7.7.0.2/spm/8a681cb2-be64-4db2-aa4e-42c5b5242a6c.zip",
            checksum: "5ad8eab8bbb27e61df22ec1c7d7656150276ecce33f3d1098a4282aba3f6cef9"
        ),
        .binaryTarget(
            name: "AppLovinYandexMobileAdsAdapters",
            url: "https://ads-mobile-sdk.s3.yandex.net/Yandex/AppLovinYandexMobileAdsAdapters/13.5.1.2/spm/a62607ea-6300-471b-9288-b7bf97288b93.zip",
            checksum: "f34680b37355c19d05a71302549feb019421b55c7248bcdb2708186ebef82d94"
        ),
        .binaryTarget(
            name: "MyTargetYandexMobileAdsAdapters",
            url: "https://ads-mobile-sdk.s3.yandex.net/Yandex/MyTargetYandexMobileAdsAdapters/5.36.2.2/spm/6fe1b7cf-a051-48f5-8f13-a1f1f71993dc.zip",
            checksum: "b80357167370cbdf234b5875010edee9eecac5f4d0eddc841047bab826865be4"
        ),
        .binaryTarget(
            name: "MintegralYandexMobileAdsAdapters",
            url: "https://ads-mobile-sdk.s3.yandex.net/Yandex/MintegralYandexMobileAdsAdapters/8.0.7.2/spm/ebaa9e5a-0959-4e4d-b07f-964a73e04726.zip",
            checksum: "2b0f6c1b9b5c20997595d315de44d470ec6e20e5ab0e3354990196ba9b8c590a"
        ),
        .binaryTarget(
            name: "DigitalTurbineYandexMobileAdsAdapters",
            url: "https://ads-mobile-sdk.s3.yandex.net/Yandex/DigitalTurbineYandexMobileAdsAdapters/8.4.4.2/spm/8f6c0d6b-f5a3-46d5-9cde-7aad9c1a2405.zip",
            checksum: "40dd8b1bfa446a4faffe52d2d6225245027d6e8b7a6398b3c6cb976cab0cc5fc"
        ),
        .binaryTarget(
            name: "YandexMobileAdsMediation",
            url: "https://ads-mobile-sdk.s3.yandex.net/Yandex/YandexMobileAdsMediation/8.2.0/spm/e070c4b5-5227-42ec-89ce-35be5f9310b9.zip",
            checksum: "b5d4b5567d07ad77cb2be68ebde70a1986ff749cb177d2ae954c0a3d113f7fff"
        ),
        .binaryTarget(
            name: "UnityAdsYandexMobileAdsAdapters",
            url: "https://ads-mobile-sdk.s3.yandex.net/Yandex/UnityAdsYandexMobileAdsAdapters/4.16.6.2/cocoapods/ea193220-68cc-47ba-9986-bcfd66ba77ed.zip",
            checksum: "a6c00adb4e2bcd965792d39ba7abf851c36f77a450ed375bc4dc5bb62de1cd28"
        ),
        .binaryTarget(
            name: "UnityAds",
            url: "https://github.com/Unity-Technologies/unity-ads-ios/releases/download/4.16.6/UnityAds.zip",
            checksum: "f844ff77d03e07a196557e62cd5f0a46df04bc5029db12dcc63be90f28192e45"
        ),
        .binaryTarget(
            name: "IronSourceYandexMobileAdsAdapters",
            url: "https://ads-mobile-sdk.s3.yandex.net/Yandex/IronSourceYandexMobileAdsAdapters/9.3.0.2/cocoapods/9a050745-8595-4229-b8f2-9883380d5725.zip",
            checksum: "e99e3a85113b5832691288daf4ce69ef0270b12164624701ead38c57bf149e52"
        ),
        .binaryTarget(
            name: "IronSource",
            url: "https://github.com/ironsource-mobile/iOS-sdk/releases/download/IronSource_9.3.0/IronSource9.3.0.zip",
            checksum: "a19ad3771ab8a92bbeca8d1c3a6f9126973d816f5fbb038043234574c81e9cbf"
        ),
        .binaryTarget(
            name: "ChartboostYandexMobileAdsAdapters",
            url: "https://ads-mobile-sdk.s3.yandex.net/Yandex/ChartboostYandexMobileAdsAdapters/9.11.0.2/cocoapods/e3d2b760-6cd6-45ac-81e4-5cbfef779d78.zip",
            checksum: "653f2c7158550e6c43c90566b25d1a05fbc9f3ad2510d27d3890659db0b41912"
        ),
        .binaryTarget(
            name: "ChartboostSDK",
            url: "https://github.com/nauhcx/Chartboost/releases/download/9.11.0/ChartboostSDK.xcframework.zip",
            checksum: "e315cc364549d129acf71ccf7b4d9a2acdd9e5567d7e0bab9852953a2295a8f7"
        ),
        .binaryTarget(
            name: "InMobiYandexMobileAdsAdapters",
            url: "https://ads-mobile-sdk.s3.yandex.net/Yandex/InMobiYandexMobileAdsAdapters/11.1.1.2/cocoapods/5a71973b-9542-473f-a35c-af4ef0a452fc.zip",
            checksum: "2780e4c4a883089d8884a3f4e0201a55baa5ef9a2a386da326d68df9d56630e5"
        ),
        .binaryTarget(
            name: "InMobiSDK",
            url: "https://dl.inmobi.com/inmobi-sdk/IM/InMobi-iOS-SDK-11.1.1.zip",
            checksum: "578dd32285cc8cea05e04ef3ffd03ccf0c93bc010d1e3abbed28690fe0dfffb2"
        ),
        .binaryTarget(
            name: "StartAppYandexMobileAdsAdapters",
            url: "https://ads-mobile-sdk.s3.yandex.net/Yandex/StartAppYandexMobileAdsAdapters/4.13.0.2/cocoapods/47b96d74-744f-4149-9321-80c556d5b420.zip",
            checksum: "30ef5d67e8fa9cf2244d51a21e9b26296d246ca849f88da5ed50b3ebff41c7dc"
        ),
        .binaryTarget(
            name: "StartAppSDK",
            url: "https://github.com/nauhcx/StartAppSDK/releases/download/4.13.0/StartApp.xcframework.zip",
            checksum: "b7ee04e0a8a204ff9241f33989696dd85a2bb13aaf33cb53dbe9b6451cd05e35"
        ),
    ]
)
