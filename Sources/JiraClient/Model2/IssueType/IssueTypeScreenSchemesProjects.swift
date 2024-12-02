//
// IssueTypeScreenSchemesProjects.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Issue type screen scheme with a list of the projects that use it. */

public struct IssueTypeScreenSchemesProjects {

    /** Details of an issue type screen scheme. */
    public var issueTypeScreenScheme: AllOfIssueTypeScreenSchemesProjectsIssueTypeScreenScheme
    /** The IDs of the projects using the issue type screen scheme. */
    public var projectIds: [String]

    public init(issueTypeScreenScheme: AllOfIssueTypeScreenSchemesProjectsIssueTypeScreenScheme, projectIds: [String]) {
        self.issueTypeScreenScheme = issueTypeScreenScheme
        self.projectIds = projectIds
    }


}