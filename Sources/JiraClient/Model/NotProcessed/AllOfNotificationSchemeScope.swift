//
// AllOfNotificationSchemeScope.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The scope of the notification scheme. */

public struct AllOfNotificationSchemeScope {

    public enum ModelType: String, Codable { 
        case project = "PROJECT"
        case template = "TEMPLATE"
    }
    /** The project the item has scope in. */
    public var project: Any?
    /** The type of scope. */
    public var type: ModelType?

    public init(project: Any? = nil, type: ModelType? = nil) {
        self.project = project
        self.type = type
    }


}
