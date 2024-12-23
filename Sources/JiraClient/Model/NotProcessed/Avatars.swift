//
// Avatars.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Details about system and custom avatars. */

public struct Avatars {

    /** Custom avatars list. */
    public var custom: [Avatar]?
    /** System avatars list. */
    public var system: [Avatar]?

    public init(custom: [Avatar]? = nil, system: [Avatar]? = nil) {
        self.custom = custom
        self.system = system
    }


}
