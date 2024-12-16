//
// IssueTypeScreenSchemeProjectAssociation.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Associated issue type screen scheme and project. */

public struct IssueTypeScreenSchemeProjectAssociation {

    /** The ID of the issue type screen scheme. */
    public var issueTypeScreenSchemeId: String?
    /** The ID of the project. */
    public var projectId: String?

    public init(issueTypeScreenSchemeId: String? = nil, projectId: String? = nil) {
        self.issueTypeScreenSchemeId = issueTypeScreenSchemeId
        self.projectId = projectId
    }


}
