//
// UpdateScreenSchemeDetails.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Details of a screen scheme. */

public struct UpdateScreenSchemeDetails {

    /** The description of the screen scheme. The maximum length is 255 characters. */
    public var _description: String?
    /** The name of the screen scheme. The name must be unique. The maximum length is 255 characters. */
    public var name: String?
    /** The IDs of the screens for the screen types of the screen scheme. Only screens used in classic projects are accepted. */
    public var screens: AllOfUpdateScreenSchemeDetailsScreens?

    public init(_description: String? = nil, name: String? = nil, screens: AllOfUpdateScreenSchemeDetailsScreens? = nil) {
        self._description = _description
        self.name = name
        self.screens = screens
    }

    public enum CodingKeys: String, CodingKey { 
        case _description = "description"
        case name
        case screens
    }

}
