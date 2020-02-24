//
//  ComplexOverflowingArithmetic.swift
//  Complex
//
//  Copyright © 2020 SomeRandomiOSDev. All rights reserved.
//

import Foundation

// MARK: Overflowing Addition

extension Complex where Scalar: FixedWidthInteger {

    @_transparent
    public func addingReportingOverflow(_ rhs: Complex<Scalar>) -> (partialValue: Complex<Scalar>, overflow: Bool) {
        let real = self.real.addingReportingOverflow(rhs.real)
        let imaginary = self.imaginary.addingReportingOverflow(rhs.imaginary)
        let overflow = real.overflow || imaginary.overflow

        return (partialValue: Complex<Scalar>(real: real.partialValue, imaginary: imaginary.partialValue), overflow: overflow)
    }
}

// MARK: Overflowing Subtraction

extension Complex where Scalar: FixedWidthInteger {

    @_transparent
    public func subtractingReportingOverflow(_ rhs: Complex<Scalar>) -> (partialValue: Complex<Scalar>, overflow: Bool) {
        let real = self.real.subtractingReportingOverflow(rhs.real)
        let imaginary = self.imaginary.subtractingReportingOverflow(rhs.imaginary)
        let overflow = real.overflow || imaginary.overflow

        return (partialValue: Complex<Scalar>(real: real.partialValue, imaginary: imaginary.partialValue), overflow: overflow)
    }
}

// MARK: - Overflowing Multiplication

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

// MARK: - Overflowing Division

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
