//
// IssueTypeScreenSchemeUpdateDetails.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Details of an issue type screen scheme. */

public struct IssueTypeScreenSchemeUpdateDetails {

    /** The description of the issue type screen scheme. The maximum length is 255 characters. */
    public var _description: String?
    /** The name of the issue type screen scheme. The name must be unique. The maximum length is 255 characters. */
    public var name: String?

    public init(_description: String? = nil, name: String? = nil) {
        self._description = _description
        self.name = name
    }

    public enum CodingKeys: String, CodingKey { 
        case _description = "description"
        case name
    }

}
