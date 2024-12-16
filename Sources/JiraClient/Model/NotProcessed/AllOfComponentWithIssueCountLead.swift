//
// AllOfComponentWithIssueCountLead.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The user details for the component&#x27;s lead user. */

public struct AllOfComponentWithIssueCountLead {

    public enum AccountType: String {
        case atlassian = "atlassian"
        case app = "app"
        case customer = "customer"
        case unknown = "unknown"
    }
    /** The account ID of the user, which uniquely identifies the user across all Atlassian products. For example, *5b10ac8d82e05b22cc7d4ef5*. Required in requests. */
    public var accountId: String?
    /** The user account type. Can take the following values:   *  &#x60;atlassian&#x60; regular Atlassian user account  *  &#x60;app&#x60; system account used for Connect applications and OAuth to represent external systems  *  &#x60;customer&#x60; Jira Service Desk account representing an external service desk */
    public var accountType: AccountType?
    /** Whether the user is active. */
    public var active: Bool?
    /** The application roles the user is assigned to. */
    public var applicationRoles: Any?
    /** The avatars of the user. */
    public var avatarUrls: Any?
    /** The display name of the user. Depending on the user’s privacy setting, this may return an alternative value. */
    public var displayName: String?
    /** The email address of the user. Depending on the user’s privacy setting, this may be returned as null. */
    public var emailAddress: String?
    /** Expand options that include additional user details in the response. */
    public var expand: String?
    /** The groups that the user belongs to. */
    public var groups: Any?
    /** This property is no longer available and will be removed from the documentation soon. See the [deprecation notice](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/) for details. */
    public var key: String?
    /** The locale of the user. Depending on the user’s privacy setting, this may be returned as null. */
    public var locale: String?
    /** This property is no longer available and will be removed from the documentation soon. See the [deprecation notice](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/) for details. */
    public var name: String?
    /** The URL of the user. */
    public var _self: String?
    /** The time zone specified in the user&#x27;s profile. Depending on the user’s privacy setting, this may be returned as null. */
    public var timeZone: String?

    public init(accountId: String? = nil, accountType: AccountType? = nil, active: Bool? = nil, applicationRoles: Any? = nil, avatarUrls: Any? = nil, displayName: String? = nil, emailAddress: String? = nil, expand: String? = nil, groups: Any? = nil, key: String? = nil, locale: String? = nil, name: String? = nil, _self: String? = nil, timeZone: String? = nil) {
        self.accountId = accountId
        self.accountType = accountType
        self.active = active
        self.applicationRoles = applicationRoles
        self.avatarUrls = avatarUrls
        self.displayName = displayName
        self.emailAddress = emailAddress
        self.expand = expand
        self.groups = groups
        self.key = key
        self.locale = locale
        self.name = name
        self._self = _self
        self.timeZone = timeZone
    }

}
