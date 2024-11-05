//
// ApplicationRole.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Details of an application role. */

public struct ApplicationRole {

    /** The groups that are granted default access for this application role. As a group&#x27;s name can change, use of &#x60;defaultGroupsDetails&#x60; is recommended to identify a groups. */
    public var defaultGroups: [String]?
    /** The groups that are granted default access for this application role. */
    public var defaultGroupsDetails: [GroupName]?
    /** Deprecated. */
    public var defined: Bool?
    /** The groups associated with the application role. */
    public var groupDetails: [GroupName]?
    /** The groups associated with the application role. As a group&#x27;s name can change, use of &#x60;groupDetails&#x60; is recommended to identify a groups. */
    public var groups: [String]?
    public var hasUnlimitedSeats: Bool?
    /** The key of the application role. */
    public var key: String?
    /** The display name of the application role. */
    public var name: String?
    /** The maximum count of users on your license. */
    public var numberOfSeats: Int32?
    /** Indicates if the application role belongs to Jira platform (&#x60;jira-core&#x60;). */
    public var platform: Bool?
    /** The count of users remaining on your license. */
    public var remainingSeats: Int32?
    /** Determines whether this application role should be selected by default on user creation. */
    public var selectedByDefault: Bool?
    /** The number of users counting against your license. */
    public var userCount: Int32?
    /** The [type of users](https://confluence.atlassian.com/x/lRW3Ng) being counted against your license. */
    public var userCountDescription: String?

    public init(defaultGroups: [String]? = nil, defaultGroupsDetails: [GroupName]? = nil, defined: Bool? = nil, groupDetails: [GroupName]? = nil, groups: [String]? = nil, hasUnlimitedSeats: Bool? = nil, key: String? = nil, name: String? = nil, numberOfSeats: Int32? = nil, platform: Bool? = nil, remainingSeats: Int32? = nil, selectedByDefault: Bool? = nil, userCount: Int32? = nil, userCountDescription: String? = nil) {
        self.defaultGroups = defaultGroups
        self.defaultGroupsDetails = defaultGroupsDetails
        self.defined = defined
        self.groupDetails = groupDetails
        self.groups = groups
        self.hasUnlimitedSeats = hasUnlimitedSeats
        self.key = key
        self.name = name
        self.numberOfSeats = numberOfSeats
        self.platform = platform
        self.remainingSeats = remainingSeats
        self.selectedByDefault = selectedByDefault
        self.userCount = userCount
        self.userCountDescription = userCountDescription
    }

    internal init(client: Components.Schemas.ApplicationRole?) {
        self.defaultGroups = client?.defaultGroups
        self.defaultGroupsDetails = client?.defaultGroupsDetails?.map{ GroupName(client: $0) }
        self.defined = client?.defined
        self.groupDetails = client?.groupDetails?.map{ GroupName(client: $0) }
        self.groups = client?.groups
        self.hasUnlimitedSeats = client?.hasUnlimitedSeats
        self.key = client?.key
        self.name = client?.name
        self.numberOfSeats = client?.numberOfSeats
        self.platform = client?.platform
        self.remainingSeats = client?.remainingSeats
        self.selectedByDefault = client?.selectedByDefault
        self.userCount = client?.userCount
        self.userCountDescription = client?.userCountDescription
    }
    
}
