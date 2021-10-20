Complex
========

[![Codacy Badge](https://api.codacy.com/project/badge/Grade/d30d31c29f17449481b97a04610ff5b9)](https://app.codacy.com/app/SomeRandomiOSDev/Complex?utm_source=github.com&utm_medium=referral&utm_content=SomeRandomiOSDev/Complex&utm_campaign=Badge_Grade_Dashboard)
[![License MIT](https://img.shields.io/cocoapods/l/Complex.svg)](https://cocoapods.org/pods/Complex)
[![CocoaPods Compatible](https://img.shields.io/cocoapods/v/Complex.svg)](https://cocoapods.org/pods/Complex) 
[![Carthage Compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage) 
[![Platform](https://img.shields.io/cocoapods/p/Complex.svg)](https://cocoapods.org/pods/Complex)
![Linux](https://img.shields.io/badge/platform-linux-lightgrey)
[![Code Coverage](https://codecov.io/gh/SomeRandomiOSDev/Complex/branch/master/graph/badge.svg)](https://codecov.io/gh/SomeRandomiOSDev/Complex)

![Swift Package](https://github.com/SomeRandomiOSDev/Complex/workflows/Swift%20Package/badge.svg)
![Xcode Project](https://github.com/SomeRandomiOSDev/Complex/workflows/Xcode%20Project/badge.svg)
![Cocoapods](https://github.com/SomeRandomiOSDev/Complex/workflows/Cocoapods/badge.svg)
![Carthage](https://github.com/SomeRandomiOSDev/Complex/workflows/Carthage/badge.svg)

**Complex** is a lightweight framework designed for representing and working with complex numbers for iOS, macOS, tvOS, and watchOS.

Installation
--------

**Complex** is available through [CocoaPods](https://cocoapods.org), [Carthage](https://github.com/Carthage/Carthage) and the [Swift Package Manager](https://swift.org/package-manager/). 

To install via CocoaPods, simply add the following line to your Podfile:

```ruby
pod 'Complex'
```

To install via Carthage, simply add the following line to your Cartfile:

```ruby
github "SomeRandomiOSDev/Complex"
```

To install via the Swift Package Manager add the following line to your `Package.swift` file's `dependencies`:

```swift
.package(url: "https://github.com/SomeRandomiOSDev/Complex.git", from: "1.0.0")
```

Usage
--------

First import **Complex** at the top of your Swift file:

```swift
import Complex
```

After importing, use of complex numbers is as simple as can be:

```swift
let input = Complex<Double>(real: 4.31, imaginary: 2.0)
let scale = Complex<Double>(real: 1.5, imaginary: 2.718)

let output = input * scale

...
```

The **Complex** type also has builtin functionality specific to complex numbers, such as conjugates and modulus/angle (for converting to polar coordinates):

```swift
let complex = Complex<Double>(real: 7.0, imaginary: -4.1)

// Equal to 7.0 + 4.1i
let conjugate = ~complex // or complex.conjugate()

let (modulus, angle) = (complex.modulus, complex.angle)

...
```

Note
--------

The Swift library team has released their own **Complex** type as part of the Swift Numerics library. This library is likely to be archived in the future unless there is a continued need for this library to continue to be maintained. You can find more information about the new **Complex** type [here](https://swift.org/blog/numerics/#complex-numbers)

Contributing
--------

If you have need for a specific feature or you encounter a bug, please open an issue. If you extend the functionality of **Complex** yourself or you feel like fixing a bug yourself, please submit a pull request.

Author
--------

Joe Newton, somerandomiosdev@gmail.com

License
--------

**Complex** is available under the MIT license. See the `LICENSE` file for more info.
