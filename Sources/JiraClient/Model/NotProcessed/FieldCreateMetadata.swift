//
// FieldCreateMetadata.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The metadata describing an issue field for createmeta. */

public struct FieldCreateMetadata {

    /** The list of values allowed in the field. */
    public var allowedValues: [Any]?
    /** The URL that can be used to automatically complete the field. */
    public var autoCompleteUrl: String?
    /** The configuration properties. */
    public var configuration: [String:Any]?
    /** The default value of the field. */
    public var defaultValue: Any?
    /** The field id. */
    public var fieldId: String
    /** Whether the field has a default value. */
    public var hasDefaultValue: Bool?
    /** The key of the field. */
    public var key: String
    /** The name of the field. */
    public var name: String
    /** The list of operations that can be performed on the field. */
    public var operations: [String]
    /** Whether the field is required. */
    public var _required: Bool
    /** The data type of the field. */
    public var schema: AllOfFieldCreateMetadataSchema

    public init(allowedValues: [Any]? = nil, autoCompleteUrl: String? = nil, configuration: [String:Any]? = nil, defaultValue: Any? = nil, fieldId: String, hasDefaultValue: Bool? = nil, key: String, name: String, operations: [String], _required: Bool, schema: AllOfFieldCreateMetadataSchema) {
        self.allowedValues = allowedValues
        self.autoCompleteUrl = autoCompleteUrl
        self.configuration = configuration
        self.defaultValue = defaultValue
        self.fieldId = fieldId
        self.hasDefaultValue = hasDefaultValue
        self.key = key
        self.name = name
        self.operations = operations
        self._required = _required
        self.schema = schema
    }

}
