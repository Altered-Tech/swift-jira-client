//
// IssueLimitReportRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct IssueLimitReportRequest: Codable {

    /** A list of fields and their respective approaching limit threshold. Required for querying issues approaching limits. Optional for querying issues breaching limits. Accepted fields are: &#x60;comment&#x60;, &#x60;worklog&#x60;, &#x60;attachment&#x60;, &#x60;remoteIssueLinks&#x60;, and &#x60;issuelinks&#x60;. Example: &#x60;{\&quot;issuesApproachingLimitParams\&quot;: {\&quot;comment\&quot;: 4500, \&quot;attachment\&quot;: 1800}}&#x60; */
    public var issuesApproachingLimitParams: [String:Int]?

    public init(issuesApproachingLimitParams: [String:Int]? = nil) {
        self.issuesApproachingLimitParams = issuesApproachingLimitParams
    }


}
