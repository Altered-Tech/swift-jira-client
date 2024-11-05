import Foundation

// MARK: - IssueLinkType
public struct IssueLinkType {
    public let id, inward, name, outward: String?

    public init(id: String?, inward: String?, name: String?, outward: String?) {
        self.id = id
        self.inward = inward
        self.name = name
        self.outward = outward
    }
    
    internal init(client: Components.Schemas.IssueLinkType) {
        self.id = client.id
        self.inward = client.inward
        self.outward = client.outward
        self.name = client.name
    }
}
