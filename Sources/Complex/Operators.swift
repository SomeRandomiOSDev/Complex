//
//  Operators.swift
//  Complex
//
//  Copyright © 2020 SomeRandomiOSDev. All rights reserved.
//

import Foundation

/// Component-wise addition
infix operator .+: AdditionPrecedence
infix operator .+=: AssignmentPrecedence

/// Component-wise subtraction
infix operator .-: AdditionPrecedence
infix operator .-=: AssignmentPrecedence

/// Component-wise multiplication
infix operator .*: MultiplicationPrecedence
infix operator .*=: AssignmentPrecedence

/// Component-wise division
infix operator ./: MultiplicationPrecedence
infix operator ./=: AssignmentPrecedence
