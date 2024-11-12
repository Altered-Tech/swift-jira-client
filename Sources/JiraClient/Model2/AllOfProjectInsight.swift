//
// AllOfProjectInsight.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Insights about the project. */

public struct AllOfProjectInsight {

    /** The last issue update time. */
    public var lastIssueUpdateTime: Date?
    /** Total issue count. */
    public var totalIssueCount: Int64?

    public init(lastIssueUpdateTime: Date? = nil, totalIssueCount: Int64? = nil) {
        self.lastIssueUpdateTime = lastIssueUpdateTime
        self.totalIssueCount = totalIssueCount
    }


}
