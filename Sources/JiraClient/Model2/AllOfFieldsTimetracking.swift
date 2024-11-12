//
// AllOfFieldsTimetracking.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The time tracking of the linked issue. */

public struct AllOfFieldsTimetracking {

    /** The original estimate of time needed for this issue in readable format. */
    public var originalEstimate: String?
    /** The original estimate of time needed for this issue in seconds. */
    public var originalEstimateSeconds: Int64?
    /** The remaining estimate of time needed for this issue in readable format. */
    public var remainingEstimate: String?
    /** The remaining estimate of time needed for this issue in seconds. */
    public var remainingEstimateSeconds: Int64?
    /** Time worked on this issue in readable format. */
    public var timeSpent: String?
    /** Time worked on this issue in seconds. */
    public var timeSpentSeconds: Int64?

    public init(originalEstimate: String? = nil, originalEstimateSeconds: Int64? = nil, remainingEstimate: String? = nil, remainingEstimateSeconds: Int64? = nil, timeSpent: String? = nil, timeSpentSeconds: Int64? = nil) {
        self.originalEstimate = originalEstimate
        self.originalEstimateSeconds = originalEstimateSeconds
        self.remainingEstimate = remainingEstimate
        self.remainingEstimateSeconds = remainingEstimateSeconds
        self.timeSpent = timeSpent
        self.timeSpentSeconds = timeSpentSeconds
    }


}
