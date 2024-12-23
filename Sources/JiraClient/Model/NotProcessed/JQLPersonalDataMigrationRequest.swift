//
// JQLPersonalDataMigrationRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The JQL queries to be converted. */

public struct JQLPersonalDataMigrationRequest {

    /** A list of queries with user identifiers. Maximum of 100 queries. */
    public var queryStrings: [String]?

    public init(queryStrings: [String]? = nil) {
        self.queryStrings = queryStrings
    }


}
