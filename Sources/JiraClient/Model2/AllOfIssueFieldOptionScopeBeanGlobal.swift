//
// AllOfIssueFieldOptionScopeBeanGlobal.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Defines the behavior of the option within the global context. If this property is set, even if set to an empty object, then the option is available in all projects. */

public struct AllOfIssueFieldOptionScopeBeanGlobal {

    public enum Attributes: String, Codable { 
        case notselectable = "notSelectable"
        case defaultvalue = "defaultValue"
    }
    /** Defines the behavior of the option in the global context.If notSelectable is set, the option cannot be set as the field&#x27;s value. This is useful for archiving an option that has previously been selected but shouldn&#x27;t be used anymore.If defaultValue is set, the option is selected by default. */
    public var attributes: [Attributes]?

    public init(attributes: [Attributes]? = nil) {
        self.attributes = attributes
    }


}