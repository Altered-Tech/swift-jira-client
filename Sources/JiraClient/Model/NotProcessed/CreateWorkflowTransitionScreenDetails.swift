//
// CreateWorkflowTransitionScreenDetails.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The details of a transition screen. */

public struct CreateWorkflowTransitionScreenDetails {

    /** The ID of the screen. */
    public var _id: String

    public init(_id: String) {
        self._id = _id
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
    }

}