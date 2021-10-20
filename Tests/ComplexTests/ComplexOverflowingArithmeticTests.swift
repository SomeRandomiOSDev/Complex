//
//  ComplexOverflowingArithmeticTests.swift
//  Complex
//
//  Copyright © 2020 SomeRandomiOSDev. All rights reserved.
//

@testable import Complex
import XCTest

class ComplexOverflowingArithmeticTests: XCTestCase {

    // MARK: Test Methods

    func testOverflowingAddition() {
        testOverflowingAddition(forType: Int8.self)
        testOverflowingAddition(forType: Int16.self)
        testOverflowingAddition(forType: Int32.self)
        testOverflowingAddition(forType: Int64.self)
        testOverflowingAddition(forType: Int.self)
        testOverflowingAddition(forType: UInt8.self)
        testOverflowingAddition(forType: UInt16.self)
        testOverflowingAddition(forType: UInt32.self)
        testOverflowingAddition(forType: UInt64.self)
        testOverflowingAddition(forType: UInt.self)
    }

    func testOverflowingSubtraction() {
        testOverflowingSubtraction(forType: Int8.self)
        testOverflowingSubtraction(forType: Int16.self)
        testOverflowingSubtraction(forType: Int32.self)
        testOverflowingSubtraction(forType: Int64.self)
        testOverflowingSubtraction(forType: Int.self)
        testOverflowingSubtraction(forType: UInt8.self)
        testOverflowingSubtraction(forType: UInt16.self)
        testOverflowingSubtraction(forType: UInt32.self)
        testOverflowingSubtraction(forType: UInt64.self)
        testOverflowingSubtraction(forType: UInt.self)
    }

    func testComponentwiseOverflowingMultiplication() {
        testComponentwiseOverflowingMultiplication(forType: Int8.self)
        testComponentwiseOverflowingMultiplication(forType: Int16.self)
        testComponentwiseOverflowingMultiplication(forType: Int32.self)
        testComponentwiseOverflowingMultiplication(forType: Int64.self)
        testComponentwiseOverflowingMultiplication(forType: Int.self)
        testComponentwiseOverflowingMultiplication(forType: UInt8.self)
        testComponentwiseOverflowingMultiplication(forType: UInt16.self)
        testComponentwiseOverflowingMultiplication(forType: UInt32.self)
        testComponentwiseOverflowingMultiplication(forType: UInt64.self)
        testComponentwiseOverflowingMultiplication(forType: UInt.self)
    }

    func testComponentwiseOverflowingDivision() {
        testComponentwiseOverflowingDivision(forType: Int8.self)
        testComponentwiseOverflowingDivision(forType: Int16.self)
        testComponentwiseOverflowingDivision(forType: Int32.self)
        testComponentwiseOverflowingDivision(forType: Int64.self)
        testComponentwiseOverflowingDivision(forType: Int.self)
        testComponentwiseOverflowingDivision(forType: UInt8.self)
        testComponentwiseOverflowingDivision(forType: UInt16.self)
        testComponentwiseOverflowingDivision(forType: UInt32.self)
        testComponentwiseOverflowingDivision(forType: UInt64.self)
        testComponentwiseOverflowingDivision(forType: UInt.self)
    }

    func testMultiplyReportingOverflow() {
        testMultiplyReportingOverflow(forType: Int8.self)
        testMultiplyReportingOverflow(forType: Int16.self)
        testMultiplyReportingOverflow(forType: Int32.self)
        testMultiplyReportingOverflow(forType: Int64.self)
        testMultiplyReportingOverflow(forType: Int.self)
        testMultiplyReportingOverflow(forType: UInt8.self)
        testMultiplyReportingOverflow(forType: UInt16.self)
        testMultiplyReportingOverflow(forType: UInt32.self)
        testMultiplyReportingOverflow(forType: UInt64.self)
        testMultiplyReportingOverflow(forType: UInt.self)
    }

    func testMultiplyFullWidth() {
        testMultiplyFullWidth(forType: Int8.self)
        testMultiplyFullWidth(forType: Int16.self)
        testMultiplyFullWidth(forType: Int32.self)
        testMultiplyFullWidth(forType: Int64.self)
        testMultiplyFullWidth(forType: Int.self)
    }

    func testDivideReportingOverflow() {
        testDivideReportingOverflow(forType: Int8.self)
        testDivideReportingOverflow(forType: Int16.self)
        testDivideReportingOverflow(forType: Int32.self)
        testDivideReportingOverflow(forType: Int64.self)
        testDivideReportingOverflow(forType: Int.self)
        testDivideReportingOverflow(forType: UInt8.self)
        testDivideReportingOverflow(forType: UInt16.self)
        testDivideReportingOverflow(forType: UInt32.self)
        testDivideReportingOverflow(forType: UInt64.self)
        testDivideReportingOverflow(forType: UInt.self)
    }

    func testDivideFullWidth() {
        testDivideFullWidth(forType: Int8.self)
        testDivideFullWidth(forType: Int16.self)
        testDivideFullWidth(forType: Int32.self)
        testDivideFullWidth(forType: Int64.self)
        testDivideFullWidth(forType: Int.self)
    }

    //

    func testSignExtension() {
        testSignExtension(forType: Int8.self)
        testSignExtension(forType: Int16.self)
        testSignExtension(forType: Int32.self)
        testSignExtension(forType: Int64.self)
        testSignExtension(forType: Int.self)
        testSignExtension(forType: UInt8.self)
        testSignExtension(forType: UInt16.self)
        testSignExtension(forType: UInt32.self)
        testSignExtension(forType: UInt64.self)
        testSignExtension(forType: UInt.self)
    }

    func testTwosComplement() {
        testTwosComplement(forType: Int8.self)
        testTwosComplement(forType: Int16.self)
        testTwosComplement(forType: Int32.self)
        testTwosComplement(forType: Int64.self)
        testTwosComplement(forType: Int.self)
        testTwosComplement(forType: UInt8.self)
        testTwosComplement(forType: UInt16.self)
        testTwosComplement(forType: UInt32.self)
        testTwosComplement(forType: UInt64.self)
        testTwosComplement(forType: UInt.self)
    }

    func testAddExtendedScalars() {
        testAddExtendedScalars(forType: Int8.self)
        testAddExtendedScalars(forType: Int16.self)
        testAddExtendedScalars(forType: Int32.self)
        testAddExtendedScalars(forType: Int64.self)
        testAddExtendedScalars(forType: Int.self)
        testAddExtendedScalars(forType: UInt8.self)
        testAddExtendedScalars(forType: UInt16.self)
        testAddExtendedScalars(forType: UInt32.self)
        testAddExtendedScalars(forType: UInt64.self)
        testAddExtendedScalars(forType: UInt.self)
    }

    func testSubtractExtendedScalars() {
        testSubtractExtendedScalars(forType: Int8.self)
        testSubtractExtendedScalars(forType: Int16.self)
        testSubtractExtendedScalars(forType: Int32.self)
        testSubtractExtendedScalars(forType: Int64.self)
        testSubtractExtendedScalars(forType: Int.self)
        testSubtractExtendedScalars(forType: UInt8.self)
        testSubtractExtendedScalars(forType: UInt16.self)
        testSubtractExtendedScalars(forType: UInt32.self)
        testSubtractExtendedScalars(forType: UInt64.self)
        testSubtractExtendedScalars(forType: UInt.self)
    }

    func testLeftShiftExtendedScalars() {
        testLeftShiftExtendedScalars(forType: Int8.self)
        testLeftShiftExtendedScalars(forType: Int16.self)
        testLeftShiftExtendedScalars(forType: Int32.self)
        testLeftShiftExtendedScalars(forType: Int64.self)
        testLeftShiftExtendedScalars(forType: Int.self)
        testLeftShiftExtendedScalars(forType: UInt8.self)
        testLeftShiftExtendedScalars(forType: UInt16.self)
        testLeftShiftExtendedScalars(forType: UInt32.self)
        testLeftShiftExtendedScalars(forType: UInt64.self)
        testLeftShiftExtendedScalars(forType: UInt.self)
    }

    func testRightShiftExtendedScalars() {
        testRightShiftExtendedScalars(forType: Int8.self)
        testRightShiftExtendedScalars(forType: Int16.self)
        testRightShiftExtendedScalars(forType: Int32.self)
        testRightShiftExtendedScalars(forType: Int64.self)
        testRightShiftExtendedScalars(forType: Int.self)
        testRightShiftExtendedScalars(forType: UInt8.self)
        testRightShiftExtendedScalars(forType: UInt16.self)
        testRightShiftExtendedScalars(forType: UInt32.self)
        testRightShiftExtendedScalars(forType: UInt64.self)
        testRightShiftExtendedScalars(forType: UInt.self)
    }

    func testIsLessThanOrEqual() {
        testIsLessThanOrEqual(forType: Int8.self)
        testIsLessThanOrEqual(forType: Int16.self)
        testIsLessThanOrEqual(forType: Int32.self)
        testIsLessThanOrEqual(forType: Int64.self)
        testIsLessThanOrEqual(forType: Int.self)
        testIsLessThanOrEqual(forType: UInt8.self)
        testIsLessThanOrEqual(forType: UInt16.self)
        testIsLessThanOrEqual(forType: UInt32.self)
        testIsLessThanOrEqual(forType: UInt64.self)
        testIsLessThanOrEqual(forType: UInt.self)
    }

    func testIsLessThan() {
        testIsLessThan(forType: Int8.self)
        testIsLessThan(forType: Int16.self)
        testIsLessThan(forType: Int32.self)
        testIsLessThan(forType: Int64.self)
        testIsLessThan(forType: Int.self)
        testIsLessThan(forType: UInt8.self)
        testIsLessThan(forType: UInt16.self)
        testIsLessThan(forType: UInt32.self)
        testIsLessThan(forType: UInt64.self)
        testIsLessThan(forType: UInt.self)
    }

    func testIsPowerOfTwo() {
        testIsPowerOfTwo(forType: Int8.self)
        testIsPowerOfTwo(forType: Int16.self)
        testIsPowerOfTwo(forType: Int32.self)
        testIsPowerOfTwo(forType: Int64.self)
        testIsPowerOfTwo(forType: Int.self)
        testIsPowerOfTwo(forType: UInt8.self)
        testIsPowerOfTwo(forType: UInt16.self)
        testIsPowerOfTwo(forType: UInt32.self)
        testIsPowerOfTwo(forType: UInt64.self)
        testIsPowerOfTwo(forType: UInt.self)
    }

    func testLeadingZeroBitCount() {
        testLeadingZeroBitCount(forType: Int8.self)
        testLeadingZeroBitCount(forType: Int16.self)
        testLeadingZeroBitCount(forType: Int32.self)
        testLeadingZeroBitCount(forType: Int64.self)
        testLeadingZeroBitCount(forType: Int.self)
        testLeadingZeroBitCount(forType: UInt8.self)
        testLeadingZeroBitCount(forType: UInt16.self)
        testLeadingZeroBitCount(forType: UInt32.self)
        testLeadingZeroBitCount(forType: UInt64.self)
        testLeadingZeroBitCount(forType: UInt.self)
    }

    func testTruncateExtendedScalars() {
        testTruncateExtendedScalars(forType: Int8.self)
        testTruncateExtendedScalars(forType: Int16.self)
        testTruncateExtendedScalars(forType: Int32.self)
        testTruncateExtendedScalars(forType: Int64.self)
        testTruncateExtendedScalars(forType: Int.self)
        testTruncateExtendedScalars(forType: UInt8.self)
        testTruncateExtendedScalars(forType: UInt16.self)
        testTruncateExtendedScalars(forType: UInt32.self)
        testTruncateExtendedScalars(forType: UInt64.self)
        testTruncateExtendedScalars(forType: UInt.self)
    }

    func testSlowpathMultiply() {
        testSlowpathMultiply(forType: Int8.self)
        testSlowpathMultiply(forType: Int16.self)
        testSlowpathMultiply(forType: Int32.self)
        testSlowpathMultiply(forType: Int64.self)
        testSlowpathMultiply(forType: Int.self)
        testSlowpathMultiply(forType: UInt8.self)
        testSlowpathMultiply(forType: UInt16.self)
        testSlowpathMultiply(forType: UInt32.self)
        testSlowpathMultiply(forType: UInt64.self)
        testSlowpathMultiply(forType: UInt.self)
    }

    func testSlowpathDivide() {
        testSlowpathDivide(forType: Int8.self)
        testSlowpathDivide(forType: Int16.self)
        testSlowpathDivide(forType: Int32.self)
        testSlowpathDivide(forType: Int64.self)
        testSlowpathDivide(forType: Int.self)
        testSlowpathDivide(forType: UInt8.self)
        testSlowpathDivide(forType: UInt16.self)
        testSlowpathDivide(forType: UInt32.self)
        testSlowpathDivide(forType: UInt64.self)
        testSlowpathDivide(forType: UInt.self)
    }

    // MARK: Private Methods

    private func testOverflowingAddition<Scalar>(forType: Scalar.Type) where Scalar: FixedWidthInteger, Scalar: UnsignedInteger {
        var lhs = Complex<Scalar>(real: Scalar.max, imaginary: 0)
        var rhs = Complex<Scalar>(real: Scalar.max, imaginary: 0)
        var result = lhs.addingReportingOverflow(rhs)

        CTAssertTrue(result.overflow)
        CTAssertEqual(result.partialValue.real, Scalar.max - 1)
        CTAssertEqual(result.partialValue.imaginary, 0)

        lhs = Complex<Scalar>(real: 0, imaginary: Scalar.max)
        rhs = Complex<Scalar>(real: 0, imaginary: Scalar.max)
        result = lhs.addingReportingOverflow(rhs)

        CTAssertTrue(result.overflow)
        CTAssertEqual(result.partialValue.real, 0)
        CTAssertEqual(result.partialValue.imaginary, Scalar.max - 1)

        lhs = Complex<Scalar>(real: Scalar.max, imaginary: Scalar.max)
        rhs = Complex<Scalar>(real: Scalar.max, imaginary: Scalar.max)
        result = lhs.addingReportingOverflow(rhs)

        CTAssertTrue(result.overflow)
        CTAssertEqual(result.partialValue.real, Scalar.max - 1)
        CTAssertEqual(result.partialValue.imaginary, Scalar.max - 1)
    }

    private func testOverflowingAddition<Scalar>(forType: Scalar.Type) where Scalar: FixedWidthInteger, Scalar: SignedInteger {
        var lhs = Complex<Scalar>(real: Scalar.max, imaginary: 0)
        var rhs = Complex<Scalar>(real: Scalar.max, imaginary: 0)
        var result = lhs.addingReportingOverflow(rhs)

        CTAssertTrue(result.overflow)
        CTAssertEqual(result.partialValue.real, -2)
        CTAssertEqual(result.partialValue.imaginary, 0)

        lhs = Complex<Scalar>(real: 0, imaginary: Scalar.max)
        rhs = Complex<Scalar>(real: 0, imaginary: Scalar.max)
        result = lhs.addingReportingOverflow(rhs)

        CTAssertTrue(result.overflow)
        CTAssertEqual(result.partialValue.real, 0)
        CTAssertEqual(result.partialValue.imaginary, -2)

        lhs = Complex<Scalar>(real: Scalar.max, imaginary: Scalar.max)
        rhs = Complex<Scalar>(real: Scalar.max, imaginary: Scalar.max)
        result = lhs.addingReportingOverflow(rhs)

        CTAssertTrue(result.overflow)
        CTAssertEqual(result.partialValue.real, -2)
        CTAssertEqual(result.partialValue.imaginary, -2)
    }

    private func testOverflowingSubtraction<Scalar>(forType: Scalar.Type) where Scalar: FixedWidthInteger {
        var lhs = Complex<Scalar>(real: Scalar.min, imaginary: 0)
        var rhs = Complex<Scalar>(real: Scalar.max, imaginary: 0)
        var result = lhs.subtractingReportingOverflow(rhs)

        CTAssertTrue(result.overflow)
        CTAssertEqual(result.partialValue.real, 1)
        CTAssertEqual(result.partialValue.imaginary, 0)

        lhs = Complex<Scalar>(real: 0, imaginary: Scalar.min)
        rhs = Complex<Scalar>(real: 0, imaginary: Scalar.max)
        result = lhs.subtractingReportingOverflow(rhs)

        CTAssertTrue(result.overflow)
        CTAssertEqual(result.partialValue.real, 0)
        CTAssertEqual(result.partialValue.imaginary, 1)

        lhs = Complex<Scalar>(real: Scalar.min, imaginary: Scalar.min)
        rhs = Complex<Scalar>(real: Scalar.max, imaginary: Scalar.max)
        result = lhs.subtractingReportingOverflow(rhs)

        CTAssertTrue(result.overflow)
        CTAssertEqual(result.partialValue.real, 1)
        CTAssertEqual(result.partialValue.imaginary, 1)
    }

    private func testComponentwiseOverflowingMultiplication<Scalar>(forType: Scalar.Type) where Scalar: FixedWidthInteger, Scalar: UnsignedInteger {
        var lhs = Complex<Scalar>(real: Scalar.max, imaginary: Scalar.max)
        var rhs = Complex<Scalar>(real: 2, imaginary: 2)

        let fullWidth = lhs.componentwiseMultipliedFullWidth(by: rhs)
        CTAssertEqual(fullWidth.high.real, 1)
        CTAssertEqual(fullWidth.high.imaginary, 1)
        CTAssertEqual(fullWidth.low.real, Scalar.Magnitude.max - 1)
        CTAssertEqual(fullWidth.low.imaginary, Scalar.Magnitude.max - 1)

        var overflow = lhs.componentwiseMultipliedReportingOverflow(by: rhs)
        CTAssertTrue(overflow.overflow)
        CTAssertEqual(overflow.partialValue.real, Scalar.max - 1)
        CTAssertEqual(overflow.partialValue.imaginary, Scalar.max - 1)

        lhs = Complex<Scalar>(real: Scalar.max, imaginary: 0)
        rhs = Complex<Scalar>(real: 2, imaginary: 0)
        overflow = lhs.componentwiseMultipliedReportingOverflow(by: rhs)

        CTAssertTrue(overflow.overflow)
        CTAssertEqual(overflow.partialValue.real, Scalar.max - 1)
        CTAssertEqual(overflow.partialValue.imaginary, 0)

        lhs = Complex<Scalar>(real: 0, imaginary: Scalar.max)
        rhs = Complex<Scalar>(real: 0, imaginary: 2)
        overflow = lhs.componentwiseMultipliedReportingOverflow(by: rhs)

        CTAssertTrue(overflow.overflow)
        CTAssertEqual(overflow.partialValue.real, 0)
        CTAssertEqual(overflow.partialValue.imaginary, Scalar.max - 1)
    }

    private func testComponentwiseOverflowingMultiplication<Scalar>(forType: Scalar.Type) where Scalar: FixedWidthInteger, Scalar: SignedInteger {
        var lhs = Complex<Scalar>(real: Scalar.max, imaginary: Scalar.max)
        var rhs = Complex<Scalar>(real: 4, imaginary: 4)

        let fullWidth = lhs.componentwiseMultipliedFullWidth(by: rhs)
        CTAssertEqual(fullWidth.high.real, 1)
        CTAssertEqual(fullWidth.high.imaginary, 1)
        CTAssertEqual(fullWidth.low.real, Scalar.Magnitude.max - 3)
        CTAssertEqual(fullWidth.low.imaginary, Scalar.Magnitude.max - 3)

        var overflow = lhs.componentwiseMultipliedReportingOverflow(by: rhs)
        CTAssertTrue(overflow.overflow)
        CTAssertEqual(overflow.partialValue.real, -4)
        CTAssertEqual(overflow.partialValue.imaginary, -4)

        lhs = Complex<Scalar>(real: Scalar.max, imaginary: 0)
        rhs = Complex<Scalar>(real: 4, imaginary: 0)
        overflow = lhs.componentwiseMultipliedReportingOverflow(by: rhs)

        CTAssertTrue(overflow.overflow)
        CTAssertEqual(overflow.partialValue.real, -4)
        CTAssertEqual(overflow.partialValue.imaginary, 0)

        lhs = Complex<Scalar>(real: 0, imaginary: Scalar.max)
        rhs = Complex<Scalar>(real: 0, imaginary: 4)
        overflow = lhs.componentwiseMultipliedReportingOverflow(by: rhs)

        CTAssertTrue(overflow.overflow)
        CTAssertEqual(overflow.partialValue.real, 0)
        CTAssertEqual(overflow.partialValue.imaginary, -4)
    }

    private func testComponentwiseOverflowingDivision<Scalar>(forType: Scalar.Type) where Scalar: FixedWidthInteger {
        let lhs = Complex<Scalar>(real: Scalar.max, imaginary: Scalar.max)
        var rhs = Complex<Scalar>(real: 0, imaginary: 0)

        let fullWidth = lhs.componentwiseDividingFullWidth((high: Complex<Scalar>(real: 1, imaginary: 1), low: Complex<Scalar.Magnitude>.zero))
        CTAssertEqual(fullWidth.quotient.real, Scalar.isSigned ? 2 : 1)
        CTAssertEqual(fullWidth.quotient.imaginary, Scalar.isSigned ? 2 : 1)
        CTAssertEqual(fullWidth.remainder.real, Scalar.isSigned ? 2 : 1)
        CTAssertEqual(fullWidth.remainder.imaginary, Scalar.isSigned ? 2 : 1)

        var overflow = lhs.componentwiseDividedReportingOverflow(by: rhs)
        CTAssertTrue(overflow.overflow)
        CTAssertEqual(overflow.partialValue, lhs)

        rhs = Complex<Scalar>(real: 0, imaginary: Scalar.max)
        overflow = lhs.componentwiseDividedReportingOverflow(by: rhs)
        CTAssertTrue(overflow.overflow)
        CTAssertEqual(overflow.partialValue.real, lhs.real)
        CTAssertEqual(overflow.partialValue.imaginary, 1)

        rhs = Complex<Scalar>(real: Scalar.max, imaginary: 0)
        overflow = lhs.componentwiseDividedReportingOverflow(by: rhs)
        CTAssertTrue(overflow.overflow)
        CTAssertEqual(overflow.partialValue.real, 1)
        CTAssertEqual(overflow.partialValue.imaginary, lhs.imaginary)
    }

    private func testMultiplyReportingOverflow<Scalar>(forType: Scalar.Type) where Scalar: FixedWidthInteger {
        if Scalar.isSigned {
            var lhs = Complex<Scalar>(real: Scalar.max, imaginary: Scalar.max)
            var rhs = Complex<Scalar>(real: 4, imaginary: 4)

            var overflow = lhs.multipliedReportingOverflow(by: rhs)
            CTAssertTrue(overflow.overflow)
            CTAssertEqual(overflow.partialValue.real, 0)
            CTAssertEqual(overflow.partialValue.imaginary, -8)

            lhs = Complex<Scalar>(real: Scalar.max, imaginary: 0)
            rhs = Complex<Scalar>(real: 4, imaginary: 0)
            overflow = lhs.multipliedReportingOverflow(by: rhs)

            CTAssertTrue(overflow.overflow)
            CTAssertEqual(overflow.partialValue.real, -4)
            CTAssertEqual(overflow.partialValue.imaginary, 0)

            lhs = Complex<Scalar>(real: 0, imaginary: Scalar.max)
            rhs = Complex<Scalar>(real: 0, imaginary: 4)
            overflow = lhs.multipliedReportingOverflow(by: rhs)

            CTAssertTrue(overflow.overflow)
            CTAssertEqual(overflow.partialValue.real, 4)
            CTAssertEqual(overflow.partialValue.imaginary, 0)

            lhs = Complex<Scalar>(real: -10, imaginary: 4)
            rhs = Complex<Scalar>(real: -10, imaginary: 3)
            overflow = lhs.multipliedReportingOverflow(by: rhs)

            CTAssertFalse(overflow.overflow)
            CTAssertEqual(overflow.partialValue.real, 88)
            CTAssertEqual(overflow.partialValue.imaginary, -70)
        } else {
            var lhs = Complex<Scalar>(real: Scalar.max, imaginary: Scalar.max)
            var rhs = Complex<Scalar>(real: 2, imaginary: 2)

            var overflow = lhs.multipliedReportingOverflow(by: rhs)
            CTAssertTrue(overflow.overflow)
            CTAssertEqual(overflow.partialValue.real, 0)
            CTAssertEqual(overflow.partialValue.imaginary, Scalar.max &<< 2)

            lhs = Complex<Scalar>(real: Scalar.max, imaginary: 0)
            rhs = Complex<Scalar>(real: 2, imaginary: 0)
            overflow = lhs.multipliedReportingOverflow(by: rhs)

            CTAssertTrue(overflow.overflow)
            CTAssertEqual(overflow.partialValue.real, Scalar.max - 1)
            CTAssertEqual(overflow.partialValue.imaginary, 0)

            lhs = Complex<Scalar>(real: 0, imaginary: Scalar.max)
            rhs = Complex<Scalar>(real: 0, imaginary: 2)
            overflow = lhs.multipliedReportingOverflow(by: rhs)

            CTAssertTrue(overflow.overflow)
            CTAssertEqual(overflow.partialValue.real, 2)
            CTAssertEqual(overflow.partialValue.imaginary, 0)

            lhs = Complex<Scalar>(real: 10, imaginary: 4)
            rhs = Complex<Scalar>(real: 10, imaginary: 3)
            overflow = lhs.multipliedReportingOverflow(by: rhs)

            CTAssertFalse(overflow.overflow)
            CTAssertEqual(overflow.partialValue.real, 88)
            CTAssertEqual(overflow.partialValue.imaginary, 70)
        }
    }

    private func testMultiplyFullWidth<Scalar>(forType: Scalar.Type) where Scalar: FixedWidthInteger, Scalar: SignedInteger {
        var lhs = Complex<Scalar>(real: Scalar.max, imaginary: Scalar.max)
        var rhs = Complex<Scalar>(real: 8, imaginary: 4)
        var fullWidth = lhs.multipliedFullWidth(by: rhs)
        var real: Complex<Scalar>.ExtendedScalar = ((fullWidth.high.high.real, fullWidth.high.low.real), (fullWidth.low.high.real, fullWidth.low.low.real))
        var imaginary: Complex<Scalar>.ExtendedScalar = ((fullWidth.high.high.imaginary, fullWidth.high.low.imaginary), (fullWidth.low.high.imaginary, fullWidth.low.low.imaginary))

        CTAssertEqual(real, ((0, 0), (1, Scalar.Magnitude.max &<< 2)))
        CTAssertEqual(imaginary, ((0, 0), (5, Scalar.max.multipliedFullWidth(by: 12).low)))

        lhs = Complex<Scalar>(real: Scalar.max, imaginary: 0)
        rhs = Complex<Scalar>(real: 4, imaginary: 0)
        fullWidth = lhs.multipliedFullWidth(by: rhs)
        real = ((fullWidth.high.high.real, fullWidth.high.low.real), (fullWidth.low.high.real, fullWidth.low.low.real))
        imaginary = ((fullWidth.high.high.imaginary, fullWidth.high.low.imaginary), (fullWidth.low.high.imaginary, fullWidth.low.low.imaginary))

        CTAssertEqual(real, ((0, 0), (1, Scalar.Magnitude.max &<< 2)))
        CTAssertEqual(imaginary, ((0, 0), (0, 0)))

        lhs = Complex<Scalar>(real: 0, imaginary: Scalar.max)
        rhs = Complex<Scalar>(real: 0, imaginary: 4)
        fullWidth = lhs.multipliedFullWidth(by: rhs)
        real = ((fullWidth.high.high.real, fullWidth.high.low.real), (fullWidth.low.high.real, fullWidth.low.low.real))
        imaginary = ((fullWidth.high.high.imaginary, fullWidth.high.low.imaginary), (fullWidth.low.high.imaginary, fullWidth.low.low.imaginary))

        CTAssertEqual(real, ((~0, ~0), (Scalar.Magnitude.max - 1, 4)))
        CTAssertEqual(imaginary, ((0, 0), (0, 0)))

        lhs = Complex<Scalar>(real: -10, imaginary: 4)
        rhs = Complex<Scalar>(real: -10, imaginary: 3)
        fullWidth = lhs.multipliedFullWidth(by: rhs)
        real = ((fullWidth.high.high.real, fullWidth.high.low.real), (fullWidth.low.high.real, fullWidth.low.low.real))
        imaginary = ((fullWidth.high.high.imaginary, fullWidth.high.low.imaginary), (fullWidth.low.high.imaginary, fullWidth.low.low.imaginary))

        CTAssertEqual(real, ((0, 0), (0, 88)))
        CTAssertEqual(imaginary, ((~0, ~0), (~0, Scalar.Magnitude(truncatingIfNeeded: Scalar(-70)))))
    }

    private func testDivideReportingOverflow<Scalar>(forType: Scalar.Type) where Scalar: FixedWidthInteger {
        var lhs = Complex<Scalar>(real: Scalar.random(in: Scalar.min ... Scalar.max), imaginary: Scalar.random(in: Scalar.min ... Scalar.max))
        var rhs = Complex<Scalar>(real: 0, imaginary: 0)
        var overflow = lhs.dividedReportingOverflow(by: rhs) // divide by 0

        CTAssertTrue(overflow.overflow)
        CTAssertEqual(overflow.partialValue, rhs)

        lhs = Complex<Scalar>(real: 11, imaginary: 9)
        rhs = Complex<Scalar>(real: 7, imaginary: 3)
        overflow = lhs.dividedReportingOverflow(by: rhs)

        CTAssertFalse(overflow.overflow)
        CTAssertEqual(overflow.partialValue, Complex<Scalar>(real: 1, imaginary: 0))

        lhs = Complex<Scalar>(real: 11, imaginary: 9)
        rhs = Complex<Scalar>(real: 3, imaginary: 7)
        overflow = lhs.dividedReportingOverflow(by: rhs)

        CTAssertEqual(overflow.overflow, !Scalar.isSigned)
        CTAssertEqual(overflow.partialValue.real, 1)

        if Scalar.isSigned {
            CTAssertEqual(overflow.partialValue.imaginary, 0)
        }

        lhs = Complex<Scalar>(real: Scalar.max, imaginary: Scalar.max)
        rhs = Complex<Scalar>(real: 4, imaginary: 4)
        overflow = lhs.dividedReportingOverflow(by: rhs)

        CTAssertFalse(overflow.overflow)
        CTAssertEqual(overflow.partialValue, Complex<Scalar>(real: Scalar.max &>> 2, imaginary: 0))
    }

    private func testDivideFullWidth<Scalar>(forType: Scalar.Type) where Scalar: FixedWidthInteger, Scalar: SignedInteger {
        var lhs = Complex<Scalar>(real: 7, imaginary: 3)
        var rhs: Complex<Scalar>.ExtendedComplex = ((.zero, .zero), (.zero, Complex<Scalar.Magnitude>(real: 11, imaginary: 9)))
        var fullWidth = lhs.dividingFullWidth(rhs)

        CTAssertEqual(fullWidth.quotient, Complex<Scalar>(real: 1, imaginary: 0))
        CTAssertEqual(fullWidth.remainder, Complex<Scalar>(real: 46, imaginary: 30))

        lhs = Complex<Scalar>(real: 3, imaginary: 7)
        fullWidth = lhs.dividingFullWidth(rhs)

        CTAssertEqual(fullWidth.quotient, Complex<Scalar>(real: 1, imaginary: 0))
        CTAssertEqual(fullWidth.remainder, Complex<Scalar>(real: 38, imaginary: -50))

        lhs = Complex<Scalar>(real: 4, imaginary: 4)
        rhs = ((.zero, .zero), (.zero, Complex<Scalar.Magnitude>(real: Scalar.Magnitude(Scalar.max), imaginary: Scalar.Magnitude(Scalar.max))))
        fullWidth = lhs.dividingFullWidth(rhs)

        CTAssertEqual(fullWidth.quotient, Complex<Scalar>(real: Scalar.max &>> 2, imaginary: 0))
        CTAssertEqual(fullWidth.remainder, Complex<Scalar>(real: 24, imaginary: 0))
    }

    //

    private func testSignExtension<Scalar>(forType: Scalar.Type) where Scalar: FixedWidthInteger {
        var value = Scalar.min.multipliedFullWidth(by: 1)
        var extended = Complex<Scalar>.signExtend(value)
        CTAssertEqual(extended, (high: (high: Scalar.isSigned ? ~0 : 0, low: Scalar.isSigned ? Scalar.Magnitude.max : 0), low: (high: Scalar.Magnitude(truncatingIfNeeded: value.high), low: value.low)))

        extended = Complex<Scalar>.signExtend(Scalar.min)
        CTAssertEqual(extended, (high: (high: Scalar.isSigned ? ~0 : 0, low: Scalar.isSigned ? Scalar.Magnitude.max : 0), low: (high: Scalar.Magnitude(truncatingIfNeeded: value.high), low: value.low)))

        value = Scalar.max.multipliedFullWidth(by: 1)
        extended = Complex<Scalar>.signExtend(value)
        CTAssertEqual(extended, (high: (high: 0, low: 0), low: (high: Scalar.Magnitude(truncatingIfNeeded: value.high), low: value.low)))

        extended = Complex<Scalar>.signExtend(Scalar.max)
        CTAssertEqual(extended, (high: (high: 0, low: 0), low: (high: Scalar.Magnitude(truncatingIfNeeded: value.high), low: value.low)))

        extended = Complex<Scalar>.signExtend((0, 0))
        CTAssertEqual(extended, (high: (high: 0, low: 0), low: (high: 0, low: 0)))

        extended = Complex<Scalar>.signExtend(Scalar(0))
        CTAssertEqual(extended, (high: (high: 0, low: 0), low: (high: 0, low: 0)))

        value = (Scalar.max, Scalar.Magnitude.max)
        extended = Complex<Scalar>.signExtend(value)
        CTAssertEqual(extended, (high: (high: 0, low: 0), low: (high: Scalar.Magnitude(truncatingIfNeeded: value.high), low: value.low)))
    }

    private func testTwosComplement<Scalar>(forType: Scalar.Type) where Scalar: FixedWidthInteger {
        var value2: (high: Scalar, low: Scalar.Magnitude) = (0, 0)
        var complement2 = Complex<Scalar>.twosComplement(of: value2)
        CTAssertEqual(complement2.high, value2.high)
        CTAssertEqual(complement2.low, value2.low)

        value2 = (~0, 0)
        complement2 = Complex<Scalar>.twosComplement(of: value2)
        CTAssertEqual(complement2.high, 1)
        CTAssertEqual(complement2.low, value2.low)

        value2 = (0, 1)
        complement2 = Complex<Scalar>.twosComplement(of: value2)
        CTAssertEqual(complement2.high, ~0)
        CTAssertEqual(complement2.low, ~0)

        //

        var extendedValue: Complex<Scalar>.ExtendedScalar = ((0, 0), (0, 0))
        var extendedComplement = Complex<Scalar>.twosComplement(of: extendedValue)
        CTAssertEqual(extendedComplement, extendedValue)

        extendedValue = ((~0, 0), (0, 0))
        extendedComplement = Complex<Scalar>.twosComplement(of: extendedValue)
        CTAssertEqual(extendedComplement, (high: (high: 1, low: 0), low: (high: 0, low: 0)))

        extendedValue = ((0, 0), (0, 1))
        extendedComplement = Complex<Scalar>.twosComplement(of: extendedValue)
        CTAssertEqual(extendedComplement, (high: (high: ~0, low: ~0), low: (high: ~0, low: ~0)))
    }

    private func testAddExtendedScalars<Scalar>(forType: Scalar.Type) where Scalar: FixedWidthInteger {
        // Test: 0 + 0 = 0
        //
        var nonextendedLHS: (high: Scalar, low: Scalar.Magnitude) = (high: 0, low: 0)
        var nonextendedRHS: (high: Scalar, low: Scalar.Magnitude) = (high: 0, low: 0)
        var result = Complex<Scalar>.add(nonextendedLHS, nonextendedRHS)
        CTAssertEqual(result, (high: (high: 0, low: 0), low: (high: 0, low: 0)))

        var extendedLHS = Complex<Scalar>.signExtend(nonextendedLHS)
        var extendedRHS = Complex<Scalar>.signExtend(nonextendedRHS)
        result = Complex<Scalar>.add(extendedLHS, extendedRHS)
        CTAssertEqual(result, (high: (high: 0, low: 0), low: (high: 0, low: 0)))

        // Test overflow of `low.low`
        //
        nonextendedLHS = (high: 0, low: 1)
        nonextendedRHS = (high: 0, low: Scalar.Magnitude.max)
        result = Complex<Scalar>.add(nonextendedLHS, nonextendedRHS)
        CTAssertEqual(result, (high: (high: 0, low: 0), low: (high: 1, low: 0)))

        extendedLHS = Complex<Scalar>.signExtend(nonextendedLHS)
        extendedRHS = Complex<Scalar>.signExtend(nonextendedRHS)
        result = Complex<Scalar>.add(extendedLHS, extendedRHS)
        CTAssertEqual(result, (high: (high: 0, low: 0), low: (high: 1, low: 0)))

        // Test non-overflow of `low.low`
        //
        nonextendedLHS = (high: 0, low: 1)
        nonextendedRHS = (high: 0, low: Scalar.Magnitude.max - 1)
        result = Complex<Scalar>.add(nonextendedLHS, nonextendedRHS)
        CTAssertEqual(result, (high: (high: 0, low: 0), low: (high: 0, low: Scalar.Magnitude.max)))

        extendedLHS = Complex<Scalar>.signExtend(nonextendedLHS)
        extendedRHS = Complex<Scalar>.signExtend(nonextendedRHS)
        result = Complex<Scalar>.add(extendedLHS, extendedRHS)
        CTAssertEqual(result, (high: (high: 0, low: 0), low: (high: 0, low: Scalar.Magnitude.max)))

        // Test overflow of `low.high`
        //
        nonextendedLHS = (high: 1, low: 0)
        nonextendedRHS = (high: ~Scalar(0), low: Scalar.Magnitude.max)
        result = Complex<Scalar>.add(nonextendedLHS, nonextendedRHS)
        CTAssertEqual(result, (high: (high: 0, low: Scalar.isSigned ? 0 : 1), low: (high: 0, low: Scalar.Magnitude.max)))

        extendedLHS = Complex<Scalar>.signExtend(nonextendedLHS)
        extendedRHS = Complex<Scalar>.signExtend(nonextendedRHS)
        result = Complex<Scalar>.add(extendedLHS, extendedRHS)
        CTAssertEqual(result, (high: (high: 0, low: Scalar.isSigned ? 0 : 1), low: (high: 0, low: Scalar.Magnitude.max)))

        // Test non-overflow of `low.high`
        //
        nonextendedLHS = (high: 1, low: 0)
        nonextendedRHS = (high: ~Scalar(0) - 1, low: 0)
        result = Complex<Scalar>.add(nonextendedLHS, nonextendedRHS)
        CTAssertEqual(result, (high: (high: Scalar.isSigned ? ~Scalar(0) : 0, low: Scalar.isSigned ? ~Scalar.Magnitude(0) : 0), low: (high: ~Scalar.Magnitude(0), low: 0)))

        extendedLHS = Complex<Scalar>.signExtend(nonextendedLHS)
        extendedRHS = Complex<Scalar>.signExtend(nonextendedRHS)
        result = Complex<Scalar>.add(extendedLHS, extendedRHS)
        CTAssertEqual(result, (high: (high: Scalar.isSigned ? ~Scalar(0) : 0, low: Scalar.isSigned ? ~Scalar.Magnitude(0) : 0), low: (high: ~Scalar.Magnitude(0), low: 0)))

        // Test overflow of `low.high` from overflow of `low.low`
        //
        nonextendedLHS = (high: 1, low: 1)
        nonextendedRHS = (high: ~Scalar(0) - 1, low: Scalar.Magnitude.max)
        result = Complex<Scalar>.add(nonextendedLHS, nonextendedRHS)
        CTAssertEqual(result, (high: (high: 0, low: Scalar.isSigned ? 0 : 1), low: (high: 0, low: 0)))

        extendedLHS = Complex<Scalar>.signExtend(nonextendedLHS)
        extendedRHS = Complex<Scalar>.signExtend(nonextendedRHS)
        result = Complex<Scalar>.add(extendedLHS, extendedRHS)
        CTAssertEqual(result, (high: (high: 0, low: Scalar.isSigned ? 0 : 1), low: (high: 0, low: 0)))

        //

        testAdditionalAddExtendedScalars(forType: Scalar.self)
    }

    private func testAdditionalAddExtendedScalars<Scalar>(forType: Scalar.Type) where Scalar: FixedWidthInteger {
        // Test overflow of `high.low`
        //
        var extendedLHS: Complex<Scalar>.ExtendedScalar = (high: (high: 0, low: 1), (high: 1, low: 1))
        var extendedRHS: Complex<Scalar>.ExtendedScalar = (high: (high: 0, low: Scalar.Magnitude.max), (high: 0, low: 0))
        var result = Complex<Scalar>.add(extendedLHS, extendedRHS)
        CTAssertEqual(result, (high: (high: 1, low: 0), low: (high: 1, low: 1)))

        // Test non-overflow of `high.low`
        //
        extendedLHS = (high: (high: 0, low: 1), (high: 1, low: 1))
        extendedRHS = (high: (high: 0, low: Scalar.Magnitude.max - 1), (high: 0, low: 0))
        result = Complex<Scalar>.add(extendedLHS, extendedRHS)
        CTAssertEqual(result, (high: (high: 0, low: Scalar.Magnitude.max), low: (high: 1, low: 1)))

        // Test overflow of `high.low` from overflow of `low.high`
        //
        extendedLHS = (high: (high: 0, low: 1), (high: 1, low: 1))
        extendedRHS = (high: (high: 0, low: Scalar.Magnitude.max - 1), (high: Scalar.Magnitude.max, low: 0))
        result = Complex<Scalar>.add(extendedLHS, extendedRHS)
        CTAssertEqual(result, (high: (high: 1, low: 0), low: (high: 0, low: 1)))

        // Test overflow of `high.low` from overflow of `low.high` from overflow of `low.low`
        //
        extendedLHS = (high: (high: 0, low: 1), (high: 1, low: 1))
        extendedRHS = (high: (high: 0, low: Scalar.Magnitude.max - 1), (high: Scalar.Magnitude.max - 1, low: Scalar.Magnitude.max))
        result = Complex<Scalar>.add(extendedLHS, extendedRHS)
        CTAssertEqual(result, (high: (high: 1, low: 0), low: (high: 0, low: 0)))

        // Test overflow of `high.high`
        //
        extendedLHS = (high: (high: 1, low: 1), (high: 1, low: 1))
        extendedRHS = (high: (high: ~Scalar(0), low: 0), (high: 0, low: 0))
        result = Complex<Scalar>.add(extendedLHS, extendedRHS)
        CTAssertEqual(result, (high: (high: 0, low: 1), low: (high: 1, low: 1)))

        // Test non-overflow of `high.high`
        //
        extendedLHS = (high: (high: 1, low: 1), (high: 1, low: 1))
        extendedRHS = (high: (high: ~Scalar(0) - 1, low: 0), (high: 0, low: 0))
        result = Complex<Scalar>.add(extendedLHS, extendedRHS)
        CTAssertEqual(result, (high: (high: ~Scalar(0), low: 1), low: (high: 1, low: 1)))

        // Test overflow of `high.high` from overflow of `high.low`
        //
        extendedLHS = (high: (high: 1, low: 1), (high: 1, low: 1))
        extendedRHS = (high: (high: ~Scalar(0) - 1, low: Scalar.Magnitude.max), (high: 0, low: 0))
        result = Complex<Scalar>.add(extendedLHS, extendedRHS)
        CTAssertEqual(result, (high: (high: 0, low: 0), low: (high: 1, low: 1)))

        // Test overflow of `high.high` from overflow of `high.low` from overflow of `low.high`
        //
        extendedLHS = (high: (high: 1, low: 1), (high: 1, low: 1))
        extendedRHS = (high: (high: ~Scalar(0) - 1, low: Scalar.Magnitude.max - 1), (high: Scalar.Magnitude.max, low: 0))
        result = Complex<Scalar>.add(extendedLHS, extendedRHS)
        CTAssertEqual(result, (high: (high: 0, low: 0), low: (high: 0, low: 1)))

        // Test overflow of `high.high` from overflow of `high.low` from overflow of `low.high` from overflow of `low.low`
        //
        extendedLHS = (high: (high: 1, low: 1), (high: 1, low: 1))
        extendedRHS = (high: (high: ~Scalar(0) - 1, low: Scalar.Magnitude.max - 1), (high: Scalar.Magnitude.max - 1, low: Scalar.Magnitude.max))
        result = Complex<Scalar>.add(extendedLHS, extendedRHS)
        CTAssertEqual(result, (high: (high: 0, low: 0), low: (high: 0, low: 0)))
    }

    private func testSubtractExtendedScalars<Scalar>(forType: Scalar.Type) where Scalar: FixedWidthInteger {
        // Test x - 0 = x
        //
        var nonextendedLHS: (high: Scalar, low: Scalar.Magnitude) = (3, Scalar.Magnitude.max)
        var nonextendedRHS: (high: Scalar, low: Scalar.Magnitude) = (0, 0)
        var result = Complex<Scalar>.subtract(nonextendedLHS, nonextendedRHS)
        CTAssertEqual(result, (high: (high: 0, low: 0), low: (high: 3, low: Scalar.Magnitude.max)))

        var extendedLHS: Complex<Scalar>.ExtendedScalar = ((1, Scalar.Magnitude.max &>> 1), (3, Scalar.Magnitude.max))
        var extendedRHS: Complex<Scalar>.ExtendedScalar = ((0, 0), (0, 0))
        result = Complex<Scalar>.subtract(extendedLHS, extendedRHS)
        CTAssertEqual(result, (high: (high: 1, low: Scalar.Magnitude.max &>> 1), low: (high: 3, low: Scalar.Magnitude.max)))

        if Scalar.isSigned {
            // Test 0 - x = -x
            //
            nonextendedLHS = (0, 0)
            nonextendedRHS = (3, Scalar.Magnitude.max)
            result = Complex<Scalar>.twosComplement(of: Complex<Scalar>.subtract(nonextendedLHS, nonextendedRHS))
            CTAssertEqual(result, (high: (high: 0, low: 0), low: (high: 3, low: Scalar.Magnitude.max)))

            extendedLHS = ((0, 0), (0, 0))
            extendedRHS = ((1, Scalar.Magnitude.max &>> 1), (3, Scalar.Magnitude.max))
            result = Complex<Scalar>.twosComplement(of: Complex<Scalar>.subtract(extendedLHS, extendedRHS))
            CTAssertEqual(result, (high: (high: 1, low: Scalar.Magnitude.max &>> 1), low: (high: 3, low: Scalar.Magnitude.max)))
        }

        // Test x - x = 0
        //
        nonextendedLHS = (3, Scalar.Magnitude.max)
        result = Complex<Scalar>.subtract(nonextendedLHS, nonextendedLHS)
        CTAssertEqual(result, (high: (high: 0, low: 0), low: (high: 0, low: 0)))

        extendedLHS = ((1, Scalar.Magnitude.max >> 1), (3, Scalar.Magnitude.max))
        result = Complex<Scalar>.subtract(extendedLHS, extendedLHS)
        CTAssertEqual(result, (high: (high: 0, low: 0), low: (high: 0, low: 0)))
    }

    private func testLeftShiftExtendedScalars<Scalar>(forType: Scalar.Type) where Scalar: FixedWidthInteger {
        let upperHalf = (~Scalar.Magnitude(0)) &<< (Scalar.Magnitude.bitWidth / 2)
        let lowerHalf = (~Scalar.Magnitude(0)) &>> (Scalar.Magnitude.bitWidth / 2)
        let shiftedUpperHalf = (upperHalf &<< 1) + 1

        var value: Complex<Scalar>.ExtendedScalar = ((~Scalar(0), Scalar.Magnitude.max), (Scalar.Magnitude.max, Scalar.Magnitude.max))
        var result = Complex<Scalar>.leftShift(value, by: 1)
        CTAssertEqual(result, (high: (high: ~Scalar(0), low: Scalar.Magnitude.max), low: (high: Scalar.Magnitude.max, low: Scalar.Magnitude.max - 1)))

        value = ((~Scalar(0), Scalar.Magnitude.max), (Scalar.Magnitude.max, Scalar.Magnitude.max))
        result = Complex<Scalar>.leftShift(value, by: Scalar.Magnitude(Scalar.bitWidth))
        CTAssertEqual(result, (high: (high: ~Scalar(0), low: Scalar.Magnitude.max), low: (high: Scalar.Magnitude.max, low: 0)))

        value = ((~Scalar(0), Scalar.Magnitude.max), (Scalar.Magnitude.max, Scalar.Magnitude.max))
        result = Complex<Scalar>.leftShift(value, by: Scalar.Magnitude(Scalar.bitWidth / 2))
        CTAssertEqual(result, (high: (high: ~Scalar(0), low: Scalar.Magnitude.max), low: (high: Scalar.Magnitude.max, low: upperHalf)))

        value = ((~Scalar(0), Scalar.Magnitude.max), (Scalar.Magnitude.max, Scalar.Magnitude.max))
        result = Complex<Scalar>.leftShift(value, by: Scalar.Magnitude(Scalar.bitWidth * 2))
        CTAssertEqual(result, (high: (high: ~Scalar(0), low: Scalar.Magnitude.max), low: (high: 0, low: 0)))

        value = ((~Scalar(0), Scalar.Magnitude.max), (Scalar.Magnitude.max, Scalar.Magnitude.max))
        result = Complex<Scalar>.leftShift(value, by: Scalar.Magnitude(Scalar.bitWidth * 3))
        CTAssertEqual(result, (high: (high: ~Scalar(0), low: 0), low: (high: 0, low: 0)))

        value = ((~Scalar(0), Scalar.Magnitude.max), (Scalar.Magnitude.max, Scalar.Magnitude.max))
        result = Complex<Scalar>.leftShift(value, by: Scalar.Magnitude(Scalar.bitWidth * 4))
        CTAssertEqual(result, (high: (high: 0, low: 0), low: (high: 0, low: 0)))

        value = ((Scalar(truncatingIfNeeded: upperHalf), upperHalf), (upperHalf, upperHalf))
        result = Complex<Scalar>.leftShift(value, by: Scalar.Magnitude(Scalar.bitWidth / 2))
        CTAssertEqual(result, (high: (high: Scalar(truncatingIfNeeded: lowerHalf), low: lowerHalf), low: (high: lowerHalf, low: 0)))

        value = ((Scalar(truncatingIfNeeded: lowerHalf), lowerHalf), (lowerHalf, lowerHalf))
        result = Complex<Scalar>.leftShift(value, by: Scalar.Magnitude(Scalar.bitWidth / 2))
        CTAssertEqual(result, (high: (high: Scalar(truncatingIfNeeded: upperHalf), low: upperHalf), low: (high: upperHalf, low: upperHalf)))

        value = ((Scalar(truncatingIfNeeded: upperHalf), upperHalf), (upperHalf, upperHalf))
        result = Complex<Scalar>.leftShift(value, by: 1)
        CTAssertEqual(result, (high: (high: Scalar(truncatingIfNeeded: shiftedUpperHalf), low: shiftedUpperHalf), low: (high: shiftedUpperHalf, low: upperHalf &<< 1)))
    }

    private func testRightShiftExtendedScalars<Scalar>(forType: Scalar.Type) where Scalar: FixedWidthInteger {
        let upperHalf = (~Scalar.Magnitude(0)) &<< (Scalar.Magnitude.bitWidth / 2)
        let lowerHalf = (~Scalar.Magnitude(0)) &>> (Scalar.Magnitude.bitWidth / 2)
        let shiftedLowerHalf = (lowerHalf &>> 1) | upperHalf &<< ((Scalar.Magnitude.bitWidth / 2) - 1)

        var value: Complex<Scalar>.ExtendedScalar = ((~Scalar(0), Scalar.Magnitude.max), (Scalar.Magnitude.max, Scalar.Magnitude.max))
        var result = Complex<Scalar>.rightShift(value, by: 1)
        CTAssertEqual(result, (high: (high: Scalar.max &>> (Scalar.isSigned ? 0 : 1), low: Scalar.Magnitude.max), low: (high: Scalar.Magnitude.max, low: Scalar.Magnitude.max)))

        value = ((~Scalar(0), Scalar.Magnitude.max), (Scalar.Magnitude.max, Scalar.Magnitude.max))
        result = Complex<Scalar>.rightShift(value, by: Scalar.Magnitude(Scalar.bitWidth))
        CTAssertEqual(result, (high: (high: 0, low: Scalar.Magnitude.max), low: (high: Scalar.Magnitude.max, low: Scalar.Magnitude.max)))

        value = ((~Scalar(0), Scalar.Magnitude.max), (Scalar.Magnitude.max, Scalar.Magnitude.max))
        result = Complex<Scalar>.rightShift(value, by: Scalar.Magnitude(Scalar.bitWidth / 2))
        CTAssertEqual(result, (high: (high: Scalar(truncatingIfNeeded: lowerHalf), low: Scalar.Magnitude.max), low: (high: Scalar.Magnitude.max, low: Scalar.Magnitude.max)))

        value = ((~Scalar(0), Scalar.Magnitude.max), (Scalar.Magnitude.max, Scalar.Magnitude.max))
        result = Complex<Scalar>.rightShift(value, by: Scalar.Magnitude(Scalar.bitWidth * 2))
        CTAssertEqual(result, (high: (high: 0, low: 0), low: (high: Scalar.Magnitude.max, low: Scalar.Magnitude.max)))

        value = ((~Scalar(0), Scalar.Magnitude.max), (Scalar.Magnitude.max, Scalar.Magnitude.max))
        result = Complex<Scalar>.rightShift(value, by: Scalar.Magnitude(Scalar.bitWidth * 3))
        CTAssertEqual(result, (high: (high: 0, low: 0), low: (high: 0, low: Scalar.Magnitude.max)))

        value = ((~Scalar(0), Scalar.Magnitude.max), (Scalar.Magnitude.max, Scalar.Magnitude.max))
        result = Complex<Scalar>.rightShift(value, by: Scalar.Magnitude(Scalar.bitWidth * 4))
        CTAssertEqual(result, (high: (high: 0, low: 0), low: (high: 0, low: 0)))

        value = ((Scalar(truncatingIfNeeded: upperHalf), upperHalf), (upperHalf, upperHalf))
        result = Complex<Scalar>.rightShift(value, by: Scalar.Magnitude(Scalar.bitWidth / 2))
        CTAssertEqual(result, (high: (high: Scalar(truncatingIfNeeded: lowerHalf), low: lowerHalf), low: (high: lowerHalf, low: lowerHalf)))

        value = ((Scalar(truncatingIfNeeded: lowerHalf), lowerHalf), (lowerHalf, lowerHalf))
        result = Complex<Scalar>.rightShift(value, by: Scalar.Magnitude(Scalar.bitWidth / 2))
        CTAssertEqual(result, (high: (high: 0, low: upperHalf), low: (high: upperHalf, low: upperHalf)))

        value = ((Scalar(truncatingIfNeeded: lowerHalf), lowerHalf), (lowerHalf, lowerHalf))
        result = Complex<Scalar>.rightShift(value, by: 1)
        CTAssertEqual(result, (high: (high: Scalar(truncatingIfNeeded: lowerHalf &>> 1), low: shiftedLowerHalf), low: (high: shiftedLowerHalf, low: shiftedLowerHalf)))
    }

    private func testIsLessThanOrEqual<Scalar>(forType: Scalar.Type) where Scalar: FixedWidthInteger {
        CTAssertTrue(Complex<Scalar>.isLessThanOrEqual(((1, 1), (1, 1)), to: ((1, 1), (1, 1))))
        CTAssertTrue(Complex<Scalar>.isLessThanOrEqual(((0, 1), (1, 1)), to: ((1, 1), (1, 1))))
        CTAssertTrue(Complex<Scalar>.isLessThanOrEqual(((1, 0), (1, 1)), to: ((1, 1), (1, 1))))
        CTAssertTrue(Complex<Scalar>.isLessThanOrEqual(((1, 1), (0, 1)), to: ((1, 1), (1, 1))))
        CTAssertTrue(Complex<Scalar>.isLessThanOrEqual(((1, 1), (1, 0)), to: ((1, 1), (1, 1))))
        CTAssertFalse(Complex<Scalar>.isLessThanOrEqual(((1, 1), (1, 1)), to: ((0, 1), (1, 1))))
        CTAssertFalse(Complex<Scalar>.isLessThanOrEqual(((1, 1), (1, 1)), to: ((1, 0), (1, 1))))
        CTAssertFalse(Complex<Scalar>.isLessThanOrEqual(((1, 1), (1, 1)), to: ((1, 1), (0, 1))))
        CTAssertFalse(Complex<Scalar>.isLessThanOrEqual(((1, 1), (1, 1)), to: ((1, 1), (1, 0))))

        if Scalar.isSigned {
            CTAssertTrue(Complex<Scalar>.isLessThanOrEqual(((~0, ~0), (~0, ~0)), to: ((~0, ~0), (~0, ~0))))
            CTAssertTrue(Complex<Scalar>.isLessThanOrEqual(((~0 - 1, ~0), (~0, ~0)), to: ((~0, ~0), (~0, ~0))))
            CTAssertTrue(Complex<Scalar>.isLessThanOrEqual(((~0, ~0 - 1), (~0, ~0)), to: ((~0, ~0), (~0, ~0))))
            CTAssertTrue(Complex<Scalar>.isLessThanOrEqual(((~0, ~0), (~0 - 1, ~0)), to: ((~0, ~0), (~0, ~0))))
            CTAssertTrue(Complex<Scalar>.isLessThanOrEqual(((~0, ~0), (~0, ~0 - 1)), to: ((~0, ~0), (~0, ~0))))
            CTAssertFalse(Complex<Scalar>.isLessThanOrEqual(((~0, ~0), (~0, ~0)), to: ((~0 - 1, ~0), (~0, ~0))))
            CTAssertFalse(Complex<Scalar>.isLessThanOrEqual(((~0, ~0), (~0, ~0)), to: ((~0, ~0 - 1), (~0, ~0))))
            CTAssertFalse(Complex<Scalar>.isLessThanOrEqual(((~0, ~0), (~0, ~0)), to: ((~0, ~0), (~0 - 1, ~0))))
            CTAssertFalse(Complex<Scalar>.isLessThanOrEqual(((~0, ~0), (~0, ~0)), to: ((~0, ~0), (~0, ~0 - 1))))
        }
    }

    private func testIsLessThan<Scalar>(forType: Scalar.Type) where Scalar: FixedWidthInteger {
        CTAssertFalse(Complex<Scalar>.isLess(((1, 1), (1, 1)), than: ((1, 1), (1, 1))))
        CTAssertTrue(Complex<Scalar>.isLess(((0, 1), (1, 1)), than: ((1, 1), (1, 1))))
        CTAssertTrue(Complex<Scalar>.isLess(((1, 0), (1, 1)), than: ((1, 1), (1, 1))))
        CTAssertTrue(Complex<Scalar>.isLess(((1, 1), (0, 1)), than: ((1, 1), (1, 1))))
        CTAssertTrue(Complex<Scalar>.isLess(((1, 1), (1, 0)), than: ((1, 1), (1, 1))))
        CTAssertFalse(Complex<Scalar>.isLess(((1, 1), (1, 1)), than: ((0, 1), (1, 1))))
        CTAssertFalse(Complex<Scalar>.isLess(((1, 1), (1, 1)), than: ((1, 0), (1, 1))))
        CTAssertFalse(Complex<Scalar>.isLess(((1, 1), (1, 1)), than: ((1, 1), (0, 1))))
        CTAssertFalse(Complex<Scalar>.isLess(((1, 1), (1, 1)), than: ((1, 1), (1, 0))))

        if Scalar.isSigned {
            CTAssertFalse(Complex<Scalar>.isLess(((~0, ~0), (~0, ~0)), than: ((~0, ~0), (~0, ~0))))
            CTAssertTrue(Complex<Scalar>.isLess(((~0 - 1, ~0), (~0, ~0)), than: ((~0, ~0), (~0, ~0))))
            CTAssertTrue(Complex<Scalar>.isLess(((~0, ~0 - 1), (~0, ~0)), than: ((~0, ~0), (~0, ~0))))
            CTAssertTrue(Complex<Scalar>.isLess(((~0, ~0), (~0 - 1, ~0)), than: ((~0, ~0), (~0, ~0))))
            CTAssertTrue(Complex<Scalar>.isLess(((~0, ~0), (~0, ~0 - 1)), than: ((~0, ~0), (~0, ~0))))
            CTAssertFalse(Complex<Scalar>.isLess(((~0, ~0), (~0, ~0)), than: ((~0 - 1, ~0), (~0, ~0))))
            CTAssertFalse(Complex<Scalar>.isLess(((~0, ~0), (~0, ~0)), than: ((~0, ~0 - 1), (~0, ~0))))
            CTAssertFalse(Complex<Scalar>.isLess(((~0, ~0), (~0, ~0)), than: ((~0, ~0), (~0 - 1, ~0))))
            CTAssertFalse(Complex<Scalar>.isLess(((~0, ~0), (~0, ~0)), than: ((~0, ~0), (~0, ~0 - 1))))
        }
    }

    private func testIsPowerOfTwo<Scalar>(forType: Scalar.Type) where Scalar: FixedWidthInteger {
        var value: Complex<Scalar>.ExtendedScalar = ((0, 0), (0, 1))
        let extendedBitWidth = Scalar.bitWidth * 4

        for i in 0 ..< extendedBitWidth {
            let result = Complex<Scalar>.isPowerOfTwo(value)
            value = Complex<Scalar>.leftShift(value, by: 1)

            CTAssertTrue(result.isPowerOfTwo)
            CTAssertEqual(result.power, Scalar.Magnitude(i))
        }

        value = ((0, 0), (0, 2))

        for _ in 1 ..< extendedBitWidth {
            var testValue = value
            testValue.low.low |= 1

            let result = Complex<Scalar>.isPowerOfTwo(testValue)
            value = Complex<Scalar>.leftShift(value, by: 1)

            CTAssertFalse(result.isPowerOfTwo)
            CTAssertEqual(result.power, 0)
        }
    }

    private func testLeadingZeroBitCount<Scalar>(forType: Scalar.Type) where Scalar: FixedWidthInteger {
        var value: Complex<Scalar>.ExtendedScalar = ((~0, ~0), (~0, ~0))
        let extendedBitWidth = Scalar.bitWidth * 4

        for i in 0 ..< extendedBitWidth {
            CTAssertEqual(Complex<Scalar>.leadingZeroBitCount(of: value), i)
            value = Complex<Scalar>.rightShift(value, by: 1)
        }

        value = ((0, 0), (0, 1))

        for i in 1 ..< extendedBitWidth {
            CTAssertEqual(Complex<Scalar>.leadingZeroBitCount(of: value), extendedBitWidth - i)
            value = Complex<Scalar>.leftShift(value, by: 1)
        }
    }

    private func testTruncateExtendedScalars<Scalar>(forType: Scalar.Type) where Scalar: FixedWidthInteger {
        let randomValue: () -> Scalar.Magnitude = { .random(in: .min ... .max) }

        var result = Complex<Scalar>.truncateAndReportOverflow(((0, 0), (0, 0)))
        CTAssertEqual(result.partialValue, 0)
        CTAssertFalse(result.overflow)

        result = Complex<Scalar>.truncateAndReportOverflow(((0, 0), (0, Scalar.Magnitude(truncatingIfNeeded: Scalar.max))))
        CTAssertEqual(result.partialValue, Scalar.max)
        CTAssertFalse(result.overflow)

        result = Complex<Scalar>.truncateAndReportOverflow(((0, 0), (0, Scalar.Magnitude(truncatingIfNeeded: Scalar.min))))
        CTAssertEqual(result.partialValue, Scalar.min)
        CTAssertEqual(result.overflow, Scalar.isSigned)

        var value: Scalar.Magnitude
        for _ in 0 ..< 64 {
            value = randomValue()
            result = Complex<Scalar>.truncateAndReportOverflow(((0, 0), (1, value)))
            CTAssertEqual(result.partialValue, Scalar(truncatingIfNeeded: value))
            CTAssertTrue(result.overflow)

            value = randomValue()
            result = Complex<Scalar>.truncateAndReportOverflow(((0, 1), (0, value)))
            CTAssertEqual(result.partialValue, Scalar(truncatingIfNeeded: value))
            CTAssertTrue(result.overflow)

            value = randomValue()
            result = Complex<Scalar>.truncateAndReportOverflow(((1, 0), (0, value)))
            CTAssertEqual(result.partialValue, Scalar(truncatingIfNeeded: value))
            CTAssertTrue(result.overflow)
        }

        if Scalar.isSigned {
            value = randomValue() | (~Scalar.Magnitude(0) &<< (Scalar.bitWidth - 1)) // random value with the MSB set to 1
            result = Complex<Scalar>.truncateAndReportOverflow(((0, 0), (0, value)))
            CTAssertEqual(result.partialValue, Scalar(truncatingIfNeeded: value))
            CTAssertTrue(result.overflow)

            value = Scalar.Magnitude.max &>> 1
            result = Complex<Scalar>.truncateAndReportOverflow(((~0, ~0), (~0, value)))
            CTAssertEqual(result.partialValue, Scalar(truncatingIfNeeded: value))
            CTAssertTrue(result.overflow)

            value = randomValue()
            result = Complex<Scalar>.truncateAndReportOverflow(((~0, ~0), (~0 - 1, value)))
            CTAssertEqual(result.partialValue, Scalar(truncatingIfNeeded: value))
            CTAssertTrue(result.overflow)

            value = randomValue()
            result = Complex<Scalar>.truncateAndReportOverflow(((~0, ~0 - 1), (~0, value)))
            CTAssertEqual(result.partialValue, Scalar(truncatingIfNeeded: value))
            CTAssertTrue(result.overflow)

            value = randomValue()
            result = Complex<Scalar>.truncateAndReportOverflow(((~0 - 1, ~0), (~0, value)))
            CTAssertEqual(result.partialValue, Scalar(truncatingIfNeeded: value))
            CTAssertTrue(result.overflow)

            result = Complex<Scalar>.truncateAndReportOverflow(((~0, ~0), (~0, 1 << (Scalar.bitWidth - 1))))
            CTAssertEqual(result.partialValue, Scalar.min)
            CTAssertFalse(result.overflow)
        }
    }

    private func testSlowpathMultiply<Scalar>(forType: Scalar.Type) where Scalar: FixedWidthInteger {
        let value: Complex<Scalar>.ExtendedScalar = ((1, 1), (1, 1))
        let two: Complex<Scalar>.ExtendedScalar = ((0, 0), (0, 2))

        var result = Complex<Scalar>.slowpathMultiply(two, value)
        CTAssertEqual(result, Complex<Scalar>.leftShift(value, by: 1))

        result = Complex<Scalar>.slowpathMultiply(value, two)
        CTAssertEqual(result, Complex<Scalar>.leftShift(value, by: 1))

        result = Complex<Scalar>.slowpathMultiply(Scalar(2), value)
        CTAssertEqual(result, Complex<Scalar>.leftShift(value, by: 1))

        result = Complex<Scalar>.slowpathMultiply(Scalar(0), value)
        CTAssertEqual(result, ((0, 0), (0, 0)))

        result = Complex<Scalar>.slowpathMultiply(((0, 0), (0, 0)), value)
        CTAssertEqual(result, ((0, 0), (0, 0)))

        result = Complex<Scalar>.slowpathMultiply(Scalar(1), value)
        CTAssertEqual(result, value)

        result = Complex<Scalar>.slowpathMultiply(((0, 0), (0, 1)), value)
        CTAssertEqual(result, value)

        result = Complex<Scalar>.slowpathMultiply(value, ((0, 0), (0, 1)))
        CTAssertEqual(result, value)

        result = Complex<Scalar>.slowpathMultiply(value, ((0, 0), (0, ~0)))
        CTAssertEqual(result, ((~0, ~0), (~0, ~0)))

        result = Complex<Scalar>.slowpathMultiply(((0, 0), (0, ~0)), value)
        CTAssertEqual(result, ((~0, ~0), (~0, ~0)))

        if Scalar.isSigned {
            result = Complex<Scalar>.slowpathMultiply(Scalar(-2), value)
            CTAssertEqual(result, Complex<Scalar>.twosComplement(of: Complex<Scalar>.leftShift(value, by: 1)))

            result = Complex<Scalar>.slowpathMultiply(Complex<Scalar>.twosComplement(of: two), value)
            CTAssertEqual(result, Complex<Scalar>.twosComplement(of: Complex<Scalar>.leftShift(value, by: 1)))

            result = Complex<Scalar>.slowpathMultiply(value, Complex<Scalar>.twosComplement(of: two))
            CTAssertEqual(result, Complex<Scalar>.twosComplement(of: Complex<Scalar>.leftShift(value, by: 1)))

            result = Complex<Scalar>.slowpathMultiply(Scalar(-1), value)
            CTAssertEqual(result, Complex<Scalar>.twosComplement(of: value))

            result = Complex<Scalar>.slowpathMultiply(((~0, ~0), (~0, ~0)), value)
            CTAssertEqual(result, Complex<Scalar>.twosComplement(of: value))

            result = Complex<Scalar>.slowpathMultiply(value, ((~0, ~0), (~0, ~0)))
            CTAssertEqual(result, Complex<Scalar>.twosComplement(of: value))

            result = Complex<Scalar>.slowpathMultiply(Scalar(-1), Complex<Scalar>.twosComplement(of: value))
            CTAssertEqual(result, value)

            result = Complex<Scalar>.slowpathMultiply(((~0, ~0), (~0, ~0)), Complex<Scalar>.twosComplement(of: value))
            CTAssertEqual(result, value)

            result = Complex<Scalar>.slowpathMultiply(Complex<Scalar>.twosComplement(of: value), ((~0, ~0), (~0, ~0)))
            CTAssertEqual(result, value)
        }
    }

    private func testSlowpathDivide<Scalar>(forType: Scalar.Type) where Scalar: FixedWidthInteger {
        var result = Complex<Scalar>.slowpathDivide(((0, 0), (0, 100)), ((0, 0), (0, 10))) // 100 / 10 = 10 r0
        CTAssertEqual(result.quotient, ((0, 0), (0, 10)))
        CTAssertEqual(result.remainder, ((0, 0), (0, 0)))

        result = Complex<Scalar>.slowpathDivide(((0, 0), (0, 101)), ((0, 0), (0, 10))) // 101 / 10 = 10 r1
        CTAssertEqual(result.quotient, ((0, 0), (0, 10)))
        CTAssertEqual(result.remainder, ((0, 0), (0, 1)))

        result = Complex<Scalar>.slowpathDivide(((0, 0), (0, 109)), ((0, 0), (0, 10))) // 109 / 10 = 10 r9
        CTAssertEqual(result.quotient, ((0, 0), (0, 10)))
        CTAssertEqual(result.remainder, ((0, 0), (0, 9)))

        result = Complex<Scalar>.slowpathDivide(((0, 0), (0, 100)), ((0, 0), (0, 2))) // 100 / 2 = 50 r0
        CTAssertEqual(result.quotient, ((0, 0), (0, 50)))
        CTAssertEqual(result.remainder, ((0, 0), (0, 0)))

        result = Complex<Scalar>.slowpathDivide(((0, 0), (0, 101)), ((0, 0), (0, 2))) // 101 / 2 = 50 r1
        CTAssertEqual(result.quotient, ((0, 0), (0, 50)))
        CTAssertEqual(result.remainder, ((0, 0), (0, 1)))

        result = Complex<Scalar>.slowpathDivide(((0, 0), (0, 109)), ((0, 0), (0, 2))) // 101 / 2 = 54 r1
        CTAssertEqual(result.quotient, ((0, 0), (0, 54)))
        CTAssertEqual(result.remainder, ((0, 0), (0, 1)))

        result = Complex<Scalar>.slowpathDivide(((0, 0), (0, 109)), ((0, 0), (0, 2))) // 101 / 2 = 54 r1
        CTAssertEqual(result.quotient, ((0, 0), (0, 54)))
        CTAssertEqual(result.remainder, ((0, 0), (0, 1)))

        result = Complex<Scalar>.slowpathDivide(((0, ~0), (~0, ~0)), ((0, 0), (0, ~0)))
        CTAssertEqual(result.quotient, ((0, 1), (1, 1)))
        CTAssertEqual(result.remainder, ((0, 0), (0, 0)))

        result = Complex<Scalar>.slowpathDivide(((0, 0), (0, ~0)), ((0, 0), (~0, ~0)))
        CTAssertEqual(result.quotient, ((0, 0), (0, 0)))
        CTAssertEqual(result.remainder, ((0, 0), (0, ~0)))

        if Scalar.isSigned {
            testSlowpathDivideSigned(forType: Scalar.self)
        }
    }

    private func testSlowpathDivideSigned<Scalar>(forType: Scalar.Type) where Scalar: FixedWidthInteger {
        var result = Complex<Scalar>.slowpathDivide(Complex<Scalar>.twosComplement(of: ((0, 0), (0, 100))), ((0, 0), (0, 10))) // -100 / 10 = -10 r0
        CTAssertEqual(result.quotient, Complex<Scalar>.twosComplement(of: ((0, 0), (0, 10))))
        CTAssertEqual(result.remainder, ((0, 0), (0, 0)))

        result = Complex<Scalar>.slowpathDivide(Complex<Scalar>.twosComplement(of: ((0, 0), (0, 100))), Complex<Scalar>.twosComplement(of: ((0, 0), (0, 10)))) // -100 / -10 = 10 r0
        CTAssertEqual(result.quotient, ((0, 0), (0, 10)))
        CTAssertEqual(result.remainder, ((0, 0), (0, 0)))

        result = Complex<Scalar>.slowpathDivide(((0, 0), (0, 100)), Complex<Scalar>.twosComplement(of: ((0, 0), (0, 10)))) // 100 / -10 = -10 r0
        CTAssertEqual(result.quotient, Complex<Scalar>.twosComplement(of: ((0, 0), (0, 10))))
        CTAssertEqual(result.remainder, ((0, 0), (0, 0)))

        //

        result = Complex<Scalar>.slowpathDivide(Complex<Scalar>.twosComplement(of: ((0, 0), (0, 101))), ((0, 0), (0, 10))) // -101 / 10 = -10 r-1
        CTAssertEqual(result.quotient, Complex<Scalar>.twosComplement(of: ((0, 0), (0, 10))))
        CTAssertEqual(result.remainder, ((~0, ~0), (~0, ~0)))

        result = Complex<Scalar>.slowpathDivide(Complex<Scalar>.twosComplement(of: ((0, 0), (0, 101))), Complex<Scalar>.twosComplement(of: ((0, 0), (0, 10)))) // -101 / -10 = 10 r-1
        CTAssertEqual(result.quotient, ((0, 0), (0, 10)))
        CTAssertEqual(result.remainder, ((~0, ~0), (~0, ~0)))

        result = Complex<Scalar>.slowpathDivide(((0, 0), (0, 101)), Complex<Scalar>.twosComplement(of: ((0, 0), (0, 10)))) // 101 / -10 = -10 r1
        CTAssertEqual(result.quotient, Complex<Scalar>.twosComplement(of: ((0, 0), (0, 10))))
        CTAssertEqual(result.remainder, ((0, 0), (0, 1)))

        //
        result = Complex<Scalar>.slowpathDivide(Complex<Scalar>.twosComplement(of: ((0, 0), (0, 109))), ((0, 0), (0, 10))) // -109 / 10 = -10 r-9
        CTAssertEqual(result.quotient, Complex<Scalar>.twosComplement(of: ((0, 0), (0, 10))))
        CTAssertEqual(result.remainder, Complex<Scalar>.twosComplement(of: ((0, 0), (0, 9))))

        result = Complex<Scalar>.slowpathDivide(Complex<Scalar>.twosComplement(of: ((0, 0), (0, 109))), Complex<Scalar>.twosComplement(of: ((0, 0), (0, 10)))) // -109 / -10 = 10 r-9
        CTAssertEqual(result.quotient, ((0, 0), (0, 10)))
        CTAssertEqual(result.remainder, Complex<Scalar>.twosComplement(of: ((0, 0), (0, 9))))

        result = Complex<Scalar>.slowpathDivide(((0, 0), (0, 109)), Complex<Scalar>.twosComplement(of: ((0, 0), (0, 10)))) // 109 / -10 = -10 r9
        CTAssertEqual(result.quotient, Complex<Scalar>.twosComplement(of: ((0, 0), (0, 10))))
        CTAssertEqual(result.remainder, ((0, 0), (0, 9)))

        //

        result = Complex<Scalar>.slowpathDivide(Complex<Scalar>.twosComplement(of: ((0, 0), (0, 100))), ((0, 0), (0, 2))) // -100 / 2 = -50 r0
        CTAssertEqual(result.quotient, Complex<Scalar>.twosComplement(of: ((0, 0), (0, 50))))
        CTAssertEqual(result.remainder, ((0, 0), (0, 0)))

        result = Complex<Scalar>.slowpathDivide(((0, 0), (0, 100)), ((0, 0), (0, 2))) // -100 / -2 = 50 r0
        CTAssertEqual(result.quotient, ((0, 0), (0, 50)))
        CTAssertEqual(result.remainder, ((0, 0), (0, 0)))

        result = Complex<Scalar>.slowpathDivide(((0, 0), (0, 100)), Complex<Scalar>.twosComplement(of: ((0, 0), (0, 2)))) // 100 / -2 = -50 r0
        CTAssertEqual(result.quotient, Complex<Scalar>.twosComplement(of: ((0, 0), (0, 50))))
        CTAssertEqual(result.remainder, ((0, 0), (0, 0)))

        //

        result = Complex<Scalar>.slowpathDivide(Complex<Scalar>.twosComplement(of: ((0, 0), (0, 101))), ((0, 0), (0, 2))) // -101 / 2 = -50 r-1
        CTAssertEqual(result.quotient, Complex<Scalar>.twosComplement(of: ((0, 0), (0, 50))))
        CTAssertEqual(result.remainder, ((~0, ~0), (~0, ~0)))

        result = Complex<Scalar>.slowpathDivide(Complex<Scalar>.twosComplement(of: ((0, 0), (0, 101))), Complex<Scalar>.twosComplement(of: ((0, 0), (0, 2)))) // -101 / -2 = 50 r-1
        CTAssertEqual(result.quotient, ((0, 0), (0, 50)))
        CTAssertEqual(result.remainder, ((~0, ~0), (~0, ~0)))

        result = Complex<Scalar>.slowpathDivide(((0, 0), (0, 101)), Complex<Scalar>.twosComplement(of: ((0, 0), (0, 2)))) // 101 / -2 = -50 r1
        CTAssertEqual(result.quotient, Complex<Scalar>.twosComplement(of: ((0, 0), (0, 50))))
        CTAssertEqual(result.remainder, ((0, 0), (0, 1)))

        //

        result = Complex<Scalar>.slowpathDivide(Complex<Scalar>.twosComplement(of: ((0, 0), (0, ~0))), ((0, 0), (~0, ~0)))
        CTAssertEqual(result.quotient, ((0, 0), (0, 0)))
        CTAssertEqual(result.remainder, Complex<Scalar>.twosComplement(of: ((0, 0), (0, ~0))))

        result = Complex<Scalar>.slowpathDivide(Complex<Scalar>.twosComplement(of: ((0, 0), (0, ~0))), Complex<Scalar>.twosComplement(of: ((0, 0), (~0, ~0))))
        CTAssertEqual(result.quotient, ((0, 0), (0, 0)))
        CTAssertEqual(result.remainder, Complex<Scalar>.twosComplement(of: ((0, 0), (0, ~0))))

        result = Complex<Scalar>.slowpathDivide(((0, 0), (0, ~0)), Complex<Scalar>.twosComplement(of: ((0, 0), (~0, ~0))))
        CTAssertEqual(result.quotient, ((0, 0), (0, 0)))
        CTAssertEqual(result.remainder, ((0, 0), (0, ~0)))
    }
}
