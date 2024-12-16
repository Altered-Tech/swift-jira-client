//
// ProjectEmailAddress.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** A project&#x27;s sender email address. */

public struct ProjectEmailAddress {

    /** The email address. */
    public var emailAddress: String?
    /** When using a custom domain, the status of the email address. */
    public var emailAddressStatus: [String]?

    public init(emailAddress: String? = nil, emailAddressStatus: [String]? = nil) {
        self.emailAddress = emailAddress
        self.emailAddressStatus = emailAddressStatus
    }


}
