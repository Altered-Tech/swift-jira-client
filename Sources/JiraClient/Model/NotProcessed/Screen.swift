//
// Screen.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** A screen. */

public struct Screen {

    /** The description of the screen. */
    public var _description: String?
    /** The ID of the screen. */
    public var _id: Int64?
    /** The name of the screen. */
    public var name: String?
    /** The scope of the screen. */
    public var scope: AllOfScreenScope?

    public init(_description: String? = nil, _id: Int64? = nil, name: String? = nil, scope: AllOfScreenScope? = nil) {
        self._description = _description
        self._id = _id
        self.name = name
        self.scope = scope
    }

    public enum CodingKeys: String, CodingKey { 
        case _description = "description"
        case _id = "id"
        case name
        case scope
    }

}