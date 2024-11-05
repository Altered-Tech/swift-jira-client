//
// PermissionDetails.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Details for permissions of shareable entities */

public struct PermissionDetails: Codable {

    /** The edit permissions for the shareable entities. */
    public var editPermissions: [SharePermission]
    /** The share permissions for the shareable entities. */
    public var sharePermissions: [SharePermission]

    public init(editPermissions: [SharePermission], sharePermissions: [SharePermission]) {
        self.editPermissions = editPermissions
        self.sharePermissions = sharePermissions
    }


}
