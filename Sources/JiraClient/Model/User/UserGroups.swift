//
// UserGroups.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The groups that the user belongs to. */

public struct UserGroups {

    public let items: [GroupName]?
    public let maxResults: Int32?
    public let size: Int32?

    public init(items: [GroupName]? = nil, maxResults: Int32? = nil, size: Int32? = nil) {
        self.items = items
        self.maxResults = maxResults
        self.size = size
    }
    
    internal init(client: Components.Schemas.SimpleListWrapperGroupName?) {
        self.items = client?.items?.map{ GroupName(client: $0) }
        self.maxResults = client?.max_hyphen_results
        self.size = client?.size
    }
}
