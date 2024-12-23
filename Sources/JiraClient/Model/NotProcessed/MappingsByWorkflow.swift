//
// MappingsByWorkflow.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The status mappings by workflows. Status mappings are required when the new workflow for an issue type doesn&#x27;t contain all statuses that the old workflow has. Status mappings can be provided by a combination of &#x60;statusMappingsByWorkflows&#x60; and &#x60;statusMappingsByIssueTypeOverride&#x60;. */

public struct MappingsByWorkflow {

    /** The ID of the new workflow. */
    public var newWorkflowId: String
    /** The ID of the old workflow. */
    public var oldWorkflowId: String
    /** The list of status mappings. */
    public var statusMappings: [WorkflowAssociationStatusMapping]

    public init(newWorkflowId: String, oldWorkflowId: String, statusMappings: [WorkflowAssociationStatusMapping]) {
        self.newWorkflowId = newWorkflowId
        self.oldWorkflowId = oldWorkflowId
        self.statusMappings = statusMappings
    }


}
