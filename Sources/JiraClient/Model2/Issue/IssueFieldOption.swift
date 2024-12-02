//
// IssueFieldOption.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Details of the options for a select list issue field. */

public struct IssueFieldOption {

    public var config: IssueFieldOptionConfiguration?
    /** The unique identifier for the option. This is only unique within the select field&#x27;s set of options. */
    public var _id: Int64
    /** The properties of the object, as arbitrary key-value pairs. These properties can be searched using JQL, if the extractions (see [Issue Field Option Property Index](https://developer.atlassian.com/cloud/jira/platform/modules/issue-field-option-property-index/)) are defined in the descriptor for the issue field module. */
    public var properties: [String:Any]?
    /** The option&#x27;s name, which is displayed in Jira. */
    public var value: String

    public init(config: IssueFieldOptionConfiguration? = nil, _id: Int64, properties: [String:Any]? = nil, value: String) {
        self.config = config
        self._id = _id
        self.properties = properties
        self.value = value
    }

    public enum CodingKeys: String, CodingKey { 
        case config
        case _id = "id"
        case properties
        case value
    }

}