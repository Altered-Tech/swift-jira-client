//
// WorkflowSchemeIdName.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The ID and the name of the workflow scheme. */

public struct WorkflowSchemeIdName {

    /** The ID of the workflow scheme. */
    public var id: String
    /** The name of the workflow scheme. */
    public var name: String

    public init(id: String, name: String) {
        self.id = id
        self.name = name
    }
    
    internal init(client: Components.Schemas.WorkflowSchemeIdName) {
        self.id = client.id
        self.name = client.name
    }
}