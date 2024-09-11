// swift-tools-version: 5.5
//
// Copyright 2024 Google LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import PackageDescription

let package = Package(
  name: "GooglePlacesSwiftPreivew", platforms: [.iOS(.v15)],
  products: [
    .library(name: "GooglePlacesSwift", targets: ["GooglePlacesSwiftTarget"]),
    .library(name: "GooglePlacesObjc", targets: ["GooglePlacesObjcTarget"]),
  ],
  dependencies: [
    .package(url: "https://github.com/googlemaps/ios-places-swift-sdk", from: "0.2.0"),
    .package(url: "https://github.com/googlemaps/ios-places-sdk", from: "9.1.0"),
  ],
  targets: [
    .target(
      name: "GooglePlacesSwiftTarget",
      dependencies: [
        "ios-places-swift-sdk",
      ]
    ),
    .target(
      name: "GooglePlacesObjcTarget",
      dependencies: [
        "ios-places-sdk",
      ]
    )
  ]
)
