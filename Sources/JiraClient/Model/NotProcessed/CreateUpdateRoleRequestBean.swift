//
// CreateUpdateRoleRequestBean.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct CreateUpdateRoleRequestBean {

    /** A description of the project role. Required when fully updating a project role. Optional when creating or partially updating a project role. */
    public var _description: String?
    /** The name of the project role. Must be unique. Cannot begin or end with whitespace. The maximum length is 255 characters. Required when creating a project role. Optional when partially updating a project role. */
    public var name: String?

    public init(_description: String? = nil, name: String? = nil) {
        self._description = _description
        self.name = name
    }

    public enum CodingKeys: String, CodingKey { 
        case _description = "description"
        case name
    }

}
