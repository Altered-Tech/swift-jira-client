//
// CustomFieldContextDefaultValueProject.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The default value for a project custom field. */

public struct CustomFieldContextDefaultValueProject {

    /** The ID of the context. */
    public var contextId: String
    /** The ID of the default project. */
    public var projectId: String
    public var type: String

    public init(contextId: String, projectId: String, type: String) {
        self.contextId = contextId
        self.projectId = projectId
        self.type = type
    }


}
