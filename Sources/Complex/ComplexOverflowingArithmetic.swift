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

extension Complex where Scalar: FixedWidthInteger {

    //swiftlint:disable identifier_name
    public func multipliedReportingOverflow(by rhs: Complex<Scalar>) -> (partialValue: Complex<Scalar>, overflow: Bool) {
        // (a + bi)(c + di) = (ac − bd) + (ad + bc)i
        let ac = self.real.multipliedFullWidth(by: rhs.real)
        let ad = self.real.multipliedFullWidth(by: rhs.imaginary)
        let bc = self.imaginary.multipliedFullWidth(by: rhs.real)
        let bd = self.imaginary.multipliedFullWidth(by: rhs.imaginary)

        let real = Complex<Scalar>.subtract(ac, bd)
        let imaginary = Complex<Scalar>.add(ad, bc)

        let truncatedReal = Complex<Scalar>.truncateAndReportOverflow(real)
        let truncatedImaginary = Complex<Scalar>.truncateAndReportOverflow(imaginary)

        let overflow = truncatedReal.overflow || truncatedImaginary.overflow || (!Scalar.isSigned && Complex<Scalar>.isLess(Complex<Scalar>.signExtend(ac), than: Complex<Scalar>.signExtend(bd)))
        let partialValue = Complex<Scalar>(real: truncatedReal.partialValue, imaginary: truncatedImaginary.partialValue)

        return (partialValue: partialValue, overflow: overflow)
    }
    //swiftlint:enable identifier_name
}

extension Complex where Scalar: FixedWidthInteger, Scalar: SignedInteger {

    //swiftlint:disable identifier_name
    public func multipliedFullWidth(by other: Complex<Scalar>) -> ExtendedComplex {
        // (a + bi)(c + di) = (ac − bd) + (ad + bc)i
        let ac = self.real.multipliedFullWidth(by: other.real)
        let ad = self.real.multipliedFullWidth(by: other.imaginary)
        let bc = self.imaginary.multipliedFullWidth(by: other.real)
        let bd = self.imaginary.multipliedFullWidth(by: other.imaginary)

        let real = Complex<Scalar>.subtract(ac, bd)
        let imaginary = Complex<Scalar>.add(ad, bc)

        let high = (Complex<Scalar>(real: real.high.high, imaginary: imaginary.high.high), Complex<Scalar.Magnitude>(real: real.high.low, imaginary: imaginary.high.low))
        let low = (Complex<Scalar.Magnitude>(real: real.low.high, imaginary: imaginary.low.high), Complex<Scalar.Magnitude>(real: real.low.low, imaginary: imaginary.low.low))

        return (high: high, low: low)
    }
    //swiftlint:enable identifier_name
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

extension Complex where Scalar: FixedWidthInteger {

    //swiftlint:disable identifier_name
    public func dividedReportingOverflow(by rhs: Complex<Scalar>) -> (partialValue: Complex<Scalar>, overflow: Bool) {
        // (a + bi) / (c + di) -> ((ac + bd) + (bc - ad)i) / (c^2 + d^2)
        guard rhs.real != .zero || rhs.imaginary != .zero else { return (rhs, true) }

        let ac = self.real.multipliedFullWidth(by: rhs.real)
        let ad = self.real.multipliedFullWidth(by: rhs.imaginary)
        let bc = self.imaginary.multipliedFullWidth(by: rhs.real)
        let bd = self.imaginary.multipliedFullWidth(by: rhs.imaginary)
        let cc = rhs.real.multipliedFullWidth(by: rhs.real)
        let dd = rhs.imaginary.multipliedFullWidth(by: rhs.imaginary)

        let real = Complex<Scalar>.add(ac, bd)
        let imaginary = Complex<Scalar>.subtract(bc, ad)
        let denominator = Complex<Scalar>.add(cc, dd)

        let (realQuotient, _) = Complex<Scalar>.slowpathDivide(real, denominator)
        let (imaginaryQuotient, _) = Complex<Scalar>.slowpathDivide(imaginary, denominator)

        let truncatedReal = Complex<Scalar>.truncateAndReportOverflow(realQuotient)
        let truncatedImaginary = Complex<Scalar>.truncateAndReportOverflow(imaginaryQuotient)

        let partialValue = Complex<Scalar>(real: truncatedReal.partialValue, imaginary: truncatedImaginary.partialValue)
        let overflow = truncatedReal.overflow || truncatedImaginary.overflow || (!Scalar.isSigned && Complex<Scalar>.truncateAndReportOverflow(imaginary).overflow)

        return (partialValue: partialValue, overflow: overflow)
    }
    //swiftlint:enable identifier_name
}

extension Complex where Scalar: FixedWidthInteger, Scalar: SignedInteger {

    //swiftlint:disable identifier_name
    public func dividingFullWidth(_ dividend: ExtendedComplex) -> (quotient: Complex<Scalar>, remainder: Complex<Scalar>) {
        // (a + bi) / (c + di) -> ((ac + bd) + (bc - ad)i) / (c^2 + d^2)
        let a = (high: (high: dividend.high.high.real, low: dividend.high.low.real), low: (high: dividend.low.high.real, low: dividend.low.low.real))
        let b = (high: (high: dividend.high.high.imaginary, low: dividend.high.low.imaginary), low: (high: dividend.low.high.imaginary, low: dividend.low.low.imaginary))

        let ac = Complex<Scalar>.slowpathMultiply(real, a)
        let ad = Complex<Scalar>.slowpathMultiply(imaginary, a)
        let bc = Complex<Scalar>.slowpathMultiply(real, b)
        let bd = Complex<Scalar>.slowpathMultiply(imaginary, b)
        let cc = Complex<Scalar>.signExtend(real.multipliedFullWidth(by: real))
        let dd = Complex<Scalar>.signExtend(imaginary.multipliedFullWidth(by: imaginary))

        let real = Complex<Scalar>.add(ac, bd)
        let imaginary = Complex<Scalar>.subtract(bc, ad)
        let denominator = Complex<Scalar>.add(cc, dd)

        let (realQuotient, realRemainder) = Complex<Scalar>.slowpathDivide(real, denominator)
        let (imaginaryQuotient, imaginaryRemainder) = Complex<Scalar>.slowpathDivide(imaginary, denominator)

        let truncatedRealQuotient = Complex<Scalar>.truncateAndReportOverflow(realQuotient).partialValue
        let truncatedImaginaryQuotient = Complex<Scalar>.truncateAndReportOverflow(imaginaryQuotient).partialValue
        let truncatedRealRemainder = Complex<Scalar>.truncateAndReportOverflow(realRemainder).partialValue
        let truncatedImaginaryRemainder = Complex<Scalar>.truncateAndReportOverflow(imaginaryRemainder).partialValue

        return (quotient: Complex<Scalar>(real: truncatedRealQuotient, imaginary: truncatedImaginaryQuotient), remainder: Complex<Scalar>(real: truncatedRealRemainder, imaginary: truncatedImaginaryRemainder))
    }
    //swiftlint:enable identifier_name
}

// MARK: Overflowing Arthimetic Helper Types & Methods

extension Complex where Scalar: FixedWidthInteger {

    public typealias ExtendedComplex = (high: (high: Complex<Scalar>, low: Complex<Scalar.Magnitude>), low: (high: Complex<Scalar.Magnitude>, low: Complex<Scalar.Magnitude>))

    internal typealias ExtendedScalar = (high: (high: Scalar, low: Scalar.Magnitude), low: (high: Scalar.Magnitude, low: Scalar.Magnitude))

    //

    internal static func signExtend(_ value: Scalar) -> ExtendedScalar {
        let highHigh = (Scalar.isSigned && value.leadingZeroBitCount == 0) ? ~Scalar.zero : Scalar.zero
        let highLow = Scalar.Magnitude(truncatingIfNeeded: highHigh)
        let lowHigh = Scalar.Magnitude(truncatingIfNeeded: highLow)
        let lowLow = Scalar.Magnitude(truncatingIfNeeded: value)

        return (high: (high: highHigh, low: highLow), low: (high: lowHigh, low: lowLow))
    }

    internal static func signExtend(_ value: (high: Scalar, low: Scalar.Magnitude)) -> ExtendedScalar {
        let highHigh = (Scalar.isSigned && value.high.leadingZeroBitCount == 0) ? ~Scalar.zero : Scalar.zero
        let highLow = Scalar.Magnitude(truncatingIfNeeded: highHigh)
        let lowHigh = Scalar.Magnitude(truncatingIfNeeded: value.high)
        let lowLow = value.low

        return (high: (high: highHigh, low: highLow), low: (high: lowHigh, low: lowLow))
    }

    internal static func twosComplement(of value: (high: Scalar, low: Scalar.Magnitude)) -> (high: Scalar, low: Scalar.Magnitude) {
        let (low, overflow) = (~value.low).addingReportingOverflow(1)
        let high = (~value.high) &+ (overflow ? 1 : 0)

        return (high: high, low: low)
    }

    internal static func twosComplement(of value: ExtendedScalar) -> ExtendedScalar {
        let (lowLow, lowLowOverflow) = (~value.low.low).addingReportingOverflow(1)
        let (lowHigh, lowHighOverflow) = (~value.low.high).addingReportingOverflow(lowLowOverflow ? 1 : 0)
        let (highLow, highLowOverflow) = (~value.high.low).addingReportingOverflow(lowHighOverflow ? 1 : 0)
        let highHigh = (~value.high.high) &+ (highLowOverflow ? 1 : 0)

        return (high: (high: highHigh, low: highLow), low: (high: lowHigh, low: lowLow))
    }

    //

    internal static func add(_ lhs: (high: Scalar, low: Scalar.Magnitude), _ rhs: (high: Scalar, low: Scalar.Magnitude)) -> ExtendedScalar {
        return add(signExtend(lhs), signExtend(rhs))
    }

    internal static func add(_ lhs: ExtendedScalar, _ rhs: ExtendedScalar) -> ExtendedScalar {
        let (lowLow, lowLowOverflow) = lhs.low.low.addingReportingOverflow(rhs.low.low)
        var (lowHigh, lowHighOverflow) = lhs.low.high.addingReportingOverflow(rhs.low.high)
        var (highLow, highLowOverflow) = lhs.high.low.addingReportingOverflow(rhs.high.low)
        var (highHigh, _) = lhs.high.high.addingReportingOverflow(rhs.high.high)

        if lowLowOverflow {
            let (value, overflow) = lowHigh.addingReportingOverflow(1)

            lowHigh = value
            lowHighOverflow = lowHighOverflow || overflow
        }
        if lowHighOverflow {
            let (value, overflow) = highLow.addingReportingOverflow(1)

            highLow = value
            highLowOverflow = highLowOverflow || overflow
        }
        if highLowOverflow {
            highHigh &+= 1
        }

        return (high: (high: highHigh, low: highLow), low: (high: lowHigh, low: lowLow))
    }

    @inline(__always)
    internal static func subtract(_ lhs: (high: Scalar, low: Scalar.Magnitude), _ rhs: (high: Scalar, low: Scalar.Magnitude)) -> ExtendedScalar {
        return subtract(signExtend(lhs), signExtend(rhs))
    }

    @inline(__always)
    internal static func subtract(_ lhs: ExtendedScalar, _ rhs: ExtendedScalar) -> ExtendedScalar {
        return add(lhs, twosComplement(of: rhs))
    }

    //

    internal static func slowpathMultiply(_ lhs: ExtendedScalar, _ rhs: ExtendedScalar) -> ExtendedScalar {
        var result: ExtendedScalar = ((0, 0), (0, 0))

        let lhsIsNegative = Scalar.isSigned && lhs.high.high < .zero
        let left = lhsIsNegative ? twosComplement(of: lhs) : lhs

        let rhsIsNegative = Scalar.isSigned && rhs.high.high < .zero
        let right = rhsIsNegative ? twosComplement(of: rhs) : rhs

        let (leftIsPowerOfTwo, lhsShift) = isPowerOfTwo(left)
        let (rightIsPowerOfTwo, rhsShift) = isPowerOfTwo(right)

        if leftIsPowerOfTwo {
            result = leftShift(right, by: lhsShift)
        } else if rightIsPowerOfTwo {
            result = leftShift(left, by: rhsShift)
        } else {
            var shift: Scalar.Magnitude = 0
            var lastShift: Scalar.Magnitude = 0
            var shifted = right
            var bits = left

            while bits.low.low != .zero || bits.low.high != .zero || bits.high.low != .zero || bits.high.high != .zero {
                if (bits.low.low & 1) == 1 {
                    shifted = leftShift(shifted, by: shift - lastShift)
                    result = add(result, shifted)

                    lastShift = shift
                }

                bits = rightShift(bits, by: 1)
                shift += 1
            }
        }

        if lhsIsNegative != rhsIsNegative {
            result = twosComplement(of: result)
        }

        return result
    }

    internal static func slowpathMultiply(_ lhs: Scalar, _ rhs: ExtendedScalar) -> ExtendedScalar {
        let lhsIsNegative = lhs < .zero

        let extended = signExtend(lhs)
        var result = slowpathMultiply(lhsIsNegative ? twosComplement(of: extended) : extended, rhs)

        if lhsIsNegative {
            result = twosComplement(of: result)
        }

        return result
    }

    internal static func slowpathDivide(_ lhs: ExtendedScalar, _ rhs: ExtendedScalar) -> (quotient: ExtendedScalar, remainder: ExtendedScalar) {
        let dividendIsNegative = Scalar.isSigned && lhs.high.high < .zero
        var dividend = dividendIsNegative ? twosComplement(of: lhs) : lhs

        let divisorIsNegative = Scalar.isSigned && rhs.high.high < .zero
        var divisor = divisorIsNegative ? twosComplement(of: rhs) : rhs

        guard isLessThanOrEqual(divisor, to: dividend) else { return (quotient: ((0, 0), (0, 0)), remainder: lhs) }
        let (isPowerOfTwo, shift) = self.isPowerOfTwo(divisor)

        var quotient: ExtendedScalar
        var remainder: ExtendedScalar

        if isPowerOfTwo {
            remainder = ((0, 0), (0, 0))

            if shift > 0 {
                // The remainder when dividing by two is equal to the bits that are going to be
                // shifted out when performing the right shfit below.

                var remainderMask: ExtendedScalar = leftShift(((~0, ~0), (~0, ~0)), by: shift)
                remainderMask = ((~remainderMask.high.high, ~remainderMask.high.low), (~remainderMask.low.high, ~remainderMask.low.low))

                remainder = ((dividend.high.high & remainderMask.high.high, dividend.high.low & remainderMask.high.low), (dividend.low.high & remainderMask.low.high, dividend.low.low & remainderMask.low.low))
            }

            quotient = rightShift(dividend, by: shift)
        } else {
            quotient = ((0, 0), (0, 0))

            var remainingShifts = leadingZeroBitCount(of: divisor) - leadingZeroBitCount(of: dividend)
            if remainingShifts > 0 {
                divisor = leftShift(divisor, by: Scalar.Magnitude(remainingShifts))
            }

            // long division
            repeat {
                if isLessThanOrEqual(divisor, to: dividend) {
                    dividend = subtract(dividend, divisor)
                    quotient = leftShift(quotient, by: 1)
                    quotient.low.low |= 1 // set least significant bit to 1
                } else {
                    quotient = leftShift(quotient, by: 1)
                }

                divisor = rightShift(divisor, by: 1)
                remainingShifts -= 1
            } while remainingShifts >= 0

            remainder = dividend
        }

        if dividendIsNegative != divisorIsNegative {
            quotient = twosComplement(of: quotient)
        }
        if dividendIsNegative {
            remainder = twosComplement(of: remainder)
        }

        return (quotient: quotient, remainder: remainder)
    }

    //

    internal static func leftShift(_ value: ExtendedScalar, by shiftAmount: Scalar.Magnitude) -> ExtendedScalar {
        guard shiftAmount < Scalar.bitWidth * 4 else { return ((0, 0), (0, 0)) }

        let shiftMask = Scalar.bitWidth - 1
        var result = value
        for _ in 0 ..< shiftAmount {
            result.high.high = Scalar(truncatingIfNeeded: (Scalar.Magnitude(truncatingIfNeeded: result.high.high) &<< 1) | (result.high.low &>> shiftMask))
            result.high.low = (result.high.low &<< 1) | (result.low.high &>> shiftMask)
            result.low.high = (result.low.high &<< 1) | (result.low.low &>> shiftMask)
            result.low.low &<<= 1
        }

        return result
    }

    internal static func rightShift(_ value: ExtendedScalar, by shiftAmount: Scalar.Magnitude) -> ExtendedScalar {
        guard shiftAmount < Scalar.bitWidth * 4 else { return ((0, 0), (0, 0)) }

        let shiftMask = Scalar.bitWidth - 1
        var result = value
        for _ in 0 ..< shiftAmount {
            result.low.low = (result.low.low &>> 1) | (result.low.high &<< shiftMask)
            result.low.high = (result.low.high &>> 1) | (result.high.low &<< shiftMask)
            result.high.low = (result.high.low &>> 1) | (Scalar.Magnitude(truncatingIfNeeded: result.high.high) &<< shiftMask)
            result.high.high = Scalar(truncatingIfNeeded: Scalar.Magnitude(truncatingIfNeeded: result.high.high) &>> 1)
        }

        return result
    }

    //

    internal static func isLessThanOrEqual(_ lhs: ExtendedScalar, to rhs: ExtendedScalar) -> Bool {
        let isLessThanOrEqual: Bool

        if lhs.high.high == rhs.high.high {
            if lhs.high.low == rhs.high.low {
                if lhs.low.high == rhs.low.high {
                    isLessThanOrEqual = (lhs.low.low <= rhs.low.low)
                } else {
                    isLessThanOrEqual = (lhs.low.high <= rhs.low.high)
                }
            } else {
                isLessThanOrEqual = (lhs.high.low <= rhs.high.low)
            }
        } else {
            isLessThanOrEqual = (lhs.high.high <= rhs.high.high)
        }

        return isLessThanOrEqual
    }

    internal static func isLess(_ lhs: ExtendedScalar, than rhs: ExtendedScalar) -> Bool {
        let isLessThanOrEqual: Bool

        if lhs.high.high == rhs.high.high {
            if lhs.high.low == rhs.high.low {
                if lhs.low.high == rhs.low.high {
                    isLessThanOrEqual = (lhs.low.low < rhs.low.low)
                } else {
                    isLessThanOrEqual = (lhs.low.high < rhs.low.high)
                }
            } else {
                isLessThanOrEqual = (lhs.high.low < rhs.high.low)
            }
        } else {
            isLessThanOrEqual = (lhs.high.high < rhs.high.high)
        }

        return isLessThanOrEqual
    }

    internal static func isPowerOfTwo(_ value: ExtendedScalar) -> (isPowerOfTwo: Bool, power: Scalar.Magnitude) {
        if (value.high.high.nonzeroBitCount + value.high.low.nonzeroBitCount + value.low.high.nonzeroBitCount + value.low.low.nonzeroBitCount) == 1 {
            var bits = value
            var shift: Scalar.Magnitude = 0

            while bits.low.low > 1 || bits.low.high != .zero || bits.high.low != .zero || bits.high.high != .zero {
                bits = rightShift(bits, by: 1)
                shift += 1
            }

            return (true, shift)
        }

        return (false, 0)
    }

    internal static func leadingZeroBitCount(of value: ExtendedScalar) -> Int {
        let bitWidth = Scalar.bitWidth
        var leadingZeroBitCount = value.high.high.leadingZeroBitCount

        if leadingZeroBitCount == bitWidth {
            leadingZeroBitCount += value.high.low.leadingZeroBitCount

            if leadingZeroBitCount == (bitWidth * 2) {
                leadingZeroBitCount += value.low.high.leadingZeroBitCount

                if leadingZeroBitCount == (bitWidth * 3) {
                    leadingZeroBitCount += value.low.low.leadingZeroBitCount
                }
            }
        }

        return leadingZeroBitCount
    }

    //

    internal static func truncateAndReportOverflow(_ value: ExtendedScalar) -> (partialValue: Scalar, overflow: Bool) {
        // Return value doesn't change.
        let partialValue = Scalar(truncatingIfNeeded: value.low.low)

        // Check for overflow
        var overflow: Bool = false

        if Scalar.isSigned {
            // For signed integers we have different logic depending on if the input is
            // negative or positive:
            //
            // Negative: Overflow occurs when any of the bits of any of the three most
            //           significant words are zero or if the most significant bit of
            //           the least significant word is 0.
            //
            // Positive: Overflow occurs when the any of the three most significant words are
            //           non-zero or if the most significant bit of the least significant word
            //           is 1.

            if value.high.high < .zero {
                if value.high.high.nonzeroBitCount != Scalar.bitWidth || value.high.low.nonzeroBitCount != Scalar.bitWidth || value.low.high.nonzeroBitCount != Scalar.bitWidth {
                    overflow = true
                } else if value.low.low.leadingZeroBitCount > 0 {
                    overflow = true
                }
            } else if value.high.high != .zero || value.high.low != .zero || value.low.high != .zero {
                overflow = true
            } else if value.low.low.leadingZeroBitCount == 0 {
                overflow = true
            }
        } else {
            // For unsigned integers overflow occurs when the any of the three most significant
            // words are non-zero.

            overflow = (value.high.high > .zero) || (value.high.low > .zero) || (value.low.high > .zero)
        }

        return (partialValue, overflow)
    }
}
