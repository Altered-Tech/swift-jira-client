////
////  Scope.swift
////  swift-jira-client
////
////  Created by Michael Einreinhof on 11/1/24.
////
//
//public struct Scope2 {
//    public let type: String?
//    public let projectDetails: ProjectDetails?
//    public let additionalProperties: [String: (any Sendable)?]?
//    
//    internal init(client: Components.Schemas.Scope?) {
//        self.type = ScopeType(type: client?._type)?.rawValue
//        self.projectDetails = ProjectDetails(client: client?.project?.value1)
//        self.additionalProperties = client?.additionalProperties.value
//    }
//}
//
//enum ScopeType: String {
//    case PROJECT
//    case TEMPLATE
//    
//    internal init?(type: Components.Schemas.Scope._typePayload?) {
//        switch type {
//        case .PROJECT: self = .PROJECT
//        case .TEMPLATE: self = .TEMPLATE
//        default : return nil
//        }
//    }
//}
