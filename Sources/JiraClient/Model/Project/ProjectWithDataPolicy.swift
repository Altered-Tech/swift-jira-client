//
// ProjectWithDataPolicy.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Details about data policies for a project. */

public struct ProjectWithDataPolicy {

    /** Data policy. */
    public var dataPolicy: AllOfProjectWithDataPolicyDataPolicy?
    /** The project ID. */
    public var _id: Int64?

    public init(dataPolicy: AllOfProjectWithDataPolicyDataPolicy? = nil, _id: Int64? = nil) {
        self.dataPolicy = dataPolicy
        self._id = _id
    }

}
