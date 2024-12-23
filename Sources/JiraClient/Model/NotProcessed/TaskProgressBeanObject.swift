//
// TaskProgressBeanObject.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Details about a task. */

public struct TaskProgressBeanObject {

    public enum Status: String, Codable { 
        case enqueued = "ENQUEUED"
        case running = "RUNNING"
        case complete = "COMPLETE"
        case failed = "FAILED"
        case cancelRequested = "CANCEL_REQUESTED"
        case cancelled = "CANCELLED"
        case dead = "DEAD"
    }
    /** The description of the task. */
    public var _description: String?
    /** The execution time of the task, in milliseconds. */
    public var elapsedRuntime: Int64
    /** A timestamp recording when the task was finished. */
    public var finished: Int64?
    /** The ID of the task. */
    public var _id: String
    /** A timestamp recording when the task progress was last updated. */
    public var lastUpdate: Int64
    /** Information about the progress of the task. */
    public var message: String?
    /** The progress of the task, as a percentage complete. */
    public var progress: Int64
    /** The result of the task execution. */
    public var result: Any?
    /** The URL of the task. */
    public var _self: String
    /** A timestamp recording when the task was started. */
    public var started: Int64?
    /** The status of the task. */
    public var status: Status
    /** A timestamp recording when the task was submitted. */
    public var submitted: Int64
    /** The ID of the user who submitted the task. */
    public var submittedBy: Int64

    public init(_description: String? = nil, elapsedRuntime: Int64, finished: Int64? = nil, _id: String, lastUpdate: Int64, message: String? = nil, progress: Int64, result: Any? = nil, _self: String, started: Int64? = nil, status: Status, submitted: Int64, submittedBy: Int64) {
        self._description = _description
        self.elapsedRuntime = elapsedRuntime
        self.finished = finished
        self._id = _id
        self.lastUpdate = lastUpdate
        self.message = message
        self.progress = progress
        self.result = result
        self._self = _self
        self.started = started
        self.status = status
        self.submitted = submitted
        self.submittedBy = submittedBy
    }

    public enum CodingKeys: String, CodingKey { 
        case _description = "description"
        case elapsedRuntime
        case finished
        case _id = "id"
        case lastUpdate
        case message
        case progress
        case result
        case _self = "self"
        case started
        case status
        case submitted
        case submittedBy
    }

}
