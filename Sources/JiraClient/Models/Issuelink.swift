import Foundation

// MARK: - Issuelink
public struct Issuelink {
    public let id: String?
    public let outwardIssue: WardIssue?
    public let type: IssueLinkType
    public let inwardIssue: WardIssue?

    public init(id: String?, outwardIssue: WardIssue?, type: TypeClass?, inwardIssue: WardIssue?) {
        self.id = id
        self.outwardIssue = outwardIssue
        self.type = type
        self.inwardIssue = inwardIssue
    }
    
    internal init(client: Components.Schemas.IssueLink) {
        self.id = client.id
        self.outwardIssue = client.outwardIssue.
        self.inwardIssue = client.inwardIssue
        self.type = IssueLinkType(client: client._type.value1)
    }
}
