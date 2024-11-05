//
// SimpleLink.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Details about the operations available in this version. */

public struct SimpleLink: Codable {

    public let href: String?
    public let iconClass: String?
    public let id: String?
    public let label: String?
    public let styleClass: String?
    public let title: String?
    public let weight: Int32?

    public init(href: String? = nil, iconClass: String? = nil, id: String? = nil, label: String? = nil, styleClass: String? = nil, title: String? = nil, weight: Int32? = nil) {
        self.href = href
        self.iconClass = iconClass
        self.id = id
        self.label = label
        self.styleClass = styleClass
        self.title = title
        self.weight = weight
    }

    internal init(client: Components.Schemas.SimpleLink?) {
        self.href = client?.href
        self.iconClass = client?.iconClass
        self.id = client?.id
        self.label = client?.label
        self.styleClass = client?.styleClass
        self.title = client?.title
        self.weight = client?.weight
    }
}
