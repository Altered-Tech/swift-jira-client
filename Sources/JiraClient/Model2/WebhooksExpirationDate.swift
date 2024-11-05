//
// WebhooksExpirationDate.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The date the refreshed webhooks expire. */

public struct WebhooksExpirationDate: Codable {

    /** The expiration date of all the refreshed webhooks. */
    public var expirationDate: Int64

    public init(expirationDate: Int64) {
        self.expirationDate = expirationDate
    }


}
