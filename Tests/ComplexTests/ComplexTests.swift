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
        CTAssertEqual(Complex<Half>.zero, Complex(real: 0.0, imaginary: 0.0))
        CTAssertEqual(Complex<Float>.zero, Complex(real: 0.0, imaginary: 0.0))
        CTAssertEqual(Complex<Double>.zero, Complex(real: 0.0, imaginary: 0.0))
        CTAssertEqual(Complex<Float80>.zero, Complex(real: 0.0, imaginary: 0.0))

        do {
            let lhs = Complex<Half>(real: 1.0, imaginary: 2.0)
            let rhs = Complex<Half>(real: 3.0, imaginary: 4.0)
            var value = lhs
            value += rhs

            CTAssertEqual(lhs + rhs, Complex(real: 4.0, imaginary: 6.0))
            CTAssertEqual(value, Complex(real: 4.0, imaginary: 6.0))
            CTAssertEqual(value, lhs + rhs)

            value = lhs
            value -= rhs

            CTAssertEqual(lhs - rhs, Complex(real: -2.0, imaginary: -2.0))
            CTAssertEqual(value, Complex(real: -2.0, imaginary: -2.0))
            CTAssertEqual(value, lhs - rhs)
        }
        do {
            let lhs = Complex<Float>(real: 1.0, imaginary: 2.0)
            let rhs = Complex<Float>(real: 3.0, imaginary: 4.0)
            var value = lhs
            value += rhs

            CTAssertEqual(lhs + rhs, Complex(real: 4.0, imaginary: 6.0))
            CTAssertEqual(value, Complex(real: 4.0, imaginary: 6.0))
            CTAssertEqual(value, lhs + rhs)

            value = lhs
            value -= rhs

            CTAssertEqual(lhs - rhs, Complex(real: -2.0, imaginary: -2.0))
            CTAssertEqual(value, Complex(real: -2.0, imaginary: -2.0))
            CTAssertEqual(value, lhs - rhs)
        }
        do {
            let lhs = Complex<Double>(real: 1.0, imaginary: 2.0)
            let rhs = Complex<Double>(real: 3.0, imaginary: 4.0)
            var value = lhs
            value += rhs

            CTAssertEqual(lhs + rhs, Complex(real: 4.0, imaginary: 6.0))
            CTAssertEqual(value, Complex(real: 4.0, imaginary: 6.0))
            CTAssertEqual(value, lhs + rhs)

            value = lhs
            value -= rhs

            CTAssertEqual(lhs - rhs, Complex(real: -2.0, imaginary: -2.0))
            CTAssertEqual(value, Complex(real: -2.0, imaginary: -2.0))
            CTAssertEqual(value, lhs - rhs)
        }
        do {
            let lhs = Complex<Float80>(real: 1.0, imaginary: 2.0)
            let rhs = Complex<Float80>(real: 3.0, imaginary: 4.0)
            var value = lhs
            value += rhs

            CTAssertEqual(lhs + rhs, Complex(real: 4.0, imaginary: 6.0))
            CTAssertEqual(value, Complex(real: 4.0, imaginary: 6.0))
            CTAssertEqual(value, lhs + rhs)

            value = lhs
            value -= rhs

            CTAssertEqual(lhs - rhs, Complex(real: -2.0, imaginary: -2.0))
            CTAssertEqual(value, Complex(real: -2.0, imaginary: -2.0))
            CTAssertEqual(value, lhs - rhs)
        }
    }

    // MARK: Private Methods

    private func testInitialization<Scalar>(real: Scalar, imaginary: Scalar, file: StaticString = #file, line: UInt = #line) where Scalar: BinaryInteger {
        let complex0 = Complex<Scalar>()
        CTAssertEqual(complex0.real, 0)
        CTAssertEqual(complex0.imaginary, 0)

        let complex1 = Complex<Scalar>(real: real, imaginary: imaginary)
        CTAssertEqual(complex1.real, real)
        CTAssertEqual(complex1.imaginary, imaginary)

        let complex2 = Complex<Scalar>(complex1)
        CTAssertEqual(complex2.real, real)
        CTAssertEqual(complex2.imaginary, imaginary)

        let complex3 = Complex<Int64>(real: real, imaginary: imaginary)
        CTAssertEqual(complex3.real, Int64(real))
        CTAssertEqual(complex3.imaginary, Int64(imaginary))

        let complex4 = Complex<Int64>(complex1)
        CTAssertEqual(complex4.real, Int64(real))
        CTAssertEqual(complex4.imaginary, Int64(imaginary))

        let complex5 = Complex<Float80>(real: real, imaginary: imaginary)
        CTAssertEqual(complex5.real, Float80(real))
        CTAssertEqual(complex5.imaginary, Float80(imaginary))

        let complex6 = Complex<Float80>(complex1)
        CTAssertEqual(complex6.real, Float80(real))
        CTAssertEqual(complex6.imaginary, Float80(imaginary))

        let complex7: Complex<Scalar> = []
        CTAssertEqual(complex7.real, 0)
        CTAssertEqual(complex7.imaginary, 0)

        let complex8: Complex<Scalar> = [real]
        CTAssertEqual(complex8.real, real)
        CTAssertEqual(complex8.imaginary, 0)

        let complex9: Complex<Scalar> = [real, imaginary]
        CTAssertEqual(complex9.real, real)
        CTAssertEqual(complex9.imaginary, imaginary)
    }

    private func testInitialization<Scalar>(real: Scalar, imaginary: Scalar, file: StaticString = #file, line: UInt = #line) where Scalar: BinaryFloatingPoint {
        let complex0 = Complex<Scalar>()
        CTAssertEqual(complex0.real, 0.0)
        CTAssertEqual(complex0.imaginary, 0.0)

        let complex1 = Complex<Scalar>(real: real, imaginary: imaginary)
        CTAssertEqual(complex1.real, real)
        CTAssertEqual(complex1.imaginary, imaginary)

        let complex2 = Complex<Scalar>(complex1)
        CTAssertEqual(complex2.real, real)
        CTAssertEqual(complex2.imaginary, imaginary)

        let complex3 = Complex<Int64>(real: real, imaginary: imaginary)
        CTAssertEqual(complex3.real, Int64(real))
        CTAssertEqual(complex3.imaginary, Int64(imaginary))

        let complex4 = Complex<Int64>(complex1)
        CTAssertEqual(complex4.real, Int64(real))
        CTAssertEqual(complex4.imaginary, Int64(imaginary))

        let complex5 = Complex<Float80>(real: real, imaginary: imaginary)
        CTAssertEqual(complex5.real, Float80(real))
        CTAssertEqual(complex5.imaginary, Float80(imaginary))

        let complex6 = Complex<Float80>(complex1)
        CTAssertEqual(complex6.real, Float80(real))
        CTAssertEqual(complex6.imaginary, Float80(imaginary))

        let complex7: Complex<Scalar> = []
        CTAssertEqual(complex7.real, 0.0)
        CTAssertEqual(complex7.imaginary, 0.0)

        let complex8: Complex<Scalar> = [real]
        CTAssertEqual(complex8.real, real)
        CTAssertEqual(complex8.imaginary, 0.0)

        let complex9: Complex<Scalar> = [real, imaginary]
        CTAssertEqual(complex9.real, real)
        CTAssertEqual(complex9.imaginary, imaginary)
    }

    private func testRandomFactoryMethods<Scalar>(lowerBound: Scalar, upperBound: Scalar, file: StaticString = #file, line: UInt = #line) where Scalar: FixedWidthInteger {
        var generator = SystemRandomNumberGenerator()
        let closedRange: ClosedRange<Scalar> = lowerBound ... upperBound
        let range: Range<Scalar> = lowerBound ..< upperBound

        let complex1 = Complex<Scalar>.random(in: range)
        CTAssertTrue(range.contains(complex1.real))
        CTAssertTrue(range.contains(complex1.imaginary))

        let complex2 = Complex<Scalar>.random(in: range, using: &generator)
        CTAssertTrue(range.contains(complex2.real))
        CTAssertTrue(range.contains(complex2.imaginary))

        let complex3 = Complex<Scalar>.random(in: closedRange)
        CTAssertTrue(closedRange.contains(complex3.real))
        CTAssertTrue(closedRange.contains(complex3.imaginary))

        let complex4 = Complex<Scalar>.random(in: closedRange, using: &generator)
        CTAssertTrue(closedRange.contains(complex4.real))
        CTAssertTrue(closedRange.contains(complex4.imaginary))
    }

    private func testRandomFactoryMethods<Scalar>(lowerBound: Scalar, upperBound: Scalar, file: StaticString = #file, line: UInt = #line) where Scalar: BinaryFloatingPoint, Scalar.RawSignificand: FixedWidthInteger {
        var generator = SystemRandomNumberGenerator()
        let closedRange: ClosedRange<Scalar> = lowerBound ... upperBound
        let range: Range<Scalar> = lowerBound ..< upperBound

        let complex1 = Complex<Scalar>.random(in: range)
        CTAssertTrue(range.contains(complex1.real))
        CTAssertTrue(range.contains(complex1.imaginary))

        let complex2 = Complex<Scalar>.random(in: range, using: &generator)
        CTAssertTrue(range.contains(complex2.real))
        CTAssertTrue(range.contains(complex2.imaginary))

        let complex3 = Complex<Scalar>.random(in: closedRange)
        CTAssertTrue(closedRange.contains(complex3.real))
        CTAssertTrue(closedRange.contains(complex3.imaginary))

        let complex4 = Complex<Scalar>.random(in: closedRange, using: &generator)
        CTAssertTrue(closedRange.contains(complex4.real))
        CTAssertTrue(closedRange.contains(complex4.imaginary))
    }

    private func testDescriptionMethods<Scalar>(_ complex: Complex<Scalar>, file: StaticString = #file, line: UInt = #line) throws where Scalar: BinaryInteger {
        let description = complex.description
        let debugDescription = complex.debugDescription

        let realRegex = try NSRegularExpression(pattern: "real:[ ]*\(NSRegularExpression.escapedPattern(for: "\(complex.real)"))", options: [])
        let imaginaryRegex = try NSRegularExpression(pattern: "imaginary:[ ]*\(NSRegularExpression.escapedPattern(for: "\(complex.imaginary)"))", options: [])

        CTAssertEqual(description, debugDescription)
        CTAssertTrue(realRegex.numberOfMatches(in: description, options: [], range: NSRange(location: 0, length: description.count)) > 0)
        CTAssertTrue(imaginaryRegex.numberOfMatches(in: description, options: [], range: NSRange(location: 0, length: description.count)) > 0)

        CTAssertTrue(complex.string(withNotation: .square).contains("\(complex.real)"))
        CTAssertTrue(complex.string(withNotation: .square).contains("\(complex.imaginary)"))

        CTAssertTrue(complex.string(withNotation: .trigonometric).contains("\(complex.modulus)"))
        CTAssertTrue(complex.string(withNotation: .trigonometric).contains("\(complex.angle)"))

        CTAssertTrue(complex.string(withNotation: .euler).contains("\(complex.modulus)"))
        CTAssertTrue(complex.string(withNotation: .euler).contains("\(complex.angle)"))

        CTAssertTrue(complex.string(withNotation: .angle).contains("\(complex.modulus)"))
        CTAssertTrue(complex.string(withNotation: .angle).contains("\(complex.angle)"))
    }

    private func testDescriptionMethods<Scalar>(_ complex: Complex<Scalar>, file: StaticString = #file, line: UInt = #line) throws where Scalar: BinaryFloatingPoint {
        let description = complex.description
        let debugDescription = complex.debugDescription

        let realRegex = try NSRegularExpression(pattern: "real:[ ]*\(NSRegularExpression.escapedPattern(for: "\(complex.real)"))", options: [])
        let imaginaryRegex = try NSRegularExpression(pattern: "imaginary:[ ]*\(NSRegularExpression.escapedPattern(for: "\(complex.imaginary)"))", options: [])

        CTAssertEqual(description, debugDescription)
        CTAssertTrue(realRegex.numberOfMatches(in: description, options: [], range: NSRange(location: 0, length: description.count)) > 0)
        CTAssertTrue(imaginaryRegex.numberOfMatches(in: description, options: [], range: NSRange(location: 0, length: description.count)) > 0)

        CTAssertTrue(complex.string(withNotation: .square).contains("\(complex.real)"))
        CTAssertTrue(complex.string(withNotation: .square).contains("\(complex.imaginary)"))

        CTAssertTrue(complex.string(withNotation: .trigonometric).contains("\(complex.modulus)"))
        CTAssertTrue(complex.string(withNotation: .trigonometric).contains("\(complex.angle)"))

        CTAssertTrue(complex.string(withNotation: .euler).contains("\(complex.modulus)"))
        CTAssertTrue(complex.string(withNotation: .euler).contains("\(complex.angle)"))

        CTAssertTrue(complex.string(withNotation: .angle).contains("\(complex.modulus)"))
        CTAssertTrue(complex.string(withNotation: .angle).contains("\(complex.angle)"))
    }

    private func testHashing<Scalar>(_ complex: Complex<Scalar>, file: StaticString = #file, line: UInt = #line) where Scalar: Hashable {
        var hasher = Hasher()
        hasher.combine(complex)
        let value1 = hasher.finalize()

        hasher = Hasher()
        hasher.combine(complex.real)
        hasher.combine(complex.imaginary)
        let value2 = hasher.finalize()

        CTAssertEqual(value1, value2)
    }

    private func testRounding<Scalar>(_ complex: Complex<Scalar>, file: StaticString = #file, line: UInt = #line) where Scalar: FloatingPoint {
        CTAssertEqual(complex.rounded(), Complex(real: complex.real.rounded(), imaginary: complex.imaginary.rounded()))

        var rounded = complex
        rounded.round()
        CTAssertEqual(rounded, complex.rounded())

        for rule in [FloatingPointRoundingRule.toNearestOrAwayFromZero, .toNearestOrEven, .up, .down, .towardZero, .awayFromZero] {
            CTAssertEqual(complex.rounded(rule), Complex(real: complex.real.rounded(rule), imaginary: complex.imaginary.rounded(rule)))

            var rounded = complex
            rounded.round(rule)
            CTAssertEqual(rounded, complex.rounded(rule))
        }
    }

    private func testConjugateMethods<Scalar>(_ complex: Complex<Scalar>, file: StaticString = #file, line: UInt = #line) where Scalar: SignedNumeric {
        var conjugate = complex.conjugate()
        CTAssertEqual(complex.real, conjugate.real)
        CTAssertEqual(complex.imaginary, -conjugate.imaginary)

        conjugate = ~complex
        CTAssertEqual(complex.real, conjugate.real)
        CTAssertEqual(complex.imaginary, -conjugate.imaginary)

        conjugate = complex
        conjugate.formConjugate()
        CTAssertEqual(complex.real, conjugate.real)
        CTAssertEqual(complex.imaginary, -conjugate.imaginary)
    }

    private func testNegationMethods<Scalar>(_ complex: Complex<Scalar>, file: StaticString = #file, line: UInt = #line) where Scalar: SignedNumeric {
        var negative = -complex
        CTAssertEqual(complex.real, -negative.real)
        CTAssertEqual(complex.imaginary, -negative.imaginary)

        negative = complex
        negative.negate()
        CTAssertEqual(complex.real, -negative.real)
        CTAssertEqual(complex.imaginary, -negative.imaginary)
    }

    private func testMultiplyByOne<Scalar>(_ complex: Complex<Scalar>, file: StaticString = #file, line: UInt = #line) {
        let one = Complex<Scalar>.one
        let result = complex * one

        CTAssertEqual(result, complex)
    }

    private func testMultiplyByI<Scalar>(_ complex: Complex<Scalar>, file: StaticString = #file, line: UInt = #line) where Scalar: SignedNumeric {
        let i = Complex<Scalar>.i
        let result = complex * i

        CTAssertEqual(result.real, -complex.imaginary)
        CTAssertEqual(result.imaginary, complex.real)
    }

    private func testPlusPrefixOperator<Scalar>(_ complex: Complex<Scalar>, file: StaticString = #file, line: UInt = #line) {
        CTAssertEqual(complex, +complex)
    }

    private func testPolarComponents<Scalar>(_ complex: Complex<Scalar>, file: StaticString = #file, line: UInt = #line) where Scalar: BinaryFloatingPoint {
        CTAssertEqual(complex.modulus, sqrt(complex.real * complex.real + complex.imaginary * complex.imaginary))
        CTAssertEqual(complex.angle, Scalar(atan2(Float80(complex.imaginary), Float80(complex.real))))
    }
}
