//
// ScreenWithTab.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** A screen with tab details. */

public struct ScreenWithTab {

    /** The description of the screen. */
    public var _description: String?
    /** The ID of the screen. */
    public var _id: Int64?
    /** The name of the screen. */
    public var name: String?
    /** The scope of the screen. */
    public var scope: AllOfScreenWithTabScope?
    /** The tab for the screen. */
    public var tab: AllOfScreenWithTabTab?

    public init(_description: String? = nil, _id: Int64? = nil, name: String? = nil, scope: AllOfScreenWithTabScope? = nil, tab: AllOfScreenWithTabTab? = nil) {
        self._description = _description
        self._id = _id
        self.name = name
        self.scope = scope
        self.tab = tab
    }

    public enum CodingKeys: String, CodingKey { 
        case _description = "description"
        case _id = "id"
        case name
        case scope
        case tab
    }

}