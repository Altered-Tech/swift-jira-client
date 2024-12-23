//
// Workflow.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Details about a workflow. */

public struct Workflow {

    /** The creation date of the workflow. */
    public var created: Date?
    /** The description of the workflow. */
    public var _description: String
    /** Whether the workflow has a draft version. */
    public var hasDraftWorkflow: Bool?
    public var id: PublishedWorkflowId
    /** Whether this is the default workflow. */
    public var isDefault: Bool?
    public var operations: WorkflowOperations?
    /** The projects the workflow is assigned to, through workflow schemes. */
    public var projects: [ProjectDetails]?
    /** The workflow schemes the workflow is assigned to. */
    public var schemes: [WorkflowSchemeIdName]?
    /** The statuses of the workflow. */
    public var statuses: [WorkflowStatus]?
    /** The transitions of the workflow. */
    public var transitions: [Transition]?
    /** The last edited date of the workflow. */
    public var updated: Date?

    public init(created: Date? = nil, _description: String, hasDraftWorkflow: Bool? = nil, id: PublishedWorkflowId, isDefault: Bool? = nil, operations: WorkflowOperations? = nil, projects: [ProjectDetails]? = nil, schemes: [WorkflowSchemeIdName]? = nil, statuses: [WorkflowStatus]? = nil, transitions: [Transition]? = nil, updated: Date? = nil) {
        self.created = created
        self._description = _description
        self.hasDraftWorkflow = hasDraftWorkflow
        self.id = id
        self.isDefault = isDefault
        self.operations = operations
        self.projects = projects
        self.schemes = schemes
        self.statuses = statuses
        self.transitions = transitions
        self.updated = updated
    }

}
