//
// WorkflowUpdateResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct WorkflowUpdateResponse {

    /** List of updated statuses. */
    public var statuses: [JiraWorkflowStatus]?
    /** If there is a [asynchronous task](#async-operations) operation, as a result of this update. */
    public var taskId: String?
    /** List of updated workflows. */
    public var workflows: [JiraWorkflow]?

    public init(statuses: [JiraWorkflowStatus]? = nil, taskId: String? = nil, workflows: [JiraWorkflow]? = nil) {
        self.statuses = statuses
        self.taskId = taskId
        self.workflows = workflows
    }


}