//
//  ContentView.swift
//  TouchdownPlus
//
//  Created by Abdullah Bilgin on 9/8/23.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Properties
    
    // MARK: - Body
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                // MARK: - Navigation Bar
                NavigationBarView()
                    .padding(.horizontal, 15)
                    .padding(.bottom)
                    .padding(.top, UIApplication.shared.connectedScenes
                        .compactMap { $0 as? UIWindowScene }
                        .first?
                        .windows
                        .first?
                        .safeAreaInsets.top ?? 0)
                    .background(Color.white)
                    .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                
                ScrollView(.vertical, showsIndicators: false, content: {
                    VStack(spacing: 0) {
                        // MARK: - Featured Tab View
                        FeaturedTabView()
                            .frame(minHeight: UIScreen.main.bounds.width / 1.475)
                            .padding(.vertical, 10)
                        
                        // MARK: - Category Grid View
                        CategoryGridView()
                        
                        // MARK: - TitleView for Helmets
                        TitleView(title: "Helmets")
                        
                        // MARK: - Product Grid
                        LazyVGrid(columns: gridLayout, spacing: 15, content: {
                            ForEach(products) { product in
                                ProductItemView(product: product)
                            } // End of Loop
                        }) // End of LazyVGrid
                        .padding(15)
                        
                        // MARK: - Footer
                        FooterView()
                            .padding(.horizontal)
                    } // End of VStack
                }) // End of ScrollView
                .background(colorBackground.ignoresSafeArea(.all, edges: .all))
            } // End of VStack
        } // End of ZStack
        .ignoresSafeArea(.all, edges: .top)
    }
}

// MARK: - Preview

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

