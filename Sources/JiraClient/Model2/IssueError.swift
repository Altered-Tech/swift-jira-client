//
// IssueError.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Describes the error that occurred when retrieving data for a particular issue. */

public struct IssueError: Codable {

    /** The error that occurred when fetching this issue. */
    public var errorMessage: String?
    /** The ID of the issue. */
    public var _id: String?

    public init(errorMessage: String? = nil, _id: String? = nil) {
        self.errorMessage = errorMessage
        self._id = _id
    }

    public enum CodingKeys: String, CodingKey { 
        case errorMessage
        case _id = "id"
    }

}
