//
// BulkEditActionError.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Errors of bulk edit action. */

public struct BulkEditActionError {

    /** The error messages. */
    public var errorMessages: [String]
    /** The errors. */
    public var errors: [String:String]

    public init(errorMessages: [String], errors: [String:String]) {
        self.errorMessages = errorMessages
        self.errors = errors
    }


}