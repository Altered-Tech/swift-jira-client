//
// CustomFieldContextDefaultValueDate.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The default value for a Date custom field. */

public struct CustomFieldContextDefaultValueDate {

    /** The default date in ISO format. Ignored if &#x60;useCurrent&#x60; is true. */
    public var date: String?
    public var type: String
    /** Whether to use the current date. */
    public var useCurrent: Bool?

    public init(date: String? = nil, type: String, useCurrent: Bool? = nil) {
        self.date = date
        self.type = type
        self.useCurrent = useCurrent
    }


}
