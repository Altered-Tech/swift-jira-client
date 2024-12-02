//
// GroupDetails.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Details about a group. */

public struct GroupDetails {

    /** The ID of the group, which uniquely identifies the group across all Atlassian products. For example, *952d12c3-5b5b-4d04-bb32-44d383afc4b2*. */
    public var groupId: String?
    /** The name of the group. */
    public var name: String?

    public init(groupId: String? = nil, name: String? = nil) {
        self.groupId = groupId
        self.name = name
    }


}