//
//  AccountType.swift
//  swift-jira-client
//
//  Created by Michael Einreinhof on 11/1/24.
//

public enum AccountType: String {
    case atlassian = "atlassian"
    case app = "app"
    case customer = "customer"
    case unknown = "unknown"
    
    internal init?(type: Components.Schemas.User.accountTypePayload?) {
        switch type {
            case .atlassian: self = .atlassian
            case .app: self = .app
            case .customer: self = .customer
            default: self = .unknown
        }
    }
    
    internal init?(type: String?) {
        switch type?.lowercased() {
            case "atlassian": self = .atlassian
            case "app": self = .app
            case "customer": self = .customer
            default: self = .unknown
        }
    }
}
