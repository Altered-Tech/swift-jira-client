//
// CustomFieldContextDefaultValueForgeUserField.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Defaults for a Forge user custom field. */

public struct CustomFieldContextDefaultValueForgeUserField {

    /** The ID of the default user. */
    public var accountId: String
    /** The ID of the context. */
    public var contextId: String
    public var type: String
    public var userFilter: UserFilter

    public init(accountId: String, contextId: String, type: String, userFilter: UserFilter) {
        self.accountId = accountId
        self.contextId = contextId
        self.type = type
        self.userFilter = userFilter
    }


}