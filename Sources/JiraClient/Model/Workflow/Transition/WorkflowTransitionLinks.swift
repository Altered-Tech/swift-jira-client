//
// WorkflowTransitionLinks.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The statuses the transition can start from, and the mapping of ports between the statuses. */

public struct WorkflowTransitionLinks {

    /** The port that the transition starts from. */
    public var fromPort: Int?
    /** The status that the transition starts from. */
    public var fromStatusReference: String?
    /** The port that the transition goes to. */
    public var toPort: Int?

    public init(fromPort: Int? = nil, fromStatusReference: String? = nil, toPort: Int? = nil) {
        self.fromPort = fromPort
        self.fromStatusReference = fromStatusReference
        self.toPort = toPort
    }


}
