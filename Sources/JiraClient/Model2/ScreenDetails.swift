//
// ScreenDetails.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Details of a screen. */

public struct ScreenDetails: Codable {

    /** The description of the screen. The maximum length is 255 characters. */
    public var _description: String?
    /** The name of the screen. The name must be unique. The maximum length is 255 characters. */
    public var name: String

    public init(_description: String? = nil, name: String) {
        self._description = _description
        self.name = name
    }

    public enum CodingKeys: String, CodingKey { 
        case _description = "description"
        case name
    }

}
