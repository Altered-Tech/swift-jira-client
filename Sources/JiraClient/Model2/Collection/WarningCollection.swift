//
// WarningCollection.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct WarningCollection {

    public var warnings: [String]?

    public init(warnings: [String]? = nil) {
        self.warnings = warnings
    }

    internal init(client: Components.Schemas.WarningCollection?) {
        self.warnings = client?.warnings
    }
}