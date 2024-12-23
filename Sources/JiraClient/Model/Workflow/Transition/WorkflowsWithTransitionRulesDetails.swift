//
// WorkflowsWithTransitionRulesDetails.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Details of workflows and their transition rules to delete. */

public struct WorkflowsWithTransitionRulesDetails {

    /** The list of workflows with transition rules to delete. */
    public var workflows: [WorkflowTransitionRulesDetails]

    public init(workflows: [WorkflowTransitionRulesDetails]) {
        self.workflows = workflows
    }


}
