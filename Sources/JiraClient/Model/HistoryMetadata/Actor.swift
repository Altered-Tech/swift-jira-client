//
//  Actor.swift
//  swift-jira-client
//
//  Created by Michael Einreinhof on 11/4/24.
//

public struct Actor {
    public let avatarUrl: String?
    public let displayName: String?
    public let displayNameKey: String?
    public let type: String?
    public let url: String?
    public let id: String?
    public let additionalFields: [String: (any Sendable)?]?
    
    internal init(client: Components.Schemas.HistoryMetadataParticipant?) {
        self.avatarUrl = client?.avatarUrl
        self.displayName = client?.displayName
        self.displayNameKey = client?.displayNameKey
        self.type = client?._type
        self.url = client?.url
        self.id = client?.id
        self.additionalFields = client?.additionalProperties.value
    }
}
