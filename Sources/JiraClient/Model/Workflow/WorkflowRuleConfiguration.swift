//
// WorkflowRuleConfiguration.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The configuration of the rule. */

public struct WorkflowRuleConfiguration {

    /** The ID of the rule. */
    public var _id: String?
    /** The parameters related to the rule. */
    public var parameters: [String:String]?
    /** The rule key of the rule. */
    public var ruleKey: String

    public init(_id: String? = nil, parameters: [String:String]? = nil, ruleKey: String) {
        self._id = _id
        self.parameters = parameters
        self.ruleKey = ruleKey
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case parameters
        case ruleKey
    }

}