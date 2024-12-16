//
//  AssigneeType.swift
//  swift-jira-client
//
//  Created by Michael Einreinhof on 11/13/24.
//


public enum AssigneeType: String { 
    case projectDefault = "PROJECT_DEFAULT"
    case componentLead = "COMPONENT_LEAD"
    case projectLead = "PROJECT_LEAD"
    case unassigned = "UNASSIGNED"
    
    public init?(client: Components.Schemas.Project.assigneeTypePayload?) {
        switch client {
            case .PROJECT_LEAD: self = .projectLead
            case .UNASSIGNED: self = .unassigned
            default : return nil
        }
    }
    
    public init?(
        client: Components.Schemas.ProjectComponent.assigneeTypePayload?
    ) {
        switch client {
            case .COMPONENT_LEAD: self = .componentLead
            case .PROJECT_DEFAULT: self = .projectDefault
            case .PROJECT_LEAD: self = .projectLead
            case .UNASSIGNED: self = .unassigned
            case .none: return nil
        }
    }
    
    public init?(
        client: Components.Schemas.ProjectComponent.realAssigneeTypePayload?
    ) {
        switch client {
            case .COMPONENT_LEAD: self = .componentLead
            case .PROJECT_DEFAULT: self = .projectDefault
            case .PROJECT_LEAD: self = .projectLead
            case .UNASSIGNED: self = .unassigned
            case .none: return nil
        }
    }
}
