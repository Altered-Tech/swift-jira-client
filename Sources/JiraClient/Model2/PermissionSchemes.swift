//
// PermissionSchemes.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** List of all permission schemes. */

public struct PermissionSchemes: Codable {

    /** Permission schemes list. */
    public var permissionSchemes: [PermissionScheme]?

    public init(permissionSchemes: [PermissionScheme]? = nil) {
        self.permissionSchemes = permissionSchemes
    }


}
