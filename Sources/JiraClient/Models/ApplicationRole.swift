//
//  ApplicationRole.swift
//  swift-jira-client
//
//  Created by Michael Einreinhof on 11/1/24.
//

public struct SimpleListWrapperApplicationRole2 {
    let items: [ApplicationRole2]?
    let maxResults: Int32?
    let size: Int32?
    
    public init(items: [ApplicationRole2]?, maxResults: Int32?, size: Int32?) {
        self.items = items
        self.maxResults = maxResults
        self.size = size
    }
    
    public init(client: Components.Schemas.User.applicationRolesPayload?) {
        self.size = client?.value1.size
        self.maxResults = client?.value1.max_hyphen_results
        self.items = client?.value1.items?.map{ApplicationRole2(client: $0)}
    }
}

public struct ApplicationRole2 {
    let defaultGroups: [String]?
    let defaultGroupDetails: [GroupName2]?
    let defined: Bool?
    let groupDetails: [GroupName2]?
    let groups: [String]?
    let hasUnlimitedSeats: Bool?
    let key: String?
    let name: String?
    let numberOfSeats: Int32?
    let platform: Bool?
    let remainingSeats: Int32?
    let selectedByDefault: Bool?
    let userCount: Int32?
    let userCountDescription: String?
    
    public init(defaultGroups: [String]?, defaultGroupDetails: [GroupName2]?, defined: Bool?, groupDetails: [GroupName2]?, groups: [String]?, hasUnlimitedSeats: Bool?, key: String?, name: String?, numberOfSeats: Int32?, platform: Bool?, remainingSeats: Int32?, selectedByDefault: Bool?, userCount: Int32?, userCountDescription: String?) {
        self.defaultGroups = defaultGroups
        self.defaultGroupDetails = defaultGroupDetails
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
    
    public init(client: Components.Schemas.ApplicationRole) {
        self.defaultGroups = client.defaultGroups
        self.defaultGroupDetails = client.defaultGroupsDetails?.map { GroupName2(client: $0) }
        self.defined = client.defined
        self.groupDetails = client.groupDetails?.map { GroupName2(client: $0) }
        self.groups = client.groups
        self.hasUnlimitedSeats = client.hasUnlimitedSeats
        self.key = client.key
        self.name = client.name
        self.numberOfSeats = client.numberOfSeats
        self.platform = client.platform
        self.remainingSeats = client.remainingSeats
        self.selectedByDefault = client.selectedByDefault
        self.userCount = client.userCount
        self.userCountDescription = client.userCountDescription
    }
}

public struct GroupName2 {
    let groupId: String?
    let name: String?
    let groupSelf: String?
    
    public init(groupId: String?, name: String?, groupSelf: String?) {
        self.groupId = groupId
        self.name = name
        self.groupSelf = groupSelf
    }
    
    public init(client: Components.Schemas.GroupName?) {
        self.groupId = client?.groupId
        self.name = client?.name
        self.groupSelf = client?._self
    }
}
