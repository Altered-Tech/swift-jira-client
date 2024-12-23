//
// DataClassificationLevelsBean.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The data classification. */

public struct DataClassificationLevelsBean {

    /** The data classifications. */
    public var classifications: [DataClassificationTagBean]?

    public init(classifications: [DataClassificationTagBean]? = nil) {
        self.classifications = classifications
    }


}
