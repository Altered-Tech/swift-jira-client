//
// AuditRecords.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Container for a list of audit records. */

public struct AuditRecords: Codable {

    /** The requested or default limit on the number of audit items to be returned. */
    public var limit: Int?
    /** The number of audit items skipped before the first item in this list. */
    public var offset: Int?
    /** The list of audit items. */
    public var records: [AuditRecordBean]?
    /** The total number of audit items returned. */
    public var total: Int64?

    public init(limit: Int? = nil, offset: Int? = nil, records: [AuditRecordBean]? = nil, total: Int64? = nil) {
        self.limit = limit
        self.offset = offset
        self.records = records
        self.total = total
    }


}
