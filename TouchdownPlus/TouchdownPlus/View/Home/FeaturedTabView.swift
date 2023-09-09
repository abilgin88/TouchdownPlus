//
//  FeaturedTabView.swift
//  TouchdownPlus
//
//  Created by Abdullah Bilgin on 9/9/23.
//

import SwiftUI

struct FeaturedTabView: View {
    
    // Mark: - Body
    var body: some View {
        // MARK: - TabView for Featured Items
        TabView {
            // MARK: - Featured Item Loop
            ForEach(players) { player in
                FeaturetItemView(player: player) // Display each featured item
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
            }
        } // End of TabView
        
        // MARK: - TabView Style
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

// Mark: - Preview

struct FeaturedTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedTabView()
            .background(Color.gray) // Set a gray background for the preview
    }
}

