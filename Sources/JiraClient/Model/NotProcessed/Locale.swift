//
// Locale.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Details of a locale. */

public struct Locale {

    /** The locale code. The Java the locale format is used: a two character language code (ISO 639), an underscore, and two letter country code (ISO 3166). For example, en\\_US represents a locale of English (United States). Required on create. */
    public var locale: String?

    public init(locale: String? = nil) {
        self.locale = locale
    }


}
