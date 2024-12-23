//
// ConnectModules.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct ConnectModules {

    /** A list of app modules in the same format as the &#x60;modules&#x60; property in the [app descriptor](https://developer.atlassian.com/cloud/jira/platform/app-descriptor/). */
    public var modules: [ConnectModule]

    public init(modules: [ConnectModule]) {
        self.modules = modules
    }


}
