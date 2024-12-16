//
// CustomFieldContextDefaultValueURL.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The default value for a URL custom field. */

public struct CustomFieldContextDefaultValueURL {

    /** The ID of the context. */
    public var contextId: String
    public var type: String
    /** The default URL. */
    public var url: String

    public init(contextId: String, type: String, url: String) {
        self.contextId = contextId
        self.type = type
        self.url = url
    }


}
