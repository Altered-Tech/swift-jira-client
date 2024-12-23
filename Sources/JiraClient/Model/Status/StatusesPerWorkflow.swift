//
// StatusesPerWorkflow.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The statuses associated with each workflow. */

public struct StatusesPerWorkflow {

    /** The ID of the initial status for the workflow. */
    public var initialStatusId: String?
    /** The status IDs associated with the workflow. */
    public var statuses: [String]?
    /** The ID of the workflow. */
    public var workflowId: String?

    public init(initialStatusId: String? = nil, statuses: [String]? = nil, workflowId: String? = nil) {
        self.initialStatusId = initialStatusId
        self.statuses = statuses
        self.workflowId = workflowId
    }


}
