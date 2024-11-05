//
// JiraExpressionValidationError.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Details about syntax and type errors. The error details apply to the entire expression, unless the object includes:   *  &#x60;line&#x60; and &#x60;column&#x60;  *  &#x60;expression&#x60; */

public struct JiraExpressionValidationError: Codable {

    public enum ModelType: String, Codable { 
        case syntax = "syntax"
        case type = "type"
        case other = "other"
    }
    /** The text column in which the error occurred. */
    public var column: Int?
    /** The part of the expression in which the error occurred. */
    public var expression: String?
    /** The text line in which the error occurred. */
    public var line: Int?
    /** Details about the error. */
    public var message: String
    /** The error type. */
    public var type: ModelType

    public init(column: Int? = nil, expression: String? = nil, line: Int? = nil, message: String, type: ModelType) {
        self.column = column
        self.expression = expression
        self.line = line
        self.message = message
        self.type = type
    }


}
