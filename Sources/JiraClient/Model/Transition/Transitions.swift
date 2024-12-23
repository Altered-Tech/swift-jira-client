//
// Transitions.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** List of issue transitions. */

public struct Transitions {

    /** Expand options that include additional transitions details in the response. */
    public var expand: String?
    /** List of issue transitions. */
    public var transitions: [IssueTransition]?

    public init(expand: String? = nil, transitions: [IssueTransition]? = nil) {
        self.expand = expand
        self.transitions = transitions
    }


}
