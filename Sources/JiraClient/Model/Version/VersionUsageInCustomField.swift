//
// VersionUsageInCustomField.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** List of custom fields using the version. */

public struct VersionUsageInCustomField {

    /** The ID of the custom field. */
    public var customFieldId: Int64?
    /** The name of the custom field. */
    public var fieldName: String?
    /** Count of the issues where the custom field contains the version. */
    public var issueCountWithVersionInCustomField: Int64?

    public init(customFieldId: Int64? = nil, fieldName: String? = nil, issueCountWithVersionInCustomField: Int64? = nil) {
        self.customFieldId = customFieldId
        self.fieldName = fieldName
        self.issueCountWithVersionInCustomField = issueCountWithVersionInCustomField
    }


}
