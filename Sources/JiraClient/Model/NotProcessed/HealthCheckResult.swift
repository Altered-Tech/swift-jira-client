//
// HealthCheckResult.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Jira instance health check results. Deprecated and no longer returned. */

public struct HealthCheckResult {

    /** The description of the Jira health check item. */
    public var _description: String?
    /** The name of the Jira health check item. */
    public var name: String?
    /** Whether the Jira health check item passed or failed. */
    public var passed: Bool?

    public init(_description: String? = nil, name: String? = nil, passed: Bool? = nil) {
        self._description = _description
        self.name = name
        self.passed = passed
    }

    public enum CodingKeys: String, CodingKey { 
        case _description = "description"
        case name
        case passed
    }

}
