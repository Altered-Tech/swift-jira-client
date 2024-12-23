//
// ValidationOptionsForUpdate.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The level of validation to return from the API. If no values are provided, the default would return &#x60;WARNING&#x60; and &#x60;ERROR&#x60; level validation results. */

public struct ValidationOptionsForUpdate {

    public enum Levels: String, Codable { 
        case warning = "WARNING"
        case error = "ERROR"
    }
    public var levels: [Levels]?

    public init(levels: [Levels]? = nil) {
        self.levels = levels
    }


}
