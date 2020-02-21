//
//  TestingBase.swift
//  Complex
//
//  Copyright © 2020 SomeRandomiOSDev. All rights reserved.
//

@testable import Complex
import XCTest

// MARK: Internal Methods

internal func CTAssertEqual<T>(_ expression1: @autoclosure () throws -> T, _ expression2: @autoclosure () throws -> T, _ message: @autoclosure () -> String = "", function: String = #function, file: StaticString = #file, line: UInt = #line) where T: Equatable {
    XCTAssertEqual(try expression1(), try expression2(), "\(testMethodDescription(forType: T.self, function: function))\(message().isEmpty ? "" : ": \(message())")", file: file, line: line)
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

// MARK: - Private Methods

private func testMethodDescription<Scalar>(forType type: Scalar.Type, function: String = #function) -> String {
    let description: String
    if let index = function.firstIndex(of: "(") {
        description = "\(function[..<index])<\(type)>\(function[index...])"
    } else {
        description = function
    }

    return description
}
