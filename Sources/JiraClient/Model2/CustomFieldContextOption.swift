//
// CustomFieldContextOption.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Details of the custom field options for a context. */

public struct CustomFieldContextOption {

    /** Whether the option is disabled. */
    public var disabled: Bool
    /** The ID of the custom field option. */
    public var _id: String
    /** For cascading options, the ID of the custom field option containing the cascading option. */
    public var optionId: String?
    /** The value of the custom field option. */
    public var value: String

    public init(disabled: Bool, _id: String, optionId: String? = nil, value: String) {
        self.disabled = disabled
        self._id = _id
        self.optionId = optionId
        self.value = value
    }

    public enum CodingKeys: String, CodingKey { 
        case disabled
        case _id = "id"
        case optionId
        case value
    }

}
