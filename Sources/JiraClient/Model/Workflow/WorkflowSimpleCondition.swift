//
// WorkflowSimpleCondition.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** A workflow transition rule condition. This object returns &#x60;nodeType&#x60; as &#x60;simple&#x60;. */

public struct WorkflowSimpleCondition {

    /** EXPERIMENTAL. The configuration of the transition rule. */
    public var configuration: Any?
    public var nodeType: String
    /** The type of the transition rule. */
    public var type: String

    public init(configuration: Any? = nil, nodeType: String, type: String) {
        self.configuration = configuration
        self.nodeType = nodeType
        self.type = type
    }


}
