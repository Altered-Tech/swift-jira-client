//
// AllOfIssueTypeScreenSchemesProjectsIssueTypeScreenScheme.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Details of an issue type screen scheme. */

public struct AllOfIssueTypeScreenSchemesProjectsIssueTypeScreenScheme {

    /** The description of the issue type screen scheme. */
    public var _description: String?
    /** The ID of the issue type screen scheme. */
    public var _id: String
    /** The name of the issue type screen scheme. */
    public var name: String

    public init(_description: String? = nil, _id: String, name: String) {
        self._description = _description
        self._id = _id
        self.name = name
    }

    public enum CodingKeys: String, CodingKey { 
        case _description = "description"
        case _id = "id"
        case name
    }

}
