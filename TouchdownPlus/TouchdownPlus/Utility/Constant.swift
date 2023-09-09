//
//  Constant.swift
//  TouchdownPlus
//
//  Created by Abdullah Bilgin on 9/8/23.
//

import SwiftUI

// MARK: - Data
let players: [Player] = Bundle.main.decode("player.json")
let categories: [Category] = Bundle.main.decode("category.json")

// MARK: - Colors
let colorBackground: Color = Color("ColorBackground")
let colorGray: Color = Color(UIColor.systemGray4)

// MARK: - Layout
let colomnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}

// MARK: - UX

// MARK: - API

// MARK: - Images

// MARK: - Fonts

// MARK: - Strings

// MARK: - Miscellaneous

