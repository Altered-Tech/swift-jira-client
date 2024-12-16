//
// SecurityScheme.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Details about a security scheme. */

public struct SecurityScheme {

    /** The ID of the default security level. */
    public var defaultSecurityLevelId: Int64?
    /** The description of the issue security scheme. */
    public var _description: String?
    /** The ID of the issue security scheme. */
    public var _id: Int64?
    public var levels: [SecurityLevel]?
    /** The name of the issue security scheme. */
    public var name: String?
    /** The URL of the issue security scheme. */
    public var _self: String?

    public init(defaultSecurityLevelId: Int64? = nil, _description: String? = nil, _id: Int64? = nil, levels: [SecurityLevel]? = nil, name: String? = nil, _self: String? = nil) {
        self.defaultSecurityLevelId = defaultSecurityLevelId
        self._description = _description
        self._id = _id
        self.levels = levels
        self.name = name
        self._self = _self
    }

    public enum CodingKeys: String, CodingKey { 
        case defaultSecurityLevelId
        case _description = "description"
        case _id = "id"
        case levels
        case name
        case _self = "self"
    }

}
