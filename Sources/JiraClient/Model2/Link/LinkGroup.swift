//
// LinkGroup.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Details a link group, which defines issue operations. */

public struct LinkGroup {

    public let groups: [LinkGroup]?
    public let header: SimpleLink?
    public let id: String?
    public let links: [SimpleLink]?
    public let styleClass: String?
    public let weight: Int32?

    public init(groups: [LinkGroup]? = nil, header: SimpleLink? = nil, id: String? = nil, links: [SimpleLink]? = nil, styleClass: String? = nil, weight: Int32? = nil) {
        self.groups = groups
        self.header = header
        self.id = id
        self.links = links
        self.styleClass = styleClass
        self.weight = weight
    }

    internal init(client: Components.Schemas.LinkGroup?) {
        self.groups = client?.groups?.map{ LinkGroup(client: $0) }
        self.header = SimpleLink(client: client?.header)
        self.id = client?.id
        self.links = client?.links?.map{ SimpleLink(client: $0) }
        self.styleClass = client?.styleClass
        self.weight = client?.weight
    }
}