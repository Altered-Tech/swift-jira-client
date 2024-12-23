//
// IdSearchResults.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Result of your JQL search. Returns a list of issue IDs and a token to fetch the next page if one exists. */

public struct IdSearchResults {

    /** The list of issue IDs found by the search. */
    public var issueIds: [Int64]?
    /** Continuation token to fetch the next page. If this result represents the last or the only page this token will be null. */
    public var nextPageToken: String?

    public init(issueIds: [Int64]? = nil, nextPageToken: String? = nil) {
        self.issueIds = issueIds
        self.nextPageToken = nextPageToken
    }


}
