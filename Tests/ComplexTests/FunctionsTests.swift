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
}
