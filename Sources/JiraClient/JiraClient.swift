//
//  JiraClient.swift
//  swift-jira-client
//
//  Created by Michael Einreinhof on 10/15/24.
//

import OpenAPIRuntime
import OpenAPIURLSession
import Foundation

public struct JiraClient {
    
    private let underlyingClient: any APIProtocol
    
    internal init(underlyingClient: any APIProtocol) {
        self.underlyingClient = underlyingClient
    }
    
    public init(url: String, session: URLSession) {
        let transportConfig = URLSessionTransport.Configuration(session: session)
        let transport = URLSessionTransport(configuration: transportConfig)
        self.init(underlyingClient: Client(serverURL: URL(string: url)!, transport: transport))
    }
//        let config = URLSessionConfiguration.default
//        config.httpAdditionalHeaders = ["Authorization": "Basic \(BasicAuth(username: user, apiKey: password).encode()!)"]
//        let customSession = URLSession(configuration: config)
    
    public func getIssue(key: String) async throws -> Components.Schemas.IssueBean {
        let path = Operations.getIssue.Input.Path(issueIdOrKey: key)
        let input = Operations.getIssue.Input(path: path)
        let response = try await underlyingClient.getIssue(input)
        return try response.ok.body.json
    }
}
