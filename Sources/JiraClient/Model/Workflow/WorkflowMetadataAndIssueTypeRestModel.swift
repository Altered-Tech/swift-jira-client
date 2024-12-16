//
// WorkflowMetadataAndIssueTypeRestModel.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The workflow metadata and issue type IDs which use this workflow. */

public struct WorkflowMetadataAndIssueTypeRestModel {

    /** The list of issue type IDs for the mapping. */
    public var issueTypeIds: [String]
    public var workflow: WorkflowMetadataRestModel

    public init(issueTypeIds: [String], workflow: WorkflowMetadataRestModel) {
        self.issueTypeIds = issueTypeIds
        self.workflow = workflow
    }


}
