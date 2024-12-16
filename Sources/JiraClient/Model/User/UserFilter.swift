//
// UserFilter.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Filter for a User Picker (single) custom field. */

public struct UserFilter {

    /** Whether the filter is enabled. */
    public var enabled: Bool
    /** User groups autocomplete suggestion users must belong to. If not provided, the default values are used. A maximum of 10 groups can be provided. */
    public var groups: [String]?
    /** Roles that autocomplete suggestion users must belong to. If not provided, the default values are used. A maximum of 10 roles can be provided. */
    public var roleIds: [Int64]?

    public init(enabled: Bool, groups: [String]? = nil, roleIds: [Int64]? = nil) {
        self.enabled = enabled
        self.groups = groups
        self.roleIds = roleIds
    }


}
