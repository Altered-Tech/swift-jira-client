//
// ProjectPermissions.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Permissions which a user has on a project. */

public struct ProjectPermissions {

    /** Whether the logged user can edit the project. */
    public let canEdit: Bool?

    public init(canEdit: Bool? = nil) {
        self.canEdit = canEdit
    }

    internal init(client: Components.Schemas.ProjectPermissions?) {
        self.canEdit = client?.canEdit
    }
}
