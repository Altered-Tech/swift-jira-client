//
// CustomFieldContextDefaultValueForgeMultiStringField.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The default text for a Forge collection of strings custom field. */

public struct CustomFieldContextDefaultValueForgeMultiStringField {

    public var type: String
    /** List of string values. The maximum length for a value is 254 characters. */
    public var values: [String]?

    public init(type: String, values: [String]? = nil) {
        self.type = type
        self.values = values
    }


}