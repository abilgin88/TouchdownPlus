//
//  ContentView.swift
//  TouchdownPlus
//
//  Created by Abdullah Bilgin on 9/8/23.

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
                
                Spacer()
                
                // MARK: - Footer
                FooterView()
                    .padding(.horizontal)
            } // End of VStack
            .background(colorBackground.ignoresSafeArea(.all, edges: .all))
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
