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
    
    public func transition(key: String, to: String, fields: [String: Any]? = nil, comment: String? = nil, worklog: String? = nil) async throws -> Bool {
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
            guard let id = try await self.getTransitionId(with: to, for: key) else { return false }
            transitionId = id
        }
        
        let issueDetails = Components.Schemas.IssueUpdateDetails(fields: fieldsUpdate,
                                                                 transition: .init(value1: .init(id: transitionId)),
                                                                 update: updates)

        let result = try await underlyingClient.doTransition(path: .init(issueIdOrKey: key), body: .json(issueDetails))
        switch result {
            
        case .noContent(_):
            return true
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
        try values.mapValues { try OpenAPIValueContainer(unvalidatedValue: ($0 as! Sendable)) }
    }
        
    public func createIssue(fields: [String: Any]) async throws -> Components.Schemas.CreatedIssue {
        
        guard let project = fields["project"] else { throw JiraDataIssue.missingData(message: "Project field is missing") }
        var projectKey: [String: String] = [:]
        switch project {
        case let p as String:
            print(p)
            guard let projectId = try await self.project(with: p).id else { throw JiraDataIssue.missingData(message: "Project with key \(p) does not exist") }
            projectKey["id"] = String(projectId)
        case let p as Int:
            print(p)
            projectKey["id"] = String(p)
        case let p as [String: String]:
            print(p)
            projectKey = p
        case let p as [String: Int]:
            print(p)
            projectKey = p.mapValues{ String($0) }
        default:
            throw JiraDataIssue.invalidData(message: "Project field is not of type String, Int or [String: String]")
        }
        print("Project \(projectKey)")
        
        var issueTypeKey: [String: String] = [:]
        guard let issueType = fields["issuetype"] else { throw JiraDataIssue.missingData(message: "Issue type field is missing") }
        switch issueType {
        case let i as String:
            print(i)
            guard let issueTypeId = try await self.issueType(name: i)?.id else { throw JiraDataIssue.missingData(message: "Issue type with name \(i) does not exist")}
            print(issueTypeId)
            issueTypeKey["id"] = issueTypeId
        case let i as Int:
            print(i)
            issueTypeKey["id"] = String(i)
        case let i as [String: String]:
            print(i)
            issueTypeKey = i
        case let i as [String: Int]:
            print(i)
            issueTypeKey = i.mapValues{ String($0) }
        default:
            throw JiraDataIssue.invalidData(message: "Project field is not of type String, Int or [String: String]")
        }
        print("issueType \(issueTypeKey)")
        var newFields: [String: Any] = fields
        newFields["project"] = projectKey
        newFields["issuetype"] = issueTypeKey
        
        let fieldsContainer = try createContainer(values: ["fields": newFields])
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
    
    public func issueTypes() async throws -> [Components.Schemas.IssueTypeDetails] {
        let result = try await underlyingClient.getIssueAllTypes(.init())
        switch result {
            
        case .ok(let value):
            return try value.body.json
        case .unauthorized(_):
            throw JiraErrors.unauthorized()
        case .undocumented(statusCode: let statusCode, _):
            throw JiraErrors.undocumented(code: statusCode)
        }
    }
    
    public func issueType(with id: Int) async throws -> Components.Schemas.IssueTypeDetails {
        let result = try await underlyingClient.getIssueType(.init(path: .init(id: String(id))))
        switch result {
            
        case .ok(let value):
            return try value.body.json
        case .badRequest(_):
            throw JiraErrors.badRequest(message: "Returned if the issue type ID is invalid.")
        case .unauthorized(_):
            throw JiraErrors.unauthorized()
        case .notFound(_):
            throw JiraErrors.notFound(message: """
Returned if:

    the issue type is not found.
    the user does not have the required permissions.
""")
        case .undocumented(statusCode: let statusCode, _):
            throw JiraErrors.undocumented(code: statusCode)
        }
    }
    
    public func issueType(name: String) async throws -> Components.Schemas.IssueTypeDetails? {
        let issueTypes = try await self.issueTypes()
        let issueType = issueTypes.first(where: { $0.name == name })
        guard let issueType else { return nil }
        return issueType
    }
    
    public func project(with name: String) async throws -> Components.Schemas.Project {
        let result = try await underlyingClient.getProject(path: .init(projectIdOrKey: name))
        switch result {
            
        case .ok(let value):
            return try value.body.json
        case .unauthorized(_):
            throw JiraErrors.unauthorized()
        case .notFound(_):
            throw JiraErrors.notFound(message: "Returned if the project is not found or the user does not have permission to view it.")
        case .undocumented(statusCode: let statusCode, _):
            throw JiraErrors.undocumented(code: statusCode)
        }
    }
    
    enum JiraFieldType {
        case project, issueType
    }

    func handleField(_ field: Any, fieldType: JiraFieldType) async throws -> [String: String] {
        var resultKey: [String: String] = [:]
        
        switch field {
        case let fieldStr as String:
            let id: String?
            switch fieldType {
            case .project:
                id = try await self.project(with: fieldStr).id
            case .issueType:
                id = try await self.issueType(name: fieldStr)?.id
            }
            
            guard let unwrappedId = id else {
                throw JiraDataIssue.missingData(message: "\(fieldType) with key \(fieldStr) does not exist")
            }
            resultKey["id"] = String(unwrappedId)
        
        case let fieldInt as Int:
            resultKey["id"] = String(fieldInt)
        
        case let fieldDict as [String: String]:
            resultKey = fieldDict
        
        case let fieldDict as [String: Int]:
            resultKey = fieldDict.mapValues { String($0) }
        
        default:
            throw JiraDataIssue.invalidData(message: "\(fieldType) field is not of type String, Int, or [String: String]")
        }
        
        return resultKey
    }

    func processFields(fields: [String: Any]) async throws -> [String: Any] {
        guard let project = fields["project"] else {
            throw JiraDataIssue.missingData(message: "Project field is missing")
        }
        
        guard let issueType = fields["issuetype"] else {
            throw JiraDataIssue.missingData(message: "Issue type field is missing")
        }
        print("processing fields")
        print(project)
        print(issueType)
        print("project")
        let projectKey = try await handleField(project, fieldType: .project)
        print("issuetype")
        let issueTypeKey = try await handleField(issueType, fieldType: .issueType)
        print("done processing")
        
        var newFields = fields
        newFields["project"] = projectKey
        newFields["issuetype"] = issueTypeKey
        print(newFields)
        
        return newFields
    }
}
