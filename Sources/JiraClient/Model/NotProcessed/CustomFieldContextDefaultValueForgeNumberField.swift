//
// CustomFieldContextDefaultValueForgeNumberField.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Default value for a Forge number custom field. */

public struct CustomFieldContextDefaultValueForgeNumberField {

    /** The ID of the context. */
    public var contextId: String
    /** The default floating-point number. */
    public var number: Double
    public var type: String

    public init(contextId: String, number: Double, type: String) {
        self.contextId = contextId
        self.number = number
        self.type = type
    }


}
