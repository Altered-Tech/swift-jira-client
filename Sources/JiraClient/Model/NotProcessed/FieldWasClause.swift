//
// FieldWasClause.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** A clause that asserts a previous value of a field. For example, &#x60;status WAS \&quot;Resolved\&quot; BY currentUser() BEFORE \&quot;2019/02/02\&quot;&#x60;. See [WAS](https://confluence.atlassian.com/x/dgiiLQ#Advancedsearching-operatorsreference-WASWAS) for more information about the WAS operator. */

public struct FieldWasClause {

    public enum Operator: String, Codable { 
        case was = "was"
        case wasIn = "was in"
        case wasNotIn = "was not in"
        case wasNot = "was not"
    }
    public var field: JqlQueryField
    public var operand: JqlQueryClauseOperand
    /** The operator between the field and operand. */
    public var _operator: Operator
    /** The list of time predicates. */
    public var predicates: [JqlQueryClauseTimePredicate]

    public init(field: JqlQueryField, operand: JqlQueryClauseOperand, _operator: Operator, predicates: [JqlQueryClauseTimePredicate]) {
        self.field = field
        self.operand = operand
        self._operator = _operator
        self.predicates = predicates
    }

    public enum CodingKeys: String, CodingKey { 
        case field
        case operand
        case _operator = "operator"
        case predicates
    }

}