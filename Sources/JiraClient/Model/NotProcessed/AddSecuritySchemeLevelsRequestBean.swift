//
// AddSecuritySchemeLevelsRequestBean.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct AddSecuritySchemeLevelsRequestBean {

    /** The list of scheme levels which should be added to the security scheme. */
    public var levels: [SecuritySchemeLevelBean]?

    public init(levels: [SecuritySchemeLevelBean]? = nil) {
        self.levels = levels
    }


}
