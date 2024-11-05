//
// IssueTypeScheme.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Details of an issue type scheme. */

public struct IssueTypeScheme: Codable {

    /** The ID of the default issue type of the issue type scheme. */
    public var defaultIssueTypeId: String?
    /** The description of the issue type scheme. */
    public var _description: String?
    /** The ID of the issue type scheme. */
    public var _id: String
    /** Whether the issue type scheme is the default. */
    public var isDefault: Bool?
    /** The name of the issue type scheme. */
    public var name: String

    public init(defaultIssueTypeId: String? = nil, _description: String? = nil, _id: String, isDefault: Bool? = nil, name: String) {
        self.defaultIssueTypeId = defaultIssueTypeId
        self._description = _description
        self._id = _id
        self.isDefault = isDefault
        self.name = name
    }

    public enum CodingKeys: String, CodingKey { 
        case defaultIssueTypeId
        case _description = "description"
        case _id = "id"
        case isDefault
        case name
    }

}
