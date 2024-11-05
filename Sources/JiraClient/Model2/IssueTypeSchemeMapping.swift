//
// IssueTypeSchemeMapping.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Issue type scheme item. */

public struct IssueTypeSchemeMapping: Codable {

    /** The ID of the issue type. */
    public var issueTypeId: String
    /** The ID of the issue type scheme. */
    public var issueTypeSchemeId: String

    public init(issueTypeId: String, issueTypeSchemeId: String) {
        self.issueTypeId = issueTypeId
        self.issueTypeSchemeId = issueTypeSchemeId
    }


}
