import Foundation

// MARK: - User
public struct User2 {
    public let accountID, accountType: String?
    public let active: Bool?
    public let avatarUrls: AvatarUrls?
    public let displayName, key, name, emailAddress, timeZone: String?
    public let userSelf: String?
    public let applicationRoles: SimpleListWrapperApplicationRole?

    public init(accountID: String, accountType: String, active: Bool, avatarUrls: AvatarUrls, displayName: String, key: String, name: String, email: String, timeZone: String, userSelf: String) {
        self.accountID = accountID
        self.accountType = accountType
        self.active = active
        self.avatarUrls = avatarUrls
        self.displayName = displayName
        self.key = key
        self.name = name
        self.userSelf = userSelf
        self.emailAddress = email
        self.timeZone = timeZone
    }
    
    public init(client: Components.Schemas.User) {
        self.accountID = client.accountId
        self.accountType = AccountType(type: client.accountType)?.rawValue
        self.active = client.active
        self.avatarUrls = AvatarUrls(client: client.avatarUrls)
        self.displayName = client.displayName
        self.key = client.key
        self.name = client.name
        self.userSelf = client._self
        self.emailAddress = client.emailAddress
        self.timeZone = client.timeZone
        self.applicationRoles = SimpleListWrapperApplicationRole(client: client.applicationRoles)
    }
    
    public init(client: Components.Schemas.UserDetails?) {
        self.accountID = client?.accountId
        self.accountType = AccountType(type: client?.accountType)?.rawValue
        self.active = client?.active
        self.avatarUrls = AvatarUrls(client: client?.avatarUrls)
        self.displayName = client?.displayName
        self.key = client?.key
        self.name = client?.name
        self.userSelf = client?._self
        self.emailAddress = client?.emailAddress
        self.timeZone = client?.timeZone
        self.applicationRoles = nil
    }
}
