//
//  TestingBase.swift
//  Complex
//
//  Copyright © 2020 SomeRandomiOSDev. All rights reserved.
//

@testable import Complex
import XCTest

#if os(Linux)
// MARK: - XCTActivity Definition

internal protocol XCTActivity {

    var name: String { get }
    func add(_ attachment: Any) { }
}

// MARK: - XCTContext Definition

internal class XCTContext {

    // MARK: XCTContext.Activity Definition

    private class Activity: XCTActivity {

        // MARK: Initialization

        fileprivate init(name: String) {
            self.name = name
        }

        // MARK: XCTActivity Protocol Requirements

        let name: String

        func add(_ attachment: Any) { /* noop */ }
    }

    // MARK: Internal Methods

    internal class func runActivity<Result>(named name: String, block: (XCTActivity) throws -> Result) rethrows -> Result {
        return try block(Activity(name: name))
    }
}
#endif // #if os(Linux)

// MARK: Internal Methods

internal func CTAssertEqual<T>(_ expression1: @autoclosure () throws -> T, _ expression2: @autoclosure () throws -> T, _ message: @autoclosure () -> String = "", function: String = #function, file: StaticString = #file, line: UInt = #line) where T: Equatable {
    CTAssertEqual(try expression1(), try expression2(), message(), function: function, type: T.self, file: file, line: line)
}

internal func CTAssertTrue(_ expression: @autoclosure () throws -> Bool, _ message: @autoclosure () -> String = "", function: String = #function, file: StaticString = #file, line: UInt = #line) {
    XCTAssertTrue(try expression(), "\(function))\(message().isEmpty ? "" : ": \(message())")", file: file, line: line)
}

internal func CTAssertFalse(_ expression: @autoclosure () throws -> Bool, _ message: @autoclosure () -> String = "", function: String = #function, file: StaticString = #file, line: UInt = #line) {
    XCTAssertFalse(try expression(), "\(function))\(message().isEmpty ? "" : ": \(message())")", file: file, line: line)
}

internal func CTAssertEqual<T>(_ expression1: @autoclosure () throws -> Complex<T>, _ expression2: @autoclosure () throws -> Complex<T>, accuracy: T, _ message: @autoclosure () -> String = "", function: String = #function, file: StaticString = #file, line: UInt = #line) rethrows where T: FloatingPoint {
    let difference = try abs(expression1() - expression2())
    CTAssertTrue(difference.real <= accuracy && difference.imaginary <= accuracy, message(), function: function, file: file, line: line)
}

internal func CTAssertEqual<Scalar>(_ expression1: @autoclosure () -> Complex<Scalar>.ExtendedScalar, _ expression2: @autoclosure () -> Complex<Scalar>.ExtendedScalar, _ message: @autoclosure () -> String = "", function: String = #function, file: StaticString = #file, line: UInt = #line) where Scalar: FixedWidthInteger {
    let lhs = expression1()
    let rhs = expression2()

    CTAssertEqual(lhs.high.high, rhs.high.high, "ExtendedScalar<\(String(describing: Scalar.self))>.high.high\(message().isEmpty ? "" : ": \(message())")", function: function, type: Scalar.self, file: file, line: line)
    CTAssertEqual(lhs.high.low, rhs.high.low, "ExtendedScalar<\(String(describing: Scalar.self))>.high.low\(message().isEmpty ? "" : ": \(message())")", function: function, type: Scalar.self, file: file, line: line)
    CTAssertEqual(lhs.low.high, rhs.low.high, "ExtendedScalar<\(String(describing: Scalar.self))>.low.high\(message().isEmpty ? "" : ": \(message())")", function: function, type: Scalar.self, file: file, line: line)
    CTAssertEqual(lhs.low.low, rhs.low.low, "ExtendedScalar<\(String(describing: Scalar.self))>.low.low\(message().isEmpty ? "" : ": \(message())")", function: function, type: Scalar.self, file: file, line: line)
}

// MARK: - Private Methods

//swiftlint:disable function_default_parameter_at_end
private func CTAssertEqual<T, Scalar>(_ expression1: @autoclosure () throws -> T, _ expression2: @autoclosure () throws -> T, _ message: @autoclosure () -> String = "", function: String = #function, type: Scalar.Type, file: StaticString = #file, line: UInt = #line) where T: Equatable {
    XCTAssertEqual(try expression1(), try expression2(), "\(testMethodDescription(forType: Scalar.self, function: function))\(message().isEmpty ? "" : ": \(message())")", file: file, line: line)
}
//swiftlint:enable function_default_parameter_at_end

private func testMethodDescription<Scalar>(forType type: Scalar.Type, function: String = #function) -> String {
    let description: String
    if let index = function.firstIndex(of: "(") {
        description = "\(function[..<index])<\(type)>\(function[index...])"
    } else {
        description = function
    }

    return description
}
