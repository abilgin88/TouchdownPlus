//
//  CodableBundleExtension.swift
//  TouchdownPlus
//
//  Created by Abdullah Bilgin on 9/9/23.
//

import Foundation  // Import Foundation for working with Bundle and Codable

extension Bundle {
    
    /// Decodes a JSON file into a type that conforms to the `Codable` protocol.
    ///
    /// - Parameter file: The name of the file to decode.
    /// - Returns: A decoded object of type `T`.
    /// - Throws: A fatal error if the file cannot be found, loaded, or decoded.
    func decode<T: Codable>(_ file: String) -> T {
        // 1. Locate the JSON file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle.")
        }
        
        // 2. Create a property for the data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle.")
        }
        
        // 3. Create a decoder
        let decoder = JSONDecoder()
        
        // 4. Create a property for the decoded data
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) from bundle.")
        }
        
        // 5. Return the ready-to-use data
        return loaded
    }
}

