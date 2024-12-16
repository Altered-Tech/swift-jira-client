//
// AvailableWorkflowSystemRule.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The Atlassian provided system rules available. */

public struct AvailableWorkflowSystemRule {

    public enum RuleType: String, Codable { 
        case condition = "Condition"
        case validator = "Validator"
        case function = "Function"
        case screen = "Screen"
    }
    /** The rule description. */
    public var _description: String
    /** List of rules that conflict with this one. */
    public var incompatibleRuleKeys: [String]
    /** Whether the rule can be added added to an initial transition. */
    public var isAvailableForInitialTransition: Bool
    /** Whether the rule is visible. */
    public var isVisible: Bool
    /** The rule name. */
    public var name: String
    /** The rule key. */
    public var ruleKey: String
    /** The rule type. */
    public var ruleType: RuleType

    public init(_description: String, incompatibleRuleKeys: [String], isAvailableForInitialTransition: Bool, isVisible: Bool, name: String, ruleKey: String, ruleType: RuleType) {
        self._description = _description
        self.incompatibleRuleKeys = incompatibleRuleKeys
        self.isAvailableForInitialTransition = isAvailableForInitialTransition
        self.isVisible = isVisible
        self.name = name
        self.ruleKey = ruleKey
        self.ruleType = ruleType
    }

    public enum CodingKeys: String, CodingKey { 
        case _description = "description"
        case incompatibleRuleKeys
        case isAvailableForInitialTransition
        case isVisible
        case name
        case ruleKey
        case ruleType
    }

}