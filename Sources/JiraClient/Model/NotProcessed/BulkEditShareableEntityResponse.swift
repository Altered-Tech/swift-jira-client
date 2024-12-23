//
// BulkEditShareableEntityResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Details of a request to bulk edit shareable entity. */

public struct BulkEditShareableEntityResponse {

    public enum Action: String, Codable { 
        case changeowner = "changeOwner"
        case changepermission = "changePermission"
        case addpermission = "addPermission"
        case removepermission = "removePermission"
    }
    /** Allowed action for bulk edit shareable entity */
    public var action: Action
    /** The mapping dashboard id to errors if any. */
    public var entityErrors: [String:BulkEditActionError]?

    public init(action: Action, entityErrors: [String:BulkEditActionError]? = nil) {
        self.action = action
        self.entityErrors = entityErrors
    }


}
