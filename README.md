# SonarPenKit for iOS

SonarPenKit is the iOS SDK for SonarPen, a pressure-sensitive stylus that uses the device's audio interface for power and pressure detection.

The SDK integrates SonarPen input with standard iOS touch APIs so developers can add SonarPen support with minimal changes to existing UIKit-based drawing code. SonarPenKit 0.9.9 supports both SonarPen V1 and SonarPen V2.

## Requirements

iOS 13.0 or later.

## Installation

SonarPenKit can be installed with Swift Package Manager.

In Xcode, add the following package URL:

`https://github.com/SonarPen/SonarPenKit`

Or add SonarPenKit to the `dependencies` section of your `Package.swift`:

```swift
dependencies: [
    .package(
        url: "https://github.com/SonarPen/SonarPenKit",
        .upToNextMajor(from: "0.9.9")
    )
]
```

## Getting Started

Start SonarPenKit once during application startup:

```swift
SonarPen.start(application: UIApplication.shared)
```

When no SonarPen is connected, normal touch input continues to work as usual. When a supported SonarPen is connected, SonarPenKit provides stylus pressure through the standard UIKit touch APIs.

To stop SonarPenKit:

```swift
SonarPen.stop()
```

## UIKit Touch Integration

With SonarPenKit 0.9.9, both SonarPen V1 and SonarPen V2 can use the same UIKit touch path.

For new integrations, handle SonarPen input in the same way you handle a stylus through `UITouch`:

```swift
if touch.type == .pencil {
    let pressure = touch.force
    let maximumPressure = touch.maximumPossibleForce
}
```

This allows the same drawing code to work with SonarPen V1 and SonarPen V2 without maintaining a separate V1 touch path.

## SonarPen State

You can get the current SonarPenKit state with:

```swift
let state = SonarPen.state()
```

The possible states are:

```swift
.notStarted
.notConnected
.connected
```

You can also listen for state changes:

```swift
NotificationCenter.default.addObserver(
    self,
    selector: #selector(doStateChanged),
    name: Notification.Name.SonarPenKitStateChanged,
    object: nil
)
```

## SonarPen Version

You can check which SonarPen generation is currently detected:

```swift
let version = SonarPen.penVersion
```

Possible values are:

```swift
.unknown
.version1
.version2
```

## Other Helper Functions

```swift
SonarPen.isRunning() // Returns whether SonarPenKit has been started
SonarPen.lastError() // Returns the most recent connection or calibration error
SonarPen.pause()     // Pauses pressure detection and audio generation
SonarPen.resume()    // Resumes pressure detection and audio generation
```

## Objective-C

SonarPenKit can also be used from Objective-C. Swift Package Manager generates the framework header automatically.

Import SonarPenKit:

```objective-c
#import <SonarPenKit/SonarPenKit.h>
```

Start SonarPenKit:

```objective-c
[SonarPen startWithApplication:[UIApplication sharedApplication]];
```

Stop SonarPenKit:

```objective-c
[SonarPen stop];
```

Get the current state:

```objective-c
SonarPenState state = [SonarPen state];
```

Listen for state changes:

```objective-c
[[NSNotificationCenter defaultCenter]
    addObserver:self
    selector:@selector(doStateChanged:)
    name:NSNotification.SonarPenKitStateChanged
    object:nil];
```

## Legacy SonarPen V1 Touch-Handler API

SonarPenKit 0.9.9 keeps the original SonarPen V1 touch-handler API for backward compatibility. Existing applications that already use the V1 integration can continue to use it.

However, SonarPen V1 support is now integrated into the same UIKit touch API used by SonarPen V2. New applications, and existing applications being updated, are encouraged to use the unified UIKit integration described above. This allows one touch-handling path to support both SonarPen generations.

The original V1 integration remains available for existing applications.

### Swift

```swift
if SonarPen.penVersion == .version1 {
    _ = sonarPenTouchHandler.handleTouches(event: event, view: view)
}
```

### Objective-C

```objective-c
if ([SonarPen penVersion] == SonarPenVersionVersion1) {
    [touchHandler handleTouchesWithEvent:event view:view];
}
```

## Example Project

For a complete integration example, see [SonarPenKitExample](https://github.com/SonarPen/SonarPenKitExample).
