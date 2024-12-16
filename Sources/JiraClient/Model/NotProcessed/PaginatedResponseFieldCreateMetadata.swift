//
// PaginatedResponseFieldCreateMetadata.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct PaginatedResponseFieldCreateMetadata {

    public var maxResults: Int?
    public var results: [FieldCreateMetadata]?
    public var startAt: Int64?
    public var total: Int64?

    public init(maxResults: Int? = nil, results: [FieldCreateMetadata]? = nil, startAt: Int64? = nil, total: Int64? = nil) {
        self.maxResults = maxResults
        self.results = results
        self.startAt = startAt
        self.total = total
    }


}
