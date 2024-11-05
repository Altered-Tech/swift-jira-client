//
// AllOfJiraExpressionEvaluateRequestBeanContext.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The context in which the Jira expression is evaluated. */

public struct AllOfJiraExpressionEvaluateRequestBeanContext: Codable {

    /** The ID of the board that is available under the &#x60;board&#x60; variable when evaluating the expression. */
    public var board: Int64?
    /** Custom context variables and their types. These variable types are available for use in a custom context:   *  &#x60;user&#x60;: A [user](https://developer.atlassian.com/cloud/jira/platform/jira-expressions-type-reference#user) specified as an Atlassian account ID.  *  &#x60;issue&#x60;: An [issue](https://developer.atlassian.com/cloud/jira/platform/jira-expressions-type-reference#issue) specified by ID or key. All the fields of the issue object are available in the Jira expression.  *  &#x60;json&#x60;: A JSON object containing custom content.  *  &#x60;list&#x60;: A JSON list of &#x60;user&#x60;, &#x60;issue&#x60;, or &#x60;json&#x60; variable types. */
    public var custom: [CustomContextVariable]?
    /** The ID of the customer request that is available under the &#x60;customerRequest&#x60; variable when evaluating the expression. This is the same as the ID of the underlying Jira issue, but the customer request context variable will have a different type. */
    public var customerRequest: Int64?
    /** The issue that is available under the &#x60;issue&#x60; variable when evaluating the expression. */
    public var issue: Any?
    /** The collection of issues that is available under the &#x60;issues&#x60; variable when evaluating the expression. */
    public var issues: Any?
    /** The project that is available under the &#x60;project&#x60; variable when evaluating the expression. */
    public var project: Any?
    /** The ID of the service desk that is available under the &#x60;serviceDesk&#x60; variable when evaluating the expression. */
    public var serviceDesk: Int64?
    /** The ID of the sprint that is available under the &#x60;sprint&#x60; variable when evaluating the expression. */
    public var sprint: Int64?

    public init(board: Int64? = nil, custom: [CustomContextVariable]? = nil, customerRequest: Int64? = nil, issue: Any? = nil, issues: Any? = nil, project: Any? = nil, serviceDesk: Int64? = nil, sprint: Int64? = nil) {
        self.board = board
        self.custom = custom
        self.customerRequest = customerRequest
        self.issue = issue
        self.issues = issues
        self.project = project
        self.serviceDesk = serviceDesk
        self.sprint = sprint
    }


}
