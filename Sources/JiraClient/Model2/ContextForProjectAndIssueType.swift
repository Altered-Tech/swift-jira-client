//
// ContextForProjectAndIssueType.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The project and issue type mapping with a matching custom field context. */

public struct ContextForProjectAndIssueType: Codable {

    /** The ID of the custom field context. */
    public var contextId: String
    /** The ID of the issue type. */
    public var issueTypeId: String
    /** The ID of the project. */
    public var projectId: String

    public init(contextId: String, issueTypeId: String, projectId: String) {
        self.contextId = contextId
        self.issueTypeId = issueTypeId
        self.projectId = projectId
    }


}
