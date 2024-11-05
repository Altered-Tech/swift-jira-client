//
// AttachmentArchiveItemReadable.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Metadata for an item in an attachment archive. */

public struct AttachmentArchiveItemReadable: Codable {

    /** The position of the item within the archive. */
    public var index: Int64?
    /** The label for the archive item. */
    public var label: String?
    /** The MIME type of the archive item. */
    public var mediaType: String?
    /** The path of the archive item. */
    public var path: String?
    /** The size of the archive item. */
    public var size: String?

    public init(index: Int64? = nil, label: String? = nil, mediaType: String? = nil, path: String? = nil, size: String? = nil) {
        self.index = index
        self.label = label
        self.mediaType = mediaType
        self.path = path
        self.size = size
    }


}
