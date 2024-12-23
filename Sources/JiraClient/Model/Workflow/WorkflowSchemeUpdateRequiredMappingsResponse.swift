//
// WorkflowSchemeUpdateRequiredMappingsResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct WorkflowSchemeUpdateRequiredMappingsResponse {

    /** The list of required status mappings by issue type. */
    public var statusMappingsByIssueTypes: [RequiredMappingByIssueType]?
    /** The list of required status mappings by workflow. */
    public var statusMappingsByWorkflows: [RequiredMappingByWorkflows]?
    /** The details of the statuses in the associated workflows. */
    public var statuses: [StatusMetadata]?
    /** The statuses associated with each workflow. */
    public var statusesPerWorkflow: [StatusesPerWorkflow]?

    public init(statusMappingsByIssueTypes: [RequiredMappingByIssueType]? = nil, statusMappingsByWorkflows: [RequiredMappingByWorkflows]? = nil, statuses: [StatusMetadata]? = nil, statusesPerWorkflow: [StatusesPerWorkflow]? = nil) {
        self.statusMappingsByIssueTypes = statusMappingsByIssueTypes
        self.statusMappingsByWorkflows = statusMappingsByWorkflows
        self.statuses = statuses
        self.statusesPerWorkflow = statusesPerWorkflow
    }


}
