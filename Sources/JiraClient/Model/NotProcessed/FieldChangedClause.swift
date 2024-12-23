//
// FieldChangedClause.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** A clause that asserts whether a field was changed. For example, &#x60;status CHANGED AFTER startOfMonth(-1M)&#x60;.See [CHANGED](https://confluence.atlassian.com/x/dgiiLQ#Advancedsearching-operatorsreference-CHANGEDCHANGED) for more information about the CHANGED operator. */

public struct FieldChangedClause {

    public enum Operator: String, Codable { 
        case changed = "changed"
    }
    public var field: JqlQueryField
    /** The operator applied to the field. */
    public var _operator: Operator
    /** The list of time predicates. */
    public var predicates: [JqlQueryClauseTimePredicate]

    public init(field: JqlQueryField, _operator: Operator, predicates: [JqlQueryClauseTimePredicate]) {
        self.field = field
        self._operator = _operator
        self.predicates = predicates
    }

    public enum CodingKeys: String, CodingKey { 
        case field
        case _operator = "operator"
        case predicates
    }

}
