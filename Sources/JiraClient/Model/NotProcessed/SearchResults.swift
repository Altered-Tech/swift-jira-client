//
// SearchResults.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The result of a JQL search. */

public struct SearchResults {

    /** Expand options that include additional search result details in the response. */
    public var expand: String?
    /** The list of issues found by the search. */
    public var issues: [Issue]?
    /** The maximum number of results that could be on the page. */
    public var maxResults: Int32?
    /** The ID and name of each field in the search results. */
    public var names: [String:String]?
    /** The schema describing the field types in the search results. */
    public var schema: [String:JsonTypeBean]?
    /** The index of the first item returned on the page. */
    public var startAt: Int32?
    /** The number of results on the page. */
    public var total: Int32?
    /** Any warnings related to the JQL query. */
    public var warningMessages: [String]?

    public init(expand: String? = nil, issues: [Issue]? = nil, maxResults: Int32? = nil, names: [String:String]? = nil, schema: [String:JsonTypeBean]? = nil, startAt: Int32? = nil, total: Int32? = nil, warningMessages: [String]? = nil) {
        self.expand = expand
        self.issues = issues
        self.maxResults = maxResults
        self.names = names
        self.schema = schema
        self.startAt = startAt
        self.total = total
        self.warningMessages = warningMessages
    }

    internal init(client: Components.Schemas.SearchResults?) {
        self.expand = client?.expand
        self.issues = client?.issues?.map{ Issue(client: $0)}
        self.maxResults = client?.maxResults
        self.names = client?.names?.additionalProperties
        self.startAt = client?.startAt
        self.total = client?.total
        self.warningMessages = client?.warningMessages
    }
}
