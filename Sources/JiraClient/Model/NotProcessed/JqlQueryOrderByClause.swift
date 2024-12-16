//
// JqlQueryOrderByClause.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Details of the order-by JQL clause. */

public struct JqlQueryOrderByClause {

    /** The list of order-by clause fields and their ordering directives. */
    public var fields: [JqlQueryOrderByClauseElement]

    public init(fields: [JqlQueryOrderByClauseElement]) {
        self.fields = fields
    }


}