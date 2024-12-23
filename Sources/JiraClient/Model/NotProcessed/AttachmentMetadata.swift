//
// AttachmentMetadata.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Metadata for an issue attachment. */

public struct AttachmentMetadata {

    /** Details of the user who attached the file. */
    public var author: AllOfAttachmentMetadataAuthor?
    /** The URL of the attachment. */
    public var content: String?
    /** The datetime the attachment was created. */
    public var created: Date?
    /** The name of the attachment file. */
    public var filename: String?
    /** The ID of the attachment. */
    public var _id: Int64?
    /** The MIME type of the attachment. */
    public var mimeType: String?
    /** Additional properties of the attachment. */
    public var properties: [String:Any]?
    /** The URL of the attachment metadata details. */
    public var _self: String?
    /** The size of the attachment. */
    public var size: Int64?
    /** The URL of a thumbnail representing the attachment. */
    public var thumbnail: String?

    public init(author: AllOfAttachmentMetadataAuthor? = nil, content: String? = nil, created: Date? = nil, filename: String? = nil, _id: Int64? = nil, mimeType: String? = nil, properties: [String:Any]? = nil, _self: String? = nil, size: Int64? = nil, thumbnail: String? = nil) {
        self.author = author
        self.content = content
        self.created = created
        self.filename = filename
        self._id = _id
        self.mimeType = mimeType
        self.properties = properties
        self._self = _self
        self.size = size
        self.thumbnail = thumbnail
    }

    public enum CodingKeys: String, CodingKey { 
        case author
        case content
        case created
        case filename
        case _id = "id"
        case mimeType
        case properties
        case _self = "self"
        case size
        case thumbnail
    }

}
