//
// StatusCreate.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Details of the status being created. */

public struct StatusCreate {

    public enum StatusCategory: String, Codable { 
        case todo = "TODO"
        case inProgress = "IN_PROGRESS"
        case done = "DONE"
    }
    /** The description of the status. */
    public var _description: String?
    /** The name of the status. */
    public var name: String
    /** The category of the status. */
    public var statusCategory: StatusCategory

    public init(_description: String? = nil, name: String, statusCategory: StatusCategory) {
        self._description = _description
        self.name = name
        self.statusCategory = statusCategory
    }

    public enum CodingKeys: String, CodingKey { 
        case _description = "description"
        case name
        case statusCategory
    }

}
