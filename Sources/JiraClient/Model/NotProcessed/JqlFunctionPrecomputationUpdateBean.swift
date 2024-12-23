//
// JqlFunctionPrecomputationUpdateBean.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Precomputation id and its new value. */

public struct JqlFunctionPrecomputationUpdateBean {

    /** The error message to be displayed to the user if the given function clause is no longer valid during recalculation of the precomputation. */
    public var error: String?
    /** The id of the precomputation to update. */
    public var _id: String
    /** The new value of the precomputation. */
    public var value: String?

    public init(error: String? = nil, _id: String, value: String? = nil) {
        self.error = error
        self._id = _id
        self.value = value
    }

    public enum CodingKeys: String, CodingKey { 
        case error
        case _id = "id"
        case value
    }

}
