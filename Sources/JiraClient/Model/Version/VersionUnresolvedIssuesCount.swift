//
// VersionUnresolvedIssuesCount.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Count of a version&#x27;s unresolved issues. */

public struct VersionUnresolvedIssuesCount {

    /** Count of issues. */
    public var issuesCount: Int64?
    /** Count of unresolved issues. */
    public var issuesUnresolvedCount: Int64?
    /** The URL of these count details. */
    public var _self: String?

    public init(issuesCount: Int64? = nil, issuesUnresolvedCount: Int64? = nil, _self: String? = nil) {
        self.issuesCount = issuesCount
        self.issuesUnresolvedCount = issuesUnresolvedCount
        self._self = _self
    }

    public enum CodingKeys: String, CodingKey { 
        case issuesCount
        case issuesUnresolvedCount
        case _self = "self"
    }

}
