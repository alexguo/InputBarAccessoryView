// swift-tools-version:5.0
import PackageDescription

let package = Package(
   name: "InputBarAccessoryView",
   platforms: [.iOS(.v9)],
   products: [
       .library(
            name: "InputBarAccessoryView",
            targets: ["InputBarAccessoryView"]),
       .library(
            name: "RxExtensions",
            targets: ["RxExtensions"])
   ],
   dependencies: [
   ],
   targets: [
       .target(
           name: "InputBarAccessoryView",
           path: "Sources"
       ),
       .target(
           name: "RxExtensions",
           dependencies: [
               "InputBarAccessoryView",
               "RxSwift",
               "RxCocoa"
           ],
           path: "RxInputBarAccessoryView"
       )
   ],
   swiftLanguageVersions: [.v5]
)
