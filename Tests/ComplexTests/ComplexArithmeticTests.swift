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

    private func testSubtraction<Scalar>(_ lhs: Complex<Scalar>, _ rhs: Complex<Scalar>, _ result: Complex<Scalar>, file: StaticString = #file, line: UInt = #line) {
        XCTAssertEqual(lhs - rhs, result, file: file, line: line)

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
}
