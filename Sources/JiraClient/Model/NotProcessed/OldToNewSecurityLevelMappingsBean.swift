//
// OldToNewSecurityLevelMappingsBean.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct OldToNewSecurityLevelMappingsBean {

    /** The new issue security level ID. Providing null will clear the assigned old level from issues. */
    public var newLevelId: String
    /** The old issue security level ID. Providing null will remap all issues without any assigned levels. */
    public var oldLevelId: String

    public init(newLevelId: String, oldLevelId: String) {
        self.newLevelId = newLevelId
        self.oldLevelId = oldLevelId
    }


}
