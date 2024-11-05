//
// ConnectWorkflowTransitionRule.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** A workflow transition rule. */

public struct ConnectWorkflowTransitionRule: Codable {

    public var configuration: RuleConfiguration
    /** The ID of the transition rule. */
    public var _id: String
    /** The key of the rule, as defined in the Connect app descriptor. */
    public var key: String
    public var transition: WorkflowTransition?

    public init(configuration: RuleConfiguration, _id: String, key: String, transition: WorkflowTransition? = nil) {
        self.configuration = configuration
        self._id = _id
        self.key = key
        self.transition = transition
    }

    public enum CodingKeys: String, CodingKey { 
        case configuration
        case _id = "id"
        case key
        case transition
    }

}
