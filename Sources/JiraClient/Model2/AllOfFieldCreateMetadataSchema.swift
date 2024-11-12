//
// AllOfFieldCreateMetadataSchema.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The data type of the field. */

public struct AllOfFieldCreateMetadataSchema {

    /** If the field is a custom field, the configuration of the field. */
    public var configuration: [String:Any]?
    /** If the field is a custom field, the URI of the field. */
    public var custom: String?
    /** If the field is a custom field, the custom ID of the field. */
    public var customId: Int64?
    /** When the data type is an array, the name of the field items within the array. */
    public var items: String?
    /** If the field is a system field, the name of the field. */
    public var system: String?
    /** The data type of the field. */
    public var type: String

    public init(configuration: [String:Any]? = nil, custom: String? = nil, customId: Int64? = nil, items: String? = nil, system: String? = nil, type: String) {
        self.configuration = configuration
        self.custom = custom
        self.customId = customId
        self.items = items
        self.system = system
        self.type = type
    }


}
