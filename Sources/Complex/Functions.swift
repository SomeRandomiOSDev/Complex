//
//  Functions.swift
//  Complex
//
//  Copyright © 2020 SomeRandomiOSDev. All rights reserved.
//

import Foundation

@_transparent
public func csqrt<F>(_ value: F) -> Complex<F> where F: FloatingPoint {
    let complex: Complex<F>
    if value < 0 {
        complex = Complex(real: .zero, imaginary: sqrt(-value))
    } else {
        complex = Complex(real: sqrt(value), imaginary: .zero)
    }

    return complex
}

@_transparent
public func sqrt<F>(_ value: Complex<F>) -> Complex<F> where F: FloatingPoint {
    //swiftlint:disable opening_brace statement_position
    let sign = { (value: F) -> F in
        let sign: F
        if value < .zero { sign = -1 }
        else             { sign = 1 }
        return sign
    }
    //swiftlint:enable opening_brace statement_position

    let modulus = value.modulus
    let real = sqrt((value.real + modulus) / F(2))
    let imaginary = sign(value.imaginary) * sqrt((modulus - value.real) / F(2))

    return Complex(real: real, imaginary: imaginary)
}

@_transparent
public func abs<F>(_ value: Complex<F>) -> Complex<F> where F: Comparable, F: SignedNumeric {
    return Complex(real: abs(value.real), imaginary: abs(value.imaginary))
}

@_transparent
public func min<F>(_ lhs: Complex<F>, _ rhs: Complex<F>) -> Complex<F> where F: Comparable {
    return Complex(real: min(lhs.real, rhs.real), imaginary: min(lhs.imaginary, rhs.imaginary))
}

@_transparent
public func max<F>(_ lhs: Complex<F>, _ rhs: Complex<F>) -> Complex<F> where F: Comparable {
    return Complex(real: max(lhs.real, rhs.real), imaginary: max(lhs.imaginary, rhs.imaginary))
}

@_transparent
public func clamp<F>(_ value: Complex<F>, _ minimum: F, _ maximum: F) -> Complex<F> where F: Comparable {
    return Complex(real: max(minimum, min(value.real, maximum)), imaginary: max(minimum, min(value.imaginary, maximum)))
}

@_transparent
public func clamp<F>(_ value: Complex<F>, _ minimum: Complex<F>, _ maximum: Complex<F>) -> Complex<F> where F: Comparable {
    return Complex(real: max(minimum.real, min(value.real, maximum.real)), imaginary: max(minimum.imaginary, min(value.imaginary, maximum.imaginary)))
}
