//
//  AuthenticationClientMiddleware.swift
//  swift-jira-client
//
//  Created by Michael Einreinhof on 10/31/24.
//

import OpenAPIRuntime
import Foundation
import HTTPTypes

package struct AuthenticationClientMiddleware {
    private let value: String
    
    package init(headerFieldValue value: String) {
        self.value = value
    }
}

extension AuthenticationClientMiddleware: ClientMiddleware {
    package func intercept(
            _ request: HTTPRequest,
            body: HTTPBody?,
            baseURL: URL,
            operationID: String,
            next: (HTTPRequest, HTTPBody?, URL) async throws -> (HTTPResponse, HTTPBody?)
        ) async throws -> (HTTPResponse, HTTPBody?) {
            var request = request
            // Adds the `Authorization` header field with the provided value.
            request.headerFields[.authorization] = value
            return try await next(request, body, baseURL)
        }
}
