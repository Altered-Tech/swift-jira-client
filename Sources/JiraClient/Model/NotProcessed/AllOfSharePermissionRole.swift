//
// AllOfSharePermissionRole.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The project role that the filter is shared with.   For a request, specify the &#x60;id&#x60; for the role. You must also specify the &#x60;project&#x60; object and &#x60;id&#x60; for the project that the role is in. */

public struct AllOfSharePermissionRole {

    /** The list of users who act in this role. */
    public var actors: [RoleActor]?
    /** Whether this role is the admin role for the project. */
    public var admin: Bool?
    /** Whether the calling user is part of this role. */
    public var currentUserRole: Bool?
    /** Whether this role is the default role for the project */
    public var _default: Bool?
    /** The description of the project role. */
    public var _description: String?
    /** The ID of the project role. */
    public var _id: Int64?
    /** The name of the project role. */
    public var name: String?
    /** Whether the roles are configurable for this project. */
    public var roleConfigurable: Bool?
    /** The scope of the role. Indicated for roles associated with [next-gen projects](https://confluence.atlassian.com/x/loMyO). */
    public var scope: Any?
    /** The URL the project role details. */
    public var _self: String?
    /** The translated name of the project role. */
    public var translatedName: String?

    public init(actors: [RoleActor]? = nil, admin: Bool? = nil, currentUserRole: Bool? = nil, _default: Bool? = nil, _description: String? = nil, _id: Int64? = nil, name: String? = nil, roleConfigurable: Bool? = nil, scope: Any? = nil, _self: String? = nil, translatedName: String? = nil) {
        self.actors = actors
        self.admin = admin
        self.currentUserRole = currentUserRole
        self._default = _default
        self._description = _description
        self._id = _id
        self.name = name
        self.roleConfigurable = roleConfigurable
        self.scope = scope
        self._self = _self
        self.translatedName = translatedName
    }

    public enum CodingKeys: String, CodingKey { 
        case actors
        case admin
        case currentUserRole
        case _default = "default"
        case _description = "description"
        case _id = "id"
        case name
        case roleConfigurable
        case scope
        case _self = "self"
        case translatedName
    }

}