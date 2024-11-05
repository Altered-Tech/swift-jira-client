//
// AllOfLinkedIssueFields.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The fields associated with the issue. */

public struct AllOfLinkedIssueFields: Codable {

    /** The assignee of the linked issue. */
    public var assignee: Any?
    /** The type of the linked issue. */
    public var issueType: Any?
    public var issuetype: IssueTypeDetails?
    /** The priority of the linked issue. */
    public var priority: Any?
    /** The status of the linked issue. */
    public var status: Any?
    /** The summary description of the linked issue. */
    public var summary: String?
    /** The time tracking of the linked issue. */
    public var timetracking: Any?

    public init(assignee: Any? = nil, issueType: Any? = nil, issuetype: IssueTypeDetails? = nil, priority: Any? = nil, status: Any? = nil, summary: String? = nil, timetracking: Any? = nil) {
        self.assignee = assignee
        self.issueType = issueType
        self.issuetype = issuetype
        self.priority = priority
        self.status = status
        self.summary = summary
        self.timetracking = timetracking
    }


}
