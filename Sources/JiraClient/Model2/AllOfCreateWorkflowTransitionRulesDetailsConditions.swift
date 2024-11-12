//
// AllOfCreateWorkflowTransitionRulesDetailsConditions.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The workflow conditions. */

public struct AllOfCreateWorkflowTransitionRulesDetailsConditions {

    public enum Operator: String, Codable { 
        case and = "AND"
        case or = "OR"
    }
    /** The list of workflow conditions. */
    public var conditions: [CreateWorkflowCondition]?
    /** EXPERIMENTAL. The configuration of the transition rule. */
    public var configuration: [String:Any]?
    /** The compound condition operator. */
    public var _operator: Operator?
    /** The type of the transition rule. */
    public var type: String?

    public init(conditions: [CreateWorkflowCondition]? = nil, configuration: [String:Any]? = nil, _operator: Operator? = nil, type: String? = nil) {
        self.conditions = conditions
        self.configuration = configuration
        self._operator = _operator
        self.type = type
    }

}
