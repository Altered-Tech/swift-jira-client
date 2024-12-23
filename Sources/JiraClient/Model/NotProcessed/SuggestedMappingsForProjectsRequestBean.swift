//
// SuggestedMappingsForProjectsRequestBean.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Details of changes to a priority scheme&#x27;s projects that require suggested priority mappings. */

public struct SuggestedMappingsForProjectsRequestBean {

    /** The ids of projects being added to the scheme. */
    public var add: [Int64]?

    public init(add: [Int64]? = nil) {
        self.add = add
    }


}
