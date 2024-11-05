import Foundation

// MARK: - Visibility
public struct Visibility {
    public let identifier, type, value: String?

    public init(identifier: String, type: String, value: String) {
        self.identifier = identifier
        self.type = type
        self.value = value
    }
    
    internal init(client: Components.Schemas.Visibility?) {
        self.identifier = client?.identifier
        self.type = VisibilityType(client?._type?.rawValue)?.rawValue
        self.value = client?.value
    }
    
}

enum VisibilityType: String {
    case group = "group"
    case role = "role"
    
    internal init?(_ type: String?) {
        switch type?.lowercased() {
        case "group": self = .group
        case "role": self = .role
        default: return nil
        }
    }
}
