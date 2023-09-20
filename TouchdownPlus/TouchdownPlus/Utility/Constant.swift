//
//  Constant.swift
//  TouchdownPlus
//
//  Created by Abdullah Bilgin on 9/8/23.
//

import SwiftUI

// MARK: - Data
let players: [Player] = Bundle.main.decode("player.json") // Load player data
let categories: [Category] = Bundle.main.decode("category.json") // Load category data
let products: [Product] = Bundle.main.decode("product.json") // Load product data

// MARK: - Colors
let colorBackground: Color = Color("ColorBackground") // Define the background color
let colorGray: Color = Color(UIColor.systemGray4) // Define a gray color

// MARK: - Layout
let colomnSpacing: CGFloat = 10 // Define column spacing
let rowSpacing: CGFloat = 10 // Define row spacing

var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2) // Define a grid layout with two columns
}

// MARK: - UX

// MARK: - API

// MARK: - Images

// MARK: - Fonts

// MARK: - Strings

// MARK: - Miscellaneous

