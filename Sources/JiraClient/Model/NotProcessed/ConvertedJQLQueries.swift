//
// ConvertedJQLQueries.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The converted JQL queries. */

public struct ConvertedJQLQueries {

    /** List of queries containing user information that could not be mapped to an existing user */
    public var queriesWithUnknownUsers: [JQLQueryWithUnknownUsers]?
    /** The list of converted query strings with account IDs in place of user identifiers. */
    public var queryStrings: [String]?

    public init(queriesWithUnknownUsers: [JQLQueryWithUnknownUsers]? = nil, queryStrings: [String]? = nil) {
        self.queriesWithUnknownUsers = queriesWithUnknownUsers
        self.queryStrings = queryStrings
    }


}
