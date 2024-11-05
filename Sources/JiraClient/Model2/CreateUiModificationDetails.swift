//
// CreateUiModificationDetails.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The details of a UI modification. */

public struct CreateUiModificationDetails: Codable {

    /** List of contexts of the UI modification. The maximum number of contexts is 1000. */
    public var contexts: [UiModificationContextDetails]?
    /** The data of the UI modification. The maximum size of the data is 50000 characters. */
    public var data: String?
    /** The description of the UI modification. The maximum length is 255 characters. */
    public var _description: String?
    /** The name of the UI modification. The maximum length is 255 characters. */
    public var name: String

    public init(contexts: [UiModificationContextDetails]? = nil, data: String? = nil, _description: String? = nil, name: String) {
        self.contexts = contexts
        self.data = data
        self._description = _description
        self.name = name
    }

    public enum CodingKeys: String, CodingKey { 
        case contexts
        case data
        case _description = "description"
        case name
    }

}
