//
// PermissionHolder.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Details of a user, group, field, or project role that holds a permission. See [Holder object](../api-group-permission-schemes/#holder-object) in *Get all permission schemes* for more information. */

public struct PermissionHolder: Codable {

    /** Expand options that include additional permission holder details in the response. */
    public var expand: String?
    /** As a group&#x27;s name can change, use of &#x60;value&#x60; is recommended. The identifier associated withthe &#x60;type&#x60; value that defines the holder of the permission. */
    public var parameter: String?
    /** The type of permission holder. */
    public var type: String
    /** The identifier associated with the &#x60;type&#x60; value that defines the holder of the permission. */
    public var value: String?

    public init(expand: String? = nil, parameter: String? = nil, type: String, value: String? = nil) {
        self.expand = expand
        self.parameter = parameter
        self.type = type
        self.value = value
    }


}
