//
// WorkflowSchemeReadResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct WorkflowSchemeReadResponse {

    public var defaultWorkflow: WorkflowMetadataRestModel?
    /** The description of the workflow scheme. */
    public var _description: String?
    /** The ID of the workflow scheme. */
    public var _id: String
    /** The name of the workflow scheme. */
    public var name: String
    /** The IDs of projects using the workflow scheme. */
    public var projectIdsUsingScheme: [String]
    public var scope: WorkflowScope
    /** Indicates if there&#x27;s an [asynchronous task](#async-operations) for this workflow scheme. */
    public var taskId: String?
    public var version: DocumentVersion
    /** Mappings from workflows to issue types. */
    public var workflowsForIssueTypes: [WorkflowMetadataAndIssueTypeRestModel]

    public init(defaultWorkflow: WorkflowMetadataRestModel? = nil, _description: String? = nil, _id: String, name: String, projectIdsUsingScheme: [String], scope: WorkflowScope, taskId: String? = nil, version: DocumentVersion, workflowsForIssueTypes: [WorkflowMetadataAndIssueTypeRestModel]) {
        self.defaultWorkflow = defaultWorkflow
        self._description = _description
        self._id = _id
        self.name = name
        self.projectIdsUsingScheme = projectIdsUsingScheme
        self.scope = scope
        self.taskId = taskId
        self.version = version
        self.workflowsForIssueTypes = workflowsForIssueTypes
    }


}
