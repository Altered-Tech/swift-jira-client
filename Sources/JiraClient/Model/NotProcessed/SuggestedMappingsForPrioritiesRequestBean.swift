//
// SuggestedMappingsForPrioritiesRequestBean.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Details of changes to a priority scheme&#x27;s priorities that require suggested priority mappings. */

public struct SuggestedMappingsForPrioritiesRequestBean {

    /** The ids of priorities being removed from the scheme. */
    public var add: [Int64]?
    /** The ids of priorities being removed from the scheme. */
    public var remove: [Int64]?

    public init(add: [Int64]? = nil, remove: [Int64]? = nil) {
        self.add = add
        self.remove = remove
    }


}
