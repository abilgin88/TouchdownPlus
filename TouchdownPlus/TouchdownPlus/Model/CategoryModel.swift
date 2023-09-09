//
//  CategoryModel.swift
//  TouchdownPlus
//
//  Created by Abdullah Bilgin on 9/9/23.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
