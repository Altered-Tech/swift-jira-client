//
// FunctionOperand.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** An operand that is a function. See [Advanced searching - functions reference](https://confluence.atlassian.com/x/dwiiLQ) for more information about JQL functions. */

public struct FunctionOperand {

    /** The list of function arguments. */
    public var arguments: [String]
    /** Encoded operand, which can be used directly in a JQL query. */
    public var encodedOperand: String?
    /** The name of the function. */
    public var function: String

    public init(arguments: [String], encodedOperand: String? = nil, function: String) {
        self.arguments = arguments
        self.encodedOperand = encodedOperand
        self.function = function
    }


}
