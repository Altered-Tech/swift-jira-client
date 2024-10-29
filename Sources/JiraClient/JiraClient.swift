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
    
    public func findIssue(key: String, fields: [String]? = nil, expand: String? = nil, properties: [String]? = nil) async throws -> Components.Schemas.IssueBean {
        
        let path = Operations.getIssue.Input.Path(issueIdOrKey: key)
        let query = Operations.getIssue.Input.Query(fields: fields, expand: expand, properties: properties)
        
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
        case .undocumented(statusCode: let statusCode, _):
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
        
        var fieldsContainer: [String: Sendable] = [:]
        if let fields {
            fieldsContainer = fields.mapValues { $0 as! Sendable }
        }
        
        let fieldsUpdate: Components.Schemas.IssueUpdateDetails.fieldsPayload? = fieldsContainer.isEmpty ? nil : .init(additionalProperties: try .init(unvalidatedValue: fieldsContainer))
        
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
    
    public func createIssue(fields: [String: Any]) async throws -> Components.Schemas.CreatedIssue {
        
        let updatedFields: [String: Sendable] = try await processFields(fields: fields)
        
        let fieldPayload = Components.Schemas.IssueUpdateDetails.fieldsPayload.init(additionalProperties: try .init(unvalidatedValue: updatedFields))
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
        let result = try await underlyingClient.getIssueAllTypes()
        switch result {
            
        case .ok(let value):
            return try value.body.json
        case .unauthorized(_):
            throw JiraErrors.unauthorized()
        case .undocumented(statusCode: let statusCode, _):
            throw JiraErrors.undocumented(code: statusCode)
        }
    }
    
    public func issueType(with name: String) async throws -> Components.Schemas.IssueTypeDetails? {
        let issueTypes = try await self.issueTypes()
        let issueType = issueTypes.first(where: { $0.name == name })
        guard let issueType else { return nil }
        return issueType
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
    
    public func project(with id: Int) async throws -> Components.Schemas.Project {
        let result = try await underlyingClient.getProject(path: .init(projectIdOrKey: String(id)))
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
    
    public func issueLinkTypes() async throws -> [Components.Schemas.IssueLinkType]? {
        let result = try await underlyingClient.getIssueLinkTypes(.init())
        
        switch result {
            
        case .ok(let value):
            return try value.body.json.issueLinkTypes
        case .unauthorized(_):
            throw JiraErrors.unauthorized()
        case .notFound(_):
            throw JiraErrors.notFound(message: "Returned if issue linking is disabled.")
        case .undocumented(statusCode: let statusCode, _):
            throw JiraErrors.undocumented(code: statusCode)
        }
    }
    
    public func issueLinkType(with id: String) async throws -> Components.Schemas.IssueLinkType {
        let result = try await underlyingClient.getIssueLinkType(.init(path: .init(issueLinkTypeId: id)))
        
        switch result {
            
        case .ok(let value):
            return try value.body.json
        case .badRequest(_):
            throw JiraErrors.badRequest()
        case .unauthorized(_):
            throw JiraErrors.unauthorized()
        case .notFound(_):
            throw JiraErrors.notFound(message: """
Returned if:

    issue linking is disabled.
    the issue link type is not found.
    the user does not have the required permissions.
""")
        case .undocumented(statusCode: let statusCode, _):
            throw JiraErrors.undocumented(code: statusCode)
        }
    }
    
    public func issueLink(with linkType: String, for inward: String, and outward: String, comment: String? = nil) async throws {
        
        let inwardIssue: Components.Schemas.IssueBean = try await self.findIssue(key: inward)
        let outwardIssue: Components.Schemas.IssueBean = try await self.findIssue(key: outward)
        
        guard let issueLinks: [Components.Schemas.IssueLinkType] = try await self.issueLinkTypes() else { throw JiraDataIssue.missingData(message: "Missing issue link types") }
        guard let issueLinkType = issueLinks.first(where: { $0.name == linkType || $0.id == linkType || $0.inward == linkType || $0.outward == linkType }) else { throw JiraDataIssue.missingData(message: "Missing issue link type: \(linkType)")}
        
        let body: Operations.linkIssues.Input.Body
        
        if issueLinkType.inward == linkType {
            body = .json(.init(
                comment: .init(body: comment),
                inwardIssue: .init(id: outwardIssue.id),
                outwardIssue: .init(id: inwardIssue.id),
                _type: issueLinkType))
        } else {
            body = .json(.init(
                comment: .init(body: comment),
                inwardIssue: .init(id: inwardIssue.id),
                outwardIssue: .init(id: outwardIssue.id),
                _type: issueLinkType))
        }
        
        let result = try await underlyingClient.linkIssues(body: body)
        switch result {
            
        case .created(_):
            return
        case .badRequest(_):
            throw JiraErrors.badRequest(message: "Returned if the comment is not created. The response contains an error message indicating why the comment wasn't created. The issue link is also not created.")
        case .unauthorized(_):
            throw JiraErrors.unauthorized()
        case .notFound(_):
            throw JiraErrors.notFound(message: """
Returned if:

    issue linking is disabled.
    the user cannot view one or both of the issues. For example, the user doesn't have Browse project project permission for a project containing one of the issues.
    the user does not have link issues project permission.
    either of the link issues are not found.
    the issue link type is not found.
""")
        case .contentTooLarge(_):
            throw JiraErrors.contentTooLarge(message: "Returned if the per-issue limit for issue links has been breached.")
        case .undocumented(statusCode: let statusCode, _):
            throw JiraErrors.undocumented(code: statusCode)
        }
    }
    
    public func update(issue: String, fields: [String: Any], notify: Bool = true) async throws {
        let updatedFields: [String: Sendable] = fields.mapValues { $0 as! Sendable }
        let fieldPayload: Components.Schemas.IssueUpdateDetails.fieldsPayload = Components.Schemas.IssueUpdateDetails.fieldsPayload(additionalProperties: try .init(unvalidatedValue: updatedFields))
        let input = Components.Schemas.IssueUpdateDetails(fields: fieldPayload)
        let body = Operations.editIssue.Input.Body.json(input)
        let path = Operations.editIssue.Input.Path(issueIdOrKey: issue)
        let query = Operations.editIssue.Input.Query(notifyUsers: notify)
        let result = try await underlyingClient.editIssue(path: path, query: query, body: body)
        
        switch result {
            
        case .ok(_):
            return
        case .noContent(_):
            return
        case .badRequest(_):
            throw JiraErrors.badRequest(message: """
Returned if:\n
\n
\n  the request body is missing.
\n  the user does not have the necessary permission to edit one or more fields.
\n  the request includes one or more fields that are not found or are not associated with the issue's edit screen.
\n  the request includes an invalid transition.
""")
        case .unauthorized(_):
            throw JiraErrors.unauthorized()
        case .forbidden(_):
            throw JiraErrors.forbidden(message: "Returned if the user uses overrideScreenSecurity or overrideEditableFlag but doesn't have the necessary permission.")
        case .notFound(_):
            throw JiraErrors.notFound(message: "Returned if the issue is not found or the user does not have permission to view it.")
        case .conflict(_):
            throw JiraErrors.conflict(message: "Returned if the issue could not be updated due to a conflicting update.")
        case .unprocessableContent(_):
            throw JiraErrors.unprocessableContent(message: "Returned if a configuration problem prevents the issue being updated.")
        case .undocumented(statusCode: let statusCode, _):
            throw JiraErrors.undocumented(code: statusCode)
        }
    }
    
    public func getEditabelFields(for issue: String) async throws -> Components.Schemas.IssueUpdateMetadata {
        let result = try await underlyingClient.getEditIssueMeta(.init(path: .init(issueIdOrKey: issue)))
        switch result {
            
        case .ok(let value):
            return try value.body.json
        case .unauthorized(_):
            throw JiraErrors.unauthorized()
        case .forbidden(_):
            throw JiraErrors.forbidden(message: "Returned if the user uses an override parameter but doesn't have permission to do so.")
        case .notFound(_):
            throw JiraErrors.notFound(message: "Returned if the issue is not found or the user does not have permission to view it.")
        case .undocumented(statusCode: let statusCode, _):
            throw JiraErrors.undocumented(code: statusCode)
        }
    }
    
    public func myself(expand: [String]? = nil) async throws -> Components.Schemas.User {
        let result = try await underlyingClient.getCurrentUser(.init(query: .init(expand: expand?.joined(separator: ","))))
        switch result {
            
        case .ok(let value):
            return try value.body.json
        case .unauthorized(_):
            throw JiraErrors.unauthorized()
        case .undocumented(statusCode: let statusCode, _):
            throw JiraErrors.undocumented(code: statusCode)
        }
    }
    
    public func assign(issue: String, to user: String? = nil) async throws {
        let result = try await underlyingClient.assignIssue(.init(path: .init(issueIdOrKey: issue), body: .json(.init(accountId: user))))
        switch result {
            
        case .noContent(_):
            return
        case .badRequest(_):
            throw JiraErrors.badRequest(message: """
Returned if:

    the user is not found.
    accountId is missing.
""")
        case .forbidden(_):
            throw JiraErrors.forbidden(message: "Returned if the user does not have the necessary permission.")
        case .notFound(_):
            throw JiraErrors.notFound(message: "Returned if the issue is not found.")
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
                id = try await self.issueType(with: fieldStr)?.id
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
    
    func processFields(fields: [String: Any]) async throws -> [String: Sendable] {
        guard let project = fields["project"] else {
            throw JiraDataIssue.missingData(message: "Project field is missing")
        }
        
        guard let issueType = fields["issuetype"] else {
            throw JiraDataIssue.missingData(message: "Issue type field is missing")
        }
        
        let projectKey = try await handleField(project, fieldType: .project)
        let issueTypeKey = try await handleField(issueType, fieldType: .issueType)
        
        var newFields = fields
        newFields["project"] = projectKey
        newFields["issuetype"] = issueTypeKey
        
        return newFields.mapValues { $0 as! Sendable }
    }
}
