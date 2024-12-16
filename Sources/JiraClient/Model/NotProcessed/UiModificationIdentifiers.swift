//
// UiModificationIdentifiers.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Identifiers for a UI modification. */

public struct UiModificationIdentifiers {

    /** The ID of the UI modification. */
    public var _id: String
    /** The URL of the UI modification. */
    public var _self: String

    public init(_id: String, _self: String) {
        self._id = _id
        self._self = _self
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case _self = "self"
    }

}