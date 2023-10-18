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
    .package(url: "https://github.com/SonarPen/SonarPenKit", .upToNextMajor(from: "0.7.2"))
]
```

## Getting Started

Simply add the following line of code in startup of the application, e.g. viewDidLoad of view controller:

```swift
    SonarPen.start(application: UIApplication.shared)
```

that will start the driver, when no pen is attached, the app will behave exactly the same as without driver.  If Sonar Pen is attached, it will return the pressure of the pen correctly.

If you want to unload the framework:

```swift
    SonarPen.top()
```

You can get the current state [.notStarted, .notConnected, .connected] of the driver and receive notification by:

```swift
    SonarPen.state()

    NotificationCenter.default.addObserver(self, selector: #selector(doStateChanged), name: Notification.Name.SonarPenKitStateChanged, object:nil)
```



## Objective C

To use the framework in Objective C:

```objective-c
#import "SonarPenKit/SonarPenKit.h"

    [SonarPen startWithApplication:application];
```

To load the framework:

```objective-c
    [SonarPen stop];
```

To get state:

```objective-c
    [SonarPen state];

    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(doStateChanged:) name:NSNotification.SonarPenKitStateChanged object:nil];
    
```



## Example

You can download the example [here](
https://github.com/SonarPen/SonarPenKitExample)
