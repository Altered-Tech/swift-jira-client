//
// CreateWorkflowDetails.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The details of a workflow. */

public struct CreateWorkflowDetails {

    /** The description of the workflow. The maximum length is 1000 characters. */
    public var _description: String?
    /** The name of the workflow. The name must be unique. The maximum length is 255 characters. Characters can be separated by a whitespace but the name cannot start or end with a whitespace. */
    public var name: String
    /** The statuses of the workflow. Any status that does not include a transition is added to the workflow without a transition. */
    public var statuses: [CreateWorkflowStatusDetails]
    /** The transitions of the workflow. For the request to be valid, these transitions must:   *  include one *initial* transition.  *  not use the same name for a *global* and *directed* transition.  *  have a unique name for each *global* transition.  *  have a unique &#x27;to&#x27; status for each *global* transition.  *  have unique names for each transition from a status.  *  not have a &#x27;from&#x27; status on *initial* and *global* transitions.  *  have a &#x27;from&#x27; status on *directed* transitions.  All the transition statuses must be included in &#x60;statuses&#x60;. */
    public var transitions: [CreateWorkflowTransitionDetails]

    public init(_description: String? = nil, name: String, statuses: [CreateWorkflowStatusDetails], transitions: [CreateWorkflowTransitionDetails]) {
        self._description = _description
        self.name = name
        self.statuses = statuses
        self.transitions = transitions
    }

}
