import Foundation

// MARK: - WardIssue
public struct LinkedIssue {
    public let fields: InwardIssueFields?
    public let id, key: String?
    public let wardIssueSelf: String?

    public init(fields: InwardIssueFields?, id: String?, key: String?, wardIssueSelf: String?) {
        self.fields = fields
        self.id = id
        self.key = key
        self.wardIssueSelf = wardIssueSelf
    }
    
    internal init(client: Components.Schemas.LinkedIssue) {
        self.id = client.id
        self.key = client.key
        self.wardIssueSelf = client._self
        self.fields = client.fields.
    }
}
