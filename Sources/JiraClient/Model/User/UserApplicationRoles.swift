//
// AllOfUserApplicationRoles.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The application roles the user is assigned to. */

public struct UserApplicationRoles {

    public var items: [ApplicationRole]?
    public var maxResults: Int32?
    public var size: Int32?

    public init(items: [ApplicationRole]? = nil, maxResults: Int32? = nil, size: Int32? = nil) {
        self.items = items
        self.maxResults = maxResults
        self.size = size
    }
    
    internal init(client: Components.Schemas.SimpleListWrapperApplicationRole?) {
        self.items = client?.items?.map{ ApplicationRole(client: $0) }
        self.maxResults = client?.max_hyphen_results
        self.size = client?.size
    }
}
