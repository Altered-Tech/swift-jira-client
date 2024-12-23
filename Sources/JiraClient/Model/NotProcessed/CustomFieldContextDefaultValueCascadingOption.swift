//
// CustomFieldContextDefaultValueCascadingOption.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The default value for a cascading select custom field. */

public struct CustomFieldContextDefaultValueCascadingOption {

    /** The ID of the default cascading option. */
    public var cascadingOptionId: String?
    /** The ID of the context. */
    public var contextId: String
    /** The ID of the default option. */
    public var optionId: String
    public var type: String

    public init(cascadingOptionId: String? = nil, contextId: String, optionId: String, type: String) {
        self.cascadingOptionId = cascadingOptionId
        self.contextId = contextId
        self.optionId = optionId
        self.type = type
    }


}
