//
// WorkflowCreateResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Details of the created workflows and statuses. */

public struct WorkflowCreateResponse: Codable {

    /** List of created statuses. */
    public var statuses: [JiraWorkflowStatus]?
    /** List of created workflows. */
    public var workflows: [JiraWorkflow]?

    public init(statuses: [JiraWorkflowStatus]? = nil, workflows: [JiraWorkflow]? = nil) {
        self.statuses = statuses
        self.workflows = workflows
    }


}
