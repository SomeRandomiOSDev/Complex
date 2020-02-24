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
}
