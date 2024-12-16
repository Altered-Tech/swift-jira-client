//
// AllOfProjectRoleScope.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The scope of the role. Indicated for roles associated with [next-gen projects](https://confluence.atlassian.com/x/loMyO). */

public struct AllOfProjectRoleScope {

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
