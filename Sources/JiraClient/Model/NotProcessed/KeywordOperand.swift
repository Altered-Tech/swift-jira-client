//
// KeywordOperand.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** An operand that is a JQL keyword. See [Advanced searching - keywords reference](https://confluence.atlassian.com/jiracorecloud/advanced-searching-keywords-reference-765593717.html#Advancedsearching-keywordsreference-EMPTYEMPTY) for more information about operand keywords. */

public struct KeywordOperand {

    public enum Keyword: String, Codable { 
        case empty = "empty"
    }
    /** The keyword that is the operand value. */
    public var keyword: Keyword

    public init(keyword: Keyword) {
        self.keyword = keyword
    }


}
