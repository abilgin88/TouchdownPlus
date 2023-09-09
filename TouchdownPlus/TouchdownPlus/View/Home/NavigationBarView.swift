//
//  NavigationBarView.swift
//  TouchdownPlus
//
//  Created by Abdullah Bilgin on 9/9/23.
//

import SwiftUI

struct NavigationBarView: View {
    // MARK: - Properties
    
    @State private var isAnimated: Bool = false
    
    // MARK: - Body
    var body: some View {
        HStack {
            // MARK: - Search Button
            Button(action: {}, label: {
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundColor(.black)
            }) // End of Button
            
            Spacer()
            
            // MARK: - Logo
            LogoView()
                .opacity(isAnimated ? 1 : 0)
                .offset(x: 0, y: isAnimated ? 0 : -25)
                .onAppear(perform: {
                    withAnimation(.easeOut(duration: 0.5)) {
                        isAnimated.toggle()
                    }
                })
            
            Spacer()
            
            // MARK: - Cart Button
            ZStack {
                Button(action: {}, label: {
                    Image(systemName: "cart")
                        .font(.title)
                        .foregroundColor(.black)
                }) // End of Button
                
                // MARK: - Cart Badge
                Circle()
                    .fill(Color.red)
                    .frame(width: 14, height: 14, alignment: .center)
                    .offset(x: 13, y: -10)
            } // End of Zstack
        } // End of HStack
    }
}

// MARK: - Preview
struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
