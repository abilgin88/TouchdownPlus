//
//  FeaturetItemView.swift
//  TouchdownPlus
//
//  Created by Abdullah Bilgin on 9/9/23.
//

import SwiftUI

struct FeaturetItemView: View {
    // MARK: - Properties
    let player: Player // The player model to display
    
    // MARK: - Body
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12) // Add a corner radius to the image for rounded corners
    }
}

// Mark: - Preview
struct FeaturetItemView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturetItemView(player: players[0]) // Preview with the first player in the array
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}

