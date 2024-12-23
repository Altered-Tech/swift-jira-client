//
// CustomFieldContextDefaultValueMultipleGroupPicker.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The default value for a multiple group picker custom field. */

public struct CustomFieldContextDefaultValueMultipleGroupPicker {

    /** The ID of the context. */
    public var contextId: String
    /** The IDs of the default groups. */
    public var groupIds: [String]
    public var type: String

    public init(contextId: String, groupIds: [String], type: String) {
        self.contextId = contextId
        self.groupIds = groupIds
        self.type = type
    }


}
