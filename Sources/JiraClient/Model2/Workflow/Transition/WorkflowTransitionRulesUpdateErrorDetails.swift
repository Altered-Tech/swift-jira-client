//
// WorkflowTransitionRulesUpdateErrorDetails.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Details of any errors encountered while updating workflow transition rules for a workflow. */

public struct WorkflowTransitionRulesUpdateErrorDetails {

    /** A list of transition rule update errors, indexed by the transition rule ID. Any transition rule that appears here wasn&#x27;t updated. */
    public var ruleUpdateErrors: [String:[String]]
    /** The list of errors that specify why the workflow update failed. The workflow was not updated if the list contains any entries. */
    public var updateErrors: [String]
    public var workflowId: WorkflowId

    public init(ruleUpdateErrors: [String:[String]], updateErrors: [String], workflowId: WorkflowId) {
        self.ruleUpdateErrors = ruleUpdateErrors
        self.updateErrors = updateErrors
        self.workflowId = workflowId
    }


}
