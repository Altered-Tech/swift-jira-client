//
// CustomFieldConfigurations.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Details of configurations for a custom field. */

public struct CustomFieldConfigurations: Codable {

    /** The list of custom field configuration details. */
    public var configurations: [ContextualConfiguration]

    public init(configurations: [ContextualConfiguration]) {
        self.configurations = configurations
    }


}
