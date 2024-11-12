//
// DocumentVersion.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The current version details of this workflow scheme. */

public struct DocumentVersion {

    /** The version UUID. */
    public var _id: String
    /** The version number. */
    public var versionNumber: Int64

    public init(_id: String, versionNumber: Int64) {
        self._id = _id
        self.versionNumber = versionNumber
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case versionNumber
    }

}
