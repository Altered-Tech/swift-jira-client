//
// CustomFieldContextDefaultValueMultiUserPicker.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The default value for a User Picker (multiple) custom field. */

public struct CustomFieldContextDefaultValueMultiUserPicker {

    /** The IDs of the default users. */
    public var accountIds: [String]
    /** The ID of the context. */
    public var contextId: String
    public var type: String

    public init(accountIds: [String], contextId: String, type: String) {
        self.accountIds = accountIds
        self.contextId = contextId
        self.type = type
    }


}
