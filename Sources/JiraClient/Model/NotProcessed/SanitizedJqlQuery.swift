//
// SanitizedJqlQuery.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Details of the sanitized JQL query. */

public struct SanitizedJqlQuery {

    /** The account ID of the user for whom sanitization was performed. */
    public var accountId: String?
    /** The list of errors. */
    public var errors: AllOfSanitizedJqlQueryErrors?
    /** The initial query. */
    public var initialQuery: String?
    /** The sanitized query, if there were no errors. */
    public var sanitizedQuery: String?

    public init(accountId: String? = nil, errors: AllOfSanitizedJqlQueryErrors? = nil, initialQuery: String? = nil, sanitizedQuery: String? = nil) {
        self.accountId = accountId
        self.errors = errors
        self.initialQuery = initialQuery
        self.sanitizedQuery = sanitizedQuery
    }


}
