//
// ProjectRoleUser.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Details of the user associated with the role. */

public struct ProjectRoleUser: Codable {

    /** The account ID of the user, which uniquely identifies the user across all Atlassian products. For example, *5b10ac8d82e05b22cc7d4ef5*. Returns *unknown* if the record is deleted and corrupted, for example, as the result of a server import. */
    public var accountId: String?

    public init(accountId: String? = nil) {
        self.accountId = accountId
    }


}
