//
// WorkflowTransitionRulesDetails.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Details about a workflow configuration update request. */

public struct WorkflowTransitionRulesDetails {

    public var workflowId: WorkflowId
    /** The list of connect workflow rule IDs. */
    public var workflowRuleIds: [String]

    public init(workflowId: WorkflowId, workflowRuleIds: [String]) {
        self.workflowId = workflowId
        self.workflowRuleIds = workflowRuleIds
    }


}
