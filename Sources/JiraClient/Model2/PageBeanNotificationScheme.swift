//
// PageBeanNotificationScheme.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** A page of items. */

public struct PageBeanNotificationScheme: Codable {

    /** Whether this is the last page. */
    public var isLast: Bool?
    /** The maximum number of items that could be returned. */
    public var maxResults: Int?
    /** If there is another page of results, the URL of the next page. */
    public var nextPage: String?
    /** The URL of the page. */
    public var _self: String?
    /** The index of the first item returned. */
    public var startAt: Int64?
    /** The number of items returned. */
    public var total: Int64?
    /** The list of items. */
    public var values: [NotificationScheme]?

    public init(isLast: Bool? = nil, maxResults: Int? = nil, nextPage: String? = nil, _self: String? = nil, startAt: Int64? = nil, total: Int64? = nil, values: [NotificationScheme]? = nil) {
        self.isLast = isLast
        self.maxResults = maxResults
        self.nextPage = nextPage
        self._self = _self
        self.startAt = startAt
        self.total = total
        self.values = values
    }

    public enum CodingKeys: String, CodingKey { 
        case isLast
        case maxResults
        case nextPage
        case _self = "self"
        case startAt
        case total
        case values
    }

}
