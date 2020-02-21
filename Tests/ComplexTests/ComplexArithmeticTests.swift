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
        testAdditionWithZero(Complex(real: Float80(11.1), imaginary: Float80(-0.9)))
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
        testSubtractionWithZero(Complex(real: Float80(11.1), imaginary: Float80(-0.9)))
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
        testMultiplicationWithZero(Complex(real: Float80(11.1), imaginary: Float80(-0.9)))
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
        testAddition(Complex<Float80>(real: 1.0, imaginary: 2.0), Complex<Float80>(real: 3.0, imaginary: 4.0), Complex<Float80>(real: 4.0, imaginary: 6.0))

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
        testAddition(Complex<Float80>(real: 1.0, imaginary: 2.0), 3.0, Complex<Float80>(real: 4.0, imaginary: 2.0))
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
        testSubtraction(Complex<Float80>(real: 3.0, imaginary: 4.0), Complex<Float80>(real: 1.0, imaginary: 2.0), Complex<Float80>(real: 2.0, imaginary: 2.0))

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
        testSubtraction(Complex<Float80>(real: 3.0, imaginary: 4.0), 1.0, Complex<Float80>(real: 2.0, imaginary: 4.0))
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
        testMultiplication(Complex<Float80>(real: 3.0, imaginary: 4.0), Complex<Float80>(real: 1.0, imaginary: 2.0), Complex<Float80>(real: -5.0, imaginary: 10.0))

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
        testMultiplication(Complex<Float80>(real: 3.0, imaginary: 4.0), 2.0)
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
        testComponentwiseMultiplication(Complex<Float80>(real: 3.0, imaginary: 4.0), Complex<Float80>(real: 1.0, imaginary: 2.0))
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
        testDivision(Complex<Float80>(real: 3.0, imaginary: 4.0), Complex<Float80>(real: 1.0, imaginary: 2.0), Complex<Float80>(real: 11.0 / 5.0, imaginary: -0.4))

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
        testDivision(Complex<Float80>(real: 3.0, imaginary: 4.0), 2.0)
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
        testComponentwiseDivision(Complex<Float80>(real: 3.0, imaginary: 4.0), Complex<Float80>(real: 1.0, imaginary: 2.0))
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

    private func testAdditionWithZero<Scalar>(_ complex: Complex<Scalar>, file: StaticString = #file, line: UInt = #line) {
        XCTAssertEqual(complex, complex + .zero, file: file, line: line)
        XCTAssertEqual(complex, complex .+ .zero, file: file, line: line)
        XCTAssertEqual(complex, complex + Scalar.zero, file: file, line: line)
        XCTAssertEqual(complex, Scalar.zero + complex, file: file, line: line)

        var result = complex
        result += .zero
        XCTAssertEqual(result, complex, file: file, line: line)

        result = complex
        result .+= .zero
        XCTAssertEqual(result, complex, file: file, line: line)

        result = complex
        result += Scalar.zero
        XCTAssertEqual(result, complex, file: file, line: line)
    }

    private func testSubtractionWithZero<Scalar>(_ complex: Complex<Scalar>, file: StaticString = #file, line: UInt = #line) {
        XCTAssertEqual(complex, complex - .zero, file: file, line: line)
        XCTAssertEqual(complex, complex .- .zero, file: file, line: line)
        XCTAssertEqual(complex, complex - Scalar.zero, file: file, line: line)

        var result = complex
        result -= .zero
        XCTAssertEqual(result, complex, file: file, line: line)

        result = complex
        result .-= .zero
        XCTAssertEqual(result, complex, file: file, line: line)

        result = complex
        result -= Scalar.zero
        XCTAssertEqual(result, complex, file: file, line: line)
    }

    private func testMultiplicationWithZero<Scalar>(_ complex: Complex<Scalar>, file: StaticString = #file, line: UInt = #line) {
        XCTAssertEqual(.zero, complex * .zero, file: file, line: line)
        XCTAssertEqual(.zero, complex .* .zero, file: file, line: line)
        XCTAssertEqual(.zero, complex * Scalar.zero, file: file, line: line)
        XCTAssertEqual(.zero, Scalar.zero * complex, file: file, line: line)

        var result = complex
        result *= .zero
        XCTAssertEqual(result, .zero, file: file, line: line)

        result = complex
        result .*= .zero
        XCTAssertEqual(result, .zero, file: file, line: line)

        result = complex
        result *= Scalar.zero
        XCTAssertEqual(result, .zero, file: file, line: line)
    }

    private func testAddition<Scalar>(_ lhs: Complex<Scalar>, _ rhs: Complex<Scalar>, _ result: Complex<Scalar>, file: StaticString = #file, line: UInt = #line) {
        XCTAssertEqual(lhs + rhs, result, file: file, line: line)
        XCTAssertEqual(rhs + lhs, result, file: file, line: line)
        XCTAssertEqual(lhs .+ rhs, result, file: file, line: line)
        XCTAssertEqual(rhs .+ lhs, result, file: file, line: line)

        var complex = lhs
        complex += rhs
        XCTAssertEqual(complex, result, file: file, line: line)

        complex = rhs
        complex += lhs
        XCTAssertEqual(complex, result, file: file, line: line)

        complex = lhs
        complex .+= rhs
        XCTAssertEqual(complex, result, file: file, line: line)

        complex = rhs
        complex .+= lhs
        XCTAssertEqual(complex, result, file: file, line: line)
    }

    private func testAddition<Scalar>(_ lhs: Complex<Scalar>, _ rhs: Scalar, _ result: Complex<Scalar>, file: StaticString = #file, line: UInt = #line) {
        XCTAssertEqual(lhs + rhs, result, file: file, line: line)
        XCTAssertEqual(rhs + lhs, result, file: file, line: line)

        var complex = lhs
        complex += rhs
        XCTAssertEqual(complex, result, file: file, line: line)
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

    private func testOverflowingAddition<Scalar>(forType: Scalar.Type, file: StaticString = #file, line: UInt = #line) where Scalar: FixedWidthInteger, Scalar: UnsignedInteger {
        var lhs = Complex<Scalar>(real: Scalar.max, imaginary: 0)
        var rhs = Complex<Scalar>(real: Scalar.max, imaginary: 0)
        var result = lhs.addingReportingOverflow(rhs)

        XCTAssertTrue(result.overflow, file: file, line: line)
        XCTAssertEqual(result.partialValue.real, Scalar.max - 1, file: file, line: line)
        XCTAssertEqual(result.partialValue.imaginary, 0, file: file, line: line)

        lhs = Complex<Scalar>(real: 0, imaginary: Scalar.max)
        rhs = Complex<Scalar>(real: 0, imaginary: Scalar.max)
        result = lhs.addingReportingOverflow(rhs)

        XCTAssertTrue(result.overflow, file: file, line: line)
        XCTAssertEqual(result.partialValue.real, 0, file: file, line: line)
        XCTAssertEqual(result.partialValue.imaginary, Scalar.max - 1, file: file, line: line)

        lhs = Complex<Scalar>(real: Scalar.max, imaginary: Scalar.max)
        rhs = Complex<Scalar>(real: Scalar.max, imaginary: Scalar.max)
        result = lhs.addingReportingOverflow(rhs)

        XCTAssertTrue(result.overflow, file: file, line: line)
        XCTAssertEqual(result.partialValue.real, Scalar.max - 1, file: file, line: line)
        XCTAssertEqual(result.partialValue.imaginary, Scalar.max - 1, file: file, line: line)
    }

    private func testOverflowingAddition<Scalar>(forType: Scalar.Type, file: StaticString = #file, line: UInt = #line) where Scalar: FixedWidthInteger, Scalar: SignedInteger {
        var lhs = Complex<Scalar>(real: Scalar.max, imaginary: 0)
        var rhs = Complex<Scalar>(real: Scalar.max, imaginary: 0)
        var result = lhs.addingReportingOverflow(rhs)

        XCTAssertTrue(result.overflow, file: file, line: line)
        XCTAssertEqual(result.partialValue.real, -2, file: file, line: line)
        XCTAssertEqual(result.partialValue.imaginary, 0, file: file, line: line)

        lhs = Complex<Scalar>(real: 0, imaginary: Scalar.max)
        rhs = Complex<Scalar>(real: 0, imaginary: Scalar.max)
        result = lhs.addingReportingOverflow(rhs)

        XCTAssertTrue(result.overflow, file: file, line: line)
        XCTAssertEqual(result.partialValue.real, 0, file: file, line: line)
        XCTAssertEqual(result.partialValue.imaginary, -2, file: file, line: line)

        lhs = Complex<Scalar>(real: Scalar.max, imaginary: Scalar.max)
        rhs = Complex<Scalar>(real: Scalar.max, imaginary: Scalar.max)
        result = lhs.addingReportingOverflow(rhs)

        XCTAssertTrue(result.overflow, file: file, line: line)
        XCTAssertEqual(result.partialValue.real, -2, file: file, line: line)
        XCTAssertEqual(result.partialValue.imaginary, -2, file: file, line: line)
    }

    private func testSubtraction<Scalar>(_ lhs: Complex<Scalar>, _ rhs: Complex<Scalar>, _ result: Complex<Scalar>, file: StaticString = #file, line: UInt = #line) {
        XCTAssertEqual(lhs - rhs, result, file: file, line: line)
        XCTAssertEqual(lhs .- rhs, result, file: file, line: line)

        var complex = lhs
        complex -= rhs
        XCTAssertEqual(complex, result, file: file, line: line)

        complex = lhs
        complex .-= rhs
        XCTAssertEqual(complex, result, file: file, line: line)
    }

    private func testSubtraction<Scalar>(_ lhs: Complex<Scalar>, _ rhs: Complex<Scalar>, _ result: Complex<Scalar>, file: StaticString = #file, line: UInt = #line) where Scalar: SignedNumeric {
        XCTAssertEqual(lhs - rhs, result, file: file, line: line)
        XCTAssertEqual(rhs - lhs, -result, file: file, line: line)
        XCTAssertEqual(lhs .- rhs, result, file: file, line: line)
        XCTAssertEqual(rhs .- lhs, -result, file: file, line: line)

        var complex = lhs
        complex -= rhs
        XCTAssertEqual(complex, result, file: file, line: line)

        complex = rhs
        complex -= lhs
        XCTAssertEqual(complex, -result, file: file, line: line)

        complex = lhs
        complex .-= rhs
        XCTAssertEqual(complex, result, file: file, line: line)

        complex = rhs
        complex .-= lhs
        XCTAssertEqual(complex, -result, file: file, line: line)
    }

    private func testSubtraction<Scalar>(_ lhs: Complex<Scalar>, _ rhs: Scalar, _ result: Complex<Scalar>, file: StaticString = #file, line: UInt = #line) {
        XCTAssertEqual(lhs - rhs, result, file: file, line: line)

        var complex = lhs
        complex -= rhs
        XCTAssertEqual(complex, result, file: file, line: line)
    }

    private func testSubtraction<Scalar>(_ lhs: Complex<Scalar>, _ rhs: Scalar, _ result: Complex<Scalar>, file: StaticString = #file, line: UInt = #line) where Scalar: SignedNumeric {
        XCTAssertEqual(lhs - rhs, result, file: file, line: line)
        XCTAssertEqual(rhs - lhs, -result, file: file, line: line)

        var complex = lhs
        complex -= rhs
        XCTAssertEqual(complex, result, file: file, line: line)
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

    private func testOverflowingSubtraction<Scalar>(forType: Scalar.Type, file: StaticString = #file, line: UInt = #line) where Scalar: FixedWidthInteger {
        var lhs = Complex<Scalar>(real: Scalar.min, imaginary: 0)
        var rhs = Complex<Scalar>(real: Scalar.max, imaginary: 0)
        var result = lhs.subtractingReportingOverflow(rhs)

        XCTAssertTrue(result.overflow, file: file, line: line)
        XCTAssertEqual(result.partialValue.real, 1, file: file, line: line)
        XCTAssertEqual(result.partialValue.imaginary, 0, file: file, line: line)

        lhs = Complex<Scalar>(real: 0, imaginary: Scalar.min)
        rhs = Complex<Scalar>(real: 0, imaginary: Scalar.max)
        result = lhs.subtractingReportingOverflow(rhs)

        XCTAssertTrue(result.overflow, file: file, line: line)
        XCTAssertEqual(result.partialValue.real, 0, file: file, line: line)
        XCTAssertEqual(result.partialValue.imaginary, 1, file: file, line: line)

        lhs = Complex<Scalar>(real: Scalar.min, imaginary: Scalar.min)
        rhs = Complex<Scalar>(real: Scalar.max, imaginary: Scalar.max)
        result = lhs.subtractingReportingOverflow(rhs)

        XCTAssertTrue(result.overflow, file: file, line: line)
        XCTAssertEqual(result.partialValue.real, 1, file: file, line: line)
        XCTAssertEqual(result.partialValue.imaginary, 1, file: file, line: line)
    }

    private func testMultiplication<Scalar>(_ lhs: Complex<Scalar>, _ rhs: Complex<Scalar>, _ result: Complex<Scalar>, file: StaticString = #file, line: UInt = #line) {
        XCTAssertEqual(lhs * rhs, result, file: file, line: line)
        XCTAssertEqual(rhs * lhs, result, file: file, line: line)

        var complex = lhs
        complex *= rhs
        XCTAssertEqual(complex, result, file: file, line: line)

        complex = rhs
        complex *= lhs
        XCTAssertEqual(complex, result, file: file, line: line)
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
        XCTAssertEqual(lhs * rhs, result, file: file, line: line)
        XCTAssertEqual(rhs * lhs, result, file: file, line: line)

        var complex = lhs
        complex *= rhs
        XCTAssertEqual(complex, result, file: file, line: line)
    }

    private func testComponentwiseMultiplication<Scalar>(_ lhs: Complex<Scalar>, _ rhs: Complex<Scalar>, file: StaticString = #file, line: UInt = #line) {
        var result = lhs .* rhs
        XCTAssertEqual(result.real, lhs.real * rhs.real, file: file, line: line)
        XCTAssertEqual(result.imaginary, lhs.imaginary * rhs.imaginary, file: file, line: line)

        result = lhs
        result .*= rhs
        XCTAssertEqual(result.real, lhs.real * rhs.real, file: file, line: line)
        XCTAssertEqual(result.imaginary, lhs.imaginary * rhs.imaginary, file: file, line: line)
    }

    private func testComponentwiseOverflowingMultiplication<Scalar>(forType: Scalar.Type, file: StaticString = #file, line: UInt = #line) where Scalar: FixedWidthInteger, Scalar: UnsignedInteger {
        var lhs = Complex<Scalar>(real: Scalar.max, imaginary: Scalar.max)
        var rhs = Complex<Scalar>(real: 2, imaginary: 2)

        let fullWidth = lhs.componentwiseMultipliedFullWidth(by: rhs)
        XCTAssertEqual(fullWidth.high.real, 1, file: file, line: line)
        XCTAssertEqual(fullWidth.high.imaginary, 1, file: file, line: line)
        XCTAssertEqual(fullWidth.low.real, Scalar.Magnitude.max - 1, file: file, line: line)
        XCTAssertEqual(fullWidth.low.imaginary, Scalar.Magnitude.max - 1, file: file, line: line)

        var overflow = lhs.componentwiseMultipliedReportingOverflow(by: rhs)
        XCTAssertTrue(overflow.overflow, file: file, line: line)
        XCTAssertEqual(overflow.partialValue.real, Scalar.max - 1, file: file, line: line)
        XCTAssertEqual(overflow.partialValue.imaginary, Scalar.max - 1, file: file, line: line)

        lhs = Complex<Scalar>(real: Scalar.max, imaginary: 0)
        rhs = Complex<Scalar>(real: 2, imaginary: 0)
        overflow = lhs.componentwiseMultipliedReportingOverflow(by: rhs)

        XCTAssertTrue(overflow.overflow, file: file, line: line)
        XCTAssertEqual(overflow.partialValue.real, Scalar.max - 1, file: file, line: line)
        XCTAssertEqual(overflow.partialValue.imaginary, 0, file: file, line: line)

        lhs = Complex<Scalar>(real: 0, imaginary: Scalar.max)
        rhs = Complex<Scalar>(real: 0, imaginary: 2)
        overflow = lhs.componentwiseMultipliedReportingOverflow(by: rhs)

        XCTAssertTrue(overflow.overflow, file: file, line: line)
        XCTAssertEqual(overflow.partialValue.real, 0, file: file, line: line)
        XCTAssertEqual(overflow.partialValue.imaginary, Scalar.max - 1, file: file, line: line)
    }

    private func testComponentwiseOverflowingMultiplication<Scalar>(forType: Scalar.Type, file: StaticString = #file, line: UInt = #line) where Scalar: FixedWidthInteger, Scalar: SignedInteger {
        var lhs = Complex<Scalar>(real: Scalar.max, imaginary: Scalar.max)
        var rhs = Complex<Scalar>(real: 4, imaginary: 4)

        let fullWidth = lhs.componentwiseMultipliedFullWidth(by: rhs)
        XCTAssertEqual(fullWidth.high.real, 1, file: file, line: line)
        XCTAssertEqual(fullWidth.high.imaginary, 1, file: file, line: line)
        XCTAssertEqual(fullWidth.low.real, Scalar.Magnitude.max - 3, file: file, line: line)
        XCTAssertEqual(fullWidth.low.imaginary, Scalar.Magnitude.max - 3, file: file, line: line)

        var overflow = lhs.componentwiseMultipliedReportingOverflow(by: rhs)
        XCTAssertTrue(overflow.overflow, file: file, line: line)
        XCTAssertEqual(overflow.partialValue.real, -4, file: file, line: line)
        XCTAssertEqual(overflow.partialValue.imaginary, -4, file: file, line: line)

        lhs = Complex<Scalar>(real: Scalar.max, imaginary: 0)
        rhs = Complex<Scalar>(real: 4, imaginary: 0)
        overflow = lhs.componentwiseMultipliedReportingOverflow(by: rhs)

        XCTAssertTrue(overflow.overflow, file: file, line: line)
        XCTAssertEqual(overflow.partialValue.real, -4, file: file, line: line)
        XCTAssertEqual(overflow.partialValue.imaginary, 0, file: file, line: line)

        lhs = Complex<Scalar>(real: 0, imaginary: Scalar.max)
        rhs = Complex<Scalar>(real: 0, imaginary: 4)
        overflow = lhs.componentwiseMultipliedReportingOverflow(by: rhs)

        XCTAssertTrue(overflow.overflow, file: file, line: line)
        XCTAssertEqual(overflow.partialValue.real, 0, file: file, line: line)
        XCTAssertEqual(overflow.partialValue.imaginary, -4, file: file, line: line)
    }

    private func testDivision<Scalar>(_ lhs: Complex<Scalar>, _ rhs: Complex<Scalar>, _ result: Complex<Scalar>, file: StaticString = #file, line: UInt = #line) where Scalar: BinaryInteger {
        XCTAssertEqual(lhs / rhs, result, file: file, line: line)

        var complex = lhs
        complex /= rhs
        XCTAssertEqual(complex, result, file: file, line: line)
    }

    private func testDivision<Scalar>(_ lhs: Complex<Scalar>, _ rhs: Complex<Scalar>, _ result: Complex<Scalar>, file: StaticString = #file, line: UInt = #line) where Scalar: BinaryFloatingPoint {
        XCTAssertTrue((lhs / rhs - result).modulus < 0.0001, file: file, line: line)

        var complex = lhs
        complex /= rhs
        XCTAssertTrue((complex - result).modulus < 0.0001, file: file, line: line)
    }

    private func testDivision<Scalar>(_ lhs: Complex<Scalar>, _ rhs: Scalar, file: StaticString = #file, line: UInt = #line) where Scalar: BinaryInteger {
        XCTAssertEqual(lhs / rhs, Complex(real: lhs.real / rhs, imaginary: lhs.imaginary / rhs), file: file, line: line)

        var complex = lhs
        complex /= rhs
        XCTAssertEqual(complex, Complex(real: lhs.real / rhs, imaginary: lhs.imaginary / rhs), file: file, line: line)
    }

    private func testDivision<Scalar>(_ lhs: Complex<Scalar>, _ rhs: Scalar, file: StaticString = #file, line: UInt = #line) where Scalar: SignedInteger {
        XCTAssertEqual(lhs / rhs, Complex(real: lhs.real / rhs, imaginary: lhs.imaginary / rhs), file: file, line: line)
        XCTAssertEqual(rhs / lhs, (Complex(real: rhs, imaginary: 0) / lhs), file: file, line: line)

        var complex = lhs
        complex /= rhs
        XCTAssertEqual(complex, Complex(real: lhs.real / rhs, imaginary: lhs.imaginary / rhs), file: file, line: line)
    }

    private func testDivision<Scalar>(_ lhs: Complex<Scalar>, _ rhs: Scalar, file: StaticString = #file, line: UInt = #line) where Scalar: BinaryFloatingPoint {
        XCTAssertEqual(lhs / rhs, Complex(real: lhs.real / rhs, imaginary: lhs.imaginary / rhs), file: file, line: line)
        XCTAssertEqual(rhs / lhs, (Complex(real: rhs, imaginary: 0) / lhs), file: file, line: line)

        var complex = lhs
        complex /= rhs
        XCTAssertEqual(complex, Complex(real: lhs.real / rhs, imaginary: lhs.imaginary / rhs), file: file, line: line)
    }

    private func testComponentwiseDivision<Scalar>(_ lhs: Complex<Scalar>, _ rhs: Complex<Scalar>, file: StaticString = #file, line: UInt = #line) where Scalar: BinaryInteger {
        var result = lhs ./ rhs
        XCTAssertEqual(result.real, lhs.real / rhs.real, file: file, line: line)
        XCTAssertEqual(result.imaginary, lhs.imaginary / rhs.imaginary, file: file, line: line)

        result = lhs
        result ./= rhs
        XCTAssertEqual(result.real, lhs.real / rhs.real, file: file, line: line)
        XCTAssertEqual(result.imaginary, lhs.imaginary / rhs.imaginary, file: file, line: line)
    }

    private func testComponentwiseDivision<Scalar>(_ lhs: Complex<Scalar>, _ rhs: Complex<Scalar>, file: StaticString = #file, line: UInt = #line) where Scalar: FloatingPoint {
        var result = lhs ./ rhs
        XCTAssertEqual(result.real, lhs.real / rhs.real, file: file, line: line)
        XCTAssertEqual(result.imaginary, lhs.imaginary / rhs.imaginary, file: file, line: line)

        result = lhs
        result ./= rhs
        XCTAssertEqual(result.real, lhs.real / rhs.real, file: file, line: line)
        XCTAssertEqual(result.imaginary, lhs.imaginary / rhs.imaginary, file: file, line: line)
    }

    private func testComponentwiseOverflowingDivision<Scalar>(forType: Scalar.Type, file: StaticString = #file, line: UInt = #line) where Scalar: FixedWidthInteger {
        let lhs = Complex<Scalar>(real: Scalar.max, imaginary: Scalar.max)
        var rhs = Complex<Scalar>(real: 0, imaginary: 0)

        let fullWidth = lhs.componentwiseDividingFullWidth((high: Complex<Scalar>(real: 1, imaginary: 1), low: Complex<Scalar.Magnitude>.zero))
        XCTAssertEqual(fullWidth.quotient.real, Scalar.isSigned ? 2 : 1, file: file, line: line)
        XCTAssertEqual(fullWidth.quotient.imaginary, Scalar.isSigned ? 2 : 1, file: file, line: line)
        XCTAssertEqual(fullWidth.remainder.real, Scalar.isSigned ? 2 : 1, file: file, line: line)
        XCTAssertEqual(fullWidth.remainder.imaginary, Scalar.isSigned ? 2 : 1, file: file, line: line)

        var overflow = lhs.componentwiseDividedReportingOverflow(by: rhs)
        XCTAssertTrue(overflow.overflow, file: file, line: line)
        XCTAssertEqual(overflow.partialValue, lhs, file: file, line: line)

        rhs = Complex<Scalar>(real: 0, imaginary: Scalar.max)
        overflow = lhs.componentwiseDividedReportingOverflow(by: rhs)
        XCTAssertTrue(overflow.overflow, file: file, line: line)
        XCTAssertEqual(overflow.partialValue.real, lhs.real, file: file, line: line)
        XCTAssertEqual(overflow.partialValue.imaginary, 1, file: file, line: line)

        rhs = Complex<Scalar>(real: Scalar.max, imaginary: 0)
        overflow = lhs.componentwiseDividedReportingOverflow(by: rhs)
        XCTAssertTrue(overflow.overflow, file: file, line: line)
        XCTAssertEqual(overflow.partialValue.real, 1, file: file, line: line)
        XCTAssertEqual(overflow.partialValue.imaginary, lhs.imaginary, file: file, line: line)
    }
}
