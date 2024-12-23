//
// CustomFieldContextDefaultValueForgeGroupField.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The default value for a Forge group custom field. */

public struct CustomFieldContextDefaultValueForgeGroupField {

    /** The ID of the context. */
    public var contextId: String
    /** The ID of the the default group. */
    public var groupId: String
    public var type: String

    public init(contextId: String, groupId: String, type: String) {
        self.contextId = contextId
        self.groupId = groupId
        self.type = type
    }


}
