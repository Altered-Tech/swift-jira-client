//
// ComponentWithIssueCount.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Details about a component with a count of the issues it contains. */

public struct ComponentWithIssueCount: Codable {

    public enum AssigneeType: String, Codable { 
        case projectDefault = "PROJECT_DEFAULT"
        case componentLead = "COMPONENT_LEAD"
        case projectLead = "PROJECT_LEAD"
        case unassigned = "UNASSIGNED"
    }
    public enum RealAssigneeType: String, Codable { 
        case projectDefault = "PROJECT_DEFAULT"
        case componentLead = "COMPONENT_LEAD"
        case projectLead = "PROJECT_LEAD"
        case unassigned = "UNASSIGNED"
    }
    /** The details of the user associated with &#x60;assigneeType&#x60;, if any. See &#x60;realAssignee&#x60; for details of the user assigned to issues created with this component. */
    public var assignee: AllOfComponentWithIssueCountAssignee?
    /** The nominal user type used to determine the assignee for issues created with this component. See &#x60;realAssigneeType&#x60; for details on how the type of the user, and hence the user, assigned to issues is determined. Takes the following values:   *  &#x60;PROJECT_LEAD&#x60; the assignee to any issues created with this component is nominally the lead for the project the component is in.  *  &#x60;COMPONENT_LEAD&#x60; the assignee to any issues created with this component is nominally the lead for the component.  *  &#x60;UNASSIGNED&#x60; an assignee is not set for issues created with this component.  *  &#x60;PROJECT_DEFAULT&#x60; the assignee to any issues created with this component is nominally the default assignee for the project that the component is in. */
    public var assigneeType: AssigneeType?
    /** The description for the component. */
    public var _description: String?
    /** The unique identifier for the component. */
    public var _id: String?
    /** Whether a user is associated with &#x60;assigneeType&#x60;. For example, if the &#x60;assigneeType&#x60; is set to &#x60;COMPONENT_LEAD&#x60; but the component lead is not set, then &#x60;false&#x60; is returned. */
    public var isAssigneeTypeValid: Bool?
    /** Count of issues for the component. */
    public var issueCount: Int64?
    /** The user details for the component&#x27;s lead user. */
    public var lead: AllOfComponentWithIssueCountLead?
    /** The name for the component. */
    public var name: String?
    /** The key of the project to which the component is assigned. */
    public var project: String?
    /** Not used. */
    public var projectId: Int64?
    /** The user assigned to issues created with this component, when &#x60;assigneeType&#x60; does not identify a valid assignee. */
    public var realAssignee: AllOfComponentWithIssueCountRealAssignee?
    /** The type of the assignee that is assigned to issues created with this component, when an assignee cannot be set from the &#x60;assigneeType&#x60;. For example, &#x60;assigneeType&#x60; is set to &#x60;COMPONENT_LEAD&#x60; but no component lead is set. This property is set to one of the following values:   *  &#x60;PROJECT_LEAD&#x60; when &#x60;assigneeType&#x60; is &#x60;PROJECT_LEAD&#x60; and the project lead has permission to be assigned issues in the project that the component is in.  *  &#x60;COMPONENT_LEAD&#x60; when &#x60;assignee&#x60;Type is &#x60;COMPONENT_LEAD&#x60; and the component lead has permission to be assigned issues in the project that the component is in.  *  &#x60;UNASSIGNED&#x60; when &#x60;assigneeType&#x60; is &#x60;UNASSIGNED&#x60; and Jira is configured to allow unassigned issues.  *  &#x60;PROJECT_DEFAULT&#x60; when none of the preceding cases are true. */
    public var realAssigneeType: RealAssigneeType?
    /** The URL for this count of the issues contained in the component. */
    public var _self: String?

    public init(assignee: AllOfComponentWithIssueCountAssignee? = nil, assigneeType: AssigneeType? = nil, _description: String? = nil, _id: String? = nil, isAssigneeTypeValid: Bool? = nil, issueCount: Int64? = nil, lead: AllOfComponentWithIssueCountLead? = nil, name: String? = nil, project: String? = nil, projectId: Int64? = nil, realAssignee: AllOfComponentWithIssueCountRealAssignee? = nil, realAssigneeType: RealAssigneeType? = nil, _self: String? = nil) {
        self.assignee = assignee
        self.assigneeType = assigneeType
        self._description = _description
        self._id = _id
        self.isAssigneeTypeValid = isAssigneeTypeValid
        self.issueCount = issueCount
        self.lead = lead
        self.name = name
        self.project = project
        self.projectId = projectId
        self.realAssignee = realAssignee
        self.realAssigneeType = realAssigneeType
        self._self = _self
    }

    public enum CodingKeys: String, CodingKey { 
        case assignee
        case assigneeType
        case _description = "description"
        case _id = "id"
        case isAssigneeTypeValid
        case issueCount
        case lead
        case name
        case project
        case projectId
        case realAssignee
        case realAssigneeType
        case _self = "self"
    }

}
