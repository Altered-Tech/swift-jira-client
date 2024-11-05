import Foundation

// MARK: - Status
public struct Status {
    public let iconURL: String
    public let name: String

    public init(iconURL: String, name: String) {
        self.iconURL = iconURL
        self.name = name
    }
}
