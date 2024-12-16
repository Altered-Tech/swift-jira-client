//
//  Convert.swift
//  swift-jira-client
//
//  Created by Michael Einreinhof on 10/31/24.
//
import Foundation

public struct Convert {
    func convert<T, U>(from source: T, to destinationType: U.Type) -> U? where T: Encodable, U: Decodable {
        // Convert the source to Data using JSONEncoder
        do {
            let data = try JSONEncoder().encode(source)
            // Decode the data into the destination type
            let destination = try JSONDecoder().decode(destinationType, from: data)
            return destination
        } catch {
            print("Conversion failed: \(error)")
            return nil
        }
    }
}
