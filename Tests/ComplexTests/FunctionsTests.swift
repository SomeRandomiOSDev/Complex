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
        XCTAssertEqual(csqrt(Half(-4.0)), Complex(real: 0.0, imaginary: 2.0))
        XCTAssertEqual(csqrt(Half(9.0)), Complex(real: 3.0, imaginary: 0.0))

        XCTAssertEqual(csqrt(Float(-4.0)), Complex(real: 0.0, imaginary: 2.0))
        XCTAssertEqual(csqrt(Float(9.0)), Complex(real: 3.0, imaginary: 0.0))

        XCTAssertEqual(csqrt(Double(-4.0)), Complex(real: 0.0, imaginary: 2.0))
        XCTAssertEqual(csqrt(Double(9.0)), Complex(real: 3.0, imaginary: 0.0))

        XCTAssertEqual(csqrt(Float80(-4.0)), Complex(real: 0.0, imaginary: 2.0))
        XCTAssertEqual(csqrt(Float80(9.0)), Complex(real: 3.0, imaginary: 0.0))
    }

    func test_sqrt() {
        XCTAssertEqual(sqrt(Complex<Half>(real: -4.0, imaginary: 0.0)), Complex(real: 0.0, imaginary: 2.0))
        XCTAssertEqual(sqrt(Complex<Half>(real: 4.0, imaginary: 0.0)), Complex(real: 2.0, imaginary: 0.0))
        XCTAssertEqual(sqrt(Complex<Half>(real: 0.0, imaginary: -4.0)), Complex(real: 2.0.squareRoot(), imaginary: -2.0.squareRoot()))
        XCTAssertEqual(sqrt(Complex<Half>(real: 0.0, imaginary: 4.0)), Complex(real: 2.0.squareRoot(), imaginary: 2.0.squareRoot()))
        XCTAssertEqual(sqrt(Complex<Half>(real: 3.0, imaginary: 4.0)), Complex(real: 2.0, imaginary: 1.0))
        XCTAssertEqual(sqrt(Complex<Half>(real: -3.0, imaginary: 4.0)), Complex(real: 1.0, imaginary: 2.0))

        XCTAssertEqual(sqrt(Complex<Float>(real: -4.0, imaginary: 0.0)), Complex(real: 0.0, imaginary: 2.0))
        XCTAssertEqual(sqrt(Complex<Float>(real: 4.0, imaginary: 0.0)), Complex(real: 2.0, imaginary: 0.0))
        XCTAssertEqual(sqrt(Complex<Float>(real: 0.0, imaginary: -4.0)), Complex(real: 2.0.squareRoot(), imaginary: -2.0.squareRoot()))
        XCTAssertEqual(sqrt(Complex<Float>(real: 0.0, imaginary: 4.0)), Complex(real: 2.0.squareRoot(), imaginary: 2.0.squareRoot()))
        XCTAssertEqual(sqrt(Complex<Float>(real: 3.0, imaginary: 4.0)), Complex(real: 2.0, imaginary: 1.0))
        XCTAssertEqual(sqrt(Complex<Float>(real: -3.0, imaginary: 4.0)), Complex(real: 1.0, imaginary: 2.0))

        XCTAssertEqual(sqrt(Complex<Double>(real: -4.0, imaginary: 0.0)), Complex(real: 0.0, imaginary: 2.0))
        XCTAssertEqual(sqrt(Complex<Double>(real: 4.0, imaginary: 0.0)), Complex(real: 2.0, imaginary: 0.0))
        XCTAssertEqual(sqrt(Complex<Double>(real: 0.0, imaginary: -4.0)), Complex(real: 2.0.squareRoot(), imaginary: -2.0.squareRoot()))
        XCTAssertEqual(sqrt(Complex<Double>(real: 0.0, imaginary: 4.0)), Complex(real: 2.0.squareRoot(), imaginary: 2.0.squareRoot()))
        XCTAssertEqual(sqrt(Complex<Double>(real: 3.0, imaginary: 4.0)), Complex(real: 2.0, imaginary: 1.0))
        XCTAssertEqual(sqrt(Complex<Double>(real: -3.0, imaginary: 4.0)), Complex(real: 1.0, imaginary: 2.0))

        XCTAssertEqual(sqrt(Complex<Float80>(real: -4.0, imaginary: 0.0)), Complex(real: 0.0, imaginary: 2.0))
        XCTAssertEqual(sqrt(Complex<Float80>(real: 4.0, imaginary: 0.0)), Complex(real: 2.0, imaginary: 0.0))
        XCTAssertTrue((sqrt(Complex<Float80>(real: 0.0, imaginary: -4.0)) - Complex(real: 2.0.squareRoot(), imaginary: -2.0.squareRoot())).modulus < 0.0001)
        XCTAssertTrue((sqrt(Complex<Float80>(real: 0.0, imaginary: 4.0)) - Complex(real: 2.0.squareRoot(), imaginary: 2.0.squareRoot())).modulus < 0.0001)
        XCTAssertEqual(sqrt(Complex<Float80>(real: 3.0, imaginary: 4.0)), Complex(real: 2.0, imaginary: 1.0))
        XCTAssertEqual(sqrt(Complex<Float80>(real: -3.0, imaginary: 4.0)), Complex(real: 1.0, imaginary: 2.0))
    }

    func test_abs() {
        XCTAssertEqual(abs(Complex<Half>(real: -4.5, imaginary: 3.7)), Complex<Half>(real: 4.5, imaginary: 3.7))
        XCTAssertEqual(abs(Complex<Float>(real: -4.5, imaginary: 3.7)), Complex<Float>(real: 4.5, imaginary: 3.7))
        XCTAssertEqual(abs(Complex<Double>(real: -4.5, imaginary: 3.7)), Complex<Double>(real: 4.5, imaginary: 3.7))
        XCTAssertEqual(abs(Complex<Float80>(real: -4.5, imaginary: 3.7)), Complex<Float80>(real: 4.5, imaginary: 3.7))
    }

    func test_min() {
        XCTAssertEqual(min(Complex<Half>(real: -4.5, imaginary: 3.7), Complex<Half>(real: 7.0, imaginary: 1.2)), Complex<Half>(real: -4.5, imaginary: 1.2))
        XCTAssertEqual(min(Complex<Float>(real: -4.5, imaginary: 3.7), Complex<Float>(real: 7.0, imaginary: 1.2)), Complex<Float>(real: -4.5, imaginary: 1.2))
        XCTAssertEqual(min(Complex<Double>(real: -4.5, imaginary: 3.7), Complex<Double>(real: 7.0, imaginary: 1.2)), Complex<Double>(real: -4.5, imaginary: 1.2))
        XCTAssertEqual(min(Complex<Float80>(real: -4.5, imaginary: 3.7), Complex<Float80>(real: 7.0, imaginary: 1.2)), Complex<Float80>(real: -4.5, imaginary: 1.2))
    }

    func test_max() {
        XCTAssertEqual(max(Complex<Half>(real: -4.5, imaginary: 3.7), Complex<Half>(real: 7.0, imaginary: 1.2)), Complex<Half>(real: 7.0, imaginary: 3.7))
        XCTAssertEqual(max(Complex<Float>(real: -4.5, imaginary: 3.7), Complex<Float>(real: 7.0, imaginary: 1.2)), Complex<Float>(real: 7.0, imaginary: 3.7))
        XCTAssertEqual(max(Complex<Double>(real: -4.5, imaginary: 3.7), Complex<Double>(real: 7.0, imaginary: 1.2)), Complex<Double>(real: 7.0, imaginary: 3.7))
        XCTAssertEqual(max(Complex<Float80>(real: -4.5, imaginary: 3.7), Complex<Float80>(real: 7.0, imaginary: 1.2)), Complex<Float80>(real: 7.0, imaginary: 3.7))
    }

    func test_clamp() {
        XCTAssertEqual(clamp(Complex<Half>(real: -4.5, imaginary: 3.7), -4.0, 4.0), Complex<Half>(real: -4.0, imaginary: 3.7))
        XCTAssertEqual(clamp(Complex<Half>(real: -4.5, imaginary: 3.7), Complex<Half>(real: 0.0, imaginary: 0.0), Complex(real: 2.0, imaginary: 4.0)), Complex<Half>(real: 0.0, imaginary: 3.7))

        XCTAssertEqual(clamp(Complex<Float>(real: -4.5, imaginary: 3.7), -4.0, 4.0), Complex<Float>(real: -4.0, imaginary: 3.7))
        XCTAssertEqual(clamp(Complex<Float>(real: -4.5, imaginary: 3.7), Complex<Float>(real: 0.0, imaginary: 0.0), Complex<Float>(real: 2.0, imaginary: 4.0)), Complex<Float>(real: 0.0, imaginary: 3.7))

        XCTAssertEqual(clamp(Complex<Double>(real: -4.5, imaginary: 3.7), -4.0, 4.0), Complex<Double>(real: -4.0, imaginary: 3.7))
        XCTAssertEqual(clamp(Complex<Double>(real: -4.5, imaginary: 3.7), Complex<Double>(real: 0.0, imaginary: 0.0), Complex<Double>(real: 2.0, imaginary: 4.0)), Complex<Double>(real: 0.0, imaginary: 3.7))
        XCTAssertEqual(clamp(Complex<Float80>(real: -4.5, imaginary: 3.7), -4.0, 4.0), Complex<Float80>(real: -4.0, imaginary: 3.7))
        XCTAssertEqual(clamp(Complex<Float80>(real: -4.5, imaginary: 3.7), Complex<Float80>(real: 0.0, imaginary: 0.0), Complex<Float80>(real: 2.0, imaginary: 4.0)), Complex<Float80>(real: 0.0, imaginary: 3.7))
    }

    func test_exp() {
        XCTAssertEqual(exp(Complex<Float>(real: 2.0, imaginary: 0.0)), Complex<Float>(real: exp(2.0), imaginary: 0.0), accuracy: 0.0001)
        XCTAssertEqual(exp(Complex<Float>(real: 2.0, imaginary: .pi * 0.5)), Complex<Float>(real: 0.0, imaginary: exp(2.0)), accuracy: 0.0001)
        XCTAssertEqual(exp(Complex<Float>(real: 2.0, imaginary: .pi)), Complex<Float>(real: -exp(2.0), imaginary: 0.0), accuracy: 0.0001)
        XCTAssertEqual(exp(Complex<Float>(real: 2.0, imaginary: .pi * 1.5)), Complex<Float>(real: 0.0, imaginary: -exp(2.0)), accuracy: 0.0001)
        XCTAssertEqual(exp(Complex<Double>(real: 2.0, imaginary: 0.0)), Complex<Double>(real: exp(2.0), imaginary: 0.0), accuracy: 0.0001)
        XCTAssertEqual(exp(Complex<Double>(real: 2.0, imaginary: .pi * 0.5)), Complex<Double>(real: 0.0, imaginary: exp(2.0)), accuracy: 0.0001)
        XCTAssertEqual(exp(Complex<Double>(real: 2.0, imaginary: .pi)), Complex<Double>(real: -exp(2.0), imaginary: 0.0), accuracy: 0.0001)
        XCTAssertEqual(exp(Complex<Double>(real: 2.0, imaginary: .pi * 1.5)), Complex<Double>(real: 0.0, imaginary: -exp(2.0)), accuracy: 0.0001)
        XCTAssertEqual(exp(Complex<Float80>(real: 2.0, imaginary: 0.0)), Complex<Float80>(real: exp(2.0), imaginary: 0.0), accuracy: 0.0001)
        XCTAssertEqual(exp(Complex<Float80>(real: 2.0, imaginary: .pi * 0.5)), Complex<Float80>(real: 0.0, imaginary: exp(2.0)), accuracy: 0.0001)
        XCTAssertEqual(exp(Complex<Float80>(real: 2.0, imaginary: .pi)), Complex<Float80>(real: -exp(2.0), imaginary: 0.0), accuracy: 0.0001)
        XCTAssertEqual(exp(Complex<Float80>(real: 2.0, imaginary: .pi * 1.5)), Complex<Float80>(real: 0.0, imaginary: -exp(2.0)), accuracy: 0.0001)
    }

    func test_log() {
        for complex in sampleComplexNumbers(ofType: Float.self) {
            XCTAssertEqual(log(complex), Complex<Float>(real: log(complex.modulus), imaginary: complex.angle), accuracy: 0.0001)
        }
        for complex in sampleComplexNumbers(ofType: Double.self) {
            XCTAssertEqual(log(complex), Complex<Double>(real: log(complex.modulus), imaginary: complex.angle), accuracy: 0.0001)
        }
        for complex in sampleComplexNumbers(ofType: Float80.self) {
            XCTAssertEqual(log(complex), Complex<Float80>(real: log(complex.modulus), imaginary: complex.angle), accuracy: 0.0001)
        }
    }

    func test_log10() {
        for complex in sampleComplexNumbers(ofType: Float.self) {
            XCTAssertEqual(log10(complex), log(complex) / log(10), accuracy: 0.0001)
        }
        for complex in sampleComplexNumbers(ofType: Double.self) {
            XCTAssertEqual(log10(complex), log(complex) / log(10), accuracy: 0.0001)
        }
        for complex in sampleComplexNumbers(ofType: Float80.self) {
            XCTAssertEqual(log10(complex), log(complex) / log(10), accuracy: 0.0001)
        }
    }

    func test_log2() {
        for complex in sampleComplexNumbers(ofType: Float.self) {
            XCTAssertEqual(log2(complex), log(complex) / log(2), accuracy: 0.0001)
        }
        for complex in sampleComplexNumbers(ofType: Double.self) {
            XCTAssertEqual(log2(complex), log(complex) / log(2), accuracy: 0.0001)
        }
        for complex in sampleComplexNumbers(ofType: Float80.self) {
            XCTAssertEqual(log2(complex), log(complex) / log(2), accuracy: 0.0001)
        }
    }

    func test_sin() {
        for complex in sampleComplexNumbers(ofType: Float.self) {
            XCTAssertEqual(sin(complex), Complex<Float>(real: sin(complex.real) * cosh(complex.imaginary), imaginary: cos(complex.real) * sinh(complex.imaginary)), accuracy: 0.0001)
        }
        for complex in sampleComplexNumbers(ofType: Double.self) {
            XCTAssertEqual(sin(complex), Complex<Double>(real: sin(complex.real) * cosh(complex.imaginary), imaginary: cos(complex.real) * sinh(complex.imaginary)), accuracy: 0.0001)
        }
        for complex in sampleComplexNumbers(ofType: Float80.self) {
            XCTAssertEqual(sin(complex), Complex<Float80>(real: sin(complex.real) * cosh(complex.imaginary), imaginary: cos(complex.real) * sinh(complex.imaginary)), accuracy: 0.0001)
        }
    }

    func test_asin() {
        for complex in sampleComplexNumbers(ofType: Float.self) {
            XCTAssertEqual(asin(complex), -.i * log(.i * complex + sqrt(1.0 - complex * complex)), accuracy: 0.0001)
        }
        for complex in sampleComplexNumbers(ofType: Double.self) {
            XCTAssertEqual(asin(complex), -.i * log(.i * complex + sqrt(1.0 - complex * complex)), accuracy: 0.0001)
        }
        for complex in sampleComplexNumbers(ofType: Float80.self) {
            XCTAssertEqual(asin(complex), -.i * log(.i * complex + sqrt(1.0 - complex * complex)), accuracy: 0.0001)
        }
    }

    func test_sinh() {
        for complex in sampleComplexNumbers(ofType: Float.self) {
            XCTAssertEqual(sinh(complex), -.i * sin(.i * complex), accuracy: 0.0001)
        }
        for complex in sampleComplexNumbers(ofType: Double.self) {
            XCTAssertEqual(sinh(complex), -.i * sin(.i * complex), accuracy: 0.0001)
        }
        for complex in sampleComplexNumbers(ofType: Float80.self) {
            XCTAssertEqual(sinh(complex), -.i * sin(.i * complex), accuracy: 0.0001)
        }
    }

    func test_cos() {
        for complex in sampleComplexNumbers(ofType: Float.self) {
            XCTAssertEqual(cos(complex), Complex<Float>(real: cos(complex.real) * cosh(complex.imaginary), imaginary: -sin(complex.real) * sinh(complex.imaginary)), accuracy: 0.0001)
        }
        for complex in sampleComplexNumbers(ofType: Double.self) {
            XCTAssertEqual(cos(complex), Complex<Double>(real: cos(complex.real) * cosh(complex.imaginary), imaginary: -sin(complex.real) * sinh(complex.imaginary)), accuracy: 0.0001)
        }
        for complex in sampleComplexNumbers(ofType: Float80.self) {
            XCTAssertEqual(cos(complex), Complex<Float80>(real: cos(complex.real) * cosh(complex.imaginary), imaginary: -sin(complex.real) * sinh(complex.imaginary)), accuracy: 0.0001)
        }
    }

    func test_acos() {
        for complex in sampleComplexNumbers(ofType: Float.self) {
            XCTAssertEqual(acos(complex), -.i * log(complex + sqrt(complex * complex - 1.0)), accuracy: 0.0001)
        }
        for complex in sampleComplexNumbers(ofType: Double.self) {
            XCTAssertEqual(acos(complex), -.i * log(complex + sqrt(complex * complex - 1.0)), accuracy: 0.0001)
        }
        for complex in sampleComplexNumbers(ofType: Float80.self) {
            XCTAssertEqual(acos(complex), -.i * log(complex + sqrt(complex * complex - 1.0)), accuracy: 0.0001)
        }
    }

    func test_cosh() {
        for complex in sampleComplexNumbers(ofType: Float.self) {
            XCTAssertEqual(cosh(complex), cos(.i * complex), accuracy: 0.0001)
        }
        for complex in sampleComplexNumbers(ofType: Double.self) {
            XCTAssertEqual(cosh(complex), cos(.i * complex), accuracy: 0.0001)
        }
        for complex in sampleComplexNumbers(ofType: Float80.self) {
            XCTAssertEqual(cosh(complex), cos(.i * complex), accuracy: 0.0001)
        }
    }

    func test_tan() {
        for complex in sampleComplexNumbers(ofType: Float.self) {
            XCTAssertEqual(tan(complex), sin(complex) / cos(complex), accuracy: 0.0001)
        }
        for complex in sampleComplexNumbers(ofType: Double.self) {
            XCTAssertEqual(tan(complex), sin(complex) / cos(complex), accuracy: 0.0001)
        }
        for complex in sampleComplexNumbers(ofType: Float80.self) {
            XCTAssertEqual(tan(complex), sin(complex) / cos(complex), accuracy: 0.0001)
        }
    }

    func test_atan() {
        for complex in sampleComplexNumbers(ofType: Float.self) {
            XCTAssertEqual(atan(complex), .i * 0.5 * log((.i + complex) / (.i - complex)), accuracy: 0.0001)
        }
        for complex in sampleComplexNumbers(ofType: Double.self) {
            XCTAssertEqual(atan(complex), .i * 0.5 * log((.i + complex) / (.i - complex)), accuracy: 0.0001)
        }
        for complex in sampleComplexNumbers(ofType: Float80.self) {
            XCTAssertEqual(atan(complex), .i * 0.5 * log((.i + complex) / (.i - complex)), accuracy: 0.0001)
        }
    }

    func test_tanh() {
        for complex in sampleComplexNumbers(ofType: Float.self) {
            XCTAssertEqual(tanh(complex), -.i * tan(.i * complex), accuracy: 0.0001)
        }
        for complex in sampleComplexNumbers(ofType: Double.self) {
            XCTAssertEqual(tanh(complex), -.i * tan(.i * complex), accuracy: 0.0001)
        }
        for complex in sampleComplexNumbers(ofType: Float80.self) {
            XCTAssertEqual(tanh(complex), -.i * tan(.i * complex), accuracy: 0.0001)
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

func XCTAssertEqual<T>(_ expression1: @autoclosure () throws -> Complex<T>, _ expression2: @autoclosure () throws -> Complex<T>, accuracy: T, _ message: @autoclosure () -> String = "", file: StaticString = #file, line: UInt = #line) rethrows where T: FloatingPoint {
    let difference = try abs(expression1() - expression2())
    XCTAssertTrue(difference.real <= accuracy && difference.imaginary <= accuracy, message(), file: file, line: line)
}
