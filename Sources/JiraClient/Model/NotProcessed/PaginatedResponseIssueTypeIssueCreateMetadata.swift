//
// PaginatedResponseIssueTypeIssueCreateMetadata.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct PaginatedResponseIssueTypeIssueCreateMetadata {

    public var maxResults: Int?
    public var results: [IssueTypeIssueCreateMetadata]?
    public var startAt: Int64?
    public var total: Int64?

    public init(maxResults: Int? = nil, results: [IssueTypeIssueCreateMetadata]? = nil, startAt: Int64? = nil, total: Int64? = nil) {
        self.maxResults = maxResults
        self.results = results
        self.startAt = startAt
        self.total = total
    }


}
