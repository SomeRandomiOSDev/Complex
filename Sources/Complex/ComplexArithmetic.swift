//
//  ComplexArithmetic.swift
//  Complex
//
//  Copyright © 2020 SomeRandomiOSDev. All rights reserved.
//

import Foundation

//swiftlint:disable shorthand_operator

// MARK: - AdditiveArithmetic Protocol Conformance

extension Complex: AdditiveArithmetic {

    @_transparent
    public static var zero: Complex<Scalar> {
        return Complex<Scalar>(real: .zero, imaginary: .zero)
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
        return Complex<Scalar>(real: lhs &- rhs.real, imaginary: .zero &- rhs.imaginary)
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

extension Complex where Scalar: FixedWidthInteger {

    @_transparent
    public func addingReportingOverflow(_ rhs: Complex<Scalar>) -> (partialValue: Complex<Scalar>, overflow: Bool) {
        let real = self.real.addingReportingOverflow(rhs.real)
        let imaginary = self.imaginary.addingReportingOverflow(rhs.imaginary)
        let overflow = real.overflow || imaginary.overflow

        return (partialValue: Complex<Scalar>(real: real.partialValue, imaginary: imaginary.partialValue), overflow: overflow)
    }

    @_transparent
    public func subtractingReportingOverflow(_ rhs: Complex<Scalar>) -> (partialValue: Complex<Scalar>, overflow: Bool) {
        let real = self.real.subtractingReportingOverflow(rhs.real)
        let imaginary = self.imaginary.subtractingReportingOverflow(rhs.imaginary)
        let overflow = real.overflow || imaginary.overflow

        return (partialValue: Complex<Scalar>(real: real.partialValue, imaginary: imaginary.partialValue), overflow: overflow)
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

extension Complex where Scalar: FixedWidthInteger {

    @_transparent
    public func componentwiseMultipliedFullWidth(by rhs: Complex<Scalar>) -> (high: Complex<Scalar>, low: Complex<Scalar.Magnitude>) {
        let real = self.real.multipliedFullWidth(by: rhs.real)
        let imaginary = self.imaginary.multipliedFullWidth(by: rhs.imaginary)

        return (high: Complex<Scalar>(real: real.high, imaginary: imaginary.high), low: Complex<Scalar.Magnitude>(real: real.low, imaginary: imaginary.low))
    }

    @_transparent
    public func componentwiseMultipliedReportingOverflow(by rhs: Complex<Scalar>) -> (partialValue: Complex<Scalar>, overflow: Bool) {
        let real = self.real.multipliedReportingOverflow(by: rhs.real)
        let imaginary = self.imaginary.multipliedReportingOverflow(by: rhs.imaginary)

        return (partialValue: Complex<Scalar>(real: real.partialValue, imaginary: imaginary.partialValue), overflow: real.overflow || imaginary.overflow)
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
        return Complex<Scalar>(real: lhs, imaginary: .zero) / rhs
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
        return Complex<Scalar>(real: lhs, imaginary: .zero) / rhs
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

extension Complex where Scalar: FixedWidthInteger {

    @_transparent
    public func componentwiseDividedReportingOverflow(by rhs: Complex<Scalar>) -> (partialValue: Complex<Scalar>, overflow: Bool) {
        let real = self.real.dividedReportingOverflow(by: rhs.real)
        let imaginary = self.imaginary.dividedReportingOverflow(by: rhs.imaginary)

        return (partialValue: Complex<Scalar>(real: real.partialValue, imaginary: imaginary.partialValue), overflow: real.overflow || imaginary.overflow)
    }

    @_transparent
    public func componentwiseDividingFullWidth(_ dividend: (high: Complex<Scalar>, low: Complex<Scalar.Magnitude>)) -> (quotient: Complex<Scalar>, remainder: Complex<Scalar>) {
        let real = self.real.dividingFullWidth((high: dividend.high.real, low: dividend.low.real))
        let imaginary = self.imaginary.dividingFullWidth((high: dividend.high.imaginary, low: dividend.low.imaginary))

        return (quotient: Complex<Scalar>(real: real.quotient, imaginary: imaginary.quotient), remainder: Complex<Scalar>(real: real.remainder, imaginary: imaginary.remainder))
    }
}
