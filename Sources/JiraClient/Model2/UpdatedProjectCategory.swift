//
// UpdatedProjectCategory.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** A project category. */

public struct UpdatedProjectCategory: Codable {

    /** The name of the project category. */
    public var _description: String?
    /** The ID of the project category. */
    public var _id: String?
    /** The description of the project category. */
    public var name: String?
    /** The URL of the project category. */
    public var _self: String?

    public init(_description: String? = nil, _id: String? = nil, name: String? = nil, _self: String? = nil) {
        self._description = _description
        self._id = _id
        self.name = name
        self._self = _self
    }

    public enum CodingKeys: String, CodingKey { 
        case _description = "description"
        case _id = "id"
        case name
        case _self = "self"
    }

}
