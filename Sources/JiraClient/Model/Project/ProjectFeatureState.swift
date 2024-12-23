//
// ProjectFeatureState.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Details of the feature state. */

public struct ProjectFeatureState {

    public enum State: String, Codable { 
        case enabled = "ENABLED"
        case disabled = "DISABLED"
        case comingSoon = "COMING_SOON"
    }
    /** The feature state. */
    public var state: State?

    public init(state: State? = nil) {
        self.state = state
    }


}
