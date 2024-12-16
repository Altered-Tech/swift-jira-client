//
//  Style.swift
//  swift-jira-client
//
//  Created by Michael Einreinhof on 11/13/24.
//


public enum Style: String { 
    case classic = "classic"
    case nextGen = "next-gen"
    
    internal init?(client: Components.Schemas.Project.stylePayload?) {
        switch client {
            case .classic: self = .classic
            case .next_hyphen_gen: self = .nextGen
            case .none : return nil
        }
    }
}
