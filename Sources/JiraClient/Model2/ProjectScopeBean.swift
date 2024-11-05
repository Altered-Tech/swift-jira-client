//
// ProjectScopeBean.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct ProjectScopeBean: Codable {

    public enum Attributes: String, Codable { 
        case notselectable = "notSelectable"
        case defaultvalue = "defaultValue"
    }
    /** Defines the behavior of the option in the project.If notSelectable is set, the option cannot be set as the field&#x27;s value. This is useful for archiving an option that has previously been selected but shouldn&#x27;t be used anymore.If defaultValue is set, the option is selected by default. */
    public var attributes: [Attributes]?
    /** The ID of the project that the option&#x27;s behavior applies to. */
    public var _id: Int64?

    public init(attributes: [Attributes]? = nil, _id: Int64? = nil) {
        self.attributes = attributes
        self._id = _id
    }

    public enum CodingKeys: String, CodingKey { 
        case attributes
        case _id = "id"
    }

}
