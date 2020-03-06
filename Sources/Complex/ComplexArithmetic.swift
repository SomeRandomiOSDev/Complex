//
//  ComplexArithmetic.swift
//  Complex
//
//  Copyright © 2020 SomeRandomiOSDev. All rights reserved.
//

//swiftlint:disable shorthand_operator

// MARK: - AdditiveArithmetic Protocol Conformance

#if swift(>=5.0)
extension Complex: AdditiveArithmetic { }
#endif

extension Complex {

    @_transparent
    public static var zero: Complex<Scalar> {
        return Complex<Scalar>(real: 0, imaginary: 0)
    }

    @_transparent
    public static func + (lhs: Complex<Scalar>, rhs: Complex<Scalar>) -> Complex<Scalar> {
        return Complex<Scalar>(real: lhs.real + rhs.real, imaginary: lhs.imaginary + rhs.imaginary)
    }

    @_transparent
    public static func += (lhs: inout Complex<Scalar>, rhs: Complex<Scalar>) {
        lhs = lhs + rhs
    }

    @_transparent
    public static func - (lhs: Complex<Scalar>, rhs: Complex<Scalar>) -> Complex<Scalar> {
        return Complex<Scalar>(real: lhs.real - rhs.real, imaginary: lhs.imaginary - rhs.imaginary)
    }

    @_transparent
    public static func -= (lhs: inout Complex<Scalar>, rhs: Complex<Scalar>) {
        lhs = lhs - rhs
    }
}

// MARK: - Addition/Subtraction

extension Complex {

    @_transparent
    public static func + (lhs: Complex<Scalar>, rhs: Scalar) -> Complex<Scalar> {
        return Complex<Scalar>(real: lhs.real + rhs, imaginary: lhs.imaginary)
    }

    @_transparent
    public static func + (lhs: Scalar, rhs: Complex<Scalar>) -> Complex<Scalar> {
        return Complex<Scalar>(real: lhs + rhs.real, imaginary: rhs.imaginary)
    }

    @_transparent
    public static func += (lhs: inout Complex<Scalar>, rhs: Scalar) {
        lhs = lhs + rhs
    }

    //

    @inlinable @inline(__always)
    public static func .+ (lhs: Complex<Scalar>, rhs: Complex<Scalar>) -> Complex<Scalar> {
        return lhs + rhs
    }

    @inlinable @inline(__always)
    public static func .+= (lhs: inout Complex<Scalar>, rhs: Complex<Scalar>) {
        lhs = lhs .+ rhs
    }

    //

    @_transparent
    public static func - (lhs: Complex<Scalar>, rhs: Scalar) -> Complex<Scalar> {
        return Complex<Scalar>(real: lhs.real - rhs, imaginary: lhs.imaginary)
    }

    @_transparent
    public static func -= (lhs: inout Complex<Scalar>, rhs: Scalar) {
        lhs = lhs - rhs
    }

    //

    @inlinable @inline(__always)
    public static func .- (lhs: Complex<Scalar>, rhs: Complex<Scalar>) -> Complex<Scalar> {
        return lhs - rhs
    }

    @inlinable @inline(__always)
    public static func .-= (lhs: inout Complex<Scalar>, rhs: Complex<Scalar>) {
        lhs = lhs .- rhs
    }
}

extension Complex where Scalar: SignedNumeric {

    @_transparent
    public static func - (lhs: Scalar, rhs: Complex<Scalar>) -> Complex<Scalar> {
        return Complex<Scalar>(real: lhs - rhs.real, imaginary: -rhs.imaginary)
    }
}

extension Complex where Scalar: FixedWidthInteger {

    @_transparent
    public static func &+ (lhs: Complex<Scalar>, rhs: Complex<Scalar>) -> Complex<Scalar> {
        return Complex<Scalar>(real: lhs.real &+ rhs.real, imaginary: lhs.imaginary &+ rhs.imaginary)
    }

    @_transparent
    public static func &+= (lhs: inout Complex<Scalar>, rhs: Complex<Scalar>) {
        lhs = lhs &+ rhs
    }

    @_transparent
    public static func &- (lhs: Complex<Scalar>, rhs: Complex<Scalar>) -> Complex<Scalar> {
        return Complex<Scalar>(real: lhs.real &- rhs.real, imaginary: lhs.imaginary &- rhs.imaginary)
    }

    @_transparent
    public static func &-= (lhs: inout Complex<Scalar>, rhs: Complex<Scalar>) {
        lhs = lhs &- rhs
    }

    //

    @_transparent
    public static func &+ (lhs: Complex<Scalar>, rhs: Scalar) -> Complex<Scalar> {
        return Complex<Scalar>(real: lhs.real &+ rhs, imaginary: lhs.imaginary)
    }

    @_transparent
    public static func &+ (lhs: Scalar, rhs: Complex<Scalar>) -> Complex<Scalar> {
        return Complex<Scalar>(real: lhs &+ rhs.real, imaginary: rhs.imaginary)
    }

    @_transparent
    public static func &+= (lhs: inout Complex<Scalar>, rhs: Scalar) {
        lhs = lhs &+ rhs
    }

    //

    @inlinable @inline(__always)
    public static func .&+ (lhs: Complex<Scalar>, rhs: Complex<Scalar>) -> Complex<Scalar> {
        return lhs &+ rhs
    }

    @inlinable @inline(__always)
    public static func .&+= (lhs: inout Complex<Scalar>, rhs: Complex<Scalar>) {
        lhs = lhs .&+ rhs
    }

    //

    @_transparent
    public static func &- (lhs: Complex<Scalar>, rhs: Scalar) -> Complex<Scalar> {
        return Complex<Scalar>(real: lhs.real &- rhs, imaginary: lhs.imaginary)
    }

    @_transparent
    public static func &- (lhs: Scalar, rhs: Complex<Scalar>) -> Complex<Scalar> {
        return Complex<Scalar>(real: lhs &- rhs.real, imaginary: 0 &- rhs.imaginary)
    }

    @_transparent
    public static func &-= (lhs: inout Complex<Scalar>, rhs: Scalar) {
        lhs = lhs &- rhs
    }

    //

    @inlinable @inline(__always)
    public static func .&- (lhs: Complex<Scalar>, rhs: Complex<Scalar>) -> Complex<Scalar> {
        return lhs &- rhs
    }

    @inlinable @inline(__always)
    public static func .&-= (lhs: inout Complex<Scalar>, rhs: Complex<Scalar>) {
        lhs = lhs .&- rhs
    }
}

// MARK: - Multiplication

extension Complex {

    @_transparent
    public static func * (lhs: Complex<Scalar>, rhs: Complex<Scalar>) -> Complex<Scalar> {
        let real = (lhs.real * rhs.real) - (lhs.imaginary * rhs.imaginary)
        let imaginary = (lhs.real * rhs.imaginary) + (lhs.imaginary * rhs.real)

        return Complex<Scalar>(real: real, imaginary: imaginary)
    }

    @_transparent
    public static func *= (lhs: inout Complex<Scalar>, rhs: Complex<Scalar>) {
        lhs = lhs * rhs
    }

    //

    @_transparent
    public static func * (lhs: Complex<Scalar>, rhs: Scalar) -> Complex<Scalar> {
        return Complex<Scalar>(real: lhs.real * rhs, imaginary: lhs.imaginary * rhs)
    }

    @_transparent
    public static func * (lhs: Scalar, rhs: Complex<Scalar>) -> Complex<Scalar> {
        return Complex<Scalar>(real: lhs * rhs.real, imaginary: lhs * rhs.imaginary)
    }

    @_transparent
    public static func *= (lhs: inout Complex<Scalar>, rhs: Scalar) {
        lhs = lhs * rhs
    }

    //

    @_transparent
    public static func .* (lhs: Complex<Scalar>, rhs: Complex<Scalar>) -> Complex<Scalar> {
        return Complex<Scalar>(real: lhs.real * rhs.real, imaginary: lhs.imaginary * rhs.imaginary)
    }

    @_transparent
    public static func .*= (lhs: inout Complex<Scalar>, rhs: Complex<Scalar>) {
        lhs = lhs .* rhs
    }
}

extension Complex where Scalar: FixedWidthInteger {

    @_transparent
    public static func &* (lhs: Complex<Scalar>, rhs: Complex<Scalar>) -> Complex<Scalar> {
        let real = (lhs.real &* rhs.real) &- (lhs.imaginary &* rhs.imaginary)
        let imaginary = (lhs.real &* rhs.imaginary) &+ (lhs.imaginary &* rhs.real)

        return Complex<Scalar>(real: real, imaginary: imaginary)
    }

    @_transparent
    public static func &*= (lhs: inout Complex<Scalar>, rhs: Complex<Scalar>) {
        lhs = lhs &* rhs
    }

    //

    @_transparent
    public static func &* (lhs: Complex<Scalar>, rhs: Scalar) -> Complex<Scalar> {
        return Complex<Scalar>(real: lhs.real &* rhs, imaginary: lhs.imaginary &* rhs)
    }

    @_transparent
    public static func &* (lhs: Scalar, rhs: Complex<Scalar>) -> Complex<Scalar> {
        return Complex<Scalar>(real: lhs &* rhs.real, imaginary: lhs &* rhs.imaginary)
    }

    @_transparent
    public static func &*= (lhs: inout Complex<Scalar>, rhs: Scalar) {
        lhs = lhs &* rhs
    }

    //

    @_transparent
    public static func .&* (lhs: Complex<Scalar>, rhs: Complex<Scalar>) -> Complex<Scalar> {
        return Complex<Scalar>(real: lhs.real &* rhs.real, imaginary: lhs.imaginary &* rhs.imaginary)
    }

    @_transparent
    public static func .&*= (lhs: inout Complex<Scalar>, rhs: Complex<Scalar>) {
        lhs = lhs .&* rhs
    }
}

// MARK: - Division (BinaryInteger)

extension Complex where Scalar: BinaryInteger {

    @_transparent
    public static func / (lhs: Complex<Scalar>, rhs: Complex<Scalar>) -> Complex<Scalar> {
        let real = (lhs.real * rhs.real + lhs.imaginary * rhs.imaginary)
        let imaginary = (lhs.imaginary * rhs.real - lhs.real * rhs.imaginary)
        let denominator = (rhs.real * rhs.real) + (rhs.imaginary * rhs.imaginary)

        return Complex<Scalar>(real: real / denominator, imaginary: imaginary / denominator)
    }

    @_transparent
    public static func /= (lhs: inout Complex<Scalar>, rhs: Complex<Scalar>) {
        lhs = lhs / rhs
    }

    //

    @_transparent
    public static func / (lhs: Complex<Scalar>, rhs: Scalar) -> Complex<Scalar> {
        return Complex<Scalar>(real: lhs.real / rhs, imaginary: lhs.imaginary / rhs)
    }

    @_transparent
    public static func /= (lhs: inout Complex<Scalar>, rhs: Scalar) {
        lhs = lhs / rhs
    }

    //

    @_transparent
    public static func ./ (lhs: Complex<Scalar>, rhs: Complex<Scalar>) -> Complex<Scalar> {
        return Complex<Scalar>(real: lhs.real / rhs.real, imaginary: lhs.imaginary / rhs.imaginary)
    }

    @_transparent
    public static func ./= (lhs: inout Complex<Scalar>, rhs: Complex<Scalar>) {
        lhs = lhs ./ rhs
    }
}

// MARK: - Division (SignedInteger)

extension Complex where Scalar: SignedInteger {

    @_transparent
    public static func / (lhs: Scalar, rhs: Complex<Scalar>) -> Complex<Scalar> {
        return Complex<Scalar>(real: lhs, imaginary: 0) / rhs
    }
}

// MARK: - Division (FloatingPoint)

extension Complex where Scalar: FloatingPoint {

    @_transparent
    public static func / (lhs: Complex<Scalar>, rhs: Complex<Scalar>) -> Complex<Scalar> {
        let numerator = lhs * rhs.conjugate()
        let denominator = rhs * rhs.conjugate() // Multiplying the denominator by its conjugate cancels out its imaginary component

        return Complex<Scalar>(real: numerator.real / denominator.real, imaginary: numerator.imaginary / denominator.real)
    }

    @_transparent
    public static func /= (lhs: inout Complex<Scalar>, rhs: Complex<Scalar>) {
        lhs = lhs / rhs
    }

    //

    @_transparent
    public static func / (lhs: Complex<Scalar>, rhs: Scalar) -> Complex<Scalar> {
        return Complex<Scalar>(real: lhs.real / rhs, imaginary: lhs.imaginary / rhs)
    }

    @_transparent
    public static func / (lhs: Scalar, rhs: Complex<Scalar>) -> Complex<Scalar> {
        return Complex<Scalar>(real: lhs, imaginary: 0) / rhs
    }

    @_transparent
    public static func /= (lhs: inout Complex<Scalar>, rhs: Scalar) {
        lhs = lhs / rhs
    }

    //

    @_transparent
    public static func ./ (lhs: Complex<Scalar>, rhs: Complex<Scalar>) -> Complex<Scalar> {
        return Complex<Scalar>(real: lhs.real / rhs.real, imaginary: lhs.imaginary / rhs.imaginary)
    }

    @_transparent
    public static func ./= (lhs: inout Complex<Scalar>, rhs: Complex<Scalar>) {
        lhs = lhs ./ rhs
    }
}
