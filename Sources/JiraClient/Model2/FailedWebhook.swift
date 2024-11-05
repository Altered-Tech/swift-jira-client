//
// FailedWebhook.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Details about a failed webhook. */

public struct FailedWebhook: Codable {

    /** The webhook body. */
    public var body: String?
    /** The time the webhook was added to the list of failed webhooks (that is, the time of the last failed retry). */
    public var failureTime: Int64
    /** The webhook ID, as sent in the &#x60;X-Atlassian-Webhook-Identifier&#x60; header with the webhook. */
    public var _id: String
    /** The original webhook destination. */
    public var url: String

    public init(body: String? = nil, failureTime: Int64, _id: String, url: String) {
        self.body = body
        self.failureTime = failureTime
        self._id = _id
        self.url = url
    }

    public enum CodingKeys: String, CodingKey { 
        case body
        case failureTime
        case _id = "id"
        case url
    }

}
