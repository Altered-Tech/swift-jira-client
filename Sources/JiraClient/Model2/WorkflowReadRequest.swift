//
// WorkflowReadRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct WorkflowReadRequest: Codable {

    /** The list of projects and issue types to query. */
    public var projectAndIssueTypes: [ProjectAndIssueTypePair]?
    /** The list of workflow IDs to query. */
    public var workflowIds: [String]?
    /** The list of workflow names to query. */
    public var workflowNames: [String]?

    public init(projectAndIssueTypes: [ProjectAndIssueTypePair]? = nil, workflowIds: [String]? = nil, workflowNames: [String]? = nil) {
        self.projectAndIssueTypes = projectAndIssueTypes
        self.workflowIds = workflowIds
        self.workflowNames = workflowNames
    }


}
