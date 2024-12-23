//
// JqlQueryToSanitize.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The JQL query to sanitize for the account ID. If the account ID is null, sanitizing is performed for an anonymous user. */

public struct JqlQueryToSanitize {

    /** The account ID of the user, which uniquely identifies the user across all Atlassian products. For example, *5b10ac8d82e05b22cc7d4ef5*. */
    public var accountId: String?
    /** The query to sanitize. */
    public var query: String

    public init(accountId: String? = nil, query: String) {
        self.accountId = accountId
        self.query = query
    }


}
