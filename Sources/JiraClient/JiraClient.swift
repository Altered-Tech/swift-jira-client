//
//  JiraClient.swift
//  swift-jira-client
//
//  Created by Michael Einreinhof on 10/15/24.
//

import OpenAPIRuntime
import OpenAPIURLSession
import Foundation

public struct JiraClient {
    
    private let underlyingClient: any APIProtocol
    
    internal init(underlyingClient: any APIProtocol) {
        self.underlyingClient = underlyingClient
    }
    
    public init(url: String, session: URLSession) {
        let transportConfig = URLSessionTransport.Configuration(session: session)
        let transport = URLSessionTransport(configuration: transportConfig)
        self.init(underlyingClient: Client(serverURL: URL(string: url)!, transport: transport))
    }
    
    public func getIssue(key: String, fields: [String]? = nil, fieldsByKeys: Bool? = nil, expand: String? = nil, properties: [String]? = nil, updateHistory: Bool? = nil, failFast: Bool? = nil) async throws -> Components.Schemas.IssueBean {
        
        let path = Operations.getIssue.Input.Path(issueIdOrKey: key)
        let query = Operations.getIssue.Input.Query(fields: fields, fieldsByKeys: fieldsByKeys, expand: expand, properties: properties, updateHistory: updateHistory, failFast: failFast)
        
        let input = Operations.getIssue.Input(path: path, query: query)
        let result = try await underlyingClient.getIssue(input)
        switch result {
            
        case .ok(let value):
            return try value.body.json
        case .unauthorized(_):
            throw JiraErrors.unauthorized()
        case .notFound(_):
            throw JiraErrors.notFound(message: "Returned if the issue is not found or the user does not have permission to view it.")
        case .undocumented(statusCode: let statusCode, _):
            throw JiraErrors.undocumented(code: statusCode)
        }
    }
    
    public func getTransitions(key: String, transitionId id: String? = nil, expand: String? = nil) async throws -> [Components.Schemas.IssueTransition]? {
        let query = Operations.getTransitions.Input.Query(expand: expand, transitionId: id)
        let input = Operations.getTransitions.Input(path: .init(issueIdOrKey: key), query: query)
        let result = try await underlyingClient.getTransitions(input)
        switch result {
            
        case .ok(let value):
            return try value.body.json.transitions
        case .unauthorized(_):
            throw JiraErrors.unauthorized()
        case .notFound(_):
            throw JiraErrors.notFound(message: "Returned if the issue is not found or the user does not have permission to view it.")
        case .undocumented(statusCode: let statusCode, _):
            throw JiraErrors.undocumented(code: statusCode)
        }
    }
    
    public func getTransitionId(with name: String, for key: String) async throws -> String? {
        let transition = try await getTransitions(key: key)
        guard let transition else { return nil }
        let id = transition.first(where: { $0.name == name })?.id
        return id
    }
    
    public func votes(for key: String) async throws -> Components.Schemas.Votes {
        let result = try await underlyingClient.getVotes(path: .init(issueIdOrKey: key))
        switch result {
            
        case .ok(let value):
            return try value.body.json
        case .unauthorized(_):
            throw JiraErrors.unauthorized()
        case .notFound(_):
            throw JiraErrors.notFound(message: """
Returned if:

    voting is disabled.
    the user does not have permission to view the issue.
    the issue is not found.

""")
        case .undocumented(statusCode: let statusCode, let error):
            throw JiraErrors.undocumented(code: statusCode)
        }
    }
    
    public func addVote(for key: String) async throws -> Void {
        let result = try await underlyingClient.addVote(path: .init(issueIdOrKey: key))
        switch result {
            
        case .noContent(_):
            return
        case .badRequest(_):
            throw JiraErrors.badRequest()
        case .unauthorized(_):
            throw JiraErrors.unauthorized()
        case .notFound(_):
            throw JiraErrors.notFound(message: """
Returned if:

    voting is disabled.
    the issue is not found.

""")
        case .undocumented(statusCode: let statusCode, _):
            throw JiraErrors.undocumented(code: statusCode)
        }
    }
    
    public func removeVote(for key: String) async throws -> Void {
        let result = try await underlyingClient.removeVote(path: .init(issueIdOrKey: key))
        switch result {
            
        case .noContent(_):
            return
        case .unauthorized(_):
            throw JiraErrors.unauthorized()
        case .notFound(_):
            throw JiraErrors.notFound(message: """
Returned if:

    voting is disabled.
    the user has not voted on the issue.
    the issue is not found.

""")
        case .undocumented(statusCode: let statusCode, _):
            throw JiraErrors.undocumented(code: statusCode)
        }
    }
    
    public func comments(for key: String, expand: String? = nil, startAt: Int64? = nil, maxResults: Int32? = nil) async throws -> [Components.Schemas.Comment]? {
        let query = Operations.getComments.Input.Query(startAt: startAt, maxResults: maxResults, expand: expand)
        let result = try await underlyingClient.getComments(path: .init(issueIdOrKey: key), query: query)
        switch result {
            
        case .ok(let value):
            return try value.body.json.comments
        case .badRequest(_):
            throw JiraErrors.badRequest()
        case .unauthorized(_):
            throw JiraErrors.unauthorized()
        case .notFound(_):
            throw JiraErrors.notFound(message: "Returned if the issue is not found or the user does not have permission to view it.")
        case .undocumented(statusCode: let statusCode, _):
            throw JiraErrors.undocumented(code: statusCode)
        }
    }
    
    public func comment(for key: String, with id: String) async throws -> Components.Schemas.Comment? {
        let result = try await underlyingClient.getComment(path: .init(issueIdOrKey: key, id: id))
        switch result {
            
        case .ok(let value):
            return try value.body.json
        case .unauthorized(_):
            throw JiraErrors.unauthorized()
        case .notFound(_):
            throw JiraErrors.notFound(message: "Returned if the issue or comment is not found or the user does not have permission to view the issue or comment.")
        case .undocumented(statusCode: let statusCode, _):
            throw JiraErrors.undocumented(code: statusCode)
        }
    }
    
    public func addComment(to key: String, with message: String) async throws -> Components.Schemas.Comment? {
        let result = try await underlyingClient.addComment(path: .init(issueIdOrKey: key), body: .json(.init(body: message)))
        switch result {
            
        case .created(let value):
            return try value.body.json
        case .badRequest(_):
            throw JiraErrors.badRequest()
        case .unauthorized(_):
            throw JiraErrors.unauthorized()
        case .notFound(_):
            throw JiraErrors.notFound(message: "Returned if the issue is not found or the user does not have permission to view it.")
        case .contentTooLarge(_):
            throw JiraErrors.contentTooLarge(message: """
Returned if the per-issue limit has been breached for one of the following fields:

    comments
    attachments
""")
        case .undocumented(statusCode: let statusCode, _):
            throw JiraErrors.undocumented(code: statusCode)
        }
    }
    
//    public func transition(key: String, to: String) async throws {
//        let fields = try Components.Schemas.IssueUpdateDetails.fieldsPayload.init(additionalProperties: <#T##[String : OpenAPIValueContainer]#>)
//        let issueDetails = Components.Schemas.IssueUpdateDetails(fields: <#T##Components.Schemas.IssueUpdateDetails.fieldsPayload?#>, transition: .init(value1: .init(id: to)), update: <#T##Components.Schemas.IssueUpdateDetails.updatePayload?#>)
//        let result = try await underlyingClient.doTransition(path: .init(issueIdOrKey: key), body: .json(issueDetails))
//    }
//    
//    func createContainer(values: [String: Any]) -> [String: OpenAPIValueContainer] {
//        var container = [String: OpenAPIValueContainer]()
//        
//        for (key, value) in values {
//            switch value {
//            case let stringValue as String:
//                container[key] = .init(stringLiteral: stringValue)
//            case let intValue as Int:
//                container[key] = .init(integerLiteral: intValue)
//            case let doubleValue as Double:
//                container[key] = .init(floatLiteral: doubleValue)
//            case let boolValue as Bool:
//                container[key] = .init(booleanLiteral: boolValue)
//            case let arrayValue as [Any?]:
//                // Handle arrays if needed
//                // container[key] = .init(arrayContainer: arrayValue)
//                print("Array handling needs custom implementation")
//            case let dictValue as [String: Any?]:
//                // Handle dictionaries if needed
//                // container[key] = .init(objectContainer: dictValue)
//                print("Dictionary handling needs custom implementation")
//            default:
//                container[key] = .init(nilLiteral: ())
//            }
//        }
//
//        return container
//    }
        
//    public func createIssue(fields: [String: Any]) async throws -> Operations.createIssue.Output {
//        let fieldPayload = Components.Schemas.IssueUpdateDetails.fieldsPayload(from: fields)
//        let issueUpdate: Components.Schemas.IssueUpdateDetails = Components.Schemas.IssueUpdateDetails(fields: <#T##Components.Schemas.IssueUpdateDetails.fieldsPayload?#>, historyMetadata: <#T##Components.Schemas.IssueUpdateDetails.historyMetadataPayload?#>, properties: <#T##[Components.Schemas.EntityProperty]?#>, transition: <#T##Components.Schemas.IssueUpdateDetails.transitionPayload?#>, update: <#T##Components.Schemas.IssueUpdateDetails.updatePayload?#>, additionalProperties: <#T##OpenAPIObjectContainer#>)
//        let body = Operations.createIssue.Input.Body.json(<#T##Components.Schemas.IssueUpdateDetails#>)
//        
//        let input = Operations.createIssue.Input(query: query, headers: <#T##Operations.createIssue.Input.Headers#>, body: body)
//        return try await underlyingClient.createIssue(input)
//    }
}
