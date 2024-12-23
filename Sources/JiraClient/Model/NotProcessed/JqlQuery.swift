//
// JqlQuery.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** A parsed JQL query. */

public struct JqlQuery {

    public var orderBy: JqlQueryOrderByClause?
    public var _where: JqlQueryClause?

    public init(orderBy: JqlQueryOrderByClause? = nil, _where: JqlQueryClause? = nil) {
        self.orderBy = orderBy
        self._where = _where
    }

    public enum CodingKeys: String, CodingKey { 
        case orderBy
        case _where = "where"
    }

}
