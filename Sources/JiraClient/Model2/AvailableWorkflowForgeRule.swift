//
// AvailableWorkflowForgeRule.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The Forge provided ecosystem rules available. */

public struct AvailableWorkflowForgeRule: Codable {

    public enum RuleType: String, Codable { 
        case condition = "Condition"
        case validator = "Validator"
        case function = "Function"
        case screen = "Screen"
    }
    /** The rule description. */
    public var _description: String?
    /** The unique ARI of the forge rule type. */
    public var _id: String?
    /** The rule name. */
    public var name: String?
    /** The rule key. */
    public var ruleKey: String?
    /** The rule type. */
    public var ruleType: RuleType?

    public init(_description: String? = nil, _id: String? = nil, name: String? = nil, ruleKey: String? = nil, ruleType: RuleType? = nil) {
        self._description = _description
        self._id = _id
        self.name = name
        self.ruleKey = ruleKey
        self.ruleType = ruleType
    }

    public enum CodingKeys: String, CodingKey { 
        case _description = "description"
        case _id = "id"
        case name
        case ruleKey
        case ruleType
    }

}
