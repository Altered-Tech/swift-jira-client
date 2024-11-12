//
// CustomFieldContext.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The details of a custom field context. */

public struct CustomFieldContext {

    /** The description of the context. */
    public var _description: String
    /** The ID of the context. */
    public var _id: String
    /** Whether the context apply to all issue types. */
    public var isAnyIssueType: Bool
    /** Whether the context is global. */
    public var isGlobalContext: Bool
    /** The name of the context. */
    public var name: String

    public init(_description: String, _id: String, isAnyIssueType: Bool, isGlobalContext: Bool, name: String) {
        self._description = _description
        self._id = _id
        self.isAnyIssueType = isAnyIssueType
        self.isGlobalContext = isGlobalContext
        self.name = name
    }

    public enum CodingKeys: String, CodingKey { 
        case _description = "description"
        case _id = "id"
        case isAnyIssueType
        case isGlobalContext
        case name
    }

}
