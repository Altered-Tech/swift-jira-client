//
// AnnouncementBannerConfigurationUpdate.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Configuration of the announcement banner. */

public struct AnnouncementBannerConfigurationUpdate: Codable {

    /** Flag indicating if the announcement banner can be dismissed by the user. */
    public var isDismissible: Bool?
    /** Flag indicating if the announcement banner is enabled or not. */
    public var isEnabled: Bool?
    /** The text on the announcement banner. */
    public var message: String?
    /** Visibility of the announcement banner. Can be public or private. */
    public var visibility: String?

    public init(isDismissible: Bool? = nil, isEnabled: Bool? = nil, message: String? = nil, visibility: String? = nil) {
        self.isDismissible = isDismissible
        self.isEnabled = isEnabled
        self.message = message
        self.visibility = visibility
    }


}
