//
// AllOfUpdateScreenSchemeDetailsScreens.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The IDs of the screens for the screen types of the screen scheme. Only screens used in classic projects are accepted. */

public struct AllOfUpdateScreenSchemeDetailsScreens: Codable {

    /** The ID of the create screen. To remove the screen association, pass a null. */
    public var create: String?
    /** The ID of the default screen. When specified, must include a screen ID as a default screen is required. */
    public var _default: String?
    /** The ID of the edit screen. To remove the screen association, pass a null. */
    public var edit: String?
    /** The ID of the view screen. To remove the screen association, pass a null. */
    public var view: String?

    public init(create: String? = nil, _default: String? = nil, edit: String? = nil, view: String? = nil) {
        self.create = create
        self._default = _default
        self.edit = edit
        self.view = view
    }

    public enum CodingKeys: String, CodingKey { 
        case create
        case _default = "default"
        case edit
        case view
    }

}
