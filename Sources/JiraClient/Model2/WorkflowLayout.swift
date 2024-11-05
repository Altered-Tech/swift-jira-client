//
// WorkflowLayout.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The starting point for the statuses in the workflow. */

public struct WorkflowLayout: Codable {

    /** The x axis location. */
    public var x: Double?
    /** The y axis location. */
    public var y: Double?

    public init(x: Double? = nil, y: Double? = nil) {
        self.x = x
        self.y = y
    }


}
