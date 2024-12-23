//
// UiModificationContextDetails.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The details of a UI modification&#x27;s context, which define where to activate the UI modification. */

public struct UiModificationContextDetails {

    public enum ViewType: String, Codable { 
        case gic = "GIC"
        case issueView = "IssueView"
        case issueTransition = "IssueTransition"
    }
    /** The ID of the UI modification context. */
    public var _id: String?
    /** Whether a context is available. For example, when a project is deleted the context becomes unavailable. */
    public var isAvailable: Bool?
    /** The issue type ID of the context. Null is treated as a wildcard, meaning the UI modification will be applied to all issue types. Each UI modification context can have a maximum of one wildcard. */
    public var issueTypeId: String?
    /** The project ID of the context. Null is treated as a wildcard, meaning the UI modification will be applied to all projects. Each UI modification context can have a maximum of one wildcard. */
    public var projectId: String?
    /** The view type of the context. Only &#x60;GIC&#x60;(Global Issue Create), &#x60;IssueView&#x60; and &#x60;IssueTransition&#x60; are supported. Null is treated as a wildcard, meaning the UI modification will be applied to all view types. Each UI modification context can have a maximum of one wildcard. */
    public var viewType: ViewType?

    public init(_id: String? = nil, isAvailable: Bool? = nil, issueTypeId: String? = nil, projectId: String? = nil, viewType: ViewType? = nil) {
        self._id = _id
        self.isAvailable = isAvailable
        self.issueTypeId = issueTypeId
        self.projectId = projectId
        self.viewType = viewType
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case isAvailable
        case issueTypeId
        case projectId
        case viewType
    }

}
