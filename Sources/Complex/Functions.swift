//
//  Functions.swift
//  Complex
//
//  Copyright © 2020 SomeRandomiOSDev. All rights reserved.
//

#if os(Linux)
import Glibc
#else
import Darwin
#endif

@_transparent
public func csqrt<F>(_ value: F) -> Complex<F> where F: FloatingPoint {
    let complex: Complex<F>
    if value < 0 {
        complex = Complex(real: 0, imaginary: sqrt(-value))
    } else {
        complex = Complex(real: sqrt(value), imaginary: 0)
    }

    return complex
}

@_transparent
public func sqrt<F>(_ value: Complex<F>) -> Complex<F> where F: FloatingPoint {
    //swiftlint:disable opening_brace statement_position
    let sign = { (value: F) -> F in
        let sign: F
        if value < 0 { sign = -1 }
        else         { sign = 1 }
        return sign
    }
    //swiftlint:enable opening_brace statement_position

    let modulus = value.modulus
    let real = sqrt((value.real + modulus) / F(2))
    let imaginary = sign(value.imaginary) * sqrt((modulus - value.real) / F(2))

    return Complex(real: real, imaginary: imaginary)
}

@_transparent
public func abs<F>(_ value: Complex<F>) -> Complex<F> where F: Comparable, F: SignedNumeric {
    return Complex(real: abs(value.real), imaginary: abs(value.imaginary))
}

@_transparent
public func min<F>(_ lhs: Complex<F>, _ rhs: Complex<F>) -> Complex<F> where F: Comparable {
    return Complex(real: min(lhs.real, rhs.real), imaginary: min(lhs.imaginary, rhs.imaginary))
}

@_transparent
public func max<F>(_ lhs: Complex<F>, _ rhs: Complex<F>) -> Complex<F> where F: Comparable {
    return Complex(real: max(lhs.real, rhs.real), imaginary: max(lhs.imaginary, rhs.imaginary))
}

@_transparent
public func clamp<F>(_ value: Complex<F>, _ minimum: F, _ maximum: F) -> Complex<F> where F: Comparable {
    return Complex(real: max(minimum, min(value.real, maximum)), imaginary: max(minimum, min(value.imaginary, maximum)))
}

@_transparent
public func clamp<F>(_ value: Complex<F>, _ minimum: Complex<F>, _ maximum: Complex<F>) -> Complex<F> where F: Comparable {
    return Complex(real: max(minimum.real, min(value.real, maximum.real)), imaginary: max(minimum.imaginary, min(value.imaginary, maximum.imaginary)))
}

//
// exp(a + bi) = exp(a) * (cos(b) + i * sin(b))

@_transparent
public func exp(_ value: Complex<Float>) -> Complex<Float> {
#if os(Linux)
    let exp = Glibc.exp(value.real)
#else
    let exp = Darwin.exp(value.real)
#endif
    return Complex<Float>(real: exp * cos(value.imaginary), imaginary: exp * sin(value.imaginary))
}

@_transparent
public func exp(_ value: Complex<Double>) -> Complex<Double> {
#if os(Linux)
    let exp = Glibc.exp(value.real)
#else
    let exp = Darwin.exp(value.real)
#endif
    return Complex<Double>(real: exp * cos(value.imaginary), imaginary: exp * sin(value.imaginary))
}

#if !(os(Windows) || os(Android)) && (arch(i386) || arch(x86_64))
@_transparent
public func exp(_ value: Complex<Float80>) -> Complex<Float80> {
#if os(Linux)
    let exp = Glibc.exp(value.real)
#else
    let exp = Darwin.exp(value.real)
#endif
    return Complex<Float80>(real: exp * cos(value.imaginary), imaginary: exp * sin(value.imaginary))
}
#endif

//
// log(a + bi) = log(sqrt(a^2 + b^2)) + i * atan(b / a)

@_transparent
public func log(_ value: Complex<Float>) -> Complex<Float> {
    return Complex<Float>(real: log(value.modulus), imaginary: value.angle)
}

@_transparent
public func log(_ value: Complex<Double>) -> Complex<Double> {
    return Complex<Double>(real: log(value.modulus), imaginary: value.angle)
}

#if !(os(Windows) || os(Android)) && (arch(i386) || arch(x86_64))
@_transparent
public func log(_ value: Complex<Float80>) -> Complex<Float80> {
    return Complex<Float80>(real: log(value.modulus), imaginary: value.angle)
}
#endif

//

@_transparent
public func log10(_ value: Complex<Float>) -> Complex<Float> {
    return log(value) / log(10.0)
}

@_transparent
public func log10(_ value: Complex<Double>) -> Complex<Double> {
    return log(value) / log(10.0)
}

#if !(os(Windows) || os(Android)) && (arch(i386) || arch(x86_64))
@_transparent
public func log10(_ value: Complex<Float80>) -> Complex<Float80> {
    return log(value) / log(10.0)
}
#endif

//

@_transparent
public func log2(_ value: Complex<Float>) -> Complex<Float> {
    return log(value) / log(2.0)
}

@_transparent
public func log2(_ value: Complex<Double>) -> Complex<Double> {
    return log(value) / log(2.0)
}

#if !(os(Windows) || os(Android)) && (arch(i386) || arch(x86_64))
@_transparent
public func log2(_ value: Complex<Float80>) -> Complex<Float80> {
    return log(value) / log(2.0)
}
#endif

//
// sin(a + bi) = sin(a) * cosh(b) + i * cos(a) * sinh(b)

@_transparent
public func sin(_ value: Complex<Float>) -> Complex<Float> {
    return Complex<Float>(real: sin(value.real) * cosh(value.imaginary), imaginary: cos(value.real) * sinh(value.imaginary))
}

@_transparent
public func sin(_ value: Complex<Double>) -> Complex<Double> {
    return Complex<Double>(real: sin(value.real) * cosh(value.imaginary), imaginary: cos(value.real) * sinh(value.imaginary))
}

#if !(os(Windows) || os(Android)) && (arch(i386) || arch(x86_64))
@_transparent
public func sin(_ value: Complex<Float80>) -> Complex<Float80> {
    return Complex<Float80>(real: sin(value.real) * cosh(value.imaginary), imaginary: cos(value.real) * sinh(value.imaginary))
}
#endif

//
// asin(z) = -i * ln(iz + sqrt(1 - z^2))

@_transparent
public func asin(_ value: Complex<Float>) -> Complex<Float> {
    //swiftlint:disable identifier_name
    let iz = .i * value
    let root = sqrt(1.0 - (value * value))

    return -.i * log(iz + root)
    //swiftlint:enable identifier_name
}

@_transparent
public func asin(_ value: Complex<Double>) -> Complex<Double> {
    //swiftlint:disable identifier_name
    let iz = .i * value
    let root = sqrt(1.0 - (value * value))

    return -.i * log(iz + root)
    //swiftlint:enable identifier_name
}

#if !(os(Windows) || os(Android)) && (arch(i386) || arch(x86_64))
@_transparent
public func asin(_ value: Complex<Float80>) -> Complex<Float80> {
    //swiftlint:disable identifier_name
    let iz = .i * value
    let root = sqrt(1.0 - (value * value))

    return -.i * log(iz + root)
    //swiftlint:enable identifier_name
}
#endif

//
// sinh(z) = -i * sin(iz)

@_transparent
public func sinh(_ value: Complex<Float>) -> Complex<Float> {
    return -.i * sin(.i * value)
}

@_transparent
public func sinh(_ value: Complex<Double>) -> Complex<Double> {
    return -.i * sin(.i * value)
}

#if !(os(Windows) || os(Android)) && (arch(i386) || arch(x86_64))
@_transparent
public func sinh(_ value: Complex<Float80>) -> Complex<Float80> {
    return -.i * sin(.i * value)
}
#endif

//
// cos(a + bi) = cos(a) * cosh(b) - i * sin(a) * sinh(b)

@_transparent
public func cos(_ value: Complex<Float>) -> Complex<Float> {
    return Complex<Float>(real: cos(value.real) * cosh(value.imaginary), imaginary: -sin(value.real) * sinh(value.imaginary))
}

@_transparent
public func cos(_ value: Complex<Double>) -> Complex<Double> {
    return Complex<Double>(real: cos(value.real) * cosh(value.imaginary), imaginary: -sin(value.real) * sinh(value.imaginary))
}

#if !(os(Windows) || os(Android)) && (arch(i386) || arch(x86_64))
@_transparent
public func cos(_ value: Complex<Float80>) -> Complex<Float80> {
    return Complex<Float80>(real: cos(value.real) * cosh(value.imaginary), imaginary: -sin(value.real) * sinh(value.imaginary))
}
#endif

//
// acos(z) = -i * ln(z + sqrt(z^2 - 1))

@_transparent
public func acos(_ value: Complex<Float>) -> Complex<Float> {
    let root = sqrt((value * value) - 1.0)
    return -.i * log(value + root)
}

@_transparent
public func acos(_ value: Complex<Double>) -> Complex<Double> {
    let root = sqrt((value * value) - 1.0)
    return -.i * log(value + root)
}

#if !(os(Windows) || os(Android)) && (arch(i386) || arch(x86_64))
@_transparent
public func acos(_ value: Complex<Float80>) -> Complex<Float80> {
    let root = sqrt((value * value) - 1.0)
    return -.i * log(value + root)
}
#endif

//
// cosh(z) = cos(iz)

@_transparent
public func cosh(_ value: Complex<Float>) -> Complex<Float> {
    return cos(.i * value)
}

@_transparent
public func cosh(_ value: Complex<Double>) -> Complex<Double> {
    return cos(.i * value)
}

#if !(os(Windows) || os(Android)) && (arch(i386) || arch(x86_64))
@_transparent
public func cosh(_ value: Complex<Float80>) -> Complex<Float80> {
    return cos(.i * value)
}
#endif

//

@_transparent
public func tan(_ value: Complex<Float>) -> Complex<Float> {
    return sin(value) / cos(value)
}

@_transparent
public func tan(_ value: Complex<Double>) -> Complex<Double> {
    return sin(value) / cos(value)
}

#if !(os(Windows) || os(Android)) && (arch(i386) || arch(x86_64))
@_transparent
public func tan(_ value: Complex<Float80>) -> Complex<Float80> {
    return sin(value) / cos(value)
}
#endif

//
// atan(z) = (i / 2) * ln((i + z) / (i - z))

@_transparent
public func atan(_ value: Complex<Float>) -> Complex<Float> {
    let quotient = (.i + value) / (.i - value)
    return .i * 0.5 * log(quotient)
}

@_transparent
public func atan(_ value: Complex<Double>) -> Complex<Double> {
    let quotient = (.i + value) / (.i - value)
    return .i * 0.5 * log(quotient)
}

#if !(os(Windows) || os(Android)) && (arch(i386) || arch(x86_64))
@_transparent
public func atan(_ value: Complex<Float80>) -> Complex<Float80> {
    let quotient = (.i + value) / (.i - value)
    return .i * 0.5 * log(quotient)
}
#endif

//
// tanh(z) = -i * tan(iz)

@_transparent
public func tanh(_ value: Complex<Float>) -> Complex<Float> {
    return -.i * tan(.i * value)
}

@_transparent
public func tanh(_ value: Complex<Double>) -> Complex<Double> {
    return -.i * tan(.i * value)
}

#if !(os(Windows) || os(Android)) && (arch(i386) || arch(x86_64))
@_transparent
public func tanh(_ value: Complex<Float80>) -> Complex<Float80> {
    return -.i * tan(.i * value)
}
#endif

//
