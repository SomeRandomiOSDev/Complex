//
//  FunctionsTests.swift
//  Complex
//
//  Copyright © 2020 SomeRandomiOSDev. All rights reserved.
//

@testable import Complex
import Half
import XCTest

class FunctionsTests: XCTestCase {

    // MARK: Test Methods

    func test_csqrt() {
        CTAssertEqual(csqrt(Half(-4.0)), Complex(real: 0.0, imaginary: 2.0))
        CTAssertEqual(csqrt(Half(9.0)), Complex(real: 3.0, imaginary: 0.0))

        CTAssertEqual(csqrt(Float(-4.0)), Complex(real: 0.0, imaginary: 2.0))
        CTAssertEqual(csqrt(Float(9.0)), Complex(real: 3.0, imaginary: 0.0))

        CTAssertEqual(csqrt(Double(-4.0)), Complex(real: 0.0, imaginary: 2.0))
        CTAssertEqual(csqrt(Double(9.0)), Complex(real: 3.0, imaginary: 0.0))

        CTAssertEqual(csqrt(Float80(-4.0)), Complex(real: 0.0, imaginary: 2.0))
        CTAssertEqual(csqrt(Float80(9.0)), Complex(real: 3.0, imaginary: 0.0))
    }

    func test_sqrt() {
        CTAssertEqual(sqrt(Complex<Half>(real: -4.0, imaginary: 0.0)), Complex(real: 0.0, imaginary: 2.0))
        CTAssertEqual(sqrt(Complex<Half>(real: 4.0, imaginary: 0.0)), Complex(real: 2.0, imaginary: 0.0))
        CTAssertEqual(sqrt(Complex<Half>(real: 0.0, imaginary: -4.0)), Complex(real: 2.0.squareRoot(), imaginary: -2.0.squareRoot()))
        CTAssertEqual(sqrt(Complex<Half>(real: 0.0, imaginary: 4.0)), Complex(real: 2.0.squareRoot(), imaginary: 2.0.squareRoot()))
        CTAssertEqual(sqrt(Complex<Half>(real: 3.0, imaginary: 4.0)), Complex(real: 2.0, imaginary: 1.0))
        CTAssertEqual(sqrt(Complex<Half>(real: -3.0, imaginary: 4.0)), Complex(real: 1.0, imaginary: 2.0))

        CTAssertEqual(sqrt(Complex<Float>(real: -4.0, imaginary: 0.0)), Complex(real: 0.0, imaginary: 2.0))
        CTAssertEqual(sqrt(Complex<Float>(real: 4.0, imaginary: 0.0)), Complex(real: 2.0, imaginary: 0.0))
        CTAssertEqual(sqrt(Complex<Float>(real: 0.0, imaginary: -4.0)), Complex(real: 2.0.squareRoot(), imaginary: -2.0.squareRoot()))
        CTAssertEqual(sqrt(Complex<Float>(real: 0.0, imaginary: 4.0)), Complex(real: 2.0.squareRoot(), imaginary: 2.0.squareRoot()))
        CTAssertEqual(sqrt(Complex<Float>(real: 3.0, imaginary: 4.0)), Complex(real: 2.0, imaginary: 1.0))
        CTAssertEqual(sqrt(Complex<Float>(real: -3.0, imaginary: 4.0)), Complex(real: 1.0, imaginary: 2.0))

        CTAssertEqual(sqrt(Complex<Double>(real: -4.0, imaginary: 0.0)), Complex(real: 0.0, imaginary: 2.0))
        CTAssertEqual(sqrt(Complex<Double>(real: 4.0, imaginary: 0.0)), Complex(real: 2.0, imaginary: 0.0))
        CTAssertEqual(sqrt(Complex<Double>(real: 0.0, imaginary: -4.0)), Complex(real: 2.0.squareRoot(), imaginary: -2.0.squareRoot()))
        CTAssertEqual(sqrt(Complex<Double>(real: 0.0, imaginary: 4.0)), Complex(real: 2.0.squareRoot(), imaginary: 2.0.squareRoot()))
        CTAssertEqual(sqrt(Complex<Double>(real: 3.0, imaginary: 4.0)), Complex(real: 2.0, imaginary: 1.0))
        CTAssertEqual(sqrt(Complex<Double>(real: -3.0, imaginary: 4.0)), Complex(real: 1.0, imaginary: 2.0))

        CTAssertEqual(sqrt(Complex<Float80>(real: -4.0, imaginary: 0.0)), Complex(real: 0.0, imaginary: 2.0))
        CTAssertEqual(sqrt(Complex<Float80>(real: 4.0, imaginary: 0.0)), Complex(real: 2.0, imaginary: 0.0))
        CTAssertTrue((sqrt(Complex<Float80>(real: 0.0, imaginary: -4.0)) - Complex(real: 2.0.squareRoot(), imaginary: -2.0.squareRoot())).modulus < 0.0001)
        CTAssertTrue((sqrt(Complex<Float80>(real: 0.0, imaginary: 4.0)) - Complex(real: 2.0.squareRoot(), imaginary: 2.0.squareRoot())).modulus < 0.0001)
        CTAssertEqual(sqrt(Complex<Float80>(real: 3.0, imaginary: 4.0)), Complex(real: 2.0, imaginary: 1.0))
        CTAssertEqual(sqrt(Complex<Float80>(real: -3.0, imaginary: 4.0)), Complex(real: 1.0, imaginary: 2.0))
    }

    func test_abs() {
        CTAssertEqual(abs(Complex<Half>(real: -4.5, imaginary: 3.7)), Complex<Half>(real: 4.5, imaginary: 3.7))
        CTAssertEqual(abs(Complex<Float>(real: -4.5, imaginary: 3.7)), Complex<Float>(real: 4.5, imaginary: 3.7))
        CTAssertEqual(abs(Complex<Double>(real: -4.5, imaginary: 3.7)), Complex<Double>(real: 4.5, imaginary: 3.7))
        CTAssertEqual(abs(Complex<Float80>(real: -4.5, imaginary: 3.7)), Complex<Float80>(real: 4.5, imaginary: 3.7))
    }

    func test_min() {
        CTAssertEqual(min(Complex<Half>(real: -4.5, imaginary: 3.7), Complex<Half>(real: 7.0, imaginary: 1.2)), Complex<Half>(real: -4.5, imaginary: 1.2))
        CTAssertEqual(min(Complex<Float>(real: -4.5, imaginary: 3.7), Complex<Float>(real: 7.0, imaginary: 1.2)), Complex<Float>(real: -4.5, imaginary: 1.2))
        CTAssertEqual(min(Complex<Double>(real: -4.5, imaginary: 3.7), Complex<Double>(real: 7.0, imaginary: 1.2)), Complex<Double>(real: -4.5, imaginary: 1.2))
        CTAssertEqual(min(Complex<Float80>(real: -4.5, imaginary: 3.7), Complex<Float80>(real: 7.0, imaginary: 1.2)), Complex<Float80>(real: -4.5, imaginary: 1.2))
    }

    func test_max() {
        CTAssertEqual(max(Complex<Half>(real: -4.5, imaginary: 3.7), Complex<Half>(real: 7.0, imaginary: 1.2)), Complex<Half>(real: 7.0, imaginary: 3.7))
        CTAssertEqual(max(Complex<Float>(real: -4.5, imaginary: 3.7), Complex<Float>(real: 7.0, imaginary: 1.2)), Complex<Float>(real: 7.0, imaginary: 3.7))
        CTAssertEqual(max(Complex<Double>(real: -4.5, imaginary: 3.7), Complex<Double>(real: 7.0, imaginary: 1.2)), Complex<Double>(real: 7.0, imaginary: 3.7))
        CTAssertEqual(max(Complex<Float80>(real: -4.5, imaginary: 3.7), Complex<Float80>(real: 7.0, imaginary: 1.2)), Complex<Float80>(real: 7.0, imaginary: 3.7))
    }

    func test_clamp() {
        CTAssertEqual(clamp(Complex<Half>(real: -4.5, imaginary: 3.7), -4.0, 4.0), Complex<Half>(real: -4.0, imaginary: 3.7))
        CTAssertEqual(clamp(Complex<Half>(real: -4.5, imaginary: 3.7), Complex<Half>(real: 0.0, imaginary: 0.0), Complex(real: 2.0, imaginary: 4.0)), Complex<Half>(real: 0.0, imaginary: 3.7))

        CTAssertEqual(clamp(Complex<Float>(real: -4.5, imaginary: 3.7), -4.0, 4.0), Complex<Float>(real: -4.0, imaginary: 3.7))
        CTAssertEqual(clamp(Complex<Float>(real: -4.5, imaginary: 3.7), Complex<Float>(real: 0.0, imaginary: 0.0), Complex<Float>(real: 2.0, imaginary: 4.0)), Complex<Float>(real: 0.0, imaginary: 3.7))

        CTAssertEqual(clamp(Complex<Double>(real: -4.5, imaginary: 3.7), -4.0, 4.0), Complex<Double>(real: -4.0, imaginary: 3.7))
        CTAssertEqual(clamp(Complex<Double>(real: -4.5, imaginary: 3.7), Complex<Double>(real: 0.0, imaginary: 0.0), Complex<Double>(real: 2.0, imaginary: 4.0)), Complex<Double>(real: 0.0, imaginary: 3.7))
        CTAssertEqual(clamp(Complex<Float80>(real: -4.5, imaginary: 3.7), -4.0, 4.0), Complex<Float80>(real: -4.0, imaginary: 3.7))
        CTAssertEqual(clamp(Complex<Float80>(real: -4.5, imaginary: 3.7), Complex<Float80>(real: 0.0, imaginary: 0.0), Complex<Float80>(real: 2.0, imaginary: 4.0)), Complex<Float80>(real: 0.0, imaginary: 3.7))
    }

    func test_exp() {
        CTAssertEqual(exp(Complex<Float>(real: 2.0, imaginary: 0.0)), Complex<Float>(real: exp(2.0), imaginary: 0.0), accuracy: 0.0001)
        CTAssertEqual(exp(Complex<Float>(real: 2.0, imaginary: .pi * 0.5)), Complex<Float>(real: 0.0, imaginary: exp(2.0)), accuracy: 0.0001)
        CTAssertEqual(exp(Complex<Float>(real: 2.0, imaginary: .pi)), Complex<Float>(real: -exp(2.0), imaginary: 0.0), accuracy: 0.0001)
        CTAssertEqual(exp(Complex<Float>(real: 2.0, imaginary: .pi * 1.5)), Complex<Float>(real: 0.0, imaginary: -exp(2.0)), accuracy: 0.0001)
        CTAssertEqual(exp(Complex<Double>(real: 2.0, imaginary: 0.0)), Complex<Double>(real: exp(2.0), imaginary: 0.0), accuracy: 0.0001)
        CTAssertEqual(exp(Complex<Double>(real: 2.0, imaginary: .pi * 0.5)), Complex<Double>(real: 0.0, imaginary: exp(2.0)), accuracy: 0.0001)
        CTAssertEqual(exp(Complex<Double>(real: 2.0, imaginary: .pi)), Complex<Double>(real: -exp(2.0), imaginary: 0.0), accuracy: 0.0001)
        CTAssertEqual(exp(Complex<Double>(real: 2.0, imaginary: .pi * 1.5)), Complex<Double>(real: 0.0, imaginary: -exp(2.0)), accuracy: 0.0001)
        CTAssertEqual(exp(Complex<Float80>(real: 2.0, imaginary: 0.0)), Complex<Float80>(real: exp(2.0), imaginary: 0.0), accuracy: 0.0001)
        CTAssertEqual(exp(Complex<Float80>(real: 2.0, imaginary: .pi * 0.5)), Complex<Float80>(real: 0.0, imaginary: exp(2.0)), accuracy: 0.0001)
        CTAssertEqual(exp(Complex<Float80>(real: 2.0, imaginary: .pi)), Complex<Float80>(real: -exp(2.0), imaginary: 0.0), accuracy: 0.0001)
        CTAssertEqual(exp(Complex<Float80>(real: 2.0, imaginary: .pi * 1.5)), Complex<Float80>(real: 0.0, imaginary: -exp(2.0)), accuracy: 0.0001)
    }

    func test_log() {
        for complex in sampleComplexNumbers(ofType: Float.self) {
            CTAssertEqual(log(complex), Complex<Float>(real: log(complex.modulus), imaginary: complex.angle), accuracy: 0.0001)
        }
        for complex in sampleComplexNumbers(ofType: Double.self) {
            CTAssertEqual(log(complex), Complex<Double>(real: log(complex.modulus), imaginary: complex.angle), accuracy: 0.0001)
        }
        for complex in sampleComplexNumbers(ofType: Float80.self) {
            CTAssertEqual(log(complex), Complex<Float80>(real: log(complex.modulus), imaginary: complex.angle), accuracy: 0.0001)
        }
    }

    func test_log10() {
        for complex in sampleComplexNumbers(ofType: Float.self) {
            CTAssertEqual(log10(complex), log(complex) / log(10), accuracy: 0.0001)
        }
        for complex in sampleComplexNumbers(ofType: Double.self) {
            CTAssertEqual(log10(complex), log(complex) / log(10), accuracy: 0.0001)
        }
        for complex in sampleComplexNumbers(ofType: Float80.self) {
            CTAssertEqual(log10(complex), log(complex) / log(10), accuracy: 0.0001)
        }
    }

    func test_log2() {
        for complex in sampleComplexNumbers(ofType: Float.self) {
            CTAssertEqual(log2(complex), log(complex) / log(2), accuracy: 0.0001)
        }
        for complex in sampleComplexNumbers(ofType: Double.self) {
            CTAssertEqual(log2(complex), log(complex) / log(2), accuracy: 0.0001)
        }
        for complex in sampleComplexNumbers(ofType: Float80.self) {
            CTAssertEqual(log2(complex), log(complex) / log(2), accuracy: 0.0001)
        }
    }

    func test_sin() {
        for complex in sampleComplexNumbers(ofType: Float.self) {
            CTAssertEqual(sin(complex), Complex<Float>(real: sin(complex.real) * cosh(complex.imaginary), imaginary: cos(complex.real) * sinh(complex.imaginary)), accuracy: 0.0001)
        }
        for complex in sampleComplexNumbers(ofType: Double.self) {
            CTAssertEqual(sin(complex), Complex<Double>(real: sin(complex.real) * cosh(complex.imaginary), imaginary: cos(complex.real) * sinh(complex.imaginary)), accuracy: 0.0001)
        }
        for complex in sampleComplexNumbers(ofType: Float80.self) {
            CTAssertEqual(sin(complex), Complex<Float80>(real: sin(complex.real) * cosh(complex.imaginary), imaginary: cos(complex.real) * sinh(complex.imaginary)), accuracy: 0.0001)
        }
    }

    func test_asin() {
        for complex in sampleComplexNumbers(ofType: Float.self) {
            //swiftlint:disable identifier_name
            let iz = .i * complex
            let root = sqrt(1.0 - (complex * complex))
            let result = -.i * log(iz + root)
            //swiftlint:enable identifier_name

            CTAssertEqual(asin(complex), result, accuracy: 0.0001)
        }
        for complex in sampleComplexNumbers(ofType: Double.self) {
            //swiftlint:disable identifier_name
            let iz = .i * complex
            let root = sqrt(1.0 - (complex * complex))
            let result = -.i * log(iz + root)
            //swiftlint:enable identifier_name

            CTAssertEqual(asin(complex), result, accuracy: 0.0001)
        }
        for complex in sampleComplexNumbers(ofType: Float80.self) {
            //swiftlint:disable identifier_name
            let iz = .i * complex
            let root = sqrt(1.0 - (complex * complex))
            let result = -.i * log(iz + root)
            //swiftlint:enable identifier_name

            CTAssertEqual(asin(complex), result, accuracy: 0.0001)
        }
    }

    func test_sinh() {
        for complex in sampleComplexNumbers(ofType: Float.self) {
            CTAssertEqual(sinh(complex), -.i * sin(.i * complex), accuracy: 0.0001)
        }
        for complex in sampleComplexNumbers(ofType: Double.self) {
            CTAssertEqual(sinh(complex), -.i * sin(.i * complex), accuracy: 0.0001)
        }
        for complex in sampleComplexNumbers(ofType: Float80.self) {
            CTAssertEqual(sinh(complex), -.i * sin(.i * complex), accuracy: 0.0001)
        }
    }

    func test_cos() {
        for complex in sampleComplexNumbers(ofType: Float.self) {
            CTAssertEqual(cos(complex), Complex<Float>(real: cos(complex.real) * cosh(complex.imaginary), imaginary: -sin(complex.real) * sinh(complex.imaginary)), accuracy: 0.0001)
        }
        for complex in sampleComplexNumbers(ofType: Double.self) {
            CTAssertEqual(cos(complex), Complex<Double>(real: cos(complex.real) * cosh(complex.imaginary), imaginary: -sin(complex.real) * sinh(complex.imaginary)), accuracy: 0.0001)
        }
        for complex in sampleComplexNumbers(ofType: Float80.self) {
            CTAssertEqual(cos(complex), Complex<Float80>(real: cos(complex.real) * cosh(complex.imaginary), imaginary: -sin(complex.real) * sinh(complex.imaginary)), accuracy: 0.0001)
        }
    }

    func test_acos() {
        for complex in sampleComplexNumbers(ofType: Float.self) {
            let root = sqrt((complex * complex) - 1.0)
            let result = -.i * log(complex + root)

            CTAssertEqual(acos(complex), result, accuracy: 0.0001)
        }
        for complex in sampleComplexNumbers(ofType: Double.self) {
            let root = sqrt((complex * complex) - 1.0)
            let result = -.i * log(complex + root)

            CTAssertEqual(acos(complex), result, accuracy: 0.0001)
        }
        for complex in sampleComplexNumbers(ofType: Float80.self) {
            let root = sqrt((complex * complex) - 1.0)
            let result = -.i * log(complex + root)

            CTAssertEqual(acos(complex), result, accuracy: 0.0001)
        }
    }

    func test_cosh() {
        for complex in sampleComplexNumbers(ofType: Float.self) {
            CTAssertEqual(cosh(complex), cos(.i * complex), accuracy: 0.0001)
        }
        for complex in sampleComplexNumbers(ofType: Double.self) {
            CTAssertEqual(cosh(complex), cos(.i * complex), accuracy: 0.0001)
        }
        for complex in sampleComplexNumbers(ofType: Float80.self) {
            CTAssertEqual(cosh(complex), cos(.i * complex), accuracy: 0.0001)
        }
    }

    func test_tan() {
        for complex in sampleComplexNumbers(ofType: Float.self) {
            CTAssertEqual(tan(complex), sin(complex) / cos(complex), accuracy: 0.0001)
        }
        for complex in sampleComplexNumbers(ofType: Double.self) {
            CTAssertEqual(tan(complex), sin(complex) / cos(complex), accuracy: 0.0001)
        }
        for complex in sampleComplexNumbers(ofType: Float80.self) {
            CTAssertEqual(tan(complex), sin(complex) / cos(complex), accuracy: 0.0001)
        }
    }

    func test_atan() {
        for complex in sampleComplexNumbers(ofType: Float.self) {
            let quotient = (.i + complex) / (.i - complex)
            let result = .i * 0.5 * log(quotient)

            CTAssertEqual(atan(complex), result, accuracy: 0.0001)
        }
        for complex in sampleComplexNumbers(ofType: Double.self) {
            let quotient = (.i + complex) / (.i - complex)
            let result = .i * 0.5 * log(quotient)

            CTAssertEqual(atan(complex), result, accuracy: 0.0001)
        }
        for complex in sampleComplexNumbers(ofType: Float80.self) {
            let quotient = (.i + complex) / (.i - complex)
            let result = .i * 0.5 * log(quotient)

            CTAssertEqual(atan(complex), result, accuracy: 0.0001)
        }
    }

    func test_tanh() {
        for complex in sampleComplexNumbers(ofType: Float.self) {
            CTAssertEqual(tanh(complex), -.i * tan(.i * complex), accuracy: 0.0001)
        }
        for complex in sampleComplexNumbers(ofType: Double.self) {
            CTAssertEqual(tanh(complex), -.i * tan(.i * complex), accuracy: 0.0001)
        }
        for complex in sampleComplexNumbers(ofType: Float80.self) {
            CTAssertEqual(tanh(complex), -.i * tan(.i * complex), accuracy: 0.0001)
        }
    }

    // MARK: Private Methods

    private func sampleComplexNumbers<Scalar>(ofType: Scalar.Type) -> [Complex<Scalar>] where Scalar: BinaryFloatingPoint {
        return [Complex<Scalar>(real: 2.0, imaginary: 0.0),
                Complex<Scalar>(real: 2.0, imaginary: .pi * 0.5),
                Complex<Scalar>(real: 2.0, imaginary: .pi),
                Complex<Scalar>(real: 2.0, imaginary: .pi * 1.5)]
    }
}
