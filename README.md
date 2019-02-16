<p align="center">
<img src="https://raw.githubusercontent.com/amerhukic/OrientationTracker/master/Logo.png" width="570" max-width="80%" alt="Logo" />
</p>

<p align="center">
    <img src="https://img.shields.io/badge/Swift-4.2-orange.svg" />
    <a href="https://cocoapods.org/pods/OrientationTracker">
        <img src="https://img.shields.io/cocoapods/v/OrientationTracker.svg?style=flat" alt="Pod Version">
    </a>
    <a href="">
        <img src="https://img.shields.io/badge/Licence-MIT-green.svg" alt="License">
    </a>
    <a href="https://twitter.com/hukicamer">
        <img src="https://img.shields.io/badge/contact-%40hukicamer-blue.svg?style=flat" alt="Twitter: @hukicamer" />
    </a>
</p>

**OrientationTracker** is a Core Motion based library for tracking device orientation changes. It also works for devices with orientation-lock turned on. You can subscribe to orientation change notifications and react accordingly.

## Requirements

- iOS 8.0+
- Xcode 10.0+
- Swift 4.2+

## Usage

To start device orientation tracking use `OrientationTracker` you simply invoke the `startDeviceOrientationTracking` method, preferably in `AppDelegate` :
```swift
DeviceOrientationDetector.shared.startDeviceOrientationTracking()
```

You then add an observer for the `OrientationTracker.deviceOrientationChangedNotification` and react to orientation changes:
```swift
NotificationCenter.default.addObserver(self, selector: #selector(updateViews), name: DeviceOrientationDetector.deviceOrientationChangedNotification, object: nil)
```

You can access the current orientation using the `currentDeviceOrientation` property.

To stop receiving notifications use the `stopDeviceOrientationTracking` method:
```swift
DeviceOrientationDetector.shared.stopDeviceOrientationTracking()
```

If your app supports portrait mode only, you can use the `affineTransform` property to rotate views when the orientation changes:
```swift
UIView.animate(withDuration: 0.2) {
    self.imageView.transform = DeviceOrientationDetector.shared.affineTransform
}
```

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Installation

### CocoaPods

[CocoaPods](https://cocoapods.org) is a dependency manager for Cocoa projects. You can install it with the following command:

```bash
$ gem install cocoapods
```

To integrate OrientationTracker into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '8.0'
use_frameworks!

target '<Your Target Name>' do
    pod 'OrientationTracker'
end
```

Then, run the following command:

```bash
$ pod install
```

## Author

[Amer Hukić](https://amerhukic.com)

## License

OrientationTracker is licensed under the MIT license. Check the [LICENSE](LICENSE) file for details.
