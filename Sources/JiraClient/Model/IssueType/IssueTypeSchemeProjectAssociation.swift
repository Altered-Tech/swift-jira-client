//
// IssueTypeSchemeProjectAssociation.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Details of the association between an issue type scheme and project. */

public struct IssueTypeSchemeProjectAssociation {

    /** The ID of the issue type scheme. */
    public var issueTypeSchemeId: String
    /** The ID of the project. */
    public var projectId: String

    public init(issueTypeSchemeId: String, projectId: String) {
        self.issueTypeSchemeId = issueTypeSchemeId
        self.projectId = projectId
    }


}