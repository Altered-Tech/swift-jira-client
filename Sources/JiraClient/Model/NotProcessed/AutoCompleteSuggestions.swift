//
// AutoCompleteSuggestions.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The results from a JQL query. */

public struct AutoCompleteSuggestions {

    /** The list of suggested item. */
    public var results: [AutoCompleteSuggestion]?

    public init(results: [AutoCompleteSuggestion]? = nil) {
        self.results = results
    }


}
