//
// EntityProperty.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** An entity property, for more information see [Entity properties](https://developer.atlassian.com/cloud/jira/platform/jira-entity-properties/). */

public struct EntityProperty {

    /** The key of the property. Required on create and update. */
    public var key: String?
    /** The value of the property. Required on create and update. */
    public var value: Any?

    public init(key: String? = nil, value: Any? = nil) {
        self.key = key
        self.value = value
    }


}
