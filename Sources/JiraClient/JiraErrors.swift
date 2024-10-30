//
//  JiraErrors.swift
//  swift-jira-client
//
//  Created by Michael Einreinhof on 10/16/24.
//

enum JiraErrors: Error {
    /// 400
    case badRequest(message: String = "Returned if the request is invalid.", details: [String]? = nil)
    /// 401
    case unauthorized(message: String = "Returned if the authentication credentials are incorrect or missing.")
    /// 403
    case forbidden(message: String = "Returned if the user does not have the necessary permission.")
    /// 404
    case notFound(message: String)
    /// 409
    case conflict(message: String)
    /// 413
    case contentTooLarge(message: String)
    /// 422
    case unprocessableContent(message: String, details: [String]? = nil)
    case undocumented(code: Int, message: String = "Undocumented status code. Please check the Jira documentation for more information.")
}

enum JiraDataIssue: Error {
    case missingData(message: String)
    case invalidData(message: String)
}
