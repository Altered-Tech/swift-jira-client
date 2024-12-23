//
// PropertyKey.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Property key details. */

public struct PropertyKey {

    /** The key of the property. */
    public var key: String?
    /** The URL of the property. */
    public var _self: String?

    public init(key: String? = nil, _self: String? = nil) {
        self.key = key
        self._self = _self
    }

    public enum CodingKeys: String, CodingKey { 
        case key
        case _self = "self"
    }

}
