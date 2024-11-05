//
// AllOfJiraExpressionEvalContextBeanIssues.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The collection of issues that is available under the &#x60;issues&#x60; variable when evaluating the expression. */

public struct AllOfJiraExpressionEvalContextBeanIssues: Codable {

    /** The JQL query that specifies the set of issues available in the Jira expression. */
    public var jql: Any?

    public init(jql: Any? = nil) {
        self.jql = jql
    }


}
