//
// AllOfConfigurationTimeTrackingConfiguration.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The configuration of time tracking. */

public struct AllOfConfigurationTimeTrackingConfiguration {

    public enum DefaultUnit: String, Codable { 
        case minute = "minute"
        case hour = "hour"
        case day = "day"
        case week = "week"
    }
    public enum TimeFormat: String, Codable { 
        case pretty = "pretty"
        case days = "days"
        case hours = "hours"
    }
    /** The default unit of time applied to logged time. */
    public var defaultUnit: DefaultUnit
    /** The format that will appear on an issue&#x27;s *Time Spent* field. */
    public var timeFormat: TimeFormat
    /** The number of days in a working week. */
    public var workingDaysPerWeek: Double
    /** The number of hours in a working day. */
    public var workingHoursPerDay: Double

    public init(defaultUnit: DefaultUnit, timeFormat: TimeFormat, workingDaysPerWeek: Double, workingHoursPerDay: Double) {
        self.defaultUnit = defaultUnit
        self.timeFormat = timeFormat
        self.workingDaysPerWeek = workingDaysPerWeek
        self.workingHoursPerDay = workingHoursPerDay
    }


}