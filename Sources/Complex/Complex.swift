//
//  Complex.swift
//  Complex
//
//  Copyright © 2020 SomeRandomiOSDev. All rights reserved.
//

import Foundation

// MARK: - Complex Definition

#if swift(>=5.1)
@frozen public struct Complex<Scalar: Numeric> {

    // MARK: Public Properties

    public var real: Scalar
    public var imaginary: Scalar

    // MARK: Initialization

    @_transparent
    public init(real: Scalar = 0, imaginary: Scalar = 0) {
        self.real = real
        self.imaginary = imaginary
    }
}
#else
public struct Complex<Scalar: Numeric> {

    // MARK: Public Properties

    public var real: Scalar
    public var imaginary: Scalar

    // MARK: Initialization

    @_transparent
    public init(real: Scalar = 0, imaginary: Scalar = 0) {
        self.real = real
        self.imaginary = imaginary
    }
}
#endif // #if swift(>=5.1)

extension Complex {

    @_transparent
    public init(_ other: Complex<Scalar>) {
        self.real = other.real
        self.imaginary = other.imaginary
    }

    @_transparent
    public init() {
        self.init(real: 0, imaginary: 0)
    }
}

// MARK: - Complex Initialization Extensions

extension Complex where Scalar: BinaryFloatingPoint {

    @_transparent
    public init<Source>(real: Source, imaginary: Source) where Source: BinaryFloatingPoint {
        self.init(real: Scalar(real), imaginary: Scalar(imaginary))
    }

    @_transparent
    public init<Source>(_ other: Complex<Source>) where Source: BinaryFloatingPoint {
        self.init(real: Scalar(other.real), imaginary: Scalar(other.imaginary))
    }
}

extension Complex where Scalar: FloatingPoint {

    @_transparent
    public init<Source>(real: Source, imaginary: Source) where Source: BinaryInteger {
        self.init(real: Scalar(real), imaginary: Scalar(imaginary))
    }

    @_transparent
    public init<Source>(_ other: Complex<Source>) where Source: BinaryInteger {
        self.init(real: Scalar(other.real), imaginary: Scalar(other.imaginary))
    }
}

extension Complex where Scalar: BinaryFloatingPoint, Scalar.RawSignificand: FixedWidthInteger {

    @inlinable
    public static func random<T>(in range: Range<Scalar>, using generator: inout T) -> Complex where T: RandomNumberGenerator {
        return Complex(real: Scalar.random(in: range, using: &generator), imaginary: Scalar.random(in: range, using: &generator))
    }

    @inlinable
    public static func random(in range: Range<Scalar>) -> Complex {
        return Complex(real: Scalar.random(in: range), imaginary: Scalar.random(in: range))
    }

    @inlinable
    public static func random<T>(in range: ClosedRange<Scalar>, using generator: inout T) -> Complex where T: RandomNumberGenerator {
        return Complex(real: Scalar.random(in: range, using: &generator), imaginary: Scalar.random(in: range, using: &generator))
    }

    @inlinable
    public static func random(in range: ClosedRange<Scalar>) -> Complex {
        return Complex(real: Scalar.random(in: range), imaginary: Scalar.random(in: range))
    }
}

extension Complex where Scalar: BinaryInteger {

    @_transparent
    public init<Source>(real: Source, imaginary: Source) where Source: BinaryFloatingPoint {
        self.init(real: Scalar(real), imaginary: Scalar(imaginary))
    }

    @_transparent
    public init<Source>(real: Source, imaginary: Source) where Source: BinaryInteger {
        self.init(real: Scalar(real), imaginary: Scalar(imaginary))
    }

    //

    @_transparent
    public init<Source>(_ other: Complex<Source>) where Source: BinaryFloatingPoint {
        self.init(real: Scalar(other.real), imaginary: Scalar(other.imaginary))
    }

    @_transparent
    public init<Source>(_ other: Complex<Source>) where Source: BinaryInteger {
        self.init(real: Scalar(other.real), imaginary: Scalar(other.imaginary))
    }
}

extension Complex where Scalar: FixedWidthInteger {

    @inlinable
    public static func random<T>(in range: Range<Scalar>, using generator: inout T) -> Complex where T: RandomNumberGenerator {
        return Complex(real: Scalar.random(in: range, using: &generator), imaginary: Scalar.random(in: range, using: &generator))
    }

    @inlinable
    public static func random(in range: Range<Scalar>) -> Complex {
        return Complex(real: Scalar.random(in: range), imaginary: Scalar.random(in: range))
    }

    @inlinable
    public static func random<T>(in range: ClosedRange<Scalar>, using generator: inout T) -> Complex where T: RandomNumberGenerator {
        return Complex(real: Scalar.random(in: range, using: &generator), imaginary: Scalar.random(in: range, using: &generator))
    }

    @inlinable
    public static func random(in range: ClosedRange<Scalar>) -> Complex {
        return Complex(real: Scalar.random(in: range), imaginary: Scalar.random(in: range))
    }
}

// MARK: - ExpressibleByArrayLiteral Protocol Conformance

extension Complex: ExpressibleByArrayLiteral {

    @_transparent
    public init(arrayLiteral elements: Scalar...) {
        precondition(elements.count <= 2, "Expected at most two elements")

        if elements.isEmpty {
            self.init()
        } else if elements.count == 1 {
            self.init(real: elements[0], imaginary: 0)
        } else {
            self.init(real: elements[0], imaginary: elements[1])
        }
    }
}

// MARK: - CustomStringConvertible Protocol Conformance

extension Complex: CustomStringConvertible {

    @_transparent
    public var description: String {
        return "{ real: \(real), imaginary: \(imaginary) }"
    }
}

// MARK: - CustomDebugStringConvertible Protocol Conformance

extension Complex: CustomDebugStringConvertible {

    @_transparent
    public var debugDescription: String {
        return "{ real: \(real), imaginary: \(imaginary) }"
    }
}

// MARK: - Hashable Protocol Conformance

extension Complex: Hashable where Scalar: Hashable {

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

// MARK: - Complex Extension

extension Complex {

    // MARK: Complex.CodingKeys Definition

    fileprivate enum CodingKeys: String, CodingKey {

        // MARK: Cases

        case real
        case imaginary
    }
}

// MARK: - Encodable Protocol Conformance

extension Complex: Encodable where Scalar: Encodable {

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(real, forKey: .real)
        try container.encode(imaginary, forKey: .imaginary)
    }
}

// MARK: - Decodable Protocol Conformance

extension Complex: Decodable where Scalar: Decodable {

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        self.real = try container.decode(Scalar.self, forKey: .real)
        self.imaginary = try container.decode(Scalar.self, forKey: .imaginary)
    }
}

// MARK: - Complex BinaryInteger Extensions

extension Complex {

#if !(os(Windows) || os(Android)) && (arch(i386) || arch(x86_64))
    @usableFromInline
    internal typealias LargestFloatType = Float80
#else
    @usableFromInline
    internal typealias LargestFloatType = Double
#endif
}

extension Complex where Scalar: BinaryInteger {

    @_transparent
    public var modulus: Scalar {
        return Scalar(sqrt(LargestFloatType(real * real + imaginary * imaginary)))
    }

    @_transparent
    public var angle: Scalar {
        return Scalar(atan2(LargestFloatType(imaginary), LargestFloatType(real)))
    }

    //

    @_transparent
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

// MARK: - Complex FloatingPoint Extensions

extension Complex where Scalar: FloatingPoint {

    @_transparent
    public func rounded(_ rule: FloatingPointRoundingRule) -> Complex {
        var complex = self
        complex.round(rule)
        return complex
    }

    @_transparent
    public func rounded() -> Complex {
        return rounded(.toNearestOrAwayFromZero)
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

extension Complex where Scalar: FloatingPoint {

    @_transparent
    public var modulus: Scalar {
        return sqrt(real * real + imaginary * imaginary)
    }
}

// MARK: - Complex BinaryFloatingPoint Extensions

extension Complex where Scalar: BinaryFloatingPoint {

    @_transparent
    public var angle: Scalar {
        return Scalar(atan2(LargestFloatType(imaginary), LargestFloatType(real)))
    }

    @_transparent
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

// MARK: - Complex SignedNumeric Extensions

extension Complex where Scalar: SignedNumeric {

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

    @_transparent
    public mutating func formConjugate() {
        imaginary.negate()
    }
}

extension Complex where Scalar: SignedNumeric {

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
}

// MARK: - Complex Extensions

extension Complex {

    @_transparent
    public static var i: Complex {
        return Complex(real: 0, imaginary: 1)
    }
}

extension Complex {

    @_transparent
    public static var one: Complex {
        return Complex(real: 1, imaginary: 0)
    }
}

extension Complex {

    @inlinable @inline(__always)
    public static prefix func + (complex: Complex) -> Complex {
        return complex
    }
}

// MARK: - Complex.Notation Definition

extension Complex {

    public enum Notation: String, Codable, Hashable {

        case square
        case trigonometric
        case euler
        case angle
    }
}
