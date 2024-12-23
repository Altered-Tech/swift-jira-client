//
// StatusScope.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The scope of the status. */

public struct StatusScope {

    public enum ModelType: String, Codable { 
        case project = "PROJECT"
        case global = "GLOBAL"
    }
    public var project: ProjectId?
    /** The scope of the status. &#x60;GLOBAL&#x60; for company-managed projects and &#x60;PROJECT&#x60; for team-managed projects. */
    public var type: ModelType

    public init(project: ProjectId? = nil, type: ModelType) {
        self.project = project
        self.type = type
    }


}
