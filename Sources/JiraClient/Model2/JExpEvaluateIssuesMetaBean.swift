//
// JExpEvaluateIssuesMetaBean.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Meta data describing the &#x60;issues&#x60; context variable.This bean will be replacing IssuesMetaBean bean as part of new &#x60;evaluate&#x60; endpoint */

public struct JExpEvaluateIssuesMetaBean {

    public var jql: JExpEvaluateIssuesJqlMetaDataBean?

    public init(jql: JExpEvaluateIssuesJqlMetaDataBean? = nil) {
        self.jql = jql
    }


}
