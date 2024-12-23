//
// AttachmentArchive.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct AttachmentArchive {

    public var entries: [AttachmentArchiveEntry]?
    public var moreAvailable: Bool?
    public var totalEntryCount: Int?
    public var totalNumberOfEntriesAvailable: Int?

    public init(entries: [AttachmentArchiveEntry]? = nil, moreAvailable: Bool? = nil, totalEntryCount: Int? = nil, totalNumberOfEntriesAvailable: Int? = nil) {
        self.entries = entries
        self.moreAvailable = moreAvailable
        self.totalEntryCount = totalEntryCount
        self.totalNumberOfEntriesAvailable = totalNumberOfEntriesAvailable
    }


}
