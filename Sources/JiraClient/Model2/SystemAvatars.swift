//
// SystemAvatars.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** List of system avatars. */

public struct SystemAvatars: Codable {

    /** A list of avatar details. */
    public var system: [Avatar]?

    public init(system: [Avatar]? = nil) {
        self.system = system
    }


}
