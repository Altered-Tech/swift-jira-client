//
// CreateCustomFieldContext.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The details of a created custom field context. */

public struct CreateCustomFieldContext: Codable {

    /** The description of the context. */
    public var _description: String?
    /** The ID of the context. */
    public var _id: String?
    /** The list of issue types IDs for the context. If the list is empty, the context refers to all issue types. */
    public var issueTypeIds: [String]?
    /** The name of the context. */
    public var name: String
    /** The list of project IDs associated with the context. If the list is empty, the context is global. */
    public var projectIds: [String]?

    public init(_description: String? = nil, _id: String? = nil, issueTypeIds: [String]? = nil, name: String, projectIds: [String]? = nil) {
        self._description = _description
        self._id = _id
        self.issueTypeIds = issueTypeIds
        self.name = name
        self.projectIds = projectIds
    }

    public enum CodingKeys: String, CodingKey { 
        case _description = "description"
        case _id = "id"
        case issueTypeIds
        case name
        case projectIds
    }

}
