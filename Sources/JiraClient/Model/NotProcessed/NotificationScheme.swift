//
// NotificationScheme.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Details about a notification scheme. */

public struct NotificationScheme {

    /** The description of the notification scheme. */
    public var _description: String?
    /** Expand options that include additional notification scheme details in the response. */
    public var expand: String?
    /** The ID of the notification scheme. */
    public var _id: Int64?
    /** The name of the notification scheme. */
    public var name: String?
    /** The notification events and associated recipients. */
    public var notificationSchemeEvents: [NotificationSchemeEvent]?
    /** The list of project IDs associated with the notification scheme. */
    public var projects: [Int64]?
    /** The scope of the notification scheme. */
    public var scope: AllOfNotificationSchemeScope?
    public var _self: String?

    public init(_description: String? = nil, expand: String? = nil, _id: Int64? = nil, name: String? = nil, notificationSchemeEvents: [NotificationSchemeEvent]? = nil, projects: [Int64]? = nil, scope: AllOfNotificationSchemeScope? = nil, _self: String? = nil) {
        self._description = _description
        self.expand = expand
        self._id = _id
        self.name = name
        self.notificationSchemeEvents = notificationSchemeEvents
        self.projects = projects
        self.scope = scope
        self._self = _self
    }

}
