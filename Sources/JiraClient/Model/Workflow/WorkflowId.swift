//
// WorkflowId.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Properties that identify a workflow. */

public struct WorkflowId {

    /** Whether the workflow is in the draft state. */
    public var draft: Bool
    /** The name of the workflow. */
    public var name: String

    public init(draft: Bool, name: String) {
        self.draft = draft
        self.name = name
    }


}
