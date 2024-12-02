//
// ProjectLandingPageInfo.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct ProjectLandingPageInfo {

    public let attributes: [String:String]?
    public let boardId: Int64?
    public let boardName: String?
    public let projectKey: String?
    public let projectType: String?
    public let queueCategory: String?
    public let queueId: Int64?
    public let queueName: String?
    public let simpleBoard: Bool?
    public let simplified: Bool?
    public let url: String?

    public init(attributes: [String:String]? = nil, boardId: Int64? = nil, boardName: String? = nil, projectKey: String? = nil, projectType: String? = nil, queueCategory: String? = nil, queueId: Int64? = nil, queueName: String? = nil, simpleBoard: Bool? = nil, simplified: Bool? = nil, url: String? = nil) {
        self.attributes = attributes
        self.boardId = boardId
        self.boardName = boardName
        self.projectKey = projectKey
        self.projectType = projectType
        self.queueCategory = queueCategory
        self.queueId = queueId
        self.queueName = queueName
        self.simpleBoard = simpleBoard
        self.simplified = simplified
        self.url = url
    }

    internal init(client: Components.Schemas.ProjectLandingPageInfo?) {
        self.attributes = client?.attributes?.additionalProperties
        self.boardId = client?.boardId
        self.boardName = client?.boardName
        self.projectKey = client?.projectKey
        self.projectType = client?.projectType
        self.queueCategory = client?.queueCategory
        self.queueId = client?.queueId
        self.queueName = client?.queueName
        self.simpleBoard = client?.simpleBoard
        self.simplified = client?.simplified
        self.url = client?.url
    }
}