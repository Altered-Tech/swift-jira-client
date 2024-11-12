//
// JqlQueryField.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** A field used in a JQL query. See [Advanced searching - fields reference](https://confluence.atlassian.com/x/dAiiLQ) for more information about fields in JQL queries. */

public struct JqlQueryField {

    /** The encoded name of the field, which can be used directly in a JQL query. */
    public var encodedName: String?
    /** The name of the field. */
    public var name: String
    /** When the field refers to a value in an entity property, details of the entity property value. */
    public var property: [JqlQueryFieldEntityProperty]?

    public init(encodedName: String? = nil, name: String, property: [JqlQueryFieldEntityProperty]? = nil) {
        self.encodedName = encodedName
        self.name = name
        self.property = property
    }


}
