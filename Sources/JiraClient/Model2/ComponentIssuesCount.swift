//
// ComponentIssuesCount.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Count of issues assigned to a component. */

public struct ComponentIssuesCount {

    /** The count of issues assigned to a component. */
    public var issueCount: Int64?
    /** The URL for this count of issues for a component. */
    public var _self: String?

    public init(issueCount: Int64? = nil, _self: String? = nil) {
        self.issueCount = issueCount
        self._self = _self
    }

    public enum CodingKeys: String, CodingKey { 
        case issueCount
        case _self = "self"
    }

}
