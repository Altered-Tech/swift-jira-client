//
// IssueArchivalSyncResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Number of archived/unarchived issues and list of errors that occurred during the action, if any. */

public struct IssueArchivalSyncResponse {

    public var errors: Errors?
    public var numberOfIssuesUpdated: Int64?

    public init(errors: Errors? = nil, numberOfIssuesUpdated: Int64? = nil) {
        self.errors = errors
        self.numberOfIssuesUpdated = numberOfIssuesUpdated
    }


}