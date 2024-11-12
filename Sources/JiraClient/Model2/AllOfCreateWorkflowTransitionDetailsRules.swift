//
// AllOfCreateWorkflowTransitionDetailsRules.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The rules of the transition. */

public struct AllOfCreateWorkflowTransitionDetailsRules {

    /** The workflow conditions. */
    public var conditions: Any?
    /** The workflow post functions.  **Note:** The default post functions are always added to the *initial* transition, as in:      \&quot;postFunctions\&quot;: [         {             \&quot;type\&quot;: \&quot;IssueCreateFunction\&quot;         },         {             \&quot;type\&quot;: \&quot;IssueReindexFunction\&quot;         },         {             \&quot;type\&quot;: \&quot;FireIssueEventFunction\&quot;,             \&quot;configuration\&quot;: {                 \&quot;event\&quot;: {                     \&quot;id\&quot;: \&quot;1\&quot;,                     \&quot;name\&quot;: \&quot;issue_created\&quot;                 }             }         }     ]  **Note:** The default post functions are always added to the *global* and *directed* transitions, as in:      \&quot;postFunctions\&quot;: [         {             \&quot;type\&quot;: \&quot;UpdateIssueStatusFunction\&quot;         },         {             \&quot;type\&quot;: \&quot;CreateCommentFunction\&quot;         },         {             \&quot;type\&quot;: \&quot;GenerateChangeHistoryFunction\&quot;         },         {             \&quot;type\&quot;: \&quot;IssueReindexFunction\&quot;         },         {             \&quot;type\&quot;: \&quot;FireIssueEventFunction\&quot;,             \&quot;configuration\&quot;: {                 \&quot;event\&quot;: {                     \&quot;id\&quot;: \&quot;13\&quot;,                     \&quot;name\&quot;: \&quot;issue_generic\&quot;                 }             }         }     ] */
    public var postFunctions: [CreateWorkflowTransitionRule]?
    /** The workflow validators.  **Note:** The default permission validator is always added to the *initial* transition, as in:      \&quot;validators\&quot;: [         {             \&quot;type\&quot;: \&quot;PermissionValidator\&quot;,             \&quot;configuration\&quot;: {                 \&quot;permissionKey\&quot;: \&quot;CREATE_ISSUES\&quot;             }         }     ] */
    public var validators: [CreateWorkflowTransitionRule]?

    public init(conditions: Any? = nil, postFunctions: [CreateWorkflowTransitionRule]? = nil, validators: [CreateWorkflowTransitionRule]? = nil) {
        self.conditions = conditions
        self.postFunctions = postFunctions
        self.validators = validators
    }


}
