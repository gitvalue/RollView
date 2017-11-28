# RollView
RollView is an iOS implementation of [ListView on Android](https://developer.android.com/reference/android/widget/ListView.html)

<img align="center" src="https://static2.fjcdn.com/thumbnails/comments/Alright+partner+keep+on+rollin+baby+_57a93d86838109662ed2e6bba0eedde5.jpg" alt="...">

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See [deployment](#deployment) for notes on how to deploy the project on a live system.

### Prerequisites

- iOS 9.0+
- Xcode 9.0+
- Swift 4

### Installing

#### CocoaPods

[CocoaPods](http://cocoapods.org) is a dependency manager for Cocoa projects. You can install it with the following command:

```bash
$ gem install cocoapods
```

To integrate RollView into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '9.0'
use_frameworks!

target '<Your Target Name>' do
    pod 'RollView', '~> 1.0'
end
```

Then, run the following command:

```bash
$ pod install
```

#### Swift Package Manager

**Note:** At this time there is [no _official_ support for iOS targets or the related system libraries](https://github.com/apple/swift-package-manager/blob/master/Documentation/Usage.md#depending-on-apple-modules) in SPM. So read [this](https://github.com/j-channings/swift-package-manager-ios) before processing.

All you need is to define RollView dependency in your package manifest file:

```Swift
import PackageDescription

let package = Package(
    name: "YourPackageName",
    products: [
        .library(name: "YourPackageName", targets: ["YourPackageName"]),
    ],
    dependencies: [
        .package(url: "https://github.com/gitvalue/RollView.git", from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "YourPackageName",
            dependencies: ["RollView"]),
        .testTarget(
            name: "YourPackageNameTests",
            dependencies: ["RollView"]),
    ]
)
```

and then run

```bash
$ swift fetch
```

#### Carthage

[Carthage](https://github.com/Carthage/Carthage) is a decentralized dependency manager that builds your dependencies and provides you with binary frameworks.

You can install Carthage with [Homebrew](http://brew.sh/) using the following command:

```bash
$ brew update
$ brew install carthage
```

To integrate RollView into your Xcode project using Carthage, specify it in your `Cartfile`:

```ogdl
github "https://github.com/gitvalue/RollView" ~> 1.0.0
```

Run `carthage update --platform iOS` to build the framework and drag the built `RollView` into your Xcode project.

For more information read [this](https://github.com/Carthage/Carthage#adding-frameworks-to-an-application)

#### Manually

If you prefer not to use either of the aforementioned dependency managers, you can integrate RollView into your project manually by copying files from [Source directory](/Sources/RollView/) to your project and installing [Pooling](https://github.com/gitvalue/Pooling).

## Deployment

### Quick Start

```swift
import UIKit
import RollView

class RollViewAdapter: Adapter {
    // your adapter implementation
}

class MyViewController: UIViewController {
    var rollView: RollView!

    override func viewDidLoad() {
        super.viewDidLoad()

        rollView = RollView()
        rollView.adapter = RollViewAdapter()

        rollView.frame = view.frame
        rollView.autoresizingMask = [ .flexibleWidth, .flexibleHeight ]
        
        view.addSubview(rollView)
        
        rollView.reload()
    }
}

```

## Notes

RollView reuses your views for memory-optimizations, so make sure that you initialize your views via `init(frame: CGRect)` designated initializer.

## Versioning

This repo uses [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/gitvalue/RollView/tags). 

## Authors

* **Dmitry Volosach** - *Initial work* - [@vlk1994](https://twitter.com/vlk1994)

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details
