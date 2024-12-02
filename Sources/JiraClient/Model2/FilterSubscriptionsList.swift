//
// FilterSubscriptionsList.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** A paginated list of subscriptions to a filter. */

public struct FilterSubscriptionsList {

    /** The index of the last item returned on the page. */
    public var endIndex: Int?
    /** The list of items. */
    public var items: [FilterSubscription]?
    /** The maximum number of results that could be on the page. */
    public var maxResults: Int?
    /** The number of items on the page. */
    public var size: Int?
    /** The index of the first item returned on the page. */
    public var startIndex: Int?

    public init(endIndex: Int? = nil, items: [FilterSubscription]? = nil, maxResults: Int? = nil, size: Int? = nil, startIndex: Int? = nil) {
        self.endIndex = endIndex
        self.items = items
        self.maxResults = maxResults
        self.size = size
        self.startIndex = startIndex
    }

}