//
// UpdateDefaultProjectClassificationBean.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The request for updating the default project classification level. */

public struct UpdateDefaultProjectClassificationBean {

    /** The ID of the project classification. */
    public var _id: String

    public init(_id: String) {
        self._id = _id
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
    }

}