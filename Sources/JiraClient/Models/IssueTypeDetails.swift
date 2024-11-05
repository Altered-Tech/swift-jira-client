//
//  IssueTypeDetails.swift
//  swift-jira-client
//
//  Created by Michael Einreinhof on 11/1/24.
//

public struct IssueTypeDetails {
    public let avatarId: Int64?
    public let description: String?
    public let entityId: String?
    public let hierarchyLevel: Int32?
    public let iconUrl: String?
    public let id: String?
    public let name: String?
    public let scope: Scope?
    public let subtask: Bool?
    public let untranslatedName: String?
    
    internal init(client: Components.Schemas.IssueTypeDetails) {
        self.avatarId = client.avatarId
        self.description = client.description
        self.entityId = client.entityId
        self.hierarchyLevel = client.hierarchyLevel
        self.iconUrl = client.iconUrl
        self.id = client.id
        self.name = client.name
        self.scope = Scope(client: client.scope?.value1)
        self.subtask = client.subtask
        self.untranslatedName = client.untranslatedName
    }
}
