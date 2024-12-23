//
// IssueTransition.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Details of an issue transition. */

public struct IssueTransition {
    public let expand: String?
//    public let fields: [String: FieldMetadata]?
    public let id: String?
    public let hasScreen: Bool?
    public let isAvailable: Bool?
    public let isGlobal: Bool?
    public let isConditional: Bool?
    public let isInitial: Bool?
    public let looped: Bool?
    public let name: String?
    public let to: Status?


    internal init(client: Components.Schemas.IssueTransition?) {
        self.expand = client?.expand
        self.id = client?.id
        self.hasScreen = client?.hasScreen
        self.isGlobal = client?.isGlobal
        self.isInitial = client?.isInitial
        self.isAvailable = client?.isAvailable
        self.isConditional = client?.isConditional
        self.looped = client?.looped
        self.name = client?.name
        self.to = Status(client: client?.to?.value1)
    }
}
