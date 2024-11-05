//
// IncludedFields.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct IncludedFields: Codable {

    public let actuallyIncluded: [String]?
    public let excluded: [String]?
    public let included: [String]?

    public init(actuallyIncluded: [String]? = nil, excluded: [String]? = nil, included: [String]? = nil) {
        self.actuallyIncluded = actuallyIncluded
        self.excluded = excluded
        self.included = included
    }

    internal init(client: Components.Schemas.IncludedFields?) {
        self.actuallyIncluded = client?.actuallyIncluded
        self.excluded = client?.excluded
        self.included = client?.included
    }
}
