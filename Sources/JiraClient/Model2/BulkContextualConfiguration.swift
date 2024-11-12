//
// BulkContextualConfiguration.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Details of the contextual configuration for a custom field. */

public struct BulkContextualConfiguration {

    /** The field configuration. */
    public var configuration: Any?
    /** The ID of the custom field. */
    public var customFieldId: String
    /** The ID of the field context the configuration is associated with. */
    public var fieldContextId: String
    /** The ID of the configuration. */
    public var _id: String
    /** The field value schema. */
    public var schema: Any?

    public init(configuration: Any? = nil, customFieldId: String, fieldContextId: String, _id: String, schema: Any? = nil) {
        self.configuration = configuration
        self.customFieldId = customFieldId
        self.fieldContextId = fieldContextId
        self._id = _id
        self.schema = schema
    }

    public enum CodingKeys: String, CodingKey { 
        case configuration
        case customFieldId
        case fieldContextId
        case _id = "id"
        case schema
    }

}
