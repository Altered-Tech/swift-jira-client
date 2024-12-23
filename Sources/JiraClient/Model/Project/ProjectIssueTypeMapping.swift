//
// ProjectIssueTypeMapping.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The project and issue type mapping. */

public struct ProjectIssueTypeMapping {

    /** The ID of the issue type. */
    public var issueTypeId: String
    /** The ID of the project. */
    public var projectId: String

    public init(issueTypeId: String, projectId: String) {
        self.issueTypeId = issueTypeId
        self.projectId = projectId
    }


}
