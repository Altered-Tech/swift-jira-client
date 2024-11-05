//
// JqlQueryFieldEntityProperty.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Details of an entity property. */

public struct JqlQueryFieldEntityProperty: Codable {

    public enum ModelType: String, Codable { 
        case number = "number"
        case string = "string"
        case text = "text"
        case date = "date"
        case user = "user"
    }
    /** The object on which the property is set. */
    public var entity: String
    /** The key of the property. */
    public var key: String
    /** The path in the property value to query. */
    public var path: String
    /** The type of the property value extraction. Not available if the extraction for the property is not registered on the instance with the [Entity property](https://developer.atlassian.com/cloud/jira/platform/modules/entity-property/) module. */
    public var type: ModelType?

    public init(entity: String, key: String, path: String, type: ModelType? = nil) {
        self.entity = entity
        self.key = key
        self.path = path
        self.type = type
    }


}
