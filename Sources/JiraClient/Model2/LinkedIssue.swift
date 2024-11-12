//
// LinkedIssue.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The ID or key of a linked issue. */

public struct LinkedIssue {

    /** The fields associated with the issue. */
    public var fields: AllOfLinkedIssueFields?
    /** The ID of an issue. Required if &#x60;key&#x60; isn&#x27;t provided. */
    public var _id: String?
    /** The key of an issue. Required if &#x60;id&#x60; isn&#x27;t provided. */
    public var key: String?
    /** The URL of the issue. */
    public var _self: String?

    public init(fields: AllOfLinkedIssueFields? = nil, _id: String? = nil, key: String? = nil, _self: String? = nil) {
        self.fields = fields
        self._id = _id
        self.key = key
        self._self = _self
    }

    public enum CodingKeys: String, CodingKey { 
        case fields
        case _id = "id"
        case key
        case _self = "self"
    }

}
