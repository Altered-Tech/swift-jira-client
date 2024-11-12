//
// UpdatePrioritySchemeRequestBean.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Details of a priority scheme. */

public struct UpdatePrioritySchemeRequestBean {

    /** The default priority of the scheme. */
    public var defaultPriorityId: Int64?
    /** The description of the priority scheme. */
    public var _description: String?
    /** Instructions to migrate issues. */
    public var mappings: AllOfUpdatePrioritySchemeRequestBeanMappings?
    /** The name of the priority scheme. Must be unique. */
    public var name: String?
    /** The priorities in the scheme. */
    public var priorities: AllOfUpdatePrioritySchemeRequestBeanPriorities?
    /** The projects in the scheme. */
    public var projects: AllOfUpdatePrioritySchemeRequestBeanProjects?

    public init(defaultPriorityId: Int64? = nil, _description: String? = nil, mappings: AllOfUpdatePrioritySchemeRequestBeanMappings? = nil, name: String? = nil, priorities: AllOfUpdatePrioritySchemeRequestBeanPriorities? = nil, projects: AllOfUpdatePrioritySchemeRequestBeanProjects? = nil) {
        self.defaultPriorityId = defaultPriorityId
        self._description = _description
        self.mappings = mappings
        self.name = name
        self.priorities = priorities
        self.projects = projects
    }

    public enum CodingKeys: String, CodingKey { 
        case defaultPriorityId
        case _description = "description"
        case mappings
        case name
        case priorities
        case projects
    }

}
