//
// SearchAndReconcileResults.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The result of a JQL search with issues reconsilation. */

public struct SearchAndReconcileResults {

    /** The list of issues found by the search or reconsiliation. */
    public var issues: [Issue]?
    /** The ID and name of each field in the search results. */
    public var names: [String:String]?
    /** Continuation token to fetch the next page. If this result represents the last or the only page this token will be null. This token will expire in 7 days. */
    public var nextPageToken: String?
    /** The schema describing the field types in the search results. */
    public var schema: [String:JsonTypeBean]?

    public init(issues: [Issue]? = nil, names: [String:String]? = nil, nextPageToken: String? = nil, schema: [String:JsonTypeBean]? = nil) {
        self.issues = issues
        self.names = names
        self.nextPageToken = nextPageToken
        self.schema = schema
    }


}