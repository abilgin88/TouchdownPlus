//
//  ProductModel.swift
//  TouchdownPlus
//
//  Created by Abdullah Bilgin on 9/20/23.
//

import Foundation

struct Product: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
    let price: Int
    let description: String
    let color: [Double]

    // Computed properties for RGB color components
    var red: Double { color[0] }
    var green: Double { color[1] }
    var blue: Double { color[2] }

    // Computed property for formatted price with currency symbol
    var formattedPrice: String { "$\(price)" }
}
