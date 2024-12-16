//
// JiraExpressionForAnalysis.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Details of Jira expressions for analysis. */

public struct JiraExpressionForAnalysis {

    /** Context variables and their types. The type checker assumes that [common context variables](https://developer.atlassian.com/cloud/jira/platform/jira-expressions/#context-variables), such as &#x60;issue&#x60; or &#x60;project&#x60;, are available in context and sets their type. Use this property to override the default types or provide details of new variables. */
    public var contextVariables: [String:String]?
    /** The list of Jira expressions to analyse. */
    public var expressions: [String]

    public init(contextVariables: [String:String]? = nil, expressions: [String]) {
        self.contextVariables = contextVariables
        self.expressions = expressions
    }


}