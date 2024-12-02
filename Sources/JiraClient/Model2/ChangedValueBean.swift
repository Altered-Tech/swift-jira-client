//
// ChangedValueBean.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Details of names changed in the record event. */

public struct ChangedValueBean {

    /** The value of the field before the change. */
    public var changedFrom: String?
    /** The value of the field after the change. */
    public var changedTo: String?
    /** The name of the field changed. */
    public var fieldName: String?

    public init(changedFrom: String? = nil, changedTo: String? = nil, fieldName: String? = nil) {
        self.changedFrom = changedFrom
        self.changedTo = changedTo
        self.fieldName = fieldName
    }


}