//
// FieldConfigurationScheme.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Details of a field configuration scheme. */

public struct FieldConfigurationScheme {

    /** The description of the field configuration scheme. */
    public var _description: String?
    /** The ID of the field configuration scheme. */
    public var _id: String
    /** The name of the field configuration scheme. */
    public var name: String

    public init(_description: String? = nil, _id: String, name: String) {
        self._description = _description
        self._id = _id
        self.name = name
    }

    public enum CodingKeys: String, CodingKey { 
        case _description = "description"
        case _id = "id"
        case name
    }

}