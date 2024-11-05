//
// DashboardGadgetUpdateRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The details of the gadget to update. */

public struct DashboardGadgetUpdateRequest: Codable {

    /** The color of the gadget. Should be one of &#x60;blue&#x60;, &#x60;red&#x60;, &#x60;yellow&#x60;, &#x60;green&#x60;, &#x60;cyan&#x60;, &#x60;purple&#x60;, &#x60;gray&#x60;, or &#x60;white&#x60;. */
    public var color: String?
    /** The position of the gadget. */
    public var position: AllOfDashboardGadgetUpdateRequestPosition?
    /** The title of the gadget. */
    public var title: String?

    public init(color: String? = nil, position: AllOfDashboardGadgetUpdateRequestPosition? = nil, title: String? = nil) {
        self.color = color
        self.position = position
        self.title = title
    }


}
