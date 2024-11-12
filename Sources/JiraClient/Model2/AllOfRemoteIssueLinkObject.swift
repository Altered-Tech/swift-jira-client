//
// AllOfRemoteIssueLinkObject.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Details of the item linked to. */

public struct AllOfRemoteIssueLinkObject {

    /** Details of the icon for the item. If no icon is defined, the default link icon is used in Jira. */
    public var icon: Any?
    /** The status of the item. */
    public var status: Any?
    /** The summary details of the item. */
    public var summary: String?
    /** The title of the item. */
    public var title: String
    /** The URL of the item. */
    public var url: String

    public init(icon: Any? = nil, status: Any? = nil, summary: String? = nil, title: String, url: String) {
        self.icon = icon
        self.status = status
        self.summary = summary
        self.title = title
        self.url = url
    }


}
