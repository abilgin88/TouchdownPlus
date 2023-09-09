//
//  LogoView.swift
//  TouchdownPlus
//
//  Created by Abdullah Bilgin on 9/9/23.
//

import SwiftUI

struct LogoView: View {
    
    // Mark: - Body
    var body: some View {
        HStack(spacing: 4) {
            // Text "Touch"
            Text("Touch".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
            
            // Logo Image
            Image("logo-dark")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30, alignment: .center)
            
            // Text "Down"
            Text("Down".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
        } // End of HStack
    }
}

// MARK: - Preview
struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

