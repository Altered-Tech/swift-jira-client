//
// JqlQueryClauseTimePredicate.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** A time predicate for a temporal JQL clause. */

public struct JqlQueryClauseTimePredicate: Codable {

    public enum Operator: String, Codable { 
        case before = "before"
        case after = "after"
        case from = "from"
        case to = "to"
        case on = "on"
        case during = "during"
        case by = "by"
    }
    public var operand: JqlQueryClauseOperand
    /** The operator between the field and the operand. */
    public var _operator: Operator

    public init(operand: JqlQueryClauseOperand, _operator: Operator) {
        self.operand = operand
        self._operator = _operator
    }

    public enum CodingKeys: String, CodingKey { 
        case operand
        case _operator = "operator"
    }

}
