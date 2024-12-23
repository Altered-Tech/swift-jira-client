//
// AllOfDashboardGadgetSettingsPosition.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The position of the gadget. When the gadget is placed into the position, other gadgets in the same column are moved down to accommodate it. */

public struct AllOfDashboardGadgetSettingsPosition {

    public var theColumnPositionOfTheGadget_: Int
    public var theRowPositionOfTheGadget_: Int

    public init(theColumnPositionOfTheGadget_: Int, theRowPositionOfTheGadget_: Int) {
        self.theColumnPositionOfTheGadget_ = theColumnPositionOfTheGadget_
        self.theRowPositionOfTheGadget_ = theRowPositionOfTheGadget_
    }

    public enum CodingKeys: String, CodingKey { 
        case theColumnPositionOfTheGadget_ = "The column position of the gadget."
        case theRowPositionOfTheGadget_ = "The row position of the gadget."
    }

}
