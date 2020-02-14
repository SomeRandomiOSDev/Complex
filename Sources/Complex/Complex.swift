//
//  Complex.swift
//  Complex
//
//  Copyright © 2020 SomeRandomiOSDev. All rights reserved.
//

import Foundation

//swiftlint:disable shorthand_operator

// MARK: - Complex Definition

@frozen public struct Complex<FloatingPoint: BinaryFloatingPoint> {

    // MARK: Public Properties

    public var real: FloatingPoint
    public var imaginary: FloatingPoint

    // MARK: Initialization

    @_transparent
    public init(real: FloatingPoint = 0.0, imaginary: FloatingPoint = 0.0) {
        self.real = real
        self.imaginary = imaginary
    }

    @_transparent
    public init<Source>(real: Source, imaginary: Source) where Source: BinaryFloatingPoint {
        self.init(real: FloatingPoint(real), imaginary: FloatingPoint(imaginary))
    }

    @_transparent
    public init<Source>(real: Source, imaginary: Source) where Source: BinaryInteger {
        self.init(real: FloatingPoint(real), imaginary: FloatingPoint(imaginary))
    }

    @_transparent
    public init<Source>(_ complex: Complex<Source>) where Source: BinaryFloatingPoint {
        self.init(real: FloatingPoint(complex.real), imaginary: FloatingPoint(complex.imaginary))
    }

    @_transparent
    public init() {
        self.init(real: 0.0, imaginary: 0.0)
    }
}

// MARK: - ExpressibleByArrayLiteral Protocol Conformance

extension Complex: ExpressibleByArrayLiteral {

    @_transparent
    public init(arrayLiteral elements: FloatingPoint...) {
        precondition(elements.count <= 2, "Expected at most two elements")

        if elements.isEmpty {
            self.init()
        } else if elements.count == 1 {
            self.init(real: elements[0])
        } else {
            self.init(real: elements[0], imaginary: elements[1])
        }
    }
}

// MARK: - AdditiveArithmetic Protocol Conformance

extension Complex: AdditiveArithmetic {

    @_transparent
    public static var zero: Complex {
        return Complex(real: .zero, imaginary: .zero)
    }

    @_transparent
    public static func + (lhs: Complex, rhs: Complex) -> Complex {
        return Complex(real: lhs.real + rhs.real, imaginary: lhs.imaginary + rhs.imaginary)
    }

    @_transparent
    public static func += (lhs: inout Complex, rhs: Complex) {
        lhs = lhs + rhs
    }

    @_transparent
    public static func - (lhs: Complex, rhs: Complex) -> Complex {
        return Complex(real: lhs.real - rhs.real, imaginary: lhs.imaginary - rhs.imaginary)
    }

    @_transparent
    public static func -= (lhs: inout Complex, rhs: Complex) {
        lhs = lhs - rhs
    }
}

// MARK: - CustomStringConvertible Protocol Conformance

extension Complex: CustomStringConvertible {

    public var description: String {
        return "{ real: \(real), imaginary: \(imaginary) }"
    }
}

// MARK: - CustomDebugStringConvertible Protocol Conformance

extension Complex: CustomDebugStringConvertible {

    public var debugDescription: String {
        return "{ real: \(real), imaginary: \(imaginary) }"
    }
}

// MARK: - Hashable Protocol Conformance

extension Complex: Hashable {

    @inlinable
    public func hash(into hasher: inout Hasher) {
        hasher.combine(real)
        hasher.combine(imaginary)
    }
}

// MARK: - Equatable Protocol Conformance

extension Complex: Equatable {

    @_transparent
    public static func == (lhs: Complex, rhs: Complex) -> Bool {
        return (lhs.real == rhs.real) && (lhs.imaginary == rhs.imaginary)
    }
}

// MARK: - Codable Protocol Conformance

extension Complex: Codable where FloatingPoint: Codable {

}

// MARK: - Complex Extension

extension Complex {

    @_transparent
    public static func * (lhs: Complex, rhs: Complex) -> Complex {
        let real = (lhs.real * rhs.real) - (lhs.imaginary * rhs.imaginary)
        let imaginary = (lhs.real * rhs.imaginary) + (lhs.imaginary * rhs.real)

        return Complex(real: real, imaginary: imaginary)
    }

    @_transparent
    public static func *= (lhs: inout Complex, rhs: Complex) {
        lhs = lhs * rhs
    }

    @_transparent
    public static func / (lhs: Complex, rhs: Complex) -> Complex {
        let numerator = lhs * rhs.conjugate()
        let denominator = rhs * rhs.conjugate() // Multiplying the denominator by its conjugate cancels out its imaginary component

        return Complex(real: numerator.real / denominator.real, imaginary: numerator.imaginary / denominator.real)
    }

    @_transparent
    public static func /= (lhs: inout Complex, rhs: Complex) {
        lhs = lhs / rhs
    }
}

// MARK: - Complex Extension

extension Complex {

    @_transparent
    public static func + (lhs: Complex, rhs: FloatingPoint) -> Complex {
        return Complex(real: lhs.real + rhs, imaginary: lhs.imaginary)
    }

    @_transparent
    public static func + (lhs: FloatingPoint, rhs: Complex) -> Complex {
        return Complex(real: lhs + rhs.real, imaginary: rhs.imaginary)
    }

    @_transparent
    public static func += (lhs: inout Complex, rhs: FloatingPoint) {
        lhs = lhs + rhs
    }

    @_transparent
    public static func - (lhs: Complex, rhs: FloatingPoint) -> Complex {
        return Complex(real: lhs.real - rhs, imaginary: lhs.imaginary)
    }

    @_transparent
    public static func - (lhs: FloatingPoint, rhs: Complex) -> Complex {
        return Complex(real: lhs - rhs.real, imaginary: -rhs.imaginary)
    }

    @_transparent
    public static func -= (lhs: inout Complex, rhs: FloatingPoint) {
        lhs = lhs - rhs
    }

    @_transparent
    public static func * (lhs: Complex, rhs: FloatingPoint) -> Complex {
        return Complex(real: lhs.real * rhs, imaginary: lhs.imaginary * rhs)
    }

    @_transparent
    public static func * (lhs: FloatingPoint, rhs: Complex) -> Complex {
        return Complex(real: lhs * rhs.real, imaginary: lhs * rhs.imaginary)
    }

    @_transparent
    public static func *= (lhs: inout Complex, rhs: FloatingPoint) {
        lhs = lhs * rhs
    }

    @_transparent
    public static func / (lhs: Complex, rhs: FloatingPoint) -> Complex {
        return Complex(real: lhs.real / rhs, imaginary: lhs.imaginary / rhs)
    }

    @_transparent
    public static func / (lhs: FloatingPoint, rhs: Complex) -> Complex {
        return Complex(real: lhs, imaginary: 0.0) / rhs
    }

    @_transparent
    public static func /= (lhs: inout Complex, rhs: FloatingPoint) {
        lhs = lhs / rhs
    }
}

// MARK: - Complex Extension

extension Complex {

    @_transparent
    public mutating func negate() {
        real.negate()
        imaginary.negate()
    }

    @_transparent
    public static prefix func - (complex: Complex) -> Complex {
        var value = complex
        value.negate()
        return value
    }

    @_transparent
    public static prefix func + (complex: Complex) -> Complex {
        return complex
    }
}

// MARK: - Complex Extension

extension Complex {

    @_transparent
    public static prefix func ~ (complex: Complex) -> Complex {
        return complex.conjugate()
    }

    @_transparent
    public func conjugate() -> Complex {
        var complex = self
        complex.formConjugate()
        return complex
    }

    public mutating func formConjugate() {
        imaginary.negate()
    }
}

// MARK: - Complex Extension

extension Complex {

    @_transparent
    public func rounded(_ rule: FloatingPointRoundingRule) -> Complex {
        var complex = self
        complex.round(rule)
        return complex
    }

    @_transparent
    public func rounded() -> Complex {
        var complex = self
        complex.round()
        return complex
    }

    //

    @_transparent
    public mutating func round(_ rule: FloatingPointRoundingRule) {
        real.round(rule)
        imaginary.round(rule)
    }

    @_transparent
    public mutating func round() {
        self.round(.toNearestOrAwayFromZero)
    }
}

// MARK: - Complex Extension

extension Complex {

    @_transparent
    public var modulus: FloatingPoint {
        return sqrt(real * real + imaginary * imaginary)
    }

    public var angle: FloatingPoint {
#if !(os(Windows) || os(Android)) && (arch(i386) || arch(x86_64))
        return FloatingPoint(atan2(Float80(imaginary), Float80(real)))
#else
        return FloatingPoint(atan2(Double(imaginary), Double(real)))
#endif // #if !(os(Windows) || os(Android)) && (arch(i386) || arch(x86_64))
    }
}

// MARK: - Complex Extension

extension Complex {

    public enum Notation: String, Codable, Hashable {

        case square
        case trigonometric
        case euler
        case angle
    }

    public func string(withNotation notation: Notation) -> String {
        let string: String

        switch notation {
        case .square:        string = "\(real) + \(imaginary)i"
        case .trigonometric: string = "\(modulus) (cos(\(angle)) + i sin(\(angle)))"
        case .euler:         string = "\(modulus) e ^ (i \(angle))"
        case .angle:         string = "\(modulus) ⦣ \(angle)"
        }

        return string
    }
}
