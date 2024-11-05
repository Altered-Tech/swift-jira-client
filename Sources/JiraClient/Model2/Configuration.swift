//
// Configuration.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Details about the configuration of Jira. */

public struct Configuration: Codable {

    /** Whether the ability to add attachments to issues is enabled. */
    public var attachmentsEnabled: Bool?
    /** Whether the ability to link issues is enabled. */
    public var issueLinkingEnabled: Bool?
    /** Whether the ability to create subtasks for issues is enabled. */
    public var subTasksEnabled: Bool?
    /** The configuration of time tracking. */
    public var timeTrackingConfiguration: AllOfConfigurationTimeTrackingConfiguration?
    /** Whether the ability to track time is enabled. This property is deprecated. */
    public var timeTrackingEnabled: Bool?
    /** Whether the ability to create unassigned issues is enabled. See [Configuring Jira application options](https://confluence.atlassian.com/x/uYXKM) for details. */
    public var unassignedIssuesAllowed: Bool?
    /** Whether the ability for users to vote on issues is enabled. See [Configuring Jira application options](https://confluence.atlassian.com/x/uYXKM) for details. */
    public var votingEnabled: Bool?
    /** Whether the ability for users to watch issues is enabled. See [Configuring Jira application options](https://confluence.atlassian.com/x/uYXKM) for details. */
    public var watchingEnabled: Bool?

    public init(attachmentsEnabled: Bool? = nil, issueLinkingEnabled: Bool? = nil, subTasksEnabled: Bool? = nil, timeTrackingConfiguration: AllOfConfigurationTimeTrackingConfiguration? = nil, timeTrackingEnabled: Bool? = nil, unassignedIssuesAllowed: Bool? = nil, votingEnabled: Bool? = nil, watchingEnabled: Bool? = nil) {
        self.attachmentsEnabled = attachmentsEnabled
        self.issueLinkingEnabled = issueLinkingEnabled
        self.subTasksEnabled = subTasksEnabled
        self.timeTrackingConfiguration = timeTrackingConfiguration
        self.timeTrackingEnabled = timeTrackingEnabled
        self.unassignedIssuesAllowed = unassignedIssuesAllowed
        self.votingEnabled = votingEnabled
        self.watchingEnabled = watchingEnabled
    }


}
