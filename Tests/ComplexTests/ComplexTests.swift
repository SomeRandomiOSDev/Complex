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

        #if (swift(>=5.3) && !(os(macOS) || targetEnvironment(macCatalyst))) || (swift(>=5.4) && !arch(x86_64))
        if #available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *) {
            testInitialization(real: Float16(6.3), imaginary: Float16(1.7))
        }
        #endif

        #if !(os(Windows) || os(Android)) && (arch(i386) || arch(x86_64))
        testInitialization(real: Float80(11.1), imaginary: Float80(-0.9))
        #endif
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

        #if (swift(>=5.3) && !(os(macOS) || targetEnvironment(macCatalyst))) || (swift(>=5.4) && !arch(x86_64))
        if #available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *) {
            testRandomFactoryMethods(lowerBound: Float16(-6.3), upperBound: Float16(1.7))
        }
        #endif

        #if !(os(Windows) || os(Android)) && (arch(i386) || arch(x86_64))
        testRandomFactoryMethods(lowerBound: Float80(-11.1), upperBound: Float80(0.9))
        #endif
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

        #if (swift(>=5.3) && !(os(macOS) || targetEnvironment(macCatalyst))) || (swift(>=5.4) && !arch(x86_64))
        if #available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *) {
            try testDescriptionMethods(Complex(real: Float16(6.3), imaginary: Float16(1.7)))
        }
        #endif

        #if !(os(Windows) || os(Android)) && (arch(i386) || arch(x86_64))
        try testDescriptionMethods(Complex(real: Float80(11.1), imaginary: Float80(-0.9)))
        #endif
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

        #if (swift(>=5.3) && !(os(macOS) || targetEnvironment(macCatalyst))) || (swift(>=5.4) && !arch(x86_64))
        if #available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *) {
            testHashing(Complex(real: Float16(6.3), imaginary: Float16(1.7)))
        }
        #endif

        #if !(os(Windows) || os(Android)) && (arch(i386) || arch(x86_64))
        testHashing(Complex(real: Float80(11.1), imaginary: Float80(-0.9)))
        #endif
    }

    func testEncoding() throws {
        try testEncoding(Complex(real: Int8(1), imaginary: Int8(-4)))
        try testEncoding(Complex(real: Int16(1), imaginary: Int16(-4)))
        try testEncoding(Complex(real: Int32(1), imaginary: Int32(-4)))
        try testEncoding(Complex(real: Int64(1), imaginary: Int64(-4)))
        try testEncoding(Complex(real: UInt8(7), imaginary: UInt8(13)))
        try testEncoding(Complex(real: UInt16(7), imaginary: UInt16(13)))
        try testEncoding(Complex(real: UInt32(7), imaginary: UInt32(13)))
        try testEncoding(Complex(real: UInt64(7), imaginary: UInt64(13)))
        try testEncoding(Complex(real: Half(1.2), imaginary: Half(-7.4)))
        try testEncoding(Complex(real: Float(-0.123), imaginary: Float(3.0)))
        try testEncoding(Complex(real: Double(8.9), imaginary: Double(10.8)))

        #if (swift(>=5.3) && !(os(macOS) || targetEnvironment(macCatalyst))) || (swift(>=5.4) && !arch(x86_64))
        if #available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *) {
            try testEncoding(Complex(real: Float16(6.3), imaginary: Float16(1.7)))
        }
        #endif
    }

    func testDecoding() throws {
        try testDecoding(Complex(real: Int8(1), imaginary: Int8(-4)))
        try testDecoding(Complex(real: Int16(1), imaginary: Int16(-4)))
        try testDecoding(Complex(real: Int32(1), imaginary: Int32(-4)))
        try testDecoding(Complex(real: Int64(1), imaginary: Int64(-4)))
        try testDecoding(Complex(real: UInt8(7), imaginary: UInt8(13)))
        try testDecoding(Complex(real: UInt16(7), imaginary: UInt16(13)))
        try testDecoding(Complex(real: UInt32(7), imaginary: UInt32(13)))
        try testDecoding(Complex(real: UInt64(7), imaginary: UInt64(13)))
        try testDecoding(Complex(real: Half(1.2), imaginary: Half(-7.4)))
        try testDecoding(Complex(real: Float(-0.123), imaginary: Float(3.0)))
        try testDecoding(Complex(real: Double(8.9), imaginary: Double(10.8)))

        #if (swift(>=5.3) && !(os(macOS) || targetEnvironment(macCatalyst))) || (swift(>=5.4) && !arch(x86_64))
        if #available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *) {
            try testDecoding(Complex(real: Float16(6.3), imaginary: Float16(1.7)))
        }
        #endif
    }

    func testRounding() {
        testRounding(Complex<Half>(real: 1.5, imaginary: -4.5))
        testRounding(Complex<Float>(real: 1.5, imaginary: -4.5))
        testRounding(Complex<Double>(real: 1.5, imaginary: -4.5))

        #if (swift(>=5.3) && !(os(macOS) || targetEnvironment(macCatalyst))) || (swift(>=5.4) && !arch(x86_64))
        if #available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *) {
            testRounding(Complex<Float16>(real: 1.5, imaginary: -4.5))
        }
        #endif

        #if !(os(Windows) || os(Android)) && (arch(i386) || arch(x86_64))
        testRounding(Complex<Float80>(real: 1.5, imaginary: -4.5))
        #endif
    }

    func testConjugateMethods() {
        testConjugateMethods(Complex(real: Int8(1), imaginary: Int8(-4)))
        testConjugateMethods(Complex(real: Int16(1), imaginary: Int16(-4)))
        testConjugateMethods(Complex(real: Int32(1), imaginary: Int32(-4)))
        testConjugateMethods(Complex(real: Int64(1), imaginary: Int64(-4)))
        testConjugateMethods(Complex(real: Half(1.2), imaginary: Half(-7.4)))
        testConjugateMethods(Complex(real: Float(-0.123), imaginary: Float(3.0)))
        testConjugateMethods(Complex(real: Double(8.9), imaginary: Double(10.8)))

        #if (swift(>=5.3) && !(os(macOS) || targetEnvironment(macCatalyst))) || (swift(>=5.4) && !arch(x86_64))
        if #available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *) {
            testConjugateMethods(Complex(real: Float16(6.3), imaginary: Float16(1.7)))
        }
        #endif

        #if !(os(Windows) || os(Android)) && (arch(i386) || arch(x86_64))
        testConjugateMethods(Complex(real: Float80(11.1), imaginary: Float80(-0.9)))
        #endif
    }

    func testNegationMethods() {
        testNegationMethods(Complex(real: Int8(1), imaginary: Int8(-4)))
        testNegationMethods(Complex(real: Int16(1), imaginary: Int16(-4)))
        testNegationMethods(Complex(real: Int32(1), imaginary: Int32(-4)))
        testNegationMethods(Complex(real: Int64(1), imaginary: Int64(-4)))
        testNegationMethods(Complex(real: Half(1.2), imaginary: Half(-7.4)))
        testNegationMethods(Complex(real: Float(-0.123), imaginary: Float(3.0)))
        testNegationMethods(Complex(real: Double(8.9), imaginary: Double(10.8)))

        #if (swift(>=5.3) && !(os(macOS) || targetEnvironment(macCatalyst))) || (swift(>=5.4) && !arch(x86_64))
        if #available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *) {
            testNegationMethods(Complex(real: Float16(6.3), imaginary: Float16(1.7)))
        }
        #endif

        #if !(os(Windows) || os(Android)) && (arch(i386) || arch(x86_64))
        testNegationMethods(Complex(real: Float80(11.1), imaginary: Float80(-0.9)))
        #endif
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

        #if (swift(>=5.3) && !(os(macOS) || targetEnvironment(macCatalyst))) || (swift(>=5.4) && !arch(x86_64))
        if #available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *) {
            testMultiplyByOne(Complex(real: Float16(6.3), imaginary: Float16(1.7)))
        }
        #endif

        #if !(os(Windows) || os(Android)) && (arch(i386) || arch(x86_64))
        testMultiplyByOne(Complex(real: Float80(11.1), imaginary: Float80(-0.9)))
        #endif
    }

    func testMultiplyByI() {
        testMultiplyByI(Complex(real: Int8(1), imaginary: Int8(-4)))
        testMultiplyByI(Complex(real: Int16(1), imaginary: Int16(-4)))
        testMultiplyByI(Complex(real: Int32(1), imaginary: Int32(-4)))
        testMultiplyByI(Complex(real: Int64(1), imaginary: Int64(-4)))
        testMultiplyByI(Complex(real: Half(1.2), imaginary: Half(-7.4)))
        testMultiplyByI(Complex(real: Float(-0.123), imaginary: Float(3.0)))
        testMultiplyByI(Complex(real: Double(8.9), imaginary: Double(10.8)))

        #if (swift(>=5.3) && !(os(macOS) || targetEnvironment(macCatalyst))) || (swift(>=5.4) && !arch(x86_64))
        if #available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *) {
            testMultiplyByI(Complex(real: Float16(6.3), imaginary: Float16(1.7)))
        }
        #endif

        #if !(os(Windows) || os(Android)) && (arch(i386) || arch(x86_64))
        testMultiplyByI(Complex(real: Float80(11.1), imaginary: Float80(-0.9)))
        #endif
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

        #if (swift(>=5.3) && !(os(macOS) || targetEnvironment(macCatalyst))) || (swift(>=5.4) && !arch(x86_64))
        if #available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *) {
            testPlusPrefixOperator(Complex(real: Float16(6.3), imaginary: Float16(1.7)))
        }
        #endif

        #if !(os(Windows) || os(Android)) && (arch(i386) || arch(x86_64))
        testPlusPrefixOperator(Complex(real: Float80(11.1), imaginary: Float80(-0.9)))
        #endif
    }

    func testPolarComponents() {
        testPolarComponents(Complex(real: Half(1.2), imaginary: Half(-7.4)))
        testPolarComponents(Complex(real: Float(-0.123), imaginary: Float(3.0)))
        testPolarComponents(Complex(real: Double(8.9), imaginary: Double(10.8)))

        #if (swift(>=5.3) && !(os(macOS) || targetEnvironment(macCatalyst))) || (swift(>=5.4) && !arch(x86_64))
        if #available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *) {
            testPolarComponents(Complex(real: Float16(6.3), imaginary: Float16(1.7)))
        }
        #endif

        #if !(os(Windows) || os(Android)) && (arch(i386) || arch(x86_64))
        testPolarComponents(Complex(real: Float80(11.1), imaginary: Float80(-0.9)))
        #endif
    }

    func testAdditiveArithmeticProtocolRequirements() {
        CTAssertEqual(Complex<Half>.zero, Complex(real: 0.0, imaginary: 0.0))
        CTAssertEqual(Complex<Float>.zero, Complex(real: 0.0, imaginary: 0.0))
        CTAssertEqual(Complex<Double>.zero, Complex(real: 0.0, imaginary: 0.0))

        #if (swift(>=5.3) && !(os(macOS) || targetEnvironment(macCatalyst))) || (swift(>=5.4) && !arch(x86_64))
        if #available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *) {
            CTAssertEqual(Complex<Float16>.zero, Complex(real: 0.0, imaginary: 0.0))
        }
        #endif

        #if !(os(Windows) || os(Android)) && (arch(i386) || arch(x86_64))
        CTAssertEqual(Complex<Float80>.zero, Complex(real: 0.0, imaginary: 0.0))
        #endif

        //

        testAdditiveArithmeticProtocolRequirements(forType: Half.self)
        testAdditiveArithmeticProtocolRequirements(forType: Float.self)
        testAdditiveArithmeticProtocolRequirements(forType: Double.self)

        #if (swift(>=5.3) && !(os(macOS) || targetEnvironment(macCatalyst))) || (swift(>=5.4) && !arch(x86_64))
        if #available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *) {
            testAdditiveArithmeticProtocolRequirements(forType: Float16.self)
        }
        #endif

        #if !(os(Windows) || os(Android)) && (arch(i386) || arch(x86_64))
        testAdditiveArithmeticProtocolRequirements(forType: Float80.self)
        #endif
    }

    // MARK: Private Methods

    private func testInitialization<Scalar>(real: Scalar, imaginary: Scalar, file: StaticString = #file, line: UInt = #line) where Scalar: BinaryInteger {
        XCTContext.runActivity(named: "\(String(describing: Scalar.self))") { _ in
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

            #if !(os(Windows) || os(Android)) && (arch(i386) || arch(x86_64))
            let complex5 = Complex<Float80>(real: real, imaginary: imaginary)
            CTAssertEqual(complex5.real, Float80(real))
            CTAssertEqual(complex5.imaginary, Float80(imaginary))

            let complex6 = Complex<Float80>(complex1)
            CTAssertEqual(complex6.real, Float80(real))
            CTAssertEqual(complex6.imaginary, Float80(imaginary))
            #endif // #if !(os(Windows) || os(Android)) && (arch(i386) || arch(x86_64))

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
    }

    private func testInitialization<Scalar>(real: Scalar, imaginary: Scalar, file: StaticString = #file, line: UInt = #line) where Scalar: BinaryFloatingPoint {
        XCTContext.runActivity(named: "\(String(describing: Scalar.self))") { _ in
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

            #if !(os(Windows) || os(Android)) && (arch(i386) || arch(x86_64))
            let complex5 = Complex<Float80>(real: real, imaginary: imaginary)
            CTAssertEqual(complex5.real, Float80(real))
            CTAssertEqual(complex5.imaginary, Float80(imaginary))

            let complex6 = Complex<Float80>(complex1)
            CTAssertEqual(complex6.real, Float80(real))
            CTAssertEqual(complex6.imaginary, Float80(imaginary))
            #endif // #if !(os(Windows) || os(Android)) && (arch(i386) || arch(x86_64))

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
    }

    private func testRandomFactoryMethods<Scalar>(lowerBound: Scalar, upperBound: Scalar, file: StaticString = #file, line: UInt = #line) where Scalar: FixedWidthInteger {
        XCTContext.runActivity(named: "\(String(describing: Scalar.self))") { _ in
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
    }

    private func testRandomFactoryMethods<Scalar>(lowerBound: Scalar, upperBound: Scalar, file: StaticString = #file, line: UInt = #line) where Scalar: BinaryFloatingPoint, Scalar.RawSignificand: FixedWidthInteger {
        XCTContext.runActivity(named: "\(String(describing: Scalar.self))") { _ in
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
    }

    private func testDescriptionMethods<Scalar>(_ complex: Complex<Scalar>, file: StaticString = #file, line: UInt = #line) throws where Scalar: BinaryInteger {
        try XCTContext.runActivity(named: "\(String(describing: Scalar.self))") { _ in
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
    }

    private func testDescriptionMethods<Scalar>(_ complex: Complex<Scalar>, file: StaticString = #file, line: UInt = #line) throws where Scalar: BinaryFloatingPoint {
        try XCTContext.runActivity(named: "\(String(describing: Scalar.self))") { _ in
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
    }

    private func testHashing<Scalar>(_ complex: Complex<Scalar>, file: StaticString = #file, line: UInt = #line) where Scalar: Hashable {
        XCTContext.runActivity(named: "\(String(describing: Scalar.self))") { _ in
            var hasher = Hasher()
            hasher.combine(complex)
            let value1 = hasher.finalize()

            hasher = Hasher()
            hasher.combine(complex.real)
            hasher.combine(complex.imaginary)
            let value2 = hasher.finalize()

            CTAssertEqual(value1, value2)
        }
    }

    private func testEncoding<Scalar>(_ complex: Complex<Scalar>, file: StaticString = #file, line: UInt = #line) throws where Scalar: Encodable & BinaryInteger {
        try XCTContext.runActivity(named: "\(String(describing: Scalar.self))") { _ in
            let encoder = JSONEncoder()
            let encodedComplex = try XCTUnwrap(String(data: encoder.encode(complex), encoding: .utf8))

            let realJSONString = "\"real\":\(complex.real)"
            let imaginaryJSONString = "\"imaginary\":\(complex.imaginary)"

            CTAssertTrue(encodedComplex.contains(realJSONString))
            CTAssertTrue(encodedComplex.contains(imaginaryJSONString))
            CTAssertEqual(encodedComplex.count, realJSONString.count + imaginaryJSONString.count + 3)
        }
    }

    private func testEncoding<Scalar>(_ complex: Complex<Scalar>, file: StaticString = #file, line: UInt = #line) throws where Scalar: Encodable & BinaryFloatingPoint {
        try XCTContext.runActivity(named: "\(String(describing: Scalar.self))") { _ in
            let encoder = JSONEncoder()
            let encodedComplex = try XCTUnwrap(String(data: encoder.encode(complex), encoding: .utf8))

            let realRegex = try NSRegularExpression(pattern: "\"real\":([^,}]+)")
            let imaginaryRegex = try NSRegularExpression(pattern: "\"imaginary\":([^,}]+)")
            var count = 3

            if let match = realRegex.firstMatch(in: encodedComplex, options: [], range: NSRange(location: 0, length: encodedComplex.count)) {
                let value = try Scalar(XCTUnwrap(Double(encodedComplex[XCTUnwrap(Range(match.range(at: 1), in: encodedComplex))])))
                count += match.range.length

                CTAssertTrue(abs(value - complex.real) < 0.001)
            } else {
                XCTFail("Expected to find \"real\" component encoded in JSON")
            }

            if let match = imaginaryRegex.firstMatch(in: encodedComplex, options: [], range: NSRange(location: 0, length: encodedComplex.count)) {
                let value = try Scalar(XCTUnwrap(Double(encodedComplex[XCTUnwrap(Range(match.range(at: 1), in: encodedComplex))])))
                count += match.range.length

                CTAssertTrue(abs(value - complex.imaginary) < 0.001)
            } else {
                XCTFail("Expected to find \"imaginary\" component encoded in JSON")
            }

            CTAssertEqual(count, encodedComplex.count)
        }
    }

    private func testDecoding<Scalar>(_ complex: Complex<Scalar>, file: StaticString = #file, line: UInt = #line) throws where Scalar: Decodable & BinaryInteger {
        try XCTContext.runActivity(named: "\(String(describing: Scalar.self))") { _ in
            let decoder = JSONDecoder()
            let encodedComplex = "{\"imaginary\":\(complex.imaginary),\"real\":\(complex.real)}"
            let testComplex = try decoder.decode(Complex<Scalar>.self, from: Data(encodedComplex.utf8))

            CTAssertEqual(complex, testComplex)
        }
    }

    private func testDecoding<Scalar>(_ complex: Complex<Scalar>, file: StaticString = #file, line: UInt = #line) throws where Scalar: Decodable & BinaryFloatingPoint {
        try XCTContext.runActivity(named: "\(String(describing: Scalar.self))") { _ in
            let decoder = JSONDecoder()
            let encodedComplex = "{\"imaginary\":\(complex.imaginary),\"real\":\(complex.real)}"
            let testComplex = try decoder.decode(Complex<Scalar>.self, from: Data(encodedComplex.utf8))

            CTAssertTrue(abs(complex.real - testComplex.real) < 0.001)
            CTAssertTrue(abs(complex.imaginary - testComplex.imaginary) < 0.001)
        }
    }

    private func testRounding<Scalar>(_ complex: Complex<Scalar>, file: StaticString = #file, line: UInt = #line) where Scalar: FloatingPoint {
        XCTContext.runActivity(named: "\(String(describing: Scalar.self))") { _ in
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
    }

    private func testConjugateMethods<Scalar>(_ complex: Complex<Scalar>, file: StaticString = #file, line: UInt = #line) where Scalar: SignedNumeric {
        XCTContext.runActivity(named: "\(String(describing: Scalar.self))") { _ in
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
    }

    private func testNegationMethods<Scalar>(_ complex: Complex<Scalar>, file: StaticString = #file, line: UInt = #line) where Scalar: SignedNumeric {
        XCTContext.runActivity(named: "\(String(describing: Scalar.self))") { _ in
            var negative = -complex
            CTAssertEqual(complex.real, -negative.real)
            CTAssertEqual(complex.imaginary, -negative.imaginary)

            negative = complex
            negative.negate()
            CTAssertEqual(complex.real, -negative.real)
            CTAssertEqual(complex.imaginary, -negative.imaginary)
        }
    }

    private func testMultiplyByOne<Scalar>(_ complex: Complex<Scalar>, file: StaticString = #file, line: UInt = #line) {
        XCTContext.runActivity(named: "\(String(describing: Scalar.self))") { _ in
            let one = Complex<Scalar>.one
            let result = complex * one

            CTAssertEqual(result, complex)
        }
    }

    private func testMultiplyByI<Scalar>(_ complex: Complex<Scalar>, file: StaticString = #file, line: UInt = #line) where Scalar: SignedNumeric {
        XCTContext.runActivity(named: "\(String(describing: Scalar.self))") { _ in
            let i = Complex<Scalar>.i
            let result = complex * i

            CTAssertEqual(result.real, -complex.imaginary)
            CTAssertEqual(result.imaginary, complex.real)
        }
    }

    private func testPlusPrefixOperator<Scalar>(_ complex: Complex<Scalar>, file: StaticString = #file, line: UInt = #line) {
        XCTContext.runActivity(named: "\(String(describing: Scalar.self))") { _ in
            CTAssertEqual(complex, +complex)
        }
    }

    private func testPolarComponents<Scalar>(_ complex: Complex<Scalar>, file: StaticString = #file, line: UInt = #line) where Scalar: BinaryFloatingPoint {
        XCTContext.runActivity(named: "\(String(describing: Scalar.self))") { _ in
            CTAssertEqual(complex.modulus, sqrt(complex.real * complex.real + complex.imaginary * complex.imaginary))

            #if !(os(Windows) || os(Android)) && (arch(i386) || arch(x86_64))
            CTAssertEqual(complex.angle, Scalar(atan2(Float80(complex.imaginary), Float80(complex.real))))
            #else
            CTAssertEqual(complex.angle, Scalar(atan2(Double(complex.imaginary), Double(complex.real))))
            #endif
        }
    }

    private func testAdditiveArithmeticProtocolRequirements<Scalar>(forType: Scalar.Type) where Scalar: BinaryFloatingPoint {
        XCTContext.runActivity(named: "\(String(describing: Scalar.self))") { _ in
            let lhs = Complex<Scalar>(real: 1.0, imaginary: 2.0)
            let rhs = Complex<Scalar>(real: 3.0, imaginary: 4.0)
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
}
