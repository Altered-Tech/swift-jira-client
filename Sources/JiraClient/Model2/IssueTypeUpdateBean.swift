//
// IssueTypeUpdateBean.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct IssueTypeUpdateBean: Codable {

    /** The ID of an issue type avatar. */
    public var avatarId: Int64?
    /** The description of the issue type. */
    public var _description: String?
    /** The unique name for the issue type. The maximum length is 60 characters. */
    public var name: String?

    public init(avatarId: Int64? = nil, _description: String? = nil, name: String? = nil) {
        self.avatarId = avatarId
        self._description = _description
        self.name = name
    }

    public enum CodingKeys: String, CodingKey { 
        case avatarId
        case _description = "description"
        case name
    }

}
