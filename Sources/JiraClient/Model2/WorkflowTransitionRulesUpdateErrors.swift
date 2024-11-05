//
// WorkflowTransitionRulesUpdateErrors.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Details of any errors encountered while updating workflow transition rules. */

public struct WorkflowTransitionRulesUpdateErrors: Codable {

    /** A list of workflows. */
    public var updateResults: [WorkflowTransitionRulesUpdateErrorDetails]

    public init(updateResults: [WorkflowTransitionRulesUpdateErrorDetails]) {
        self.updateResults = updateResults
    }


}
