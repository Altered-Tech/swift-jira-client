//
// IssueFilterForBulkPropertyDelete.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Bulk operation filter details. */

public struct IssueFilterForBulkPropertyDelete: Codable {

    /** The value of properties to perform the bulk operation on. */
    public var currentValue: Any?
    /** List of issues to perform the bulk delete operation on. */
    public var entityIds: [Int64]?

    public init(currentValue: Any? = nil, entityIds: [Int64]? = nil) {
        self.currentValue = currentValue
        self.entityIds = entityIds
    }


}
