//
// JiraExpressionEvaluationMetaDataBean.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct JiraExpressionEvaluationMetaDataBean {

    /** Contains information about the expression complexity. For example, the number of steps it took to evaluate the expression. */
    public var complexity: AllOfJiraExpressionEvaluationMetaDataBeanComplexity?
    /** Contains information about the &#x60;issues&#x60; variable in the context. For example, is the issues were loaded with JQL, information about the page will be included here. */
    public var issues: AllOfJiraExpressionEvaluationMetaDataBeanIssues?

    public init(complexity: AllOfJiraExpressionEvaluationMetaDataBeanComplexity? = nil, issues: AllOfJiraExpressionEvaluationMetaDataBeanIssues? = nil) {
        self.complexity = complexity
        self.issues = issues
    }


}
