//
// AssociateFieldConfigurationsWithIssueTypesRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Details of a field configuration to issue type mappings. */

public struct AssociateFieldConfigurationsWithIssueTypesRequest {

    /** Field configuration to issue type mappings. */
    public var mappings: [FieldConfigurationToIssueTypeMapping]

    public init(mappings: [FieldConfigurationToIssueTypeMapping]) {
        self.mappings = mappings
    }


}
