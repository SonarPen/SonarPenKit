Swift Package for SonarPenKit for iOS
 ===================================

SonarPenKit is a iOS framework for next-gen Sonar Pen.  Sonar Pen is a stylus that make use of audio input as the power and pressure detection that make a low cost, full feature stylus to handheld devices.

The framework make use of original UIKit /  PencilKit APIs, so that developer can integrate the support of the stylus easily with few lines of code.

## Requirements

iOS 13.0 or above

## Installation

You can install SonarPenKit through Swift Manager Manager

The [Swift Package Manager](https://swift.org/package-manager/) is a tool for automating the distribution of Swift code and is integrated into the `swift` compiler. 

Once you have your Swift package set up, adding SonarPenKit as a dependency is as easy as adding it to the `dependencies` value of your `Package.swift`.

```swift
dependencies: [
    .package(url: "https://github.com/SonarPen/SonarPenKit", .upToNextMajor(from: "0.5.0"))
]
```

## Getting Started

Simply add the following line of code in startup of the application, e.g. viewDidLoad of view controller:

```swift
SonarPen.start(application: UIApplication.shared)
```

that will start the driver, when no pen is attached, the app will behave exactly the same as without driver.  If Sonar Pen is attached, it will return the pressure of the pen correctly.

## Example

You can download the example [here](
https://github.com/SonarPen/SonarPenKitExample)
