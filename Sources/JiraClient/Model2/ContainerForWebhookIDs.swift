//
// ContainerForWebhookIDs.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Container for a list of webhook IDs. */

public struct ContainerForWebhookIDs: Codable {

    /** A list of webhook IDs. */
    public var webhookIds: [Int64]

    public init(webhookIds: [Int64]) {
        self.webhookIds = webhookIds
    }


}
