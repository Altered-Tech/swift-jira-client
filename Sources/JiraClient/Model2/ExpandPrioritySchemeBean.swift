//
// ExpandPrioritySchemeBean.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** A priority scheme with less fields to be used in for an API expand response. */

public struct ExpandPrioritySchemeBean: Codable {

    /** The ID of the priority scheme. */
    public var _id: String?
    /** The name of the priority scheme. */
    public var name: String?
    /** The URL of the priority scheme. */
    public var _self: String?

    public init(_id: String? = nil, name: String? = nil, _self: String? = nil) {
        self._id = _id
        self.name = name
        self._self = _self
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case name
        case _self = "self"
    }

}
