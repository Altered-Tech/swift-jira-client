//
// SetDefaultPriorityRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The new default issue priority. */

public struct SetDefaultPriorityRequest {

    /** The ID of the new default issue priority. Must be an existing ID or null. Setting this to null erases the default priority setting. */
    public var _id: String

    public init(_id: String) {
        self._id = _id
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
    }

}