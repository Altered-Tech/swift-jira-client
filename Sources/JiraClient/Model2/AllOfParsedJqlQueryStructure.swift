//
// AllOfParsedJqlQueryStructure.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The syntax tree of the query. Empty if the query was invalid. */

public struct AllOfParsedJqlQueryStructure: Codable {

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
