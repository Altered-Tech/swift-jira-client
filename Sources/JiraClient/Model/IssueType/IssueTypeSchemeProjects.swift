//
// IssueTypeSchemeProjects.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Issue type scheme with a list of the projects that use it. */

public struct IssueTypeSchemeProjects {

    /** Details of an issue type scheme. */
    public var issueTypeScheme: AllOfIssueTypeSchemeProjectsIssueTypeScheme
    /** The IDs of the projects using the issue type scheme. */
    public var projectIds: [String]

    public init(issueTypeScheme: AllOfIssueTypeSchemeProjectsIssueTypeScheme, projectIds: [String]) {
        self.issueTypeScheme = issueTypeScheme
        self.projectIds = projectIds
    }


}
