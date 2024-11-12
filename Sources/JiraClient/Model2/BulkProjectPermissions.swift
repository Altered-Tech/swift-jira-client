//
// BulkProjectPermissions.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Details of project permissions and associated issues and projects to look up. */

public struct BulkProjectPermissions {

    /** List of issue IDs. */
    public var issues: [Int64]?
    /** List of project permissions. */
    public var permissions: [String]
    /** List of project IDs. */
    public var projects: [Int64]?

    public init(issues: [Int64]? = nil, permissions: [String], projects: [Int64]? = nil) {
        self.issues = issues
        self.permissions = permissions
        self.projects = projects
    }


}
