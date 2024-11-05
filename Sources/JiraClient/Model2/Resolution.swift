//
// Resolution.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Details of an issue resolution. */

public struct Resolution: Codable {

    /** The description of the issue resolution. */
    public var _description: String?
    /** The ID of the issue resolution. */
    public var _id: String?
    /** The name of the issue resolution. */
    public var name: String?
    /** The URL of the issue resolution. */
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
