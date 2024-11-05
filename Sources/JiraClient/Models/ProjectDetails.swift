//
//  ProjectDetails.swift
//  swift-jira-client
//
//  Created by Michael Einreinhof on 11/1/24.
//

public struct ProjectDetails {
    public let avatarUrls: AvatarUrls?
    public let id, key, name: String?
    public let projectCategory: ProjectCategory?
    public let projectTypeKey, projectDetailsSelf: String?
    public let simplified: Bool?

    public init(avatarUrls: AvatarUrls?, id: String?, key: String?, name: String?, projectCategory: ProjectCategory?, projectTypeKey: String?, projectDetailsSelf: String?, simplified: Bool?) {
        self.avatarUrls = avatarUrls
        self.id = id
        self.key = key
        self.name = name
        self.projectCategory = projectCategory
        self.projectTypeKey = projectTypeKey
        self.projectDetailsSelf = projectDetailsSelf
        self.simplified = simplified
    }
    
    internal init(client: Components.Schemas.ProjectDetails?) {
        self.avatarUrls = AvatarUrls(client: client?.avatarUrls?.value1)
        self.id = client?.id
        self.key = client?.key
        self.name = client?.name
        self.projectTypeKey = client?.projectTypeKey?.rawValue
        self.projectDetailsSelf = client?._self
        self.projectCategory = ProjectCategory(client: client?.projectCategory?.value1)
        self.simplified = client?.simplified
    }
}
