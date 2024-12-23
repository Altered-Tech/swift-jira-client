//
// AllOfIssueFieldOptionConfigurationScope.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Defines the projects that the option is available in. If the scope is not defined, then the option is available in all projects. */

public struct AllOfIssueFieldOptionConfigurationScope {

    /** Defines the behavior of the option within the global context. If this property is set, even if set to an empty object, then the option is available in all projects. */
    public var global: Any?
    /** DEPRECATED */
    public var projects: [Int64]?
    /** Defines the projects in which the option is available and the behavior of the option within each project. Specify one object per project. The behavior of the option in a project context overrides the behavior in the global context. */
    public var projects2: [ProjectScopeBean]?

    public init(global: Any? = nil, projects: [Int64]? = nil, projects2: [ProjectScopeBean]? = nil) {
        self.global = global
        self.projects = projects
        self.projects2 = projects2
    }


}
