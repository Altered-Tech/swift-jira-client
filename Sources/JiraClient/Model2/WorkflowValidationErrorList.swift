//
// WorkflowValidationErrorList.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct WorkflowValidationErrorList: Codable {

    /** The list of validation errors. */
    public var errors: [WorkflowValidationError]?

    public init(errors: [WorkflowValidationError]? = nil) {
        self.errors = errors
    }


}
