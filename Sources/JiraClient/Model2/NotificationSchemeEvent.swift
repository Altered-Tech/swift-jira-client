//
// NotificationSchemeEvent.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Details about a notification scheme event. */

public struct NotificationSchemeEvent {

    public var event: NotificationEvent?
    public var notifications: [EventNotification]?

    public init(event: NotificationEvent? = nil, notifications: [EventNotification]? = nil) {
        self.event = event
        self.notifications = notifications
    }


}
