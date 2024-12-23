//
// AssociateSecuritySchemeWithProjectDetails.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Issue security scheme, project, and remapping details. */

public struct AssociateSecuritySchemeWithProjectDetails {

    /** The list of scheme levels which should be remapped to new levels of the issue security scheme. */
    public var oldToNewSecurityLevelMappings: [OldToNewSecurityLevelMappingsBean]?
    /** The ID of the project. */
    public var projectId: String
    /** The ID of the issue security scheme. Providing null will clear the association with the issue security scheme. */
    public var schemeId: String

    public init(oldToNewSecurityLevelMappings: [OldToNewSecurityLevelMappingsBean]? = nil, projectId: String, schemeId: String) {
        self.oldToNewSecurityLevelMappings = oldToNewSecurityLevelMappings
        self.projectId = projectId
        self.schemeId = schemeId
    }


}
