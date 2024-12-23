//
// NestedResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct NestedResponse {

    public let errorCollection: ErrorCollection?
    public let status: Int32?
    public let warningCollection: WarningCollection?

    public init(errorCollection: ErrorCollection? = nil, status: Int32? = nil, warningCollection: WarningCollection? = nil) {
        self.errorCollection = errorCollection
        self.status = status
        self.warningCollection = warningCollection
    }

    internal init(client: Components.Schemas.NestedResponse?) {
        self.errorCollection = ErrorCollection(client: client?.errorCollection)
        self.status = client?.status
        self.warningCollection = WarningCollection(client: client?.warningCollection)
    }
}
