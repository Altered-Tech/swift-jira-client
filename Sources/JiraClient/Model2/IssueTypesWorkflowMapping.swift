//
// IssueTypesWorkflowMapping.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Details about the mapping between issue types and a workflow. */

public struct IssueTypesWorkflowMapping: Codable {

    /** Whether the workflow is the default workflow for the workflow scheme. */
    public var defaultMapping: Bool?
    /** The list of issue type IDs. */
    public var issueTypes: [String]?
    /** Whether a draft workflow scheme is created or updated when updating an active workflow scheme. The draft is updated with the new workflow-issue types mapping. Defaults to &#x60;false&#x60;. */
    public var updateDraftIfNeeded: Bool?
    /** The name of the workflow. Optional if updating the workflow-issue types mapping. */
    public var workflow: String?

    public init(defaultMapping: Bool? = nil, issueTypes: [String]? = nil, updateDraftIfNeeded: Bool? = nil, workflow: String? = nil) {
        self.defaultMapping = defaultMapping
        self.issueTypes = issueTypes
        self.updateDraftIfNeeded = updateDraftIfNeeded
        self.workflow = workflow
    }


}
