//
// FoundUsersAndGroups.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** List of users and groups found in a search. */

public struct FoundUsersAndGroups: Codable {

    public var groups: FoundGroups?
    public var users: FoundUsers?

    public init(groups: FoundGroups? = nil, users: FoundUsers? = nil) {
        self.groups = groups
        self.users = users
    }


}
