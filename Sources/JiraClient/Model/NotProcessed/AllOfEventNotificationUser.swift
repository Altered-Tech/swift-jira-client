//
// AllOfEventNotificationUser.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The specified user. */

public struct AllOfEventNotificationUser {

    /** The account ID of the user, which uniquely identifies the user across all Atlassian products. For example, *5b10ac8d82e05b22cc7d4ef5*. */
    public var accountId: String?
    /** The type of account represented by this user. This will be one of &#x27;atlassian&#x27; (normal users), &#x27;app&#x27; (application user) or &#x27;customer&#x27; (Jira Service Desk customer user) */
    public var accountType: String?
    /** Whether the user is active. */
    public var active: Bool?
    /** The avatars of the user. */
    public var avatarUrls: Any?
    /** The display name of the user. Depending on the user’s privacy settings, this may return an alternative value. */
    public var displayName: String?
    /** The email address of the user. Depending on the user’s privacy settings, this may be returned as null. */
    public var emailAddress: String?
    /** This property is no longer available and will be removed from the documentation soon. See the [deprecation notice](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/) for details. */
    public var key: String?
    /** This property is no longer available and will be removed from the documentation soon. See the [deprecation notice](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/) for details. */
    public var name: String?
    /** The URL of the user. */
    public var _self: String?
    /** The time zone specified in the user&#x27;s profile. Depending on the user’s privacy settings, this may be returned as null. */
    public var timeZone: String?

    public init(accountId: String? = nil, accountType: String? = nil, active: Bool? = nil, avatarUrls: Any? = nil, displayName: String? = nil, emailAddress: String? = nil, key: String? = nil, name: String? = nil, _self: String? = nil, timeZone: String? = nil) {
        self.accountId = accountId
        self.accountType = accountType
        self.active = active
        self.avatarUrls = avatarUrls
        self.displayName = displayName
        self.emailAddress = emailAddress
        self.key = key
        self.name = name
        self._self = _self
        self.timeZone = timeZone
    }

    public enum CodingKeys: String, CodingKey { 
        case accountId
        case accountType
        case active
        case avatarUrls
        case displayName
        case emailAddress
        case key
        case name
        case _self = "self"
        case timeZone
    }

}