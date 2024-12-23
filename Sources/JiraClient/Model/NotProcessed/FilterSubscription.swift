//
// FilterSubscription.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Details of a user or group subscribing to a filter. */

public struct FilterSubscription {

    /** The group subscribing to filter. */
    public var group: AllOfFilterSubscriptionGroup?
    /** The ID of the filter subscription. */
    public var _id: Int64?
    /** The user subscribing to filter. */
    public var user: AllOfFilterSubscriptionUser?

    public init(group: AllOfFilterSubscriptionGroup? = nil, _id: Int64? = nil, user: AllOfFilterSubscriptionUser? = nil) {
        self.group = group
        self._id = _id
        self.user = user
    }

}
