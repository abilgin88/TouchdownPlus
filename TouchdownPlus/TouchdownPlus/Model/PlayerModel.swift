//
//  PlayerModel.swift
//  TouchdownPlus
//
//  Created by Abdullah Bilgin on 9/9/23.
//

import Foundation

// MARK: - Player Struct
struct Player: Codable, Identifiable {
    let id: Int       // Unique identifier for the player
    let image: String // Image URL or filename for the player's image
}

