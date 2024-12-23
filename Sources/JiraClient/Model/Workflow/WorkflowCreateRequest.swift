//
// WorkflowCreateRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The create workflows payload. */

public struct WorkflowCreateRequest {

    public var scope: WorkflowScope
    /** The statuses to associate with the workflows. */
    public var statuses: [WorkflowStatusUpdate]
    /** The details of the workflows to create. */
    public var workflows: [WorkflowCreate]

    public init(scope: WorkflowScope, statuses: [WorkflowStatusUpdate], workflows: [WorkflowCreate]) {
        self.scope = scope
        self.statuses = statuses
        self.workflows = workflows
    }


}
