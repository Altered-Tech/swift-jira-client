//
// WorkflowUsages.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The workflows that use this status. Only available if the &#x60;workflowUsages&#x60; expand is requested. */

public struct WorkflowUsages {

    /** Workflow ID. */
    public var workflowId: String?
    /** Workflow name. */
    public var workflowName: String?

    public init(workflowId: String? = nil, workflowName: String? = nil) {
        self.workflowId = workflowId
        self.workflowName = workflowName
    }


}