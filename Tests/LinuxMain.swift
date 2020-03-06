import XCTest

import ComplexTests

var tests = [XCTestCaseEntry]()
tests += ComplexTests.__allTests()

XCTMain(tests)
