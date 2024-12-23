//
// AllOfJiraExpressionsComplexityBeanPrimitiveValues.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The number of primitive values returned in the response. */

public struct AllOfJiraExpressionsComplexityBeanPrimitiveValues {

    /** The maximum allowed complexity. The evaluation will fail if this value is exceeded. */
    public var limit: Int
    /** The complexity value of the current expression. */
    public var value: Int

    public init(limit: Int, value: Int) {
        self.limit = limit
        self.value = value
    }


}
