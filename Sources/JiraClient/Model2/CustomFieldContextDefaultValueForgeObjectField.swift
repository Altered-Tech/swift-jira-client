//
// CustomFieldContextDefaultValueForgeObjectField.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The default value for a Forge object custom field. */

public struct CustomFieldContextDefaultValueForgeObjectField: Codable {

    /** The default JSON object. */
    public var object: Any?
    public var type: String

    public init(object: Any? = nil, type: String) {
        self.object = object
        self.type = type
    }


}
