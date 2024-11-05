//
// IssueTypeScreenSchemeItem.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The screen scheme for an issue type. */

public struct IssueTypeScreenSchemeItem: Codable {

    /** The ID of the issue type or *default*. Only issue types used in classic projects are accepted. When creating an issue screen scheme, an entry for *default* must be provided and defines the mapping for all issue types without a screen scheme. Otherwise, a *default* entry can&#x27;t be provided. */
    public var issueTypeId: String
    /** The ID of the issue type screen scheme. */
    public var issueTypeScreenSchemeId: String
    /** The ID of the screen scheme. */
    public var screenSchemeId: String

    public init(issueTypeId: String, issueTypeScreenSchemeId: String, screenSchemeId: String) {
        self.issueTypeId = issueTypeId
        self.issueTypeScreenSchemeId = issueTypeScreenSchemeId
        self.screenSchemeId = screenSchemeId
    }


}
