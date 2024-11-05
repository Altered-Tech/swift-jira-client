//
// CreateWorkflowTransitionRule.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** A workflow transition rule. */

public struct CreateWorkflowTransitionRule: Codable {

    /** EXPERIMENTAL. The configuration of the transition rule. */
    public var configuration: [String:Any]?
    /** The type of the transition rule. */
    public var type: String

    public init(configuration: [String:Any]? = nil, type: String) {
        self.configuration = configuration
        self.type = type
    }


}
