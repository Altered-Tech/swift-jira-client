//
// UserBeanAvatarUrls.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct UserBeanAvatarUrls {

    /** The URL of the user&#x27;s 16x16 pixel avatar. */
    public var _16x16: String?
    /** The URL of the user&#x27;s 24x24 pixel avatar. */
    public var _24x24: String?
    /** The URL of the user&#x27;s 32x32 pixel avatar. */
    public var _32x32: String?
    /** The URL of the user&#x27;s 48x48 pixel avatar. */
    public var _48x48: String?

    public init(_16x16: String? = nil, _24x24: String? = nil, _32x32: String? = nil, _48x48: String? = nil) {
        self._16x16 = _16x16
        self._24x24 = _24x24
        self._32x32 = _32x32
        self._48x48 = _48x48
    }

    public enum CodingKeys: String, CodingKey { 
        case _16x16 = "16x16"
        case _24x24 = "24x24"
        case _32x32 = "32x32"
        case _48x48 = "48x48"
    }

}
