//
// ServerInformationServerTimeZone.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The default timezone of the Jira server. In a format known as Olson Time Zones, IANA Time Zones or TZ Database Time Zones. */

public struct ServerInformationServerTimeZone: Codable {

    public var displayName: String?
    public var dstsavings: Int?
    public var _id: String?
    public var rawOffset: Int?

    public init(displayName: String? = nil, dstsavings: Int? = nil, _id: String? = nil, rawOffset: Int? = nil) {
        self.displayName = displayName
        self.dstsavings = dstsavings
        self._id = _id
        self.rawOffset = rawOffset
    }

    public enum CodingKeys: String, CodingKey { 
        case displayName
        case dstsavings
        case _id = "id"
        case rawOffset
    }

}
