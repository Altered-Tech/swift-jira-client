//
// UpdateFieldConfigurationSchemeDetails.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The details of the field configuration scheme. */

public struct UpdateFieldConfigurationSchemeDetails: Codable {

    /** The description of the field configuration scheme. */
    public var _description: String?
    /** The name of the field configuration scheme. The name must be unique. */
    public var name: String

    public init(_description: String? = nil, name: String) {
        self._description = _description
        self.name = name
    }

    public enum CodingKeys: String, CodingKey { 
        case _description = "description"
        case name
    }

}
