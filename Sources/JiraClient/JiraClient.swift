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
    
    public func transition(key: String, to: String, fields: [String: Any]? = nil, comment: String? = nil, worklog: String? = nil) async throws -> Void{
        var update: [String: [Components.Schemas.FieldUpdateOperation]] = [:]
        if let comment {
            update["comment"] = [.init(add: try .init(unvalidatedValue: ["body": comment]))]
        }
        if let worklog {
            update["worklog"] = [.init(add: try .init(unvalidatedValue: ["worklog": worklog]))]
        }
        let updates: Components.Schemas.IssueUpdateDetails.updatePayload? = update.isEmpty ? nil : .init(additionalProperties: update)

        var fieldsContainer: [String: OpenAPIValueContainer] = [:]
        if let fields {
            fieldsContainer = try createContainer(values: fields)
        }
        
        let fieldsUpdate: Components.Schemas.IssueUpdateDetails.fieldsPayload? = fieldsContainer.isEmpty ? nil : .init(additionalProperties: fieldsContainer)
        
        var transitionId: String? = nil
        if let _ = Int(to) {
            transitionId = to
        } else {
            guard let id = try await self.getTransitionId(with: to, for: key) else { return }
            transitionId = id
        }
        print(transitionId ?? "no transition id")
        let issueDetails = Components.Schemas.IssueUpdateDetails(fields: fieldsUpdate,
                                                                 transition: .init(value1: .init(id: transitionId)),
                                                                 update: updates)
        print(issueDetails.fields.debugDescription)
        print(issueDetails.transition.debugDescription)
        print(issueDetails.update.debugDescription)
        let headerAccept: [AcceptHeaderContentType<Operations.doTransition.AcceptableContentType>] = [.init(contentType: .json)]
        let headers: Operations.doTransition.Input.Headers = .init(accept: headerAccept)
        
        
        let result = try await underlyingClient.doTransition(path: .init(issueIdOrKey: key), headers: headers, body: .json(issueDetails))
        switch result {
            
        case .noContent(_):
            return
        case .badRequest(_):
            throw JiraErrors.badRequest(message: """
Returned if:

    no transition is specified.
    the user does not have permission to transition the issue.
    a field that isn't included on the transition screen is defined in fields or update.
    a field is specified in both fields and update.
    the request is invalid for any other reason.

""")
        case .unauthorized(_):
            throw JiraErrors.unauthorized()
        case .notFound(_):
            throw JiraErrors.notFound(message: "Returned if the issue is not found or the user does not have permission to view it.")
        case .conflict(_):
            throw JiraErrors.conflict(message: "Returned if the issue could not be updated due to a conflicting update.")
        case .contentTooLarge(_):
            throw JiraErrors.contentTooLarge(message: """
Returned if a per-issue limit has been breached for one of the following fields:

    comments
    worklogs
    attachments
    issue links
    remote issue links
""")
        case .unprocessableContent(_):
            throw JiraErrors.unprocessableContent(message: "Returned if a configuration problem prevents the creation of the issue.")
        case .undocumented(statusCode: let statusCode, _):
            throw JiraErrors.undocumented(code: statusCode)
        }
    }
    func createContainer(values: [String: Any]) throws -> [String: OpenAPIValueContainer] {
        try values.mapValues { try OpenAPIValueContainer(unvalidatedValue: $0 as! Sendable) }
    }
        
    public func createIssue(fields: [String: Any]) async throws -> Components.Schemas.CreatedIssue {
        let fieldsContainer = try createContainer(values: fields)
        let fieldPayload = Components.Schemas.IssueUpdateDetails.fieldsPayload(additionalProperties: fieldsContainer)
        let issueUpdate: Components.Schemas.IssueUpdateDetails = Components.Schemas.IssueUpdateDetails(fields: fieldPayload)
        
        let input = Operations.createIssue.Input(body: .json(issueUpdate))
        let result = try await underlyingClient.createIssue(input)
        switch result {
            
        case .created(let value):
            return try value.body.json
        case .badRequest(let error):
            throw JiraErrors.badRequest(message: """
Returned if the request:

    is missing required fields.
    contains invalid field values.
    contains fields that cannot be set for the issue type.
    is by a user who does not have the necessary permission.
    is to create a subtype in a project different that of the parent issue.
    is for a subtask when the option to create subtasks is disabled.
    is invalid for any other reason.
""", details: try error.body.json.errorMessages)
        case .unauthorized(_):
            throw JiraErrors.unauthorized()
        case .forbidden(_):
            throw JiraErrors.forbidden()
        case .unprocessableContent(let error):
            throw JiraErrors.unprocessableContent(message: "Returned if a configuration problem prevents the creation of the issue.", details: try error.body.json.errorMessages)
        case .undocumented(statusCode: let statusCode, _):
            throw JiraErrors.undocumented(code: statusCode)
        }
    }
}
