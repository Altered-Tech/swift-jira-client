import Foundation

// MARK: - Insight
public struct Insight {
    public let lastIssueUpdateTime: String
    public let totalIssueCount: Int

    public init(lastIssueUpdateTime: String, totalIssueCount: Int) {
        self.lastIssueUpdateTime = lastIssueUpdateTime
        self.totalIssueCount = totalIssueCount
    }
}
