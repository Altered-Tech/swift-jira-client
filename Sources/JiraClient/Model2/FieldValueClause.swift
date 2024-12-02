//
// FieldValueClause.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** A clause that asserts the current value of a field. For example, &#x60;summary ~ test&#x60;. */

public struct FieldValueClause {

    public enum Operator: String {
        case equal = "="
        case notEqual = "!="
        case greaterThan = ">"
        case lessThan = "<"
        case greaterThanOrEqualTo = ">="
        case lessThanOrEqualTo = "<="
        case _in = "in"
        case notIn = "not in"
        case tilde = "~"
        case tildaEqual = "~="
        case _is = "is"
        case isNot = "is not"
    }
    public var field: JqlQueryField
    public var operand: JqlQueryClauseOperand
    /** The operator between the field and operand. */
    public var _operator: Operator

    public init(field: JqlQueryField, operand: JqlQueryClauseOperand, _operator: Operator) {
        self.field = field
        self.operand = operand
        self._operator = _operator
    }

}