//
// WorkflowCompoundCondition.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** A compound workflow transition rule condition. This object returns &#x60;nodeType&#x60; as &#x60;compound&#x60;. */

public struct WorkflowCompoundCondition {

    public enum Operator: String, Codable { 
        case and = "AND"
        case or = "OR"
    }
    /** The list of workflow conditions. */
    public var conditions: [WorkflowCondition]
    public var nodeType: String
    /** The compound condition operator. */
    public var _operator: Operator

    public init(conditions: [WorkflowCondition], nodeType: String, _operator: Operator) {
        self.conditions = conditions
        self.nodeType = nodeType
        self._operator = _operator
    }

    public enum CodingKeys: String, CodingKey { 
        case conditions
        case nodeType
        case _operator = "operator"
    }

}