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
    public var _id: String
    /** The name of the workflow scheme. */
    public var name: String

    public init(_id: String, name: String) {
        self._id = _id
        self.name = name
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case name
    }

}