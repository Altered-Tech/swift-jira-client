//
// IssueTypeDetails.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Details about an issue type. */

public struct IssueTypeDetails {

    /** The ID of the issue type&#x27;s avatar. */
    public var avatarId: Int64?
    /** The description of the issue type. */
    public var description: String?
    /** Unique ID for next-gen projects. */
    public var entityId: String?
    /** Hierarchy level of the issue type. */
    public var hierarchyLevel: Int32?
    /** The URL of the issue type&#x27;s avatar. */
    public var iconUrl: String?
    /** The ID of the issue type. */
    public var id: String?
    /** The name of the issue type. */
    public var name: String?
    /** Details of the next-gen projects the issue type is available in. */
    public var scope: AllOfIssueTypeDetailsScope?
    /** The URL of these issue type details. */
    public var _self: String?
    /** Whether this issue type is used to create subtasks. */
    public var subtask: Bool?
    /** Untranslated name of the issue from original creator */
    public var untranslatedName: String?

    public init(avatarId: Int64? = nil, description: String? = nil, entityId: String? = nil, hierarchyLevel: Int32? = nil, iconUrl: String? = nil, id: String? = nil, name: String? = nil, scope: AllOfIssueTypeDetailsScope? = nil, _self: String? = nil, subtask: Bool? = nil, untranslatedName: String? = nil) {
        self.avatarId = avatarId
        self.description = description
        self.entityId = entityId
        self.hierarchyLevel = hierarchyLevel
        self.iconUrl = iconUrl
        self.id = id
        self.name = name
        self.scope = scope
        self._self = _self
        self.subtask = subtask
        self.untranslatedName = untranslatedName
    }

    internal init(client: Components.Schemas.IssueTypeDetails?) {
        self.avatarId = client?.avatarId
        self.description = client?.description
        self.entityId = client?.entityId
        self.hierarchyLevel = client?.hierarchyLevel
        self.iconUrl = client?.iconUrl
        self.id = client?.id
        self.name = client?.name
        self._self = client?._self
        self.subtask = client?.subtask
        self.untranslatedName = client?.untranslatedName
    }
}
