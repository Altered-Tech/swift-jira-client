//
//  ProjectTypeKey.swift
//  swift-jira-client
//
//  Created by Michael Einreinhof on 11/13/24.
//


public enum ProjectTypeKey: String {
    case software = "software"
    case serviceDesk = "service_desk"
    case business = "business"
    
    internal init?(client: Components.Schemas.Project.projectTypeKeyPayload?) {
        switch client {
            case .business: self = .business
            case .service_desk: self = .serviceDesk
            case .software: self = .software
            case .none : return nil
        }
    }
}
