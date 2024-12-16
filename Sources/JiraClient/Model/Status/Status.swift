//
// Status.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The status of the item. */

public struct Status {
    public let description: String?
    public let iconUrl: String?
    public let id: String?
    public let name: String?
    public let scope: Scope?
    public let _self: String?
    public let statusCategory: StatusCategory?
    
    internal init(client: Components.Schemas.StatusDetails?) {
        self.description = client?.description
        self.iconUrl = client?.iconUrl
        self.id = client?.id
        self.name = client?.name
        self.scope = Scope(client: client?.scope?.value1)
        self._self = client?._self
        self.statusCategory = StatusCategory(client: client?.statusCategory?.value1)
    }
}