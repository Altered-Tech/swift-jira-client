//
// FieldLastUsed.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Information about the most recent use of a field. */

public struct FieldLastUsed {

    public enum ModelType: String, Codable { 
        case tracked = "TRACKED"
        case notTracked = "NOT_TRACKED"
        case noInformation = "NO_INFORMATION"
    }
    /** Last used value type:   *  *TRACKED*: field is tracked and a last used date is available.  *  *NOT\\_TRACKED*: field is not tracked, last used date is not available.  *  *NO\\_INFORMATION*: field is tracked, but no last used date is available. */
    public var type: ModelType?
    /** The date when the value of the field last changed. */
    public var value: Date?

    public init(type: ModelType? = nil, value: Date? = nil) {
        self.type = type
        self.value = value
    }


}