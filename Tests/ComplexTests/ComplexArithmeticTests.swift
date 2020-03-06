//
//  ComplexArithmeticTests.swift
//  Complex
//
//  Copyright © 2020 SomeRandomiOSDev. All rights reserved.
//

@testable import Complex
import Half
import XCTest

class ComplexArithmeticTests: XCTestCase {

    // MARK: Test Methods

    func testAdditionWithZero() {
        testAdditionWithZero(Complex(real: Int8(1), imaginary: Int8(-4)))
        testAdditionWithZero(Complex(real: Int16(1), imaginary: Int16(-4)))
        testAdditionWithZero(Complex(real: Int32(1), imaginary: Int32(-4)))
        testAdditionWithZero(Complex(real: Int64(1), imaginary: Int64(-4)))
        testAdditionWithZero(Complex(real: Int(1), imaginary: Int(-4)))
        testAdditionWithZero(Complex(real: UInt8(7), imaginary: UInt8(13)))
        testAdditionWithZero(Complex(real: UInt16(7), imaginary: UInt16(13)))
        testAdditionWithZero(Complex(real: UInt32(7), imaginary: UInt32(13)))
        testAdditionWithZero(Complex(real: UInt64(7), imaginary: UInt64(13)))
        testAdditionWithZero(Complex(real: UInt(7), imaginary: UInt(13)))
        testAdditionWithZero(Complex(real: Half(1.2), imaginary: Half(-7.4)))
        testAdditionWithZero(Complex(real: Float(-0.123), imaginary: Float(3.0)))
        testAdditionWithZero(Complex(real: Double(8.9), imaginary: Double(10.8)))
        testAdditionWithZero(Complex(real: Complex.LargestFloatType(11.1), imaginary: Complex.LargestFloatType(-0.9)))
    }

    func testSubtractionWithZero() {
        testSubtractionWithZero(Complex(real: Int8(1), imaginary: Int8(-4)))
        testSubtractionWithZero(Complex(real: Int16(1), imaginary: Int16(-4)))
        testSubtractionWithZero(Complex(real: Int32(1), imaginary: Int32(-4)))
        testSubtractionWithZero(Complex(real: Int64(1), imaginary: Int64(-4)))
        testSubtractionWithZero(Complex(real: Int(1), imaginary: Int(-4)))
        testSubtractionWithZero(Complex(real: UInt8(7), imaginary: UInt8(13)))
        testSubtractionWithZero(Complex(real: UInt16(7), imaginary: UInt16(13)))
        testSubtractionWithZero(Complex(real: UInt32(7), imaginary: UInt32(13)))
        testSubtractionWithZero(Complex(real: UInt64(7), imaginary: UInt64(13)))
        testSubtractionWithZero(Complex(real: UInt(7), imaginary: UInt(13)))
        testSubtractionWithZero(Complex(real: Half(1.2), imaginary: Half(-7.4)))
        testSubtractionWithZero(Complex(real: Float(-0.123), imaginary: Float(3.0)))
        testSubtractionWithZero(Complex(real: Double(8.9), imaginary: Double(10.8)))
        testSubtractionWithZero(Complex(real: Complex.LargestFloatType(11.1), imaginary: Complex.LargestFloatType(-0.9)))
    }

    func testMultiplicationWithZero() {
        testMultiplicationWithZero(Complex(real: Int8(1), imaginary: Int8(-4)))
        testMultiplicationWithZero(Complex(real: Int16(1), imaginary: Int16(-4)))
        testMultiplicationWithZero(Complex(real: Int32(1), imaginary: Int32(-4)))
        testMultiplicationWithZero(Complex(real: Int64(1), imaginary: Int64(-4)))
        testMultiplicationWithZero(Complex(real: Int(1), imaginary: Int(-4)))
        testMultiplicationWithZero(Complex(real: UInt8(7), imaginary: UInt8(13)))
        testMultiplicationWithZero(Complex(real: UInt16(7), imaginary: UInt16(13)))
        testMultiplicationWithZero(Complex(real: UInt32(7), imaginary: UInt32(13)))
        testMultiplicationWithZero(Complex(real: UInt64(7), imaginary: UInt64(13)))
        testMultiplicationWithZero(Complex(real: UInt(7), imaginary: UInt(13)))
        testMultiplicationWithZero(Complex(real: Half(1.2), imaginary: Half(-7.4)))
        testMultiplicationWithZero(Complex(real: Float(-0.123), imaginary: Float(3.0)))
        testMultiplicationWithZero(Complex(real: Double(8.9), imaginary: Double(10.8)))
        testMultiplicationWithZero(Complex(real: Complex.LargestFloatType(11.1), imaginary: Complex.LargestFloatType(-0.9)))
    }

    func testAddition() {
        testAddition(Complex<Int8>(real: 1, imaginary: 2), Complex<Int8>(real: 3, imaginary: 4), Complex<Int8>(real: 4, imaginary: 6))
        testAddition(Complex<Int16>(real: 1, imaginary: 2), Complex<Int16>(real: 3, imaginary: 4), Complex<Int16>(real: 4, imaginary: 6))
        testAddition(Complex<Int32>(real: 1, imaginary: 2), Complex<Int32>(real: 3, imaginary: 4), Complex<Int32>(real: 4, imaginary: 6))
        testAddition(Complex<Int64>(real: 1, imaginary: 2), Complex<Int64>(real: 3, imaginary: 4), Complex<Int64>(real: 4, imaginary: 6))
        testAddition(Complex<Int>(real: 1, imaginary: 2), Complex<Int>(real: 3, imaginary: 4), Complex<Int>(real: 4, imaginary: 6))
        testAddition(Complex<UInt8>(real: 1, imaginary: 2), Complex<UInt8>(real: 3, imaginary: 4), Complex<UInt8>(real: 4, imaginary: 6))
        testAddition(Complex<UInt16>(real: 1, imaginary: 2), Complex<UInt16>(real: 3, imaginary: 4), Complex<UInt16>(real: 4, imaginary: 6))
        testAddition(Complex<UInt32>(real: 1, imaginary: 2), Complex<UInt32>(real: 3, imaginary: 4), Complex<UInt32>(real: 4, imaginary: 6))
        testAddition(Complex<UInt64>(real: 1, imaginary: 2), Complex<UInt64>(real: 3, imaginary: 4), Complex<UInt64>(real: 4, imaginary: 6))
        testAddition(Complex<UInt>(real: 1, imaginary: 2), Complex<UInt>(real: 3, imaginary: 4), Complex<UInt>(real: 4, imaginary: 6))
        testAddition(Complex<Half>(real: 1.0, imaginary: 2.0), Complex<Half>(real: 3.0, imaginary: 4.0), Complex<Half>(real: 4.0, imaginary: 6.0))
        testAddition(Complex<Float>(real: 1.0, imaginary: 2.0), Complex<Float>(real: 3.0, imaginary: 4.0), Complex<Float>(real: 4.0, imaginary: 6.0))
        testAddition(Complex<Double>(real: 1.0, imaginary: 2.0), Complex<Double>(real: 3.0, imaginary: 4.0), Complex<Double>(real: 4.0, imaginary: 6.0))
        testAddition(Complex<Complex.LargestFloatType>(real: 1.0, imaginary: 2.0), Complex<Complex.LargestFloatType>(real: 3.0, imaginary: 4.0), Complex<Complex.LargestFloatType>(real: 4.0, imaginary: 6.0))

        testAddition(Complex<Int8>(real: 1, imaginary: 2), 3, Complex<Int8>(real: 4, imaginary: 2))
        testAddition(Complex<Int16>(real: 1, imaginary: 2), 3, Complex<Int16>(real: 4, imaginary: 2))
        testAddition(Complex<Int32>(real: 1, imaginary: 2), 3, Complex<Int32>(real: 4, imaginary: 2))
        testAddition(Complex<Int64>(real: 1, imaginary: 2), 3, Complex<Int64>(real: 4, imaginary: 2))
        testAddition(Complex<Int>(real: 1, imaginary: 2), 3, Complex<Int>(real: 4, imaginary: 2))
        testAddition(Complex<UInt8>(real: 1, imaginary: 2), 3, Complex<UInt8>(real: 4, imaginary: 2))
        testAddition(Complex<UInt16>(real: 1, imaginary: 2), 3, Complex<UInt16>(real: 4, imaginary: 2))
        testAddition(Complex<UInt32>(real: 1, imaginary: 2), 3, Complex<UInt32>(real: 4, imaginary: 2))
        testAddition(Complex<UInt64>(real: 1, imaginary: 2), 3, Complex<UInt64>(real: 4, imaginary: 2))
        testAddition(Complex<UInt>(real: 1, imaginary: 2), 3, Complex<UInt>(real: 4, imaginary: 2))
        testAddition(Complex<Half>(real: 1.0, imaginary: 2.0), 3.0, Complex<Half>(real: 4.0, imaginary: 2.0))
        testAddition(Complex<Float>(real: 1.0, imaginary: 2.0), 3.0, Complex<Float>(real: 4.0, imaginary: 2.0))
        testAddition(Complex<Double>(real: 1.0, imaginary: 2.0), 3.0, Complex<Double>(real: 4.0, imaginary: 2.0))
        testAddition(Complex<Complex.LargestFloatType>(real: 1.0, imaginary: 2.0), 3.0, Complex<Complex.LargestFloatType>(real: 4.0, imaginary: 2.0))
    }

    func testAdditionIgnoringOverflow() {
        testAdditionIgnoringOverflow(forType: Int8.self)
        testAdditionIgnoringOverflow(forType: Int16.self)
        testAdditionIgnoringOverflow(forType: Int32.self)
        testAdditionIgnoringOverflow(forType: Int64.self)
        testAdditionIgnoringOverflow(forType: Int.self)
        testAdditionIgnoringOverflow(forType: UInt8.self)
        testAdditionIgnoringOverflow(forType: UInt16.self)
        testAdditionIgnoringOverflow(forType: UInt32.self)
        testAdditionIgnoringOverflow(forType: UInt64.self)
        testAdditionIgnoringOverflow(forType: UInt.self)
    }

    func testSubtraction() {
        testSubtraction(Complex<Int8>(real: 3, imaginary: 4), Complex<Int8>(real: 1, imaginary: 2), Complex<Int8>(real: 2, imaginary: 2))
        testSubtraction(Complex<Int16>(real: 3, imaginary: 4), Complex<Int16>(real: 1, imaginary: 2), Complex<Int16>(real: 2, imaginary: 2))
        testSubtraction(Complex<Int32>(real: 3, imaginary: 4), Complex<Int32>(real: 1, imaginary: 2), Complex<Int32>(real: 2, imaginary: 2))
        testSubtraction(Complex<Int64>(real: 3, imaginary: 4), Complex<Int64>(real: 1, imaginary: 2), Complex<Int64>(real: 2, imaginary: 2))
        testSubtraction(Complex<Int>(real: 3, imaginary: 4), Complex<Int>(real: 1, imaginary: 2), Complex<Int>(real: 2, imaginary: 2))
        testSubtraction(Complex<UInt8>(real: 3, imaginary: 4), Complex<UInt8>(real: 1, imaginary: 2), Complex<UInt8>(real: 2, imaginary: 2))
        testSubtraction(Complex<UInt16>(real: 3, imaginary: 4), Complex<UInt16>(real: 1, imaginary: 2), Complex<UInt16>(real: 2, imaginary: 2))
        testSubtraction(Complex<UInt32>(real: 3, imaginary: 4), Complex<UInt32>(real: 1, imaginary: 2), Complex<UInt32>(real: 2, imaginary: 2))
        testSubtraction(Complex<UInt64>(real: 3, imaginary: 4), Complex<UInt64>(real: 1, imaginary: 2), Complex<UInt64>(real: 2, imaginary: 2))
        testSubtraction(Complex<UInt>(real: 3, imaginary: 4), Complex<UInt>(real: 1, imaginary: 2), Complex<UInt>(real: 2, imaginary: 2))
        testSubtraction(Complex<Half>(real: 3.0, imaginary: 4.0), Complex<Half>(real: 1.0, imaginary: 2.0), Complex<Half>(real: 2.0, imaginary: 2.0))
        testSubtraction(Complex<Float>(real: 3.0, imaginary: 4.0), Complex<Float>(real: 1.0, imaginary: 2.0), Complex<Float>(real: 2.0, imaginary: 2.0))
        testSubtraction(Complex<Double>(real: 3.0, imaginary: 4.0), Complex<Double>(real: 1.0, imaginary: 2.0), Complex<Double>(real: 2.0, imaginary: 2.0))
        testSubtraction(Complex<Complex.LargestFloatType>(real: 3.0, imaginary: 4.0), Complex<Complex.LargestFloatType>(real: 1.0, imaginary: 2.0), Complex<Complex.LargestFloatType>(real: 2.0, imaginary: 2.0))

        testSubtraction(Complex<Int8>(real: 3, imaginary: 4), 1, Complex<Int8>(real: 2, imaginary: 4))
        testSubtraction(Complex<Int16>(real: 3, imaginary: 4), 1, Complex<Int16>(real: 2, imaginary: 4))
        testSubtraction(Complex<Int32>(real: 3, imaginary: 4), 1, Complex<Int32>(real: 2, imaginary: 4))
        testSubtraction(Complex<Int64>(real: 3, imaginary: 4), 1, Complex<Int64>(real: 2, imaginary: 4))
        testSubtraction(Complex<Int>(real: 3, imaginary: 4), 1, Complex<Int>(real: 2, imaginary: 4))
        testSubtraction(Complex<UInt8>(real: 3, imaginary: 4), 1, Complex<UInt8>(real: 2, imaginary: 4))
        testSubtraction(Complex<UInt16>(real: 3, imaginary: 4), 1, Complex<UInt16>(real: 2, imaginary: 4))
        testSubtraction(Complex<UInt32>(real: 3, imaginary: 4), 1, Complex<UInt32>(real: 2, imaginary: 4))
        testSubtraction(Complex<UInt64>(real: 3, imaginary: 4), 1, Complex<UInt64>(real: 2, imaginary: 4))
        testSubtraction(Complex<UInt>(real: 3, imaginary: 4), 1, Complex<UInt>(real: 2, imaginary: 4))
        testSubtraction(Complex<Half>(real: 3.0, imaginary: 4.0), 1.0, Complex<Half>(real: 2.0, imaginary: 4.0))
        testSubtraction(Complex<Float>(real: 3.0, imaginary: 4.0), 1.0, Complex<Float>(real: 2.0, imaginary: 4.0))
        testSubtraction(Complex<Double>(real: 3.0, imaginary: 4.0), 1.0, Complex<Double>(real: 2.0, imaginary: 4.0))
        testSubtraction(Complex<Complex.LargestFloatType>(real: 3.0, imaginary: 4.0), 1.0, Complex<Complex.LargestFloatType>(real: 2.0, imaginary: 4.0))
    }

    func testSubtractionIgnoringOverflow() {
        testSubtractionIgnoringOverflow(forType: Int8.self)
        testSubtractionIgnoringOverflow(forType: Int16.self)
        testSubtractionIgnoringOverflow(forType: Int32.self)
        testSubtractionIgnoringOverflow(forType: Int64.self)
        testSubtractionIgnoringOverflow(forType: Int.self)
        testSubtractionIgnoringOverflow(forType: UInt8.self)
        testSubtractionIgnoringOverflow(forType: UInt16.self)
        testSubtractionIgnoringOverflow(forType: UInt32.self)
        testSubtractionIgnoringOverflow(forType: UInt64.self)
        testSubtractionIgnoringOverflow(forType: UInt.self)
    }

    func testMultiplication() {
        testMultiplication(Complex<Int8>(real: 3, imaginary: 4), Complex<Int8>(real: 1, imaginary: 2), Complex<Int8>(real: -5, imaginary: 10))
        testMultiplication(Complex<Int16>(real: 3, imaginary: 4), Complex<Int16>(real: 1, imaginary: 2), Complex<Int16>(real: -5, imaginary: 10))
        testMultiplication(Complex<Int32>(real: 3, imaginary: 4), Complex<Int32>(real: 1, imaginary: 2), Complex<Int32>(real: -5, imaginary: 10))
        testMultiplication(Complex<Int64>(real: 3, imaginary: 4), Complex<Int64>(real: 1, imaginary: 2), Complex<Int64>(real: -5, imaginary: 10))
        testMultiplication(Complex<Int>(real: 3, imaginary: 4), Complex<Int>(real: 1, imaginary: 2), Complex<Int>(real: -5, imaginary: 10))
        testMultiplication(Complex<UInt8>(real: 4, imaginary: 3), Complex<UInt8>(real: 2, imaginary: 1), Complex<UInt8>(real: 5, imaginary: 10))
        testMultiplication(Complex<UInt16>(real: 4, imaginary: 3), Complex<UInt16>(real: 2, imaginary: 1), Complex<UInt16>(real: 5, imaginary: 10))
        testMultiplication(Complex<UInt32>(real: 4, imaginary: 3), Complex<UInt32>(real: 2, imaginary: 1), Complex<UInt32>(real: 5, imaginary: 10))
        testMultiplication(Complex<UInt64>(real: 4, imaginary: 3), Complex<UInt64>(real: 2, imaginary: 1), Complex<UInt64>(real: 5, imaginary: 10))
        testMultiplication(Complex<UInt>(real: 4, imaginary: 3), Complex<UInt>(real: 2, imaginary: 1), Complex<UInt>(real: 5, imaginary: 10))
        testMultiplication(Complex<Half>(real: 3.0, imaginary: 4.0), Complex<Half>(real: 1.0, imaginary: 2.0), Complex<Half>(real: -5.0, imaginary: 10.0))
        testMultiplication(Complex<Float>(real: 3.0, imaginary: 4.0), Complex<Float>(real: 1.0, imaginary: 2.0), Complex<Float>(real: -5.0, imaginary: 10.0))
        testMultiplication(Complex<Double>(real: 3.0, imaginary: 4.0), Complex<Double>(real: 1.0, imaginary: 2.0), Complex<Double>(real: -5.0, imaginary: 10.0))
        testMultiplication(Complex<Complex.LargestFloatType>(real: 3.0, imaginary: 4.0), Complex<Complex.LargestFloatType>(real: 1.0, imaginary: 2.0), Complex<Complex.LargestFloatType>(real: -5.0, imaginary: 10.0))

        testMultiplication(Complex<Int8>(real: 3, imaginary: 4), 2)
        testMultiplication(Complex<Int16>(real: 3, imaginary: 4), 2)
        testMultiplication(Complex<Int32>(real: 3, imaginary: 4), 2)
        testMultiplication(Complex<Int64>(real: 3, imaginary: 4), 2)
        testMultiplication(Complex<Int>(real: 3, imaginary: 4), 2)
        testMultiplication(Complex<UInt8>(real: 4, imaginary: 3), 2)
        testMultiplication(Complex<UInt16>(real: 4, imaginary: 3), 2)
        testMultiplication(Complex<UInt32>(real: 4, imaginary: 3), 2)
        testMultiplication(Complex<UInt64>(real: 4, imaginary: 3), 2)
        testMultiplication(Complex<UInt>(real: 4, imaginary: 3), 2)
        testMultiplication(Complex<Half>(real: 3.0, imaginary: 4.0), 2.0)
        testMultiplication(Complex<Float>(real: 3.0, imaginary: 4.0), 2.0)
        testMultiplication(Complex<Double>(real: 3.0, imaginary: 4.0), 2.0)
        testMultiplication(Complex<Complex.LargestFloatType>(real: 3.0, imaginary: 4.0), 2.0)
    }

    func testMultiplicationIgnoringOverflow() {
        testMultiplicationIgnoringOverflow(forType: Int8.self)
        testMultiplicationIgnoringOverflow(forType: Int16.self)
        testMultiplicationIgnoringOverflow(forType: Int32.self)
        testMultiplicationIgnoringOverflow(forType: Int64.self)
        testMultiplicationIgnoringOverflow(forType: Int.self)
        testMultiplicationIgnoringOverflow(forType: UInt8.self)
        testMultiplicationIgnoringOverflow(forType: UInt16.self)
        testMultiplicationIgnoringOverflow(forType: UInt32.self)
        testMultiplicationIgnoringOverflow(forType: UInt64.self)
        testMultiplicationIgnoringOverflow(forType: UInt.self)
    }

    func testComponentwiseMultiplication() {
        testComponentwiseMultiplication(Complex<Int8>(real: 3, imaginary: 4), Complex<Int8>(real: 1, imaginary: 2))
        testComponentwiseMultiplication(Complex<Int16>(real: 3, imaginary: 4), Complex<Int16>(real: 1, imaginary: 2))
        testComponentwiseMultiplication(Complex<Int32>(real: 3, imaginary: 4), Complex<Int32>(real: 1, imaginary: 2))
        testComponentwiseMultiplication(Complex<Int64>(real: 3, imaginary: 4), Complex<Int64>(real: 1, imaginary: 2))
        testComponentwiseMultiplication(Complex<Int>(real: 3, imaginary: 4), Complex<Int>(real: 1, imaginary: 2))
        testComponentwiseMultiplication(Complex<UInt8>(real: 3, imaginary: 4), Complex<UInt8>(real: 1, imaginary: 2))
        testComponentwiseMultiplication(Complex<UInt16>(real: 3, imaginary: 4), Complex<UInt16>(real: 1, imaginary: 2))
        testComponentwiseMultiplication(Complex<UInt32>(real: 3, imaginary: 4), Complex<UInt32>(real: 1, imaginary: 2))
        testComponentwiseMultiplication(Complex<UInt64>(real: 3, imaginary: 4), Complex<UInt64>(real: 1, imaginary: 2))
        testComponentwiseMultiplication(Complex<UInt>(real: 3, imaginary: 4), Complex<UInt>(real: 1, imaginary: 2))
        testComponentwiseMultiplication(Complex<Half>(real: 3.0, imaginary: 4.0), Complex<Half>(real: 1.0, imaginary: 2.0))
        testComponentwiseMultiplication(Complex<Float>(real: 3.0, imaginary: 4.0), Complex<Float>(real: 1.0, imaginary: 2.0))
        testComponentwiseMultiplication(Complex<Double>(real: 3.0, imaginary: 4.0), Complex<Double>(real: 1.0, imaginary: 2.0))
        testComponentwiseMultiplication(Complex<Complex.LargestFloatType>(real: 3.0, imaginary: 4.0), Complex<Complex.LargestFloatType>(real: 1.0, imaginary: 2.0))
    }

    func testDivision() {
        testDivision(Complex<Int8>(real: 3, imaginary: 4), Complex<Int8>(real: 2, imaginary: 1), Complex<Int8>(real: 2, imaginary: 1))
        testDivision(Complex<Int16>(real: 3, imaginary: 4), Complex<Int16>(real: 2, imaginary: 1), Complex<Int16>(real: 2, imaginary: 1))
        testDivision(Complex<Int32>(real: 3, imaginary: 4), Complex<Int32>(real: 2, imaginary: 1), Complex<Int32>(real: 2, imaginary: 1))
        testDivision(Complex<Int64>(real: 3, imaginary: 4), Complex<Int64>(real: 2, imaginary: 1), Complex<Int64>(real: 2, imaginary: 1))
        testDivision(Complex<Int>(real: 3, imaginary: 4), Complex<Int>(real: 2, imaginary: 1), Complex<Int>(real: 2, imaginary: 1))
        testDivision(Complex<UInt8>(real: 3, imaginary: 4), Complex<UInt8>(real: 2, imaginary: 1), Complex<UInt8>(real: 2, imaginary: 1))
        testDivision(Complex<UInt16>(real: 3, imaginary: 4), Complex<UInt16>(real: 2, imaginary: 1), Complex<UInt16>(real: 2, imaginary: 1))
        testDivision(Complex<UInt32>(real: 3, imaginary: 4), Complex<UInt32>(real: 2, imaginary: 1), Complex<UInt32>(real: 2, imaginary: 1))
        testDivision(Complex<UInt64>(real: 3, imaginary: 4), Complex<UInt64>(real: 2, imaginary: 1), Complex<UInt64>(real: 2, imaginary: 1))
        testDivision(Complex<UInt>(real: 3, imaginary: 4), Complex<UInt>(real: 2, imaginary: 1), Complex<UInt>(real: 2, imaginary: 1))
        testDivision(Complex<Half>(real: 3.0, imaginary: 4.0), Complex<Half>(real: 1.0, imaginary: 2.0), Complex<Half>(real: 11.0 / 5.0, imaginary: -0.4))
        testDivision(Complex<Float>(real: 3.0, imaginary: 4.0), Complex<Float>(real: 1.0, imaginary: 2.0), Complex<Float>(real: 11.0 / 5.0, imaginary: -0.4))
        testDivision(Complex<Double>(real: 3.0, imaginary: 4.0), Complex<Double>(real: 1.0, imaginary: 2.0), Complex<Double>(real: 11.0 / 5.0, imaginary: -0.4))
        testDivision(Complex<Complex.LargestFloatType>(real: 3.0, imaginary: 4.0), Complex<Complex.LargestFloatType>(real: 1.0, imaginary: 2.0), Complex<Complex.LargestFloatType>(real: 11.0 / 5.0, imaginary: -0.4))

        testDivision(Complex<Int8>(real: 3, imaginary: 4), 2)
        testDivision(Complex<Int16>(real: 3, imaginary: 4), 2)
        testDivision(Complex<Int32>(real: 3, imaginary: 4), 2)
        testDivision(Complex<Int64>(real: 3, imaginary: 4), 2)
        testDivision(Complex<Int>(real: 3, imaginary: 4), 2)
        testDivision(Complex<UInt8>(real: 3, imaginary: 4), 2)
        testDivision(Complex<UInt16>(real: 3, imaginary: 4), 2)
        testDivision(Complex<UInt32>(real: 3, imaginary: 4), 2)
        testDivision(Complex<UInt64>(real: 3, imaginary: 4), 2)
        testDivision(Complex<UInt>(real: 3, imaginary: 4), 2)
        testDivision(Complex<Half>(real: 3.0, imaginary: 4.0), 2.0)
        testDivision(Complex<Float>(real: 3.0, imaginary: 4.0), 2.0)
        testDivision(Complex<Double>(real: 3.0, imaginary: 4.0), 2.0)
        testDivision(Complex<Complex.LargestFloatType>(real: 3.0, imaginary: 4.0), 2.0)
    }

    func testComponentwiseDivision() {
        testComponentwiseDivision(Complex<Int8>(real: 3, imaginary: 4), Complex<Int8>(real: 1, imaginary: 2))
        testComponentwiseDivision(Complex<Int16>(real: 3, imaginary: 4), Complex<Int16>(real: 1, imaginary: 2))
        testComponentwiseDivision(Complex<Int32>(real: 3, imaginary: 4), Complex<Int32>(real: 1, imaginary: 2))
        testComponentwiseDivision(Complex<Int64>(real: 3, imaginary: 4), Complex<Int64>(real: 1, imaginary: 2))
        testComponentwiseDivision(Complex<Int>(real: 3, imaginary: 4), Complex<Int>(real: 1, imaginary: 2))
        testComponentwiseDivision(Complex<UInt8>(real: 3, imaginary: 4), Complex<UInt8>(real: 1, imaginary: 2))
        testComponentwiseDivision(Complex<UInt16>(real: 3, imaginary: 4), Complex<UInt16>(real: 1, imaginary: 2))
        testComponentwiseDivision(Complex<UInt32>(real: 3, imaginary: 4), Complex<UInt32>(real: 1, imaginary: 2))
        testComponentwiseDivision(Complex<UInt64>(real: 3, imaginary: 4), Complex<UInt64>(real: 1, imaginary: 2))
        testComponentwiseDivision(Complex<UInt>(real: 3, imaginary: 4), Complex<UInt>(real: 1, imaginary: 2))
        testComponentwiseDivision(Complex<Half>(real: 3.0, imaginary: 4.0), Complex<Half>(real: 1.0, imaginary: 2.0))
        testComponentwiseDivision(Complex<Float>(real: 3.0, imaginary: 4.0), Complex<Float>(real: 1.0, imaginary: 2.0))
        testComponentwiseDivision(Complex<Double>(real: 3.0, imaginary: 4.0), Complex<Double>(real: 1.0, imaginary: 2.0))
        testComponentwiseDivision(Complex<Complex.LargestFloatType>(real: 3.0, imaginary: 4.0), Complex<Complex.LargestFloatType>(real: 1.0, imaginary: 2.0))
    }

    // MARK: Private Methods

    private func testAdditionWithZero<Scalar>(_ complex: Complex<Scalar>, file: StaticString = #file, line: UInt = #line) where Scalar: BinaryInteger {
        CTAssertEqual(complex, complex + .zero)
        CTAssertEqual(complex, complex .+ .zero)
        CTAssertEqual(complex, complex + Scalar(0))
        CTAssertEqual(complex, Scalar(0) + complex)

        var result = complex
        result += .zero
        CTAssertEqual(result, complex)

        result = complex
        result .+= .zero
        CTAssertEqual(result, complex)

        result = complex
        result += Scalar(0)
        CTAssertEqual(result, complex)
    }

    private func testAdditionWithZero<Scalar>(_ complex: Complex<Scalar>, file: StaticString = #file, line: UInt = #line) where Scalar: FloatingPoint {
        CTAssertEqual(complex, complex + .zero)
        CTAssertEqual(complex, complex .+ .zero)
        CTAssertEqual(complex, complex + Scalar(0))
        CTAssertEqual(complex, Scalar(0) + complex)

        var result = complex
        result += .zero
        CTAssertEqual(result, complex)

        result = complex
        result .+= .zero
        CTAssertEqual(result, complex)

        result = complex
        result += Scalar(0)
        CTAssertEqual(result, complex)
    }

    private func testSubtractionWithZero<Scalar>(_ complex: Complex<Scalar>, file: StaticString = #file, line: UInt = #line) where Scalar: BinaryInteger {
        CTAssertEqual(complex, complex - .zero)
        CTAssertEqual(complex, complex .- .zero)
        CTAssertEqual(complex, complex - Scalar(0))

        var result = complex
        result -= .zero
        CTAssertEqual(result, complex)

        result = complex
        result .-= .zero
        CTAssertEqual(result, complex)

        result = complex
        result -= Scalar(0)
        CTAssertEqual(result, complex)
    }

    private func testSubtractionWithZero<Scalar>(_ complex: Complex<Scalar>, file: StaticString = #file, line: UInt = #line) where Scalar: FloatingPoint {
        CTAssertEqual(complex, complex - .zero)
        CTAssertEqual(complex, complex .- .zero)
        CTAssertEqual(complex, complex - Scalar(0))

        var result = complex
        result -= .zero
        CTAssertEqual(result, complex)

        result = complex
        result .-= .zero
        CTAssertEqual(result, complex)

        result = complex
        result -= Scalar(0)
        CTAssertEqual(result, complex)
    }

    private func testMultiplicationWithZero<Scalar>(_ complex: Complex<Scalar>, file: StaticString = #file, line: UInt = #line) where Scalar: BinaryInteger {
        CTAssertEqual(.zero, complex * .zero)
        CTAssertEqual(.zero, complex .* .zero)
        CTAssertEqual(.zero, complex * Scalar(0))
        CTAssertEqual(.zero, Scalar(0) * complex)

        var result = complex
        result *= .zero
        CTAssertEqual(result, .zero)

        result = complex
        result .*= .zero
        CTAssertEqual(result, .zero)

        result = complex
        result *= Scalar(0)
        CTAssertEqual(result, .zero)
    }

    private func testMultiplicationWithZero<Scalar>(_ complex: Complex<Scalar>, file: StaticString = #file, line: UInt = #line) where Scalar: FloatingPoint {
        CTAssertEqual(.zero, complex * .zero)
        CTAssertEqual(.zero, complex .* .zero)
        CTAssertEqual(.zero, complex * Scalar(0))
        CTAssertEqual(.zero, Scalar(0) * complex)

        var result = complex
        result *= .zero
        CTAssertEqual(result, .zero)

        result = complex
        result .*= .zero
        CTAssertEqual(result, .zero)

        result = complex
        result *= Scalar(0)
        CTAssertEqual(result, .zero)
    }

    private func testAddition<Scalar>(_ lhs: Complex<Scalar>, _ rhs: Complex<Scalar>, _ result: Complex<Scalar>, file: StaticString = #file, line: UInt = #line) {
        CTAssertEqual(lhs + rhs, result)
        CTAssertEqual(rhs + lhs, result)
        CTAssertEqual(lhs .+ rhs, result)
        CTAssertEqual(rhs .+ lhs, result)

        var complex = lhs
        complex += rhs
        CTAssertEqual(complex, result)

        complex = rhs
        complex += lhs
        CTAssertEqual(complex, result)

        complex = lhs
        complex .+= rhs
        CTAssertEqual(complex, result)

        complex = rhs
        complex .+= lhs
        CTAssertEqual(complex, result)
    }

    private func testAddition<Scalar>(_ lhs: Complex<Scalar>, _ rhs: Scalar, _ result: Complex<Scalar>, file: StaticString = #file, line: UInt = #line) {
        CTAssertEqual(lhs + rhs, result)
        CTAssertEqual(rhs + lhs, result)

        var complex = lhs
        complex += rhs
        CTAssertEqual(complex, result)
    }

    private func testAdditionIgnoringOverflow<Scalar>(forType: Scalar.Type, file: StaticString = #file, line: UInt = #line) where Scalar: FixedWidthInteger {
        // The test is defined to "succeed" if it doesn't crash
        let lhs = Complex<Scalar>(real: Scalar.max, imaginary: Scalar.max)
        let rhs = Complex<Scalar>(real: Scalar.max, imaginary: Scalar.max)
        let rhs2 = Scalar.max

        _ = lhs &+ rhs
        _ = rhs &+ lhs
        _ = lhs .&+ rhs
        _ = rhs .&+ lhs
        _ = lhs &+ rhs2
        _ = rhs2 &+ lhs

        var complex = lhs
        complex &+= rhs

        complex = rhs
        complex &+= lhs

        complex = lhs
        complex .&+= rhs

        complex = rhs
        complex .&+= lhs

        if Scalar.isSigned {
            // If the scalar is signed each min is the smallest negative number. Adding these
            // two together would overflow.
            let lhs = Complex<Scalar>(real: Scalar.min, imaginary: Scalar.min)
            let rhs = Complex<Scalar>(real: Scalar.min, imaginary: Scalar.min)

            _ = lhs &+ rhs
            _ = rhs &+ lhs
            _ = lhs .&+ rhs
            _ = rhs .&+ lhs

            var complex = lhs
            complex &+= rhs

            complex = lhs
            complex &+= rhs2

            complex = rhs
            complex &+= lhs

            complex = lhs
            complex .&+= rhs

            complex = rhs
            complex .&+= lhs
        }
    }

    private func testSubtraction<Scalar>(_ lhs: Complex<Scalar>, _ rhs: Complex<Scalar>, _ result: Complex<Scalar>, file: StaticString = #file, line: UInt = #line) {
        CTAssertEqual(lhs - rhs, result)
        CTAssertEqual(lhs .- rhs, result)

        var complex = lhs
        complex -= rhs
        CTAssertEqual(complex, result)

        complex = lhs
        complex .-= rhs
        CTAssertEqual(complex, result)
    }

    private func testSubtraction<Scalar>(_ lhs: Complex<Scalar>, _ rhs: Complex<Scalar>, _ result: Complex<Scalar>, file: StaticString = #file, line: UInt = #line) where Scalar: SignedNumeric {
        CTAssertEqual(lhs - rhs, result)
        CTAssertEqual(rhs - lhs, -result)
        CTAssertEqual(lhs .- rhs, result)
        CTAssertEqual(rhs .- lhs, -result)

        var complex = lhs
        complex -= rhs
        CTAssertEqual(complex, result)

        complex = rhs
        complex -= lhs
        CTAssertEqual(complex, -result)

        complex = lhs
        complex .-= rhs
        CTAssertEqual(complex, result)

        complex = rhs
        complex .-= lhs
        CTAssertEqual(complex, -result)
    }

    private func testSubtraction<Scalar>(_ lhs: Complex<Scalar>, _ rhs: Scalar, _ result: Complex<Scalar>, file: StaticString = #file, line: UInt = #line) {
        CTAssertEqual(lhs - rhs, result)

        var complex = lhs
        complex -= rhs
        CTAssertEqual(complex, result)
    }

    private func testSubtraction<Scalar>(_ lhs: Complex<Scalar>, _ rhs: Scalar, _ result: Complex<Scalar>, file: StaticString = #file, line: UInt = #line) where Scalar: SignedNumeric {
        CTAssertEqual(lhs - rhs, result)
        CTAssertEqual(rhs - lhs, -result)

        var complex = lhs
        complex -= rhs
        CTAssertEqual(complex, result)
    }

    private func testSubtractionIgnoringOverflow<Scalar>(forType: Scalar.Type, file: StaticString = #file, line: UInt = #line) where Scalar: FixedWidthInteger {
        // The test is defined to "succeed" if it doesn't crash
        let lhs = Complex<Scalar>(real: Scalar.min, imaginary: Scalar.min)
        let rhs = Complex<Scalar>(real: Scalar.max, imaginary: Scalar.max)
        let rhs2 = Scalar.max
        let rhs3 = Scalar.min

        _ = lhs &- rhs
        _ = lhs .&- rhs
        _ = lhs &- rhs2
        _ = rhs3 &- rhs

        var complex = lhs
        complex &-= rhs

        complex = lhs
        complex &-= rhs2

        complex = lhs
        complex .&-= rhs

        if Scalar.isSigned {
            // If the scalar is signed each min is the smallest negative number. Subtracting
            // these from the max would overflow.
            let lhs = Complex<Scalar>(real: Scalar.max, imaginary: Scalar.max)
            let rhs = Complex<Scalar>(real: Scalar.min, imaginary: Scalar.min)

            _ = lhs &- rhs
            _ = lhs .&- rhs

            var complex = lhs
            complex &-= rhs

            complex = lhs
            complex &-= rhs3

            complex = lhs
            complex .&-= rhs
        }
    }

    private func testMultiplication<Scalar>(_ lhs: Complex<Scalar>, _ rhs: Complex<Scalar>, _ result: Complex<Scalar>, file: StaticString = #file, line: UInt = #line) {
        CTAssertEqual(lhs * rhs, result)
        CTAssertEqual(rhs * lhs, result)

        var complex = lhs
        complex *= rhs
        CTAssertEqual(complex, result)

        complex = rhs
        complex *= lhs
        CTAssertEqual(complex, result)
    }

    private func testMultiplicationIgnoringOverflow<Scalar>(forType: Scalar.Type, file: StaticString = #file, line: UInt = #line) where Scalar: FixedWidthInteger {
        // The test is defined to "succeed" if it doesn't crash
        let lhs = Complex<Scalar>(real: Scalar.max, imaginary: Scalar.max)
        let rhs = Complex<Scalar>(real: Scalar.max, imaginary: Scalar.max)
        let rhs2 = Scalar.max

        _ = lhs &* rhs
        _ = rhs &* lhs
        _ = lhs .&* rhs
        _ = rhs .&* lhs
        _ = lhs &* rhs2
        _ = rhs2 &* lhs

        var complex = lhs
        complex &*= rhs

        complex = rhs
        complex &*= lhs

        complex = lhs
        complex &*= rhs2

        complex = lhs
        complex .&*= rhs

        complex = rhs
        complex .&*= lhs
    }

    private func testMultiplication<Scalar>(_ lhs: Complex<Scalar>, _ rhs: Scalar, file: StaticString = #file, line: UInt = #line) {
        let result = Complex(real: lhs.real * rhs, imaginary: lhs.imaginary * rhs)
        CTAssertEqual(lhs * rhs, result)
        CTAssertEqual(rhs * lhs, result)

        var complex = lhs
        complex *= rhs
        CTAssertEqual(complex, result)
    }

    private func testComponentwiseMultiplication<Scalar>(_ lhs: Complex<Scalar>, _ rhs: Complex<Scalar>, file: StaticString = #file, line: UInt = #line) {
        var result = lhs .* rhs
        CTAssertEqual(result.real, lhs.real * rhs.real)
        CTAssertEqual(result.imaginary, lhs.imaginary * rhs.imaginary)

        result = lhs
        result .*= rhs
        CTAssertEqual(result.real, lhs.real * rhs.real)
        CTAssertEqual(result.imaginary, lhs.imaginary * rhs.imaginary)
    }

    private func testDivision<Scalar>(_ lhs: Complex<Scalar>, _ rhs: Complex<Scalar>, _ result: Complex<Scalar>, file: StaticString = #file, line: UInt = #line) where Scalar: BinaryInteger {
        CTAssertEqual(lhs / rhs, result)

        var complex = lhs
        complex /= rhs
        CTAssertEqual(complex, result)
    }

    private func testDivision<Scalar>(_ lhs: Complex<Scalar>, _ rhs: Complex<Scalar>, _ result: Complex<Scalar>, file: StaticString = #file, line: UInt = #line) where Scalar: BinaryFloatingPoint {
        CTAssertTrue((lhs / rhs - result).modulus < 0.0001)

        var complex = lhs
        complex /= rhs
        CTAssertTrue((complex - result).modulus < 0.0001)
    }

    private func testDivision<Scalar>(_ lhs: Complex<Scalar>, _ rhs: Scalar, file: StaticString = #file, line: UInt = #line) where Scalar: BinaryInteger {
        CTAssertEqual(lhs / rhs, Complex(real: lhs.real / rhs, imaginary: lhs.imaginary / rhs))

        var complex = lhs
        complex /= rhs
        CTAssertEqual(complex, Complex(real: lhs.real / rhs, imaginary: lhs.imaginary / rhs))
    }

    private func testDivision<Scalar>(_ lhs: Complex<Scalar>, _ rhs: Scalar, file: StaticString = #file, line: UInt = #line) where Scalar: SignedInteger {
        CTAssertEqual(lhs / rhs, Complex(real: lhs.real / rhs, imaginary: lhs.imaginary / rhs))
        CTAssertEqual(rhs / lhs, (Complex(real: rhs, imaginary: 0) / lhs))

        var complex = lhs
        complex /= rhs
        CTAssertEqual(complex, Complex(real: lhs.real / rhs, imaginary: lhs.imaginary / rhs))
    }

    private func testDivision<Scalar>(_ lhs: Complex<Scalar>, _ rhs: Scalar, file: StaticString = #file, line: UInt = #line) where Scalar: BinaryFloatingPoint {
        CTAssertEqual(lhs / rhs, Complex(real: lhs.real / rhs, imaginary: lhs.imaginary / rhs))
        CTAssertEqual(rhs / lhs, (Complex(real: rhs, imaginary: 0) / lhs))

        var complex = lhs
        complex /= rhs
        CTAssertEqual(complex, Complex(real: lhs.real / rhs, imaginary: lhs.imaginary / rhs))
    }

    private func testComponentwiseDivision<Scalar>(_ lhs: Complex<Scalar>, _ rhs: Complex<Scalar>, file: StaticString = #file, line: UInt = #line) where Scalar: BinaryInteger {
        var result = lhs ./ rhs
        CTAssertEqual(result.real, lhs.real / rhs.real)
        CTAssertEqual(result.imaginary, lhs.imaginary / rhs.imaginary)

        result = lhs
        result ./= rhs
        CTAssertEqual(result.real, lhs.real / rhs.real)
        CTAssertEqual(result.imaginary, lhs.imaginary / rhs.imaginary)
    }

    private func testComponentwiseDivision<Scalar>(_ lhs: Complex<Scalar>, _ rhs: Complex<Scalar>, file: StaticString = #file, line: UInt = #line) where Scalar: FloatingPoint {
        var result = lhs ./ rhs
        CTAssertEqual(result.real, lhs.real / rhs.real)
        CTAssertEqual(result.imaginary, lhs.imaginary / rhs.imaginary)

        result = lhs
        result ./= rhs
        CTAssertEqual(result.real, lhs.real / rhs.real)
        CTAssertEqual(result.imaginary, lhs.imaginary / rhs.imaginary)
    }
}
