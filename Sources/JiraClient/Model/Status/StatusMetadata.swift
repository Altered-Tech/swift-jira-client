//
// StatusMetadata.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The details of the statuses in the associated workflows. */

public struct StatusMetadata {

    public enum Category: String, Codable { 
        case todo = "TODO"
        case inProgress = "IN_PROGRESS"
        case done = "DONE"
    }
    /** The category of the status. */
    public var category: Category?
    /** The ID of the status. */
    public var _id: String?
    /** The name of the status. */
    public var name: String?

    public init(category: Category? = nil, _id: String? = nil, name: String? = nil) {
        self.category = category
        self._id = _id
        self.name = name
    }

    public enum CodingKeys: String, CodingKey { 
        case category
        case _id = "id"
        case name
    }

}
