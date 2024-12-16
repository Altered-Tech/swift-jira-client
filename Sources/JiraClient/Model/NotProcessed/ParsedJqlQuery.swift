//
// ParsedJqlQuery.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Details of a parsed JQL query. */

public struct ParsedJqlQuery {

    /** The list of syntax or validation errors. */
    public var errors: [String]?
    /** The JQL query that was parsed and validated. */
    public var query: String
    /** The syntax tree of the query. Empty if the query was invalid. */
    public var structure: AllOfParsedJqlQueryStructure?

    public init(errors: [String]? = nil, query: String, structure: AllOfParsedJqlQueryStructure? = nil) {
        self.errors = errors
        self.query = query
        self.structure = structure
    }


}