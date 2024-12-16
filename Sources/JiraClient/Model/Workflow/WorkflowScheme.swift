//
// WorkflowScheme.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Details about a workflow scheme. */

public struct WorkflowScheme {

    /** The name of the default workflow for the workflow scheme. The default workflow has *All Unassigned Issue Types* assigned to it in Jira. If &#x60;defaultWorkflow&#x60; is not specified when creating a workflow scheme, it is set to *Jira Workflow (jira)*. */
    public var defaultWorkflow: String?
    /** The description of the workflow scheme. */
    public var _description: String?
    /** Whether the workflow scheme is a draft or not. */
    public var draft: Bool?
    /** The ID of the workflow scheme. */
    public var _id: Int64?
    /** The issue type to workflow mappings, where each mapping is an issue type ID and workflow name pair. Note that an issue type can only be mapped to one workflow in a workflow scheme. */
    public var issueTypeMappings: [String:String]?
    /** The issue types available in Jira. */
    public var issueTypes: [String:IssueTypeDetails]?
    /** The date-time that the draft workflow scheme was last modified. A modification is a change to the issue type-project mappings only. This property does not apply to non-draft workflows. */
    public var lastModified: String?
    /** The user that last modified the draft workflow scheme. A modification is a change to the issue type-project mappings only. This property does not apply to non-draft workflows. */
    public var lastModifiedUser: AllOfWorkflowSchemeLastModifiedUser?
    /** The name of the workflow scheme. The name must be unique. The maximum length is 255 characters. Required when creating a workflow scheme. */
    public var name: String?
    /** For draft workflow schemes, this property is the name of the default workflow for the original workflow scheme. The default workflow has *All Unassigned Issue Types* assigned to it in Jira. */
    public var originalDefaultWorkflow: String?
    /** For draft workflow schemes, this property is the issue type to workflow mappings for the original workflow scheme, where each mapping is an issue type ID and workflow name pair. Note that an issue type can only be mapped to one workflow in a workflow scheme. */
    public var originalIssueTypeMappings: [String:String]?
    public var _self: String?
    /** Whether to create or update a draft workflow scheme when updating an active workflow scheme. An active workflow scheme is a workflow scheme that is used by at least one project. The following examples show how this property works:   *  Update an active workflow scheme with &#x60;updateDraftIfNeeded&#x60; set to &#x60;true&#x60;: If a draft workflow scheme exists, it is updated. Otherwise, a draft workflow scheme is created.  *  Update an active workflow scheme with &#x60;updateDraftIfNeeded&#x60; set to &#x60;false&#x60;: An error is returned, as active workflow schemes cannot be updated.  *  Update an inactive workflow scheme with &#x60;updateDraftIfNeeded&#x60; set to &#x60;true&#x60;: The workflow scheme is updated, as inactive workflow schemes do not require drafts to update.  Defaults to &#x60;false&#x60;. */
    public var updateDraftIfNeeded: Bool?

    public init(defaultWorkflow: String? = nil, _description: String? = nil, draft: Bool? = nil, _id: Int64? = nil, issueTypeMappings: [String:String]? = nil, issueTypes: [String:IssueTypeDetails]? = nil, lastModified: String? = nil, lastModifiedUser: AllOfWorkflowSchemeLastModifiedUser? = nil, name: String? = nil, originalDefaultWorkflow: String? = nil, originalIssueTypeMappings: [String:String]? = nil, _self: String? = nil, updateDraftIfNeeded: Bool? = nil) {
        self.defaultWorkflow = defaultWorkflow
        self._description = _description
        self.draft = draft
        self._id = _id
        self.issueTypeMappings = issueTypeMappings
        self.issueTypes = issueTypes
        self.lastModified = lastModified
        self.lastModifiedUser = lastModifiedUser
        self.name = name
        self.originalDefaultWorkflow = originalDefaultWorkflow
        self.originalIssueTypeMappings = originalIssueTypeMappings
        self._self = _self
        self.updateDraftIfNeeded = updateDraftIfNeeded
    }

}
