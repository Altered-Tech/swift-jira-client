//
// ProjectAvatars.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** List of project avatars. */

public struct ProjectAvatars: Codable {

    /** List of avatars added to Jira. These avatars may be deleted. */
    public var custom: [Avatar]?
    /** List of avatars included with Jira. These avatars cannot be deleted. */
    public var system: [Avatar]?

    public init(custom: [Avatar]? = nil, system: [Avatar]? = nil) {
        self.custom = custom
        self.system = system
    }


}
