//
// WorklogsMoveRequestBean.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct WorklogsMoveRequestBean {

    /** A list of worklog IDs. */
    public var ids: [Int64]?
    /** The issue id or key of the destination issue */
    public var issueIdOrKey: String?

    public init(ids: [Int64]? = nil, issueIdOrKey: String? = nil) {
        self.ids = ids
        self.issueIdOrKey = issueIdOrKey
    }


}
