//
// IssueLimitReportResponseBean.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct IssueLimitReportResponseBean {

    /** A list of ids of issues approaching the limit and their field count */
    public var issuesApproachingLimit: [String:[String:Int64]]?
    /** A list of ids of issues breaching the limit and their field count */
    public var issuesBreachingLimit: [String:[String:Int64]]?
    /** The fields and their defined limits */
    public var limits: [String:Int]?

    public init(issuesApproachingLimit: [String:[String:Int64]]? = nil, issuesBreachingLimit: [String:[String:Int64]]? = nil, limits: [String:Int]? = nil) {
        self.issuesApproachingLimit = issuesApproachingLimit
        self.issuesBreachingLimit = issuesBreachingLimit
        self.limits = limits
    }


}