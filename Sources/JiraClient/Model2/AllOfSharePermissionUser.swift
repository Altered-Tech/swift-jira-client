//
// AllOfSharePermissionUser.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The user account ID that the filter is shared with. For a request, specify the &#x60;accountId&#x60; property for the user. */

public struct AllOfSharePermissionUser {

    /** The account ID of the user, which uniquely identifies the user across all Atlassian products. For example, *5b10ac8d82e05b22cc7d4ef5*. */
    public var accountId: String?
    /** Whether the user is active. */
    public var active: Bool?
    /** The avatars of the user. */
    public var avatarUrls: Any?
    /** The display name of the user. Depending on the user’s privacy setting, this may return an alternative value. */
    public var displayName: String?
    /** This property is deprecated in favor of &#x60;accountId&#x60; because of privacy changes. See the [migration guide](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/) for details.   The key of the user. */
    public var key: String?
    /** This property is deprecated in favor of &#x60;accountId&#x60; because of privacy changes. See the [migration guide](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/) for details.   The username of the user. */
    public var name: String?
    /** The URL of the user. */
    public var _self: String?

    public init(accountId: String? = nil, active: Bool? = nil, avatarUrls: Any? = nil, displayName: String? = nil, key: String? = nil, name: String? = nil, _self: String? = nil) {
        self.accountId = accountId
        self.active = active
        self.avatarUrls = avatarUrls
        self.displayName = displayName
        self.key = key
        self.name = name
        self._self = _self
    }

    public enum CodingKeys: String, CodingKey { 
        case accountId
        case active
        case avatarUrls
        case displayName
        case key
        case name
        case _self = "self"
    }

}
