//
// JiraStatus.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Details of a status. */

public struct JiraStatus: Codable {

    public enum StatusCategory: String, Codable { 
        case todo = "TODO"
        case inProgress = "IN_PROGRESS"
        case done = "DONE"
    }
    /** The description of the status. */
    public var _description: String?
    /** The ID of the status. */
    public var _id: String?
    /** The name of the status. */
    public var name: String?
    public var scope: StatusScope?
    /** The category of the status. */
    public var statusCategory: StatusCategory?
    /** Projects and issue types where the status is used. Only available if the &#x60;usages&#x60; expand is requested. */
    public var usages: [ProjectIssueTypes]?
    /** The workflows that use this status. Only available if the &#x60;workflowUsages&#x60; expand is requested. */
    public var workflowUsages: [WorkflowUsages]?

    public init(_description: String? = nil, _id: String? = nil, name: String? = nil, scope: StatusScope? = nil, statusCategory: StatusCategory? = nil, usages: [ProjectIssueTypes]? = nil, workflowUsages: [WorkflowUsages]? = nil) {
        self._description = _description
        self._id = _id
        self.name = name
        self.scope = scope
        self.statusCategory = statusCategory
        self.usages = usages
        self.workflowUsages = workflowUsages
    }

    public enum CodingKeys: String, CodingKey { 
        case _description = "description"
        case _id = "id"
        case name
        case scope
        case statusCategory
        case usages
        case workflowUsages
    }

}
