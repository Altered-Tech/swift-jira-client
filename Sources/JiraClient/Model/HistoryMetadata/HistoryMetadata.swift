//
// HistoryMetadata.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The history metadata associated with the changed. */

public struct HistoryMetadata {

    /** The activity described in the history record. */
    public let activityDescription: String?
    /** The key of the activity described in the history record. */
    public let activityDescriptionKey: String?
    /** Details of the user whose action created the history record. */
    public let actor: Actor?
    /** Details of the cause that triggered the creation the history record. */
    public let cause: Actor?
    /** The description of the history record. */
    public let description: String?
    /** The description key of the history record. */
    public let descriptionKey: String?
    /** The description of the email address associated the history record. */
    public let emailDescription: String?
    /** The description key of the email address associated the history record. */
    public let emailDescriptionKey: String?
    /** Additional arbitrary information about the history record. */
    public let extraData: [String:String]?
    /** Details of the system that generated the history record. */
    public let generator: Actor?
    /** The type of the history record. */
    public let type: String?

    public init(activityDescription: String? = nil, activityDescriptionKey: String? = nil, actor: Actor? = nil, cause: Actor? = nil, _description: String? = nil, descriptionKey: String? = nil, emailDescription: String? = nil, emailDescriptionKey: String? = nil, extraData: [String:String]? = nil, generator: Actor? = nil, type: String? = nil) {
        self.activityDescription = activityDescription
        self.activityDescriptionKey = activityDescriptionKey
        self.actor = actor
        self.cause = cause
        self.description = _description
        self.descriptionKey = descriptionKey
        self.emailDescription = emailDescription
        self.emailDescriptionKey = emailDescriptionKey
        self.extraData = extraData
        self.generator = generator
        self.type = type
    }
    
    internal init(client: Components.Schemas.HistoryMetadata?) {
        self.activityDescription = client?.activityDescription
        self.activityDescriptionKey = client?.activityDescriptionKey
        self.actor = Actor(client: client?.actor?.value1)
        self.cause = Actor(client: client?.cause?.value1)
        self.description = client?.description
        self.descriptionKey = client?.descriptionKey
        self.emailDescription = client?.emailDescription
        self.emailDescriptionKey = client?.emailDescriptionKey
        self.extraData = client?.extraData?.additionalProperties
        self.generator = Actor(client: client?.generator?.value1)
        self.type = client?._type
    }
}
