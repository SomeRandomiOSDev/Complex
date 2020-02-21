//
//  ComplexTests.swift
//  Complex
//
//  Copyright © 2020 SomeRandomiOSDev. All rights reserved.
//

@testable import Complex
import Half
import XCTest

class ComplexTests: XCTestCase {

    // MARK: Test Methods

    func testInitialization() {
        testInitialization(real: Int8(1), imaginary: Int8(-4))
        testInitialization(real: Int16(1), imaginary: Int16(-4))
        testInitialization(real: Int32(1), imaginary: Int32(-4))
        testInitialization(real: Int64(1), imaginary: Int64(-4))
        testInitialization(real: UInt8(7), imaginary: UInt8(13))
        testInitialization(real: UInt16(7), imaginary: UInt16(13))
        testInitialization(real: UInt32(7), imaginary: UInt32(13))
        testInitialization(real: UInt64(7), imaginary: UInt64(13))
        testInitialization(real: Half(1.2), imaginary: Half(-7.4))
        testInitialization(real: Float(-0.123), imaginary: Float(3.0))
        testInitialization(real: Double(8.9), imaginary: Double(10.8))
        testInitialization(real: Float80(11.1), imaginary: Float80(-0.9))
    }

    func testRandomFactoryMethods() {
        testRandomFactoryMethods(lowerBound: Int8(-4), upperBound: Int8(8))
        testRandomFactoryMethods(lowerBound: Int16(-4), upperBound: Int16(8))
        testRandomFactoryMethods(lowerBound: Int32(-4), upperBound: Int32(8))
        testRandomFactoryMethods(lowerBound: Int64(-4), upperBound: Int64(8))
        testRandomFactoryMethods(lowerBound: UInt8(7), upperBound: UInt8(43))
        testRandomFactoryMethods(lowerBound: UInt16(7), upperBound: UInt16(43))
        testRandomFactoryMethods(lowerBound: UInt32(7), upperBound: UInt32(43))
        testRandomFactoryMethods(lowerBound: UInt64(7), upperBound: UInt64(43))
        testRandomFactoryMethods(lowerBound: Half(-1.2), upperBound: Half(7.4))
        testRandomFactoryMethods(lowerBound: Float(-0.123), upperBound: Float(3.0))
        testRandomFactoryMethods(lowerBound: Double(8.9), upperBound: Double(10.8))
        testRandomFactoryMethods(lowerBound: Float80(-11.1), upperBound: Float80(0.9))
    }

    func testDescriptionMethods() throws {
        try testDescriptionMethods(Complex(real: Int8(1), imaginary: Int8(-4)))
        try testDescriptionMethods(Complex(real: Int16(1), imaginary: Int16(-4)))
        try testDescriptionMethods(Complex(real: Int32(1), imaginary: Int32(-4)))
        try testDescriptionMethods(Complex(real: Int64(1), imaginary: Int64(-4)))
        try testDescriptionMethods(Complex(real: UInt8(7), imaginary: UInt8(13)))
        try testDescriptionMethods(Complex(real: UInt16(7), imaginary: UInt16(13)))
        try testDescriptionMethods(Complex(real: UInt32(7), imaginary: UInt32(13)))
        try testDescriptionMethods(Complex(real: UInt64(7), imaginary: UInt64(13)))
        try testDescriptionMethods(Complex(real: Half(1.2), imaginary: Half(-7.4)))
        try testDescriptionMethods(Complex(real: Float(-0.123), imaginary: Float(3.0)))
        try testDescriptionMethods(Complex(real: Double(8.9), imaginary: Double(10.8)))
        try testDescriptionMethods(Complex(real: Float80(11.1), imaginary: Float80(-0.9)))
    }

    func testHashing() {
        testHashing(Complex(real: Int8(1), imaginary: Int8(-4)))
        testHashing(Complex(real: Int16(1), imaginary: Int16(-4)))
        testHashing(Complex(real: Int32(1), imaginary: Int32(-4)))
        testHashing(Complex(real: Int64(1), imaginary: Int64(-4)))
        testHashing(Complex(real: UInt8(7), imaginary: UInt8(13)))
        testHashing(Complex(real: UInt16(7), imaginary: UInt16(13)))
        testHashing(Complex(real: UInt32(7), imaginary: UInt32(13)))
        testHashing(Complex(real: UInt64(7), imaginary: UInt64(13)))
        testHashing(Complex(real: Half(1.2), imaginary: Half(-7.4)))
        testHashing(Complex(real: Float(-0.123), imaginary: Float(3.0)))
        testHashing(Complex(real: Double(8.9), imaginary: Double(10.8)))
        testHashing(Complex(real: Float80(11.1), imaginary: Float80(-0.9)))
    }

    func testRounding() {
        testRounding(Complex<Half>(real: 1.5, imaginary: -4.5))
        testRounding(Complex<Float>(real: 1.5, imaginary: -4.5))
        testRounding(Complex<Double>(real: 1.5, imaginary: -4.5))
        testRounding(Complex<Float80>(real: 1.5, imaginary: -4.5))
    }

    func testConjugateMethods() {
        testConjugateMethods(Complex(real: Int8(1), imaginary: Int8(-4)))
        testConjugateMethods(Complex(real: Int16(1), imaginary: Int16(-4)))
        testConjugateMethods(Complex(real: Int32(1), imaginary: Int32(-4)))
        testConjugateMethods(Complex(real: Int64(1), imaginary: Int64(-4)))
        testConjugateMethods(Complex(real: Half(1.2), imaginary: Half(-7.4)))
        testConjugateMethods(Complex(real: Float(-0.123), imaginary: Float(3.0)))
        testConjugateMethods(Complex(real: Double(8.9), imaginary: Double(10.8)))
        testConjugateMethods(Complex(real: Float80(11.1), imaginary: Float80(-0.9)))
    }

    func testNegationMethods() {
        testNegationMethods(Complex(real: Int8(1), imaginary: Int8(-4)))
        testNegationMethods(Complex(real: Int16(1), imaginary: Int16(-4)))
        testNegationMethods(Complex(real: Int32(1), imaginary: Int32(-4)))
        testNegationMethods(Complex(real: Int64(1), imaginary: Int64(-4)))
        testNegationMethods(Complex(real: Half(1.2), imaginary: Half(-7.4)))
        testNegationMethods(Complex(real: Float(-0.123), imaginary: Float(3.0)))
        testNegationMethods(Complex(real: Double(8.9), imaginary: Double(10.8)))
        testNegationMethods(Complex(real: Float80(11.1), imaginary: Float80(-0.9)))
    }

    func testMultiplyByOne() {
        testMultiplyByOne(Complex(real: Int8(1), imaginary: Int8(-4)))
        testMultiplyByOne(Complex(real: Int16(1), imaginary: Int16(-4)))
        testMultiplyByOne(Complex(real: Int32(1), imaginary: Int32(-4)))
        testMultiplyByOne(Complex(real: Int64(1), imaginary: Int64(-4)))
        testMultiplyByOne(Complex(real: UInt8(7), imaginary: UInt8(13)))
        testMultiplyByOne(Complex(real: UInt16(7), imaginary: UInt16(13)))
        testMultiplyByOne(Complex(real: UInt32(7), imaginary: UInt32(13)))
        testMultiplyByOne(Complex(real: UInt64(7), imaginary: UInt64(13)))
        testMultiplyByOne(Complex(real: Half(1.2), imaginary: Half(-7.4)))
        testMultiplyByOne(Complex(real: Float(-0.123), imaginary: Float(3.0)))
        testMultiplyByOne(Complex(real: Double(8.9), imaginary: Double(10.8)))
        testMultiplyByOne(Complex(real: Float80(11.1), imaginary: Float80(-0.9)))
    }

    func testMultiplyByI() {
        testMultiplyByI(Complex(real: Int8(1), imaginary: Int8(-4)))
        testMultiplyByI(Complex(real: Int16(1), imaginary: Int16(-4)))
        testMultiplyByI(Complex(real: Int32(1), imaginary: Int32(-4)))
        testMultiplyByI(Complex(real: Int64(1), imaginary: Int64(-4)))
        testMultiplyByI(Complex(real: Half(1.2), imaginary: Half(-7.4)))
        testMultiplyByI(Complex(real: Float(-0.123), imaginary: Float(3.0)))
        testMultiplyByI(Complex(real: Double(8.9), imaginary: Double(10.8)))
        testMultiplyByI(Complex(real: Float80(11.1), imaginary: Float80(-0.9)))
    }

    func testPlusPrefixOperator() {
        testPlusPrefixOperator(Complex(real: Int8(1), imaginary: Int8(-4)))
        testPlusPrefixOperator(Complex(real: Int16(1), imaginary: Int16(-4)))
        testPlusPrefixOperator(Complex(real: Int32(1), imaginary: Int32(-4)))
        testPlusPrefixOperator(Complex(real: Int64(1), imaginary: Int64(-4)))
        testPlusPrefixOperator(Complex(real: UInt8(7), imaginary: UInt8(13)))
        testPlusPrefixOperator(Complex(real: UInt16(7), imaginary: UInt16(13)))
        testPlusPrefixOperator(Complex(real: UInt32(7), imaginary: UInt32(13)))
        testPlusPrefixOperator(Complex(real: UInt64(7), imaginary: UInt64(13)))
        testPlusPrefixOperator(Complex(real: Half(1.2), imaginary: Half(-7.4)))
        testPlusPrefixOperator(Complex(real: Float(-0.123), imaginary: Float(3.0)))
        testPlusPrefixOperator(Complex(real: Double(8.9), imaginary: Double(10.8)))
        testPlusPrefixOperator(Complex(real: Float80(11.1), imaginary: Float80(-0.9)))
    }

    func testPolarComponents() {
        testPolarComponents(Complex(real: Half(1.2), imaginary: Half(-7.4)))
        testPolarComponents(Complex(real: Float(-0.123), imaginary: Float(3.0)))
        testPolarComponents(Complex(real: Double(8.9), imaginary: Double(10.8)))
        testPolarComponents(Complex(real: Float80(11.1), imaginary: Float80(-0.9)))
    }

    func testAdditiveArithmeticProtocolRequirements() {
        XCTAssertEqual(Complex<Half>.zero, Complex(real: 0.0, imaginary: 0.0))
        XCTAssertEqual(Complex<Float>.zero, Complex(real: 0.0, imaginary: 0.0))
        XCTAssertEqual(Complex<Double>.zero, Complex(real: 0.0, imaginary: 0.0))
        XCTAssertEqual(Complex<Float80>.zero, Complex(real: 0.0, imaginary: 0.0))

        do {
            let lhs = Complex<Half>(real: 1.0, imaginary: 2.0)
            let rhs = Complex<Half>(real: 3.0, imaginary: 4.0)
            var value = lhs
            value += rhs

            XCTAssertEqual(lhs + rhs, Complex(real: 4.0, imaginary: 6.0))
            XCTAssertEqual(value, Complex(real: 4.0, imaginary: 6.0))
            XCTAssertEqual(value, lhs + rhs)

            value = lhs
            value -= rhs

            XCTAssertEqual(lhs - rhs, Complex(real: -2.0, imaginary: -2.0))
            XCTAssertEqual(value, Complex(real: -2.0, imaginary: -2.0))
            XCTAssertEqual(value, lhs - rhs)
        }
        do {
            let lhs = Complex<Float>(real: 1.0, imaginary: 2.0)
            let rhs = Complex<Float>(real: 3.0, imaginary: 4.0)
            var value = lhs
            value += rhs

            XCTAssertEqual(lhs + rhs, Complex(real: 4.0, imaginary: 6.0))
            XCTAssertEqual(value, Complex(real: 4.0, imaginary: 6.0))
            XCTAssertEqual(value, lhs + rhs)

            value = lhs
            value -= rhs

            XCTAssertEqual(lhs - rhs, Complex(real: -2.0, imaginary: -2.0))
            XCTAssertEqual(value, Complex(real: -2.0, imaginary: -2.0))
            XCTAssertEqual(value, lhs - rhs)
        }
        do {
            let lhs = Complex<Double>(real: 1.0, imaginary: 2.0)
            let rhs = Complex<Double>(real: 3.0, imaginary: 4.0)
            var value = lhs
            value += rhs

            XCTAssertEqual(lhs + rhs, Complex(real: 4.0, imaginary: 6.0))
            XCTAssertEqual(value, Complex(real: 4.0, imaginary: 6.0))
            XCTAssertEqual(value, lhs + rhs)

            value = lhs
            value -= rhs

            XCTAssertEqual(lhs - rhs, Complex(real: -2.0, imaginary: -2.0))
            XCTAssertEqual(value, Complex(real: -2.0, imaginary: -2.0))
            XCTAssertEqual(value, lhs - rhs)
        }
        do {
            let lhs = Complex<Float80>(real: 1.0, imaginary: 2.0)
            let rhs = Complex<Float80>(real: 3.0, imaginary: 4.0)
            var value = lhs
            value += rhs

            XCTAssertEqual(lhs + rhs, Complex(real: 4.0, imaginary: 6.0))
            XCTAssertEqual(value, Complex(real: 4.0, imaginary: 6.0))
            XCTAssertEqual(value, lhs + rhs)

            value = lhs
            value -= rhs

            XCTAssertEqual(lhs - rhs, Complex(real: -2.0, imaginary: -2.0))
            XCTAssertEqual(value, Complex(real: -2.0, imaginary: -2.0))
            XCTAssertEqual(value, lhs - rhs)
        }
    }

    // MARK: Private Methods

    private func testInitialization<Scalar>(real: Scalar, imaginary: Scalar, file: StaticString = #file, line: UInt = #line) where Scalar: BinaryInteger {
        let complex0 = Complex<Scalar>()
        XCTAssertEqual(complex0.real, 0, file: file, line: line)
        XCTAssertEqual(complex0.imaginary, 0, file: file, line: line)

        let complex1 = Complex<Scalar>(real: real, imaginary: imaginary)
        XCTAssertEqual(complex1.real, real, file: file, line: line)
        XCTAssertEqual(complex1.imaginary, imaginary, file: file, line: line)

        let complex2 = Complex<Scalar>(complex1)
        XCTAssertEqual(complex2.real, real, file: file, line: line)
        XCTAssertEqual(complex2.imaginary, imaginary, file: file, line: line)

        let complex3 = Complex<Int64>(real: real, imaginary: imaginary)
        XCTAssertEqual(complex3.real, Int64(real), file: file, line: line)
        XCTAssertEqual(complex3.imaginary, Int64(imaginary), file: file, line: line)

        let complex4 = Complex<Int64>(complex1)
        XCTAssertEqual(complex4.real, Int64(real), file: file, line: line)
        XCTAssertEqual(complex4.imaginary, Int64(imaginary), file: file, line: line)

        let complex5 = Complex<Float80>(real: real, imaginary: imaginary)
        XCTAssertEqual(complex5.real, Float80(real), file: file, line: line)
        XCTAssertEqual(complex5.imaginary, Float80(imaginary), file: file, line: line)

        let complex6 = Complex<Float80>(complex1)
        XCTAssertEqual(complex6.real, Float80(real), file: file, line: line)
        XCTAssertEqual(complex6.imaginary, Float80(imaginary), file: file, line: line)

        let complex7: Complex<Scalar> = []
        XCTAssertEqual(complex7.real, 0, file: file, line: line)
        XCTAssertEqual(complex7.imaginary, 0, file: file, line: line)

        let complex8: Complex<Scalar> = [real]
        XCTAssertEqual(complex8.real, real, file: file, line: line)
        XCTAssertEqual(complex8.imaginary, 0, file: file, line: line)

        let complex9: Complex<Scalar> = [real, imaginary]
        XCTAssertEqual(complex9.real, real, file: file, line: line)
        XCTAssertEqual(complex9.imaginary, imaginary, file: file, line: line)
    }

    private func testInitialization<Scalar>(real: Scalar, imaginary: Scalar, file: StaticString = #file, line: UInt = #line) where Scalar: BinaryFloatingPoint {
        let complex0 = Complex<Scalar>()
        XCTAssertEqual(complex0.real, 0.0, file: file, line: line)
        XCTAssertEqual(complex0.imaginary, 0.0, file: file, line: line)

        let complex1 = Complex<Scalar>(real: real, imaginary: imaginary)
        XCTAssertEqual(complex1.real, real, file: file, line: line)
        XCTAssertEqual(complex1.imaginary, imaginary, file: file, line: line)

        let complex2 = Complex<Scalar>(complex1)
        XCTAssertEqual(complex2.real, real, file: file, line: line)
        XCTAssertEqual(complex2.imaginary, imaginary, file: file, line: line)

        let complex3 = Complex<Int64>(real: real, imaginary: imaginary)
        XCTAssertEqual(complex3.real, Int64(real), file: file, line: line)
        XCTAssertEqual(complex3.imaginary, Int64(imaginary), file: file, line: line)

        let complex4 = Complex<Int64>(complex1)
        XCTAssertEqual(complex4.real, Int64(real), file: file, line: line)
        XCTAssertEqual(complex4.imaginary, Int64(imaginary), file: file, line: line)

        let complex5 = Complex<Float80>(real: real, imaginary: imaginary)
        XCTAssertEqual(complex5.real, Float80(real), file: file, line: line)
        XCTAssertEqual(complex5.imaginary, Float80(imaginary), file: file, line: line)

        let complex6 = Complex<Float80>(complex1)
        XCTAssertEqual(complex6.real, Float80(real), file: file, line: line)
        XCTAssertEqual(complex6.imaginary, Float80(imaginary), file: file, line: line)

        let complex7: Complex<Scalar> = []
        XCTAssertEqual(complex7.real, 0.0, file: file, line: line)
        XCTAssertEqual(complex7.imaginary, 0.0, file: file, line: line)

        let complex8: Complex<Scalar> = [real]
        XCTAssertEqual(complex8.real, real, file: file, line: line)
        XCTAssertEqual(complex8.imaginary, 0.0, file: file, line: line)

        let complex9: Complex<Scalar> = [real, imaginary]
        XCTAssertEqual(complex9.real, real, file: file, line: line)
        XCTAssertEqual(complex9.imaginary, imaginary, file: file, line: line)
    }

    private func testRandomFactoryMethods<Scalar>(lowerBound: Scalar, upperBound: Scalar, file: StaticString = #file, line: UInt = #line) where Scalar: FixedWidthInteger {
        var generator = SystemRandomNumberGenerator()
        let closedRange: ClosedRange<Scalar> = lowerBound ... upperBound
        let range: Range<Scalar> = lowerBound ..< upperBound

        let complex1 = Complex<Scalar>.random(in: range)
        XCTAssertTrue(range.contains(complex1.real), file: file, line: line)
        XCTAssertTrue(range.contains(complex1.imaginary), file: file, line: line)

        let complex2 = Complex<Scalar>.random(in: range, using: &generator)
        XCTAssertTrue(range.contains(complex2.real), file: file, line: line)
        XCTAssertTrue(range.contains(complex2.imaginary), file: file, line: line)

        let complex3 = Complex<Scalar>.random(in: closedRange)
        XCTAssertTrue(closedRange.contains(complex3.real), file: file, line: line)
        XCTAssertTrue(closedRange.contains(complex3.imaginary), file: file, line: line)

        let complex4 = Complex<Scalar>.random(in: closedRange, using: &generator)
        XCTAssertTrue(closedRange.contains(complex4.real), file: file, line: line)
        XCTAssertTrue(closedRange.contains(complex4.imaginary), file: file, line: line)
    }

    private func testRandomFactoryMethods<Scalar>(lowerBound: Scalar, upperBound: Scalar, file: StaticString = #file, line: UInt = #line) where Scalar: BinaryFloatingPoint, Scalar.RawSignificand: FixedWidthInteger {
        var generator = SystemRandomNumberGenerator()
        let closedRange: ClosedRange<Scalar> = lowerBound ... upperBound
        let range: Range<Scalar> = lowerBound ..< upperBound

        let complex1 = Complex<Scalar>.random(in: range)
        XCTAssertTrue(range.contains(complex1.real), file: file, line: line)
        XCTAssertTrue(range.contains(complex1.imaginary), file: file, line: line)

        let complex2 = Complex<Scalar>.random(in: range, using: &generator)
        XCTAssertTrue(range.contains(complex2.real), file: file, line: line)
        XCTAssertTrue(range.contains(complex2.imaginary), file: file, line: line)

        let complex3 = Complex<Scalar>.random(in: closedRange)
        XCTAssertTrue(closedRange.contains(complex3.real), file: file, line: line)
        XCTAssertTrue(closedRange.contains(complex3.imaginary), file: file, line: line)

        let complex4 = Complex<Scalar>.random(in: closedRange, using: &generator)
        XCTAssertTrue(closedRange.contains(complex4.real), file: file, line: line)
        XCTAssertTrue(closedRange.contains(complex4.imaginary), file: file, line: line)
    }

    private func testDescriptionMethods<Scalar>(_ complex: Complex<Scalar>, file: StaticString = #file, line: UInt = #line) throws where Scalar: BinaryInteger {
        let description = complex.description
        let debugDescription = complex.debugDescription

        let realRegex = try NSRegularExpression(pattern: "real:[ ]*\(NSRegularExpression.escapedPattern(for: "\(complex.real)"))", options: [])
        let imaginaryRegex = try NSRegularExpression(pattern: "imaginary:[ ]*\(NSRegularExpression.escapedPattern(for: "\(complex.imaginary)"))", options: [])

        XCTAssertEqual(description, debugDescription, file: file, line: line)
        XCTAssertTrue(realRegex.numberOfMatches(in: description, options: [], range: NSRange(location: 0, length: description.count)) > 0, file: file, line: line)
        XCTAssertTrue(imaginaryRegex.numberOfMatches(in: description, options: [], range: NSRange(location: 0, length: description.count)) > 0, file: file, line: line)

        XCTAssertTrue(complex.string(withNotation: .square).contains("\(complex.real)"), file: file, line: line)
        XCTAssertTrue(complex.string(withNotation: .square).contains("\(complex.imaginary)"), file: file, line: line)

        XCTAssertTrue(complex.string(withNotation: .trigonometric).contains("\(complex.modulus)"), file: file, line: line)
        XCTAssertTrue(complex.string(withNotation: .trigonometric).contains("\(complex.angle)"), file: file, line: line)

        XCTAssertTrue(complex.string(withNotation: .euler).contains("\(complex.modulus)"), file: file, line: line)
        XCTAssertTrue(complex.string(withNotation: .euler).contains("\(complex.angle)"), file: file, line: line)

        XCTAssertTrue(complex.string(withNotation: .angle).contains("\(complex.modulus)"), file: file, line: line)
        XCTAssertTrue(complex.string(withNotation: .angle).contains("\(complex.angle)"), file: file, line: line)
    }

    private func testDescriptionMethods<Scalar>(_ complex: Complex<Scalar>, file: StaticString = #file, line: UInt = #line) throws where Scalar: BinaryFloatingPoint {
        let description = complex.description
        let debugDescription = complex.debugDescription

        let realRegex = try NSRegularExpression(pattern: "real:[ ]*\(NSRegularExpression.escapedPattern(for: "\(complex.real)"))", options: [])
        let imaginaryRegex = try NSRegularExpression(pattern: "imaginary:[ ]*\(NSRegularExpression.escapedPattern(for: "\(complex.imaginary)"))", options: [])

        XCTAssertEqual(description, debugDescription, file: file, line: line)
        XCTAssertTrue(realRegex.numberOfMatches(in: description, options: [], range: NSRange(location: 0, length: description.count)) > 0, file: file, line: line)
        XCTAssertTrue(imaginaryRegex.numberOfMatches(in: description, options: [], range: NSRange(location: 0, length: description.count)) > 0, file: file, line: line)

        XCTAssertTrue(complex.string(withNotation: .square).contains("\(complex.real)"), file: file, line: line)
        XCTAssertTrue(complex.string(withNotation: .square).contains("\(complex.imaginary)"), file: file, line: line)

        XCTAssertTrue(complex.string(withNotation: .trigonometric).contains("\(complex.modulus)"), file: file, line: line)
        XCTAssertTrue(complex.string(withNotation: .trigonometric).contains("\(complex.angle)"), file: file, line: line)

        XCTAssertTrue(complex.string(withNotation: .euler).contains("\(complex.modulus)"), file: file, line: line)
        XCTAssertTrue(complex.string(withNotation: .euler).contains("\(complex.angle)"), file: file, line: line)

        XCTAssertTrue(complex.string(withNotation: .angle).contains("\(complex.modulus)"), file: file, line: line)
        XCTAssertTrue(complex.string(withNotation: .angle).contains("\(complex.angle)"), file: file, line: line)
    }

    private func testHashing<Scalar>(_ complex: Complex<Scalar>, file: StaticString = #file, line: UInt = #line) where Scalar: Hashable {
        var hasher = Hasher()
        hasher.combine(complex)
        let value1 = hasher.finalize()

        hasher = Hasher()
        hasher.combine(complex.real)
        hasher.combine(complex.imaginary)
        let value2 = hasher.finalize()

        XCTAssertEqual(value1, value2, file: file, line: line)
    }

    private func testRounding<Scalar>(_ complex: Complex<Scalar>, file: StaticString = #file, line: UInt = #line) where Scalar: FloatingPoint {
        XCTAssertEqual(complex.rounded(), Complex(real: complex.real.rounded(), imaginary: complex.imaginary.rounded()), file: file, line: line)

        var rounded = complex
        rounded.round()
        XCTAssertEqual(rounded, complex.rounded(), file: file, line: line)

        for rule in [FloatingPointRoundingRule.toNearestOrAwayFromZero, .toNearestOrEven, .up, .down, .towardZero, .awayFromZero] {
            XCTAssertEqual(complex.rounded(rule), Complex(real: complex.real.rounded(rule), imaginary: complex.imaginary.rounded(rule)), file: file, line: line)

            var rounded = complex
            rounded.round(rule)
            XCTAssertEqual(rounded, complex.rounded(rule), file: file, line: line)
        }
    }

    private func testConjugateMethods<Scalar>(_ complex: Complex<Scalar>, file: StaticString = #file, line: UInt = #line) where Scalar: SignedNumeric {
        var conjugate = complex.conjugate()
        XCTAssertEqual(complex.real, conjugate.real, file: file, line: line)
        XCTAssertEqual(complex.imaginary, -conjugate.imaginary, file: file, line: line)

        conjugate = ~complex
        XCTAssertEqual(complex.real, conjugate.real, file: file, line: line)
        XCTAssertEqual(complex.imaginary, -conjugate.imaginary, file: file, line: line)

        conjugate = complex
        conjugate.formConjugate()
        XCTAssertEqual(complex.real, conjugate.real, file: file, line: line)
        XCTAssertEqual(complex.imaginary, -conjugate.imaginary, file: file, line: line)
    }

    private func testNegationMethods<Scalar>(_ complex: Complex<Scalar>, file: StaticString = #file, line: UInt = #line) where Scalar: SignedNumeric {
        var negative = -complex
        XCTAssertEqual(complex.real, -negative.real, file: file, line: line)
        XCTAssertEqual(complex.imaginary, -negative.imaginary, file: file, line: line)

        negative = complex
        negative.negate()
        XCTAssertEqual(complex.real, -negative.real, file: file, line: line)
        XCTAssertEqual(complex.imaginary, -negative.imaginary, file: file, line: line)
    }

    private func testMultiplyByOne<Scalar>(_ complex: Complex<Scalar>, file: StaticString = #file, line: UInt = #line) {
        let one = Complex<Scalar>.one
        let result = complex * one

        XCTAssertEqual(result, complex, file: file, line: line)
    }

    private func testMultiplyByI<Scalar>(_ complex: Complex<Scalar>, file: StaticString = #file, line: UInt = #line) where Scalar: SignedNumeric {
        let i = Complex<Scalar>.i
        let result = complex * i

        XCTAssertEqual(result.real, -complex.imaginary, file: file, line: line)
        XCTAssertEqual(result.imaginary, complex.real, file: file, line: line)
    }

    private func testPlusPrefixOperator<Scalar>(_ complex: Complex<Scalar>, file: StaticString = #file, line: UInt = #line) {
        XCTAssertEqual(complex, +complex, file: file, line: line)
    }

    private func testPolarComponents<Scalar>(_ complex: Complex<Scalar>, file: StaticString = #file, line: UInt = #line) where Scalar: BinaryFloatingPoint {
        XCTAssertEqual(complex.modulus, sqrt(complex.real * complex.real + complex.imaginary * complex.imaginary), file: file, line: line)
        XCTAssertEqual(complex.angle, Scalar(atan2(Float80(complex.imaginary), Float80(complex.real))), file: file, line: line)
    }
}
