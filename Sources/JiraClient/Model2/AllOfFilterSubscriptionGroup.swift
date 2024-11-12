//
// AllOfFilterSubscriptionGroup.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The group subscribing to filter. */

public struct AllOfFilterSubscriptionGroup {

    /** The ID of the group, which uniquely identifies the group across all Atlassian products. For example, *952d12c3-5b5b-4d04-bb32-44d383afc4b2*. */
    public var groupId: String?
    /** The name of group. */
    public var name: String?
    /** The URL for these group details. */
    public var _self: String?

    public init(groupId: String? = nil, name: String? = nil, _self: String? = nil) {
        self.groupId = groupId
        self.name = name
        self._self = _self
    }

    public enum CodingKeys: String, CodingKey { 
        case groupId
        case name
        case _self = "self"
    }

}
