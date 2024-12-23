//
// JQLReferenceData.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Lists of JQL reference data. */

public struct JQLReferenceData {

    /** List of JQL query reserved words. */
    public var jqlReservedWords: [String]?
    /** List of fields usable in JQL queries. */
    public var visibleFieldNames: [FieldReferenceData]?
    /** List of functions usable in JQL queries. */
    public var visibleFunctionNames: [FunctionReferenceData]?

    public init(jqlReservedWords: [String]? = nil, visibleFieldNames: [FieldReferenceData]? = nil, visibleFunctionNames: [FunctionReferenceData]? = nil) {
        self.jqlReservedWords = jqlReservedWords
        self.visibleFieldNames = visibleFieldNames
        self.visibleFunctionNames = visibleFunctionNames
    }


}
