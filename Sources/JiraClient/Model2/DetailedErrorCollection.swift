//
// DetailedErrorCollection.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct DetailedErrorCollection: Codable {

    /** Map of objects representing additional details for an error */
    public var details: Dictionary?
    /** The list of error messages produced by this operation. For example, \&quot;input parameter &#x27;key&#x27; must be provided\&quot; */
    public var errorMessages: [String]?
    /** The list of errors by parameter returned by the operation. For example,\&quot;projectKey\&quot;: \&quot;Project keys must start with an uppercase letter, followed by one or more uppercase alphanumeric characters.\&quot; */
    public var errors: [String:String]?

    public init(details: Dictionary? = nil, errorMessages: [String]? = nil, errors: [String:String]? = nil) {
        self.details = details
        self.errorMessages = errorMessages
        self.errors = errors
    }


}
