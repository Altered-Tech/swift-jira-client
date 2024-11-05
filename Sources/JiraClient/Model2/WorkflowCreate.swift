//
// WorkflowCreate.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The details of the workflows to create. */

public struct WorkflowCreate: Codable {

    /** The description of the workflow to create. */
    public var _description: String?
    /** The name of the workflow to create. */
    public var name: String
    public var startPointLayout: WorkflowLayout?
    /** The statuses associated with this workflow. */
    public var statuses: [StatusLayoutUpdate]
    /** The transitions of this workflow. */
    public var transitions: [TransitionUpdateDTO]

    public init(_description: String? = nil, name: String, startPointLayout: WorkflowLayout? = nil, statuses: [StatusLayoutUpdate], transitions: [TransitionUpdateDTO]) {
        self._description = _description
        self.name = name
        self.startPointLayout = startPointLayout
        self.statuses = statuses
        self.transitions = transitions
    }

    public enum CodingKeys: String, CodingKey { 
        case _description = "description"
        case name
        case startPointLayout
        case statuses
        case transitions
    }

}
