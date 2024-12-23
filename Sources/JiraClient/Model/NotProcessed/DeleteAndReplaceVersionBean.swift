//
// DeleteAndReplaceVersionBean.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct DeleteAndReplaceVersionBean {

    /** An array of custom field IDs (&#x60;customFieldId&#x60;) and version IDs (&#x60;moveTo&#x60;) to update when the fields contain the deleted version. */
    public var customFieldReplacementList: [CustomFieldReplacement]?
    /** The ID of the version to update &#x60;affectedVersion&#x60; to when the field contains the deleted version. */
    public var moveAffectedIssuesTo: Int64?
    /** The ID of the version to update &#x60;fixVersion&#x60; to when the field contains the deleted version. */
    public var moveFixIssuesTo: Int64?

    public init(customFieldReplacementList: [CustomFieldReplacement]? = nil, moveAffectedIssuesTo: Int64? = nil, moveFixIssuesTo: Int64? = nil) {
        self.customFieldReplacementList = customFieldReplacementList
        self.moveAffectedIssuesTo = moveAffectedIssuesTo
        self.moveFixIssuesTo = moveFixIssuesTo
    }


}
