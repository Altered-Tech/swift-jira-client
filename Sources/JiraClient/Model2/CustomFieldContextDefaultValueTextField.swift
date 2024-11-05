//
// CustomFieldContextDefaultValueTextField.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The default text for a text custom field. */

public struct CustomFieldContextDefaultValueTextField: Codable {

    /** The default text. The maximum length is 254 characters. */
    public var text: String?
    public var type: String

    public init(text: String? = nil, type: String) {
        self.text = text
        self.type = type
    }


}
