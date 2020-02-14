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

    func testComplexInitialization() {
        do {
            var complex = Complex<Half>(real: -1.0, imaginary: 2.5)
            XCTAssertEqual(complex.real, -1.0)
            XCTAssertEqual(complex.imaginary, 2.5)

            complex = Complex<Half>(real: Float(-1.0), imaginary: Float(2.5))
            XCTAssertEqual(complex.real, -1.0)
            XCTAssertEqual(complex.imaginary, 2.5)

            complex = Complex<Half>(real: Double(-1.0), imaginary: Double(2.5))
            XCTAssertEqual(complex.real, -1.0)
            XCTAssertEqual(complex.imaginary, 2.5)

#if !(os(Windows) || os(Android)) && (arch(i386) || arch(x86_64))
            complex = Complex<Half>(real: Float80(-1.0), imaginary: Float80(2.5))
            XCTAssertEqual(complex.real, -1.0)
            XCTAssertEqual(complex.imaginary, 2.5)
#endif // #if !(os(Windows) || os(Android)) && (arch(i386) || arch(x86_64))

            complex = Complex<Half>(real: Int(-4), imaginary: Int(67))
            XCTAssertEqual(complex.real, -4.0)
            XCTAssertEqual(complex.imaginary, 67.0)

            complex = Complex<Half>(Complex(real: 9.0, imaginary: 4.0))
            XCTAssertEqual(complex.real, 9.0)
            XCTAssertEqual(complex.imaginary, 4.0)

            complex = []
            XCTAssertEqual(complex.real, 0.0)
            XCTAssertEqual(complex.imaginary, 0.0)

            complex = [-1.0]
            XCTAssertEqual(complex.real, -1.0)
            XCTAssertEqual(complex.imaginary, 0.0)

            complex = [-1.0, 2.5]
            XCTAssertEqual(complex.real, -1.0)
            XCTAssertEqual(complex.imaginary, 2.5)
        }
        do {
            var complex = Complex<Float>(real: -1.0, imaginary: 2.5)
            XCTAssertEqual(complex.real, -1.0)
            XCTAssertEqual(complex.imaginary, 2.5)

            complex = Complex<Float>(real: Half(-1.0), imaginary: Half(2.5))
            XCTAssertEqual(complex.real, -1.0)
            XCTAssertEqual(complex.imaginary, 2.5)

            complex = Complex<Float>(real: Double(-1.0), imaginary: Double(2.5))
            XCTAssertEqual(complex.real, -1.0)
            XCTAssertEqual(complex.imaginary, 2.5)

#if !(os(Windows) || os(Android)) && (arch(i386) || arch(x86_64))
            complex = Complex<Float>(real: Float80(-1.0), imaginary: Float80(2.5))
            XCTAssertEqual(complex.real, -1.0)
            XCTAssertEqual(complex.imaginary, 2.5)
#endif // #if !(os(Windows) || os(Android)) && (arch(i386) || arch(x86_64))

            complex = Complex<Float>(real: Int(-4), imaginary: Int(67))
            XCTAssertEqual(complex.real, -4.0)
            XCTAssertEqual(complex.imaginary, 67.0)

            complex = Complex<Float>(Complex(real: 9.0, imaginary: 4.0))
            XCTAssertEqual(complex.real, 9.0)
            XCTAssertEqual(complex.imaginary, 4.0)

            complex = []
            XCTAssertEqual(complex.real, 0.0)
            XCTAssertEqual(complex.imaginary, 0.0)

            complex = [-1.0]
            XCTAssertEqual(complex.real, -1.0)
            XCTAssertEqual(complex.imaginary, 0.0)

            complex = [-1.0, 2.5]
            XCTAssertEqual(complex.real, -1.0)
            XCTAssertEqual(complex.imaginary, 2.5)
        }
        do {
            var complex = Complex<Double>(real: -1.0, imaginary: 2.5)
            XCTAssertEqual(complex.real, -1.0)
            XCTAssertEqual(complex.imaginary, 2.5)

            complex = Complex<Double>(real: Half(-1.0), imaginary: Half(2.5))
            XCTAssertEqual(complex.real, -1.0)
            XCTAssertEqual(complex.imaginary, 2.5)

            complex = Complex<Double>(real: Float(-1.0), imaginary: Float(2.5))
            XCTAssertEqual(complex.real, -1.0)
            XCTAssertEqual(complex.imaginary, 2.5)

#if !(os(Windows) || os(Android)) && (arch(i386) || arch(x86_64))
            complex = Complex<Double>(real: Float80(-1.0), imaginary: Float80(2.5))
            XCTAssertEqual(complex.real, -1.0)
            XCTAssertEqual(complex.imaginary, 2.5)
#endif // #if !(os(Windows) || os(Android)) && (arch(i386) || arch(x86_64))

            complex = Complex<Double>(real: Int(-4), imaginary: Int(67))
            XCTAssertEqual(complex.real, -4.0)
            XCTAssertEqual(complex.imaginary, 67.0)

            complex = Complex<Double>(Complex(real: 9.0, imaginary: 4.0))
            XCTAssertEqual(complex.real, 9.0)
            XCTAssertEqual(complex.imaginary, 4.0)

            complex = []
            XCTAssertEqual(complex.real, 0.0)
            XCTAssertEqual(complex.imaginary, 0.0)

            complex = [-1.0]
            XCTAssertEqual(complex.real, -1.0)
            XCTAssertEqual(complex.imaginary, 0.0)

            complex = [-1.0, 2.5]
            XCTAssertEqual(complex.real, -1.0)
            XCTAssertEqual(complex.imaginary, 2.5)
        }
#if !(os(Windows) || os(Android)) && (arch(i386) || arch(x86_64))
        do {
            var complex = Complex<Float80>(real: -1.0, imaginary: 2.5)
            XCTAssertEqual(complex.real, -1.0)
            XCTAssertEqual(complex.imaginary, 2.5)

            complex = Complex<Float80>(real: Half(-1.0), imaginary: Half(2.5))
            XCTAssertEqual(complex.real, -1.0)
            XCTAssertEqual(complex.imaginary, 2.5)

            complex = Complex<Float80>(real: Float(-1.0), imaginary: Float(2.5))
            XCTAssertEqual(complex.real, -1.0)
            XCTAssertEqual(complex.imaginary, 2.5)

            complex = Complex<Float80>(real: Double(-1.0), imaginary: Double(2.5))
            XCTAssertEqual(complex.real, -1.0)
            XCTAssertEqual(complex.imaginary, 2.5)

            complex = Complex<Float80>(real: Int(-4), imaginary: Int(67))
            XCTAssertEqual(complex.real, -4.0)
            XCTAssertEqual(complex.imaginary, 67.0)

            complex = Complex<Float80>(Complex(real: 9.0, imaginary: 4.0))
            XCTAssertEqual(complex.real, 9.0)
            XCTAssertEqual(complex.imaginary, 4.0)

            complex = []
            XCTAssertEqual(complex.real, 0.0)
            XCTAssertEqual(complex.imaginary, 0.0)

            complex = [-1.0]
            XCTAssertEqual(complex.real, -1.0)
            XCTAssertEqual(complex.imaginary, 0.0)

            complex = [-1.0, 2.5]
            XCTAssertEqual(complex.real, -1.0)
            XCTAssertEqual(complex.imaginary, 2.5)
        }
#endif // #if !(os(Windows) || os(Android)) && (arch(i386) || arch(x86_64))
    }

    func testAdditiveArithmeticProtocolRequirements() {
        XCTAssertEqual(Complex<Half>.zero, Complex(real: 0.0, imaginary: 0.0))
        XCTAssertEqual(Complex<Float>.zero, Complex(real: 0.0, imaginary: 0.0))
        XCTAssertEqual(Complex<Double>.zero, Complex(real: 0.0, imaginary: 0.0))
#if !(os(Windows) || os(Android)) && (arch(i386) || arch(x86_64))
        XCTAssertEqual(Complex<Float80>.zero, Complex(real: 0.0, imaginary: 0.0))
#endif // #if !(os(Windows) || os(Android)) && (arch(i386) || arch(x86_64))

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
#if !(os(Windows) || os(Android)) && (arch(i386) || arch(x86_64))
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
#endif // #if !(os(Windows) || os(Android)) && (arch(i386) || arch(x86_64))
    }

    func testCustomStrings() {
        let half = Complex<Half>(real: 1.0, imaginary: 2.0)
        _ = half.description
        _ = half.debugDescription
        _ = half.string(withNotation: .square)
        _ = half.string(withNotation: .trigonometric)
        _ = half.string(withNotation: .euler)
        _ = half.string(withNotation: .angle)

        let float = Complex<Float>(real: 1.0, imaginary: 2.0)
        _ = float.description
        _ = float.debugDescription
        _ = float.string(withNotation: .square)
        _ = float.string(withNotation: .trigonometric)
        _ = float.string(withNotation: .euler)
        _ = float.string(withNotation: .angle)

        let double = Complex<Double>(real: 1.0, imaginary: 2.0)
        _ = double.description
        _ = double.debugDescription
        _ = double.string(withNotation: .square)
        _ = double.string(withNotation: .trigonometric)
        _ = double.string(withNotation: .euler)
        _ = double.string(withNotation: .angle)

#if !(os(Windows) || os(Android)) && (arch(i386) || arch(x86_64))
        let float80 = Complex<Float80>(real: 1.0, imaginary: 2.0)
        _ = float80.description
        _ = float80.debugDescription
        _ = float80.string(withNotation: .square)
        _ = float80.string(withNotation: .trigonometric)
        _ = float80.string(withNotation: .euler)
        _ = float80.string(withNotation: .angle)
#endif // #if !(os(Windows) || os(Android)) && (arch(i386) || arch(x86_64))
    }

    func testHashing() {
        let half = Complex<Half>(real: 1.0, imaginary: 2.0)
        var hasher = Hasher()
        hasher.combine(half)
        _ = hasher.finalize()

        let float = Complex<Float>(real: 1.0, imaginary: 2.0)
        hasher = Hasher()
        hasher.combine(float)
        _ = hasher.finalize()

        let double = Complex<Double>(real: 1.0, imaginary: 2.0)
        hasher = Hasher()
        hasher.combine(double)
        _ = hasher.finalize()

#if !(os(Windows) || os(Android)) && (arch(i386) || arch(x86_64))
        let float80 = Complex<Float80>(real: 1.0, imaginary: 2.0)
        hasher = Hasher()
        hasher.combine(float80)
        _ = hasher.finalize()
#endif // #if !(os(Windows) || os(Android)) && (arch(i386) || arch(x86_64))
    }

    func testMultiplicationAndDivision() {
        do {
            let lhs = Complex<Half>(real: 3.0, imaginary: 2.0)
            let rhs = Complex<Half>(real: 1.0, imaginary: 7.0)
            var value = lhs
            value *= rhs

            XCTAssertEqual(lhs * rhs, Complex(real: -11.0, imaginary: 23.0))
            XCTAssertEqual(value, Complex(real: -11.0, imaginary: 23.0))
            XCTAssertEqual(value, lhs * rhs)

            value = lhs
            value /= rhs

            XCTAssertEqual(lhs / rhs, Complex(real: 0.34, imaginary: -0.38))
            XCTAssertEqual(value, Complex(real: 0.34, imaginary: -0.38))
            XCTAssertEqual(value, lhs / rhs)
        }
        do {
            let lhs = Complex<Float>(real: 3.0, imaginary: 2.0)
            let rhs = Complex<Float>(real: 1.0, imaginary: 7.0)
            var value = lhs
            value *= rhs

            XCTAssertEqual(lhs * rhs, Complex(real: -11.0, imaginary: 23.0))
            XCTAssertEqual(value, Complex(real: -11.0, imaginary: 23.0))
            XCTAssertEqual(value, lhs * rhs)

            value = lhs
            value /= rhs

            XCTAssertEqual(lhs / rhs, Complex(real: 0.34, imaginary: -0.38))
            XCTAssertEqual(value, Complex(real: 0.34, imaginary: -0.38))
            XCTAssertEqual(value, lhs / rhs)
        }
        do {
            let lhs = Complex<Double>(real: 3.0, imaginary: 2.0)
            let rhs = Complex<Double>(real: 1.0, imaginary: 7.0)
            var value = lhs
            value *= rhs

            XCTAssertEqual(lhs * rhs, Complex(real: -11.0, imaginary: 23.0))
            XCTAssertEqual(value, Complex(real: -11.0, imaginary: 23.0))
            XCTAssertEqual(value, lhs * rhs)

            value = lhs
            value /= rhs

            XCTAssertEqual(lhs / rhs, Complex(real: 0.34, imaginary: -0.38))
            XCTAssertEqual(value, Complex(real: 0.34, imaginary: -0.38))
            XCTAssertEqual(value, lhs / rhs)
        }
#if !(os(Windows) || os(Android)) && (arch(i386) || arch(x86_64))
        do {
            let lhs = Complex<Float80>(real: 3.0, imaginary: 2.0)
            let rhs = Complex<Float80>(real: 1.0, imaginary: 7.0)
            var value = lhs
            value *= rhs

            XCTAssertEqual(lhs * rhs, Complex(real: -11.0, imaginary: 23.0))
            XCTAssertEqual(value, Complex(real: -11.0, imaginary: 23.0))
            XCTAssertEqual(value, lhs * rhs)

            value = lhs
            value /= rhs

            XCTAssertTrue(((lhs / rhs) - Complex(real: 0.34, imaginary: -0.38)).modulus < 0.0001)
            XCTAssertTrue((value - Complex(real: 0.34, imaginary: -0.38)).modulus < 0.0001)
            XCTAssertEqual(value, lhs / rhs)
        }
#endif // #if !(os(Windows) || os(Android)) && (arch(i386) || arch(x86_64))
    }

    func testComplexArithmeticWithRealNumbers() {
        do {
            let complex = Complex<Half>(real: 3.0, imaginary: 2.0)
            let real: Half = 5.0
            var value = complex
            value += real

            XCTAssertEqual(complex + real, Complex(real: 8.0, imaginary: 2.0))
            XCTAssertEqual(real + complex, Complex(real: 8.0, imaginary: 2.0))
            XCTAssertEqual(value, Complex(real: 8.0, imaginary: 2.0))
            XCTAssertEqual(value, complex + real)
            XCTAssertEqual(value, real + complex)

            value = complex
            value -= real

            XCTAssertEqual(complex - real, Complex(real: -2.0, imaginary: 2.0))
            XCTAssertEqual(real - complex, Complex(real: 2.0, imaginary: -2.0))
            XCTAssertEqual(value, Complex(real: -2.0, imaginary: 2.0))
            XCTAssertEqual(value, complex - real)
            XCTAssertEqual(-value, real - complex)

            value = complex
            value *= real

            XCTAssertEqual(complex * real, Complex(real: 15.0, imaginary: 10.0))
            XCTAssertEqual(real * complex, Complex(real: 15.0, imaginary: 10.0))
            XCTAssertEqual(value, Complex(real: 15.0, imaginary: 10.0))
            XCTAssertEqual(value, complex * real)
            XCTAssertEqual(value, real * complex)

            value = complex
            value /= real

            XCTAssertEqual(complex / real, Complex(real: 0.6, imaginary: 0.4))
            XCTAssertEqual(real / complex, Complex(real: 1.1542969, imaginary: -0.76904297))
            XCTAssertEqual(value, Complex(real: 0.6, imaginary: 0.4))
            XCTAssertEqual(value, complex / real)
        }
        do {
            let complex = Complex<Float>(real: 3.0, imaginary: 2.0)
            let real: Float = 5.0
            var value = complex
            value += real

            XCTAssertEqual(complex + real, Complex(real: 8.0, imaginary: 2.0))
            XCTAssertEqual(real + complex, Complex(real: 8.0, imaginary: 2.0))
            XCTAssertEqual(value, Complex(real: 8.0, imaginary: 2.0))
            XCTAssertEqual(value, complex + real)
            XCTAssertEqual(value, real + complex)

            value = complex
            value -= real

            XCTAssertEqual(complex - real, Complex(real: -2.0, imaginary: 2.0))
            XCTAssertEqual(real - complex, Complex(real: 2.0, imaginary: -2.0))
            XCTAssertEqual(value, Complex(real: -2.0, imaginary: 2.0))
            XCTAssertEqual(value, complex - real)
            XCTAssertEqual(-value, real - complex)

            value = complex
            value *= real

            XCTAssertEqual(complex * real, Complex(real: 15.0, imaginary: 10.0))
            XCTAssertEqual(real * complex, Complex(real: 15.0, imaginary: 10.0))
            XCTAssertEqual(value, Complex(real: 15.0, imaginary: 10.0))
            XCTAssertEqual(value, complex * real)
            XCTAssertEqual(value, real * complex)

            value = complex
            value /= real

            XCTAssertEqual(complex / real, Complex(real: 0.6, imaginary: 0.4))
            XCTAssertTrue(((real / complex) - Complex(real: 1.1542969, imaginary: -0.76904297)).modulus < 0.001)
            XCTAssertEqual(value, Complex(real: 0.6, imaginary: 0.4))
            XCTAssertEqual(value, complex / real)
        }
        do {
            let complex = Complex<Double>(real: 3.0, imaginary: 2.0)
            let real: Double = 5.0
            var value = complex
            value += real

            XCTAssertEqual(complex + real, Complex(real: 8.0, imaginary: 2.0))
            XCTAssertEqual(real + complex, Complex(real: 8.0, imaginary: 2.0))
            XCTAssertEqual(value, Complex(real: 8.0, imaginary: 2.0))
            XCTAssertEqual(value, complex + real)
            XCTAssertEqual(value, real + complex)

            value = complex
            value -= real

            XCTAssertEqual(complex - real, Complex(real: -2.0, imaginary: 2.0))
            XCTAssertEqual(real - complex, Complex(real: 2.0, imaginary: -2.0))
            XCTAssertEqual(value, Complex(real: -2.0, imaginary: 2.0))
            XCTAssertEqual(value, complex - real)
            XCTAssertEqual(-value, real - complex)

            value = complex
            value *= real

            XCTAssertEqual(complex * real, Complex(real: 15.0, imaginary: 10.0))
            XCTAssertEqual(real * complex, Complex(real: 15.0, imaginary: 10.0))
            XCTAssertEqual(value, Complex(real: 15.0, imaginary: 10.0))
            XCTAssertEqual(value, complex * real)
            XCTAssertEqual(value, real * complex)

            value = complex
            value /= real

            XCTAssertEqual(complex / real, Complex(real: 0.6, imaginary: 0.4))
            XCTAssertTrue(((real / complex) - Complex(real: 1.1542969, imaginary: -0.76904297)).modulus < 0.001)
            XCTAssertEqual(value, Complex(real: 0.6, imaginary: 0.4))
            XCTAssertEqual(value, complex / real)
        }
#if !(os(Windows) || os(Android)) && (arch(i386) || arch(x86_64))
        do {
            let complex = Complex<Float80>(real: 3.0, imaginary: 2.0)
            let real: Float80 = 5.0
            var value = complex
            value += real

            XCTAssertEqual(complex + real, Complex(real: 8.0, imaginary: 2.0))
            XCTAssertEqual(real + complex, Complex(real: 8.0, imaginary: 2.0))
            XCTAssertEqual(value, Complex(real: 8.0, imaginary: 2.0))
            XCTAssertEqual(value, complex + real)
            XCTAssertEqual(value, real + complex)

            value = complex
            value -= real

            XCTAssertEqual(complex - real, Complex(real: -2.0, imaginary: 2.0))
            XCTAssertEqual(real - complex, Complex(real: 2.0, imaginary: -2.0))
            XCTAssertEqual(value, Complex(real: -2.0, imaginary: 2.0))
            XCTAssertEqual(value, complex - real)
            XCTAssertEqual(-value, real - complex)

            value = complex
            value *= real

            XCTAssertEqual(complex * real, Complex(real: 15.0, imaginary: 10.0))
            XCTAssertEqual(real * complex, Complex(real: 15.0, imaginary: 10.0))
            XCTAssertEqual(value, Complex(real: 15.0, imaginary: 10.0))
            XCTAssertEqual(value, complex * real)
            XCTAssertEqual(value, real * complex)

            value = complex
            value /= real

            XCTAssertTrue(((complex / real) - Complex(real: 0.6, imaginary: 0.4)).modulus < 0.001)
            XCTAssertTrue(((real / complex) - Complex(real: 1.1542969, imaginary: -0.76904297)).modulus < 0.001)
            XCTAssertTrue((value - Complex(real: 0.6, imaginary: 0.4)).modulus < 0.001)
            XCTAssertEqual(value, complex / real)
        }
#endif // #if !(os(Windows) || os(Android)) && (arch(i386) || arch(x86_64))
    }

    func testNegation() {
        do {
            var complex = Complex<Half>(real: -7.0, imaginary: 4.0)
            XCTAssertEqual(complex.real, -7.0)
            XCTAssertEqual(complex.imaginary, 4.0)

            complex.negate()
            XCTAssertEqual(complex.real, 7.0)
            XCTAssertEqual(complex.imaginary, -4.0)

            complex = -complex
            XCTAssertEqual(complex.real, -7.0)
            XCTAssertEqual(complex.imaginary, 4.0)

            complex = +complex
            XCTAssertEqual(complex.real, -7.0)
            XCTAssertEqual(complex.imaginary, 4.0)
        }
        do {
            var complex = Complex<Float>(real: -7.0, imaginary: 4.0)
            XCTAssertEqual(complex.real, -7.0)
            XCTAssertEqual(complex.imaginary, 4.0)

            complex.negate()
            XCTAssertEqual(complex.real, 7.0)
            XCTAssertEqual(complex.imaginary, -4.0)

            complex = -complex
            XCTAssertEqual(complex.real, -7.0)
            XCTAssertEqual(complex.imaginary, 4.0)

            complex = +complex
            XCTAssertEqual(complex.real, -7.0)
            XCTAssertEqual(complex.imaginary, 4.0)
        }
        do {
            var complex = Complex<Double>(real: -7.0, imaginary: 4.0)
            XCTAssertEqual(complex.real, -7.0)
            XCTAssertEqual(complex.imaginary, 4.0)

            complex.negate()
            XCTAssertEqual(complex.real, 7.0)
            XCTAssertEqual(complex.imaginary, -4.0)

            complex = -complex
            XCTAssertEqual(complex.real, -7.0)
            XCTAssertEqual(complex.imaginary, 4.0)

            complex = +complex
            XCTAssertEqual(complex.real, -7.0)
            XCTAssertEqual(complex.imaginary, 4.0)
        }
#if !(os(Windows) || os(Android)) && (arch(i386) || arch(x86_64))
        do {
            var complex = Complex<Float80>(real: -7.0, imaginary: 4.0)
            XCTAssertEqual(complex.real, -7.0)
            XCTAssertEqual(complex.imaginary, 4.0)

            complex.negate()
            XCTAssertEqual(complex.real, 7.0)
            XCTAssertEqual(complex.imaginary, -4.0)

            complex = -complex
            XCTAssertEqual(complex.real, -7.0)
            XCTAssertEqual(complex.imaginary, 4.0)

            complex = +complex
            XCTAssertEqual(complex.real, -7.0)
            XCTAssertEqual(complex.imaginary, 4.0)
        }
#endif // #if !(os(Windows) || os(Android)) && (arch(i386) || arch(x86_64))
    }

    func testConjugates() {
        do {
            var complex = Complex<Half>(real: -7.0, imaginary: 4.0)
            XCTAssertEqual(complex.real, -7.0)
            XCTAssertEqual(complex.imaginary, 4.0)

            complex.formConjugate()
            XCTAssertEqual(complex.real, -7.0)
            XCTAssertEqual(complex.imaginary, -4.0)

            complex = complex.conjugate()
            XCTAssertEqual(complex.real, -7.0)
            XCTAssertEqual(complex.imaginary, 4.0)

            complex = ~complex
            XCTAssertEqual(complex.real, -7.0)
            XCTAssertEqual(complex.imaginary, -4.0)
        }
        do {
            var complex = Complex<Float>(real: -7.0, imaginary: 4.0)
            XCTAssertEqual(complex.real, -7.0)
            XCTAssertEqual(complex.imaginary, 4.0)

            complex.formConjugate()
            XCTAssertEqual(complex.real, -7.0)
            XCTAssertEqual(complex.imaginary, -4.0)

            complex = complex.conjugate()
            XCTAssertEqual(complex.real, -7.0)
            XCTAssertEqual(complex.imaginary, 4.0)

            complex = ~complex
            XCTAssertEqual(complex.real, -7.0)
            XCTAssertEqual(complex.imaginary, -4.0)
        }
        do {
            var complex = Complex<Double>(real: -7.0, imaginary: 4.0)
            XCTAssertEqual(complex.real, -7.0)
            XCTAssertEqual(complex.imaginary, 4.0)

            complex.formConjugate()
            XCTAssertEqual(complex.real, -7.0)
            XCTAssertEqual(complex.imaginary, -4.0)

            complex = complex.conjugate()
            XCTAssertEqual(complex.real, -7.0)
            XCTAssertEqual(complex.imaginary, 4.0)

            complex = ~complex
            XCTAssertEqual(complex.real, -7.0)
            XCTAssertEqual(complex.imaginary, -4.0)
        }
#if !(os(Windows) || os(Android)) && (arch(i386) || arch(x86_64))
        do {
            var complex = Complex<Float80>(real: -7.0, imaginary: 4.0)
            XCTAssertEqual(complex.real, -7.0)
            XCTAssertEqual(complex.imaginary, 4.0)

            complex.formConjugate()
            XCTAssertEqual(complex.real, -7.0)
            XCTAssertEqual(complex.imaginary, -4.0)

            complex = complex.conjugate()
            XCTAssertEqual(complex.real, -7.0)
            XCTAssertEqual(complex.imaginary, 4.0)

            complex = ~complex
            XCTAssertEqual(complex.real, -7.0)
            XCTAssertEqual(complex.imaginary, -4.0)
        }
#endif // #if !(os(Windows) || os(Android)) && (arch(i386) || arch(x86_64))
    }

    func testRounding() {
        do {
            let complex = Complex<Half>(real: 1.5, imaginary: -4.5)
            XCTAssertEqual(complex.rounded(), Complex(real: 2.0, imaginary: -5.0))
            XCTAssertEqual(complex.rounded(.toNearestOrAwayFromZero), Complex(real: 2.0, imaginary: -5.0))
            XCTAssertEqual(complex.rounded(.toNearestOrEven), Complex(real: 2.0, imaginary: -4.0))
            XCTAssertEqual(complex.rounded(.up), Complex(real: 2.0, imaginary: -4.0))
            XCTAssertEqual(complex.rounded(.down), Complex(real: 1.0, imaginary: -5.0))
            XCTAssertEqual(complex.rounded(.towardZero), Complex(real: 1.0, imaginary: -4.0))
            XCTAssertEqual(complex.rounded(.awayFromZero), Complex(real: 2.0, imaginary: -5.0))

            var value = complex
            value.round()
            XCTAssertEqual(value, Complex(real: 2.0, imaginary: -5.0))

            value = complex
            value.round(.toNearestOrAwayFromZero)
            XCTAssertEqual(value, Complex(real: 2.0, imaginary: -5.0))

            value = complex
            value.round(.toNearestOrEven)
            XCTAssertEqual(value, Complex(real: 2.0, imaginary: -4.0))

            value = complex
            value.round(.up)
            XCTAssertEqual(value, Complex(real: 2.0, imaginary: -4.0))

            value = complex
            value.round(.down)
            XCTAssertEqual(value, Complex(real: 1.0, imaginary: -5.0))

            value = complex
            value.round(.towardZero)
            XCTAssertEqual(value, Complex(real: 1.0, imaginary: -4.0))

            value = complex
            value.round(.awayFromZero)
            XCTAssertEqual(value, Complex(real: 2.0, imaginary: -5.0))
        }
        do {
            let complex = Complex<Float>(real: 1.5, imaginary: -4.5)
            XCTAssertEqual(complex.rounded(), Complex(real: 2.0, imaginary: -5.0))
            XCTAssertEqual(complex.rounded(.toNearestOrAwayFromZero), Complex(real: 2.0, imaginary: -5.0))
            XCTAssertEqual(complex.rounded(.toNearestOrEven), Complex(real: 2.0, imaginary: -4.0))
            XCTAssertEqual(complex.rounded(.up), Complex(real: 2.0, imaginary: -4.0))
            XCTAssertEqual(complex.rounded(.down), Complex(real: 1.0, imaginary: -5.0))
            XCTAssertEqual(complex.rounded(.towardZero), Complex(real: 1.0, imaginary: -4.0))
            XCTAssertEqual(complex.rounded(.awayFromZero), Complex(real: 2.0, imaginary: -5.0))

            var value = complex
            value.round()
            XCTAssertEqual(value, Complex(real: 2.0, imaginary: -5.0))

            value = complex
            value.round(.toNearestOrAwayFromZero)
            XCTAssertEqual(value, Complex(real: 2.0, imaginary: -5.0))

            value = complex
            value.round(.toNearestOrEven)
            XCTAssertEqual(value, Complex(real: 2.0, imaginary: -4.0))

            value = complex
            value.round(.up)
            XCTAssertEqual(value, Complex(real: 2.0, imaginary: -4.0))

            value = complex
            value.round(.down)
            XCTAssertEqual(value, Complex(real: 1.0, imaginary: -5.0))

            value = complex
            value.round(.towardZero)
            XCTAssertEqual(value, Complex(real: 1.0, imaginary: -4.0))

            value = complex
            value.round(.awayFromZero)
            XCTAssertEqual(value, Complex(real: 2.0, imaginary: -5.0))
        }
        do {
            let complex = Complex<Double>(real: 1.5, imaginary: -4.5)
            XCTAssertEqual(complex.rounded(), Complex(real: 2.0, imaginary: -5.0))
            XCTAssertEqual(complex.rounded(.toNearestOrAwayFromZero), Complex(real: 2.0, imaginary: -5.0))
            XCTAssertEqual(complex.rounded(.toNearestOrEven), Complex(real: 2.0, imaginary: -4.0))
            XCTAssertEqual(complex.rounded(.up), Complex(real: 2.0, imaginary: -4.0))
            XCTAssertEqual(complex.rounded(.down), Complex(real: 1.0, imaginary: -5.0))
            XCTAssertEqual(complex.rounded(.towardZero), Complex(real: 1.0, imaginary: -4.0))
            XCTAssertEqual(complex.rounded(.awayFromZero), Complex(real: 2.0, imaginary: -5.0))

            var value = complex
            value.round()
            XCTAssertEqual(value, Complex(real: 2.0, imaginary: -5.0))

            value = complex
            value.round(.toNearestOrAwayFromZero)
            XCTAssertEqual(value, Complex(real: 2.0, imaginary: -5.0))

            value = complex
            value.round(.toNearestOrEven)
            XCTAssertEqual(value, Complex(real: 2.0, imaginary: -4.0))

            value = complex
            value.round(.up)
            XCTAssertEqual(value, Complex(real: 2.0, imaginary: -4.0))

            value = complex
            value.round(.down)
            XCTAssertEqual(value, Complex(real: 1.0, imaginary: -5.0))

            value = complex
            value.round(.towardZero)
            XCTAssertEqual(value, Complex(real: 1.0, imaginary: -4.0))

            value = complex
            value.round(.awayFromZero)
            XCTAssertEqual(value, Complex(real: 2.0, imaginary: -5.0))
        }
#if !(os(Windows) || os(Android)) && (arch(i386) || arch(x86_64))
        do {
            let complex = Complex<Float80>(real: 1.5, imaginary: -4.5)
            XCTAssertEqual(complex.rounded(), Complex(real: 2.0, imaginary: -5.0))
            XCTAssertEqual(complex.rounded(.toNearestOrAwayFromZero), Complex(real: 2.0, imaginary: -5.0))
            XCTAssertEqual(complex.rounded(.toNearestOrEven), Complex(real: 2.0, imaginary: -4.0))
            XCTAssertEqual(complex.rounded(.up), Complex(real: 2.0, imaginary: -4.0))
            XCTAssertEqual(complex.rounded(.down), Complex(real: 1.0, imaginary: -5.0))
            XCTAssertEqual(complex.rounded(.towardZero), Complex(real: 1.0, imaginary: -4.0))
            XCTAssertEqual(complex.rounded(.awayFromZero), Complex(real: 2.0, imaginary: -5.0))

            var value = complex
            value.round()
            XCTAssertEqual(value, Complex(real: 2.0, imaginary: -5.0))

            value = complex
            value.round(.toNearestOrAwayFromZero)
            XCTAssertEqual(value, Complex(real: 2.0, imaginary: -5.0))

            value = complex
            value.round(.toNearestOrEven)
            XCTAssertEqual(value, Complex(real: 2.0, imaginary: -4.0))

            value = complex
            value.round(.up)
            XCTAssertEqual(value, Complex(real: 2.0, imaginary: -4.0))

            value = complex
            value.round(.down)
            XCTAssertEqual(value, Complex(real: 1.0, imaginary: -5.0))

            value = complex
            value.round(.towardZero)
            XCTAssertEqual(value, Complex(real: 1.0, imaginary: -4.0))

            value = complex
            value.round(.awayFromZero)
            XCTAssertEqual(value, Complex(real: 2.0, imaginary: -5.0))
        }
#endif // #if !(os(Windows) || os(Android)) && (arch(i386) || arch(x86_64))
    }

    func testPolarComponents() {
        do {
            let complex = Complex<Half>(real: 3.0, imaginary: 4.0)
            XCTAssertEqual(complex.modulus, 5.0)
            XCTAssertEqual(complex.angle, 0.9272461)
        }
        do {
            let complex = Complex<Float>(real: 3.0, imaginary: 4.0)
            XCTAssertEqual(complex.modulus, 5.0)
            XCTAssertEqual(complex.angle, 0.9272952)
        }
        do {
            let complex = Complex<Double>(real: 3.0, imaginary: 4.0)
            XCTAssertEqual(complex.modulus, 5.0)
            XCTAssertEqual(complex.angle, 0.9272952180016122)
        }
#if !(os(Windows) || os(Android)) && (arch(i386) || arch(x86_64))
        do {
            let complex = Complex<Float80>(real: 3.0, imaginary: 4.0)
            XCTAssertEqual(complex.modulus, 5.0)
            XCTAssertEqual(complex.angle, 0.9272952180016122324)
        }
#endif // #if !(os(Windows) || os(Android)) && (arch(i386) || arch(x86_64))
    }
}
