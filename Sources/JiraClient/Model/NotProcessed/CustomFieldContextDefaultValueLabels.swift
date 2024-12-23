//
// CustomFieldContextDefaultValueLabels.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Default value for a labels custom field. */

public struct CustomFieldContextDefaultValueLabels {

    /** The default labels value. */
    public var labels: [String]
    public var type: String

    public init(labels: [String], type: String) {
        self.labels = labels
        self.type = type
    }


}
