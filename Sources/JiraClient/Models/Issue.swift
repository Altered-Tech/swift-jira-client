import Foundation

// MARK: - Issue
public struct Issue {
    public let fields: IssueFields
    public let id, key: String
    public let issueSelf: String

    public init(fields: IssueFields, id: String, key: String, issueSelf: String) {
        self.fields = fields
        self.id = id
        self.key = key
        self.issueSelf = issueSelf
    }
    
    private init(client: Components.Schemas.IssueBean) {
        self.fields = client.fields
    }
}


