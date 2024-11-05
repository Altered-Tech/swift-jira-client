//
// AllOfIssueLinkModelType.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The type of link between the issues. */

public struct AllOfIssueLinkModelType: Codable {

    /** The ID of the issue link type and is used as follows:   *  In the [ issueLink](#api-rest-api-2-issueLink-post) resource it is the type of issue link. Required on create when &#x60;name&#x60; isn&#x27;t provided. Otherwise, read only.  *  In the [ issueLinkType](#api-rest-api-2-issueLinkType-post) resource it is read only. */
    public var _id: String?
    /** The description of the issue link type inward link and is used as follows:   *  In the [ issueLink](#api-rest-api-2-issueLink-post) resource it is read only.  *  In the [ issueLinkType](#api-rest-api-2-issueLinkType-post) resource it is required on create and optional on update. Otherwise, read only. */
    public var inward: String?
    /** The name of the issue link type and is used as follows:   *  In the [ issueLink](#api-rest-api-2-issueLink-post) resource it is the type of issue link. Required on create when &#x60;id&#x60; isn&#x27;t provided. Otherwise, read only.  *  In the [ issueLinkType](#api-rest-api-2-issueLinkType-post) resource it is required on create and optional on update. Otherwise, read only. */
    public var name: String?
    /** The description of the issue link type outward link and is used as follows:   *  In the [ issueLink](#api-rest-api-2-issueLink-post) resource it is read only.  *  In the [ issueLinkType](#api-rest-api-2-issueLinkType-post) resource it is required on create and optional on update. Otherwise, read only. */
    public var outward: String?
    /** The URL of the issue link type. Read only. */
    public var _self: String?

    public init(_id: String? = nil, inward: String? = nil, name: String? = nil, outward: String? = nil, _self: String? = nil) {
        self._id = _id
        self.inward = inward
        self.name = name
        self.outward = outward
        self._self = _self
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case inward
        case name
        case outward
        case _self = "self"
    }

}
