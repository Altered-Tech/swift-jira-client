//
// NotificationEvent.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Details about a notification event. */

public struct NotificationEvent {

    /** The description of the event. */
    public var _description: String?
    /** The ID of the event. The event can be a [Jira system event](https://confluence.atlassian.com/x/8YdKLg#Creatinganotificationscheme-eventsEvents) or a [custom event](https://confluence.atlassian.com/x/AIlKLg). */
    public var _id: Int64?
    /** The name of the event. */
    public var name: String?
    /** The template of the event. Only custom events configured by Jira administrators have template. */
    public var templateEvent: AllOfNotificationEventTemplateEvent?

    public init(_description: String? = nil, _id: Int64? = nil, name: String? = nil, templateEvent: AllOfNotificationEventTemplateEvent? = nil) {
        self._description = _description
        self._id = _id
        self.name = name
        self.templateEvent = templateEvent
    }

    public enum CodingKeys: String, CodingKey { 
        case _description = "description"
        case _id = "id"
        case name
        case templateEvent
    }

}
