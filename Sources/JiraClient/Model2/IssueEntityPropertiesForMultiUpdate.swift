//
// IssueEntityPropertiesForMultiUpdate.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** An issue ID with entity property values. See [Entity properties](https://developer.atlassian.com/cloud/jira/platform/jira-entity-properties/) for more information. */

public struct IssueEntityPropertiesForMultiUpdate: Codable {

    /** The ID of the issue. */
    public var issueID: Int64?
    /** Entity properties to set on the issue. The maximum length of an issue property value is 32768 characters. */
    public var properties: [String:JsonNode]?

    public init(issueID: Int64? = nil, properties: [String:JsonNode]? = nil) {
        self.issueID = issueID
        self.properties = properties
    }


}
