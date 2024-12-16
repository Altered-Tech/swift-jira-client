//
// ScreenSchemeId.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The ID of a screen scheme. */

public struct ScreenSchemeId {

    /** The ID of the screen scheme. */
    public var _id: Int64

    public init(_id: Int64) {
        self._id = _id
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
    }

}
