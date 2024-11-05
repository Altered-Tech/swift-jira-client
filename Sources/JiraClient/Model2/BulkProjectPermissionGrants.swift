//
// BulkProjectPermissionGrants.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** List of project permissions and the projects and issues those permissions grant access to. */

public struct BulkProjectPermissionGrants: Codable {

    /** IDs of the issues the user has the permission for. */
    public var issues: [Int64]
    /** A project permission, */
    public var permission: String
    /** IDs of the projects the user has the permission for. */
    public var projects: [Int64]

    public init(issues: [Int64], permission: String, projects: [Int64]) {
        self.issues = issues
        self.permission = permission
        self.projects = projects
    }


}
