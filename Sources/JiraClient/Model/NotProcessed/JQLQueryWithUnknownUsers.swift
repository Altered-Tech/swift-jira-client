//
// JQLQueryWithUnknownUsers.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** JQL queries that contained users that could not be found */

public struct JQLQueryWithUnknownUsers {

    /** The converted query, with accountIDs instead of user identifiers, or &#x27;unknown&#x27; for users that could not be found */
    public var convertedQuery: String?
    /** The original query, for reference */
    public var originalQuery: String?

    public init(convertedQuery: String? = nil, originalQuery: String? = nil) {
        self.convertedQuery = convertedQuery
        self.originalQuery = originalQuery
    }


}
