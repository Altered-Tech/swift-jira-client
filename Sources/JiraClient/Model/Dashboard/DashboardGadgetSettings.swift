//
// DashboardGadgetSettings.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Details of the settings for a dashboard gadget. */

public struct DashboardGadgetSettings {

    /** The color of the gadget. Should be one of &#x60;blue&#x60;, &#x60;red&#x60;, &#x60;yellow&#x60;, &#x60;green&#x60;, &#x60;cyan&#x60;, &#x60;purple&#x60;, &#x60;gray&#x60;, or &#x60;white&#x60;. */
    public var color: String?
    /** Whether to ignore the validation of module key and URI. For example, when a gadget is created that is a part of an application that isn&#x27;t installed. */
    public var ignoreUriAndModuleKeyValidation: Bool?
    /** The module key of the gadget type. Can&#x27;t be provided with &#x60;uri&#x60;. */
    public var moduleKey: String?
    /** The position of the gadget. When the gadget is placed into the position, other gadgets in the same column are moved down to accommodate it. */
    public var position: AllOfDashboardGadgetSettingsPosition?
    /** The title of the gadget. */
    public var title: String?
    /** The URI of the gadget type. Can&#x27;t be provided with &#x60;moduleKey&#x60;. */
    public var uri: String?

    public init(color: String? = nil, ignoreUriAndModuleKeyValidation: Bool? = nil, moduleKey: String? = nil, position: AllOfDashboardGadgetSettingsPosition? = nil, title: String? = nil, uri: String? = nil) {
        self.color = color
        self.ignoreUriAndModuleKeyValidation = ignoreUriAndModuleKeyValidation
        self.moduleKey = moduleKey
        self.position = position
        self.title = title
        self.uri = uri
    }


}
