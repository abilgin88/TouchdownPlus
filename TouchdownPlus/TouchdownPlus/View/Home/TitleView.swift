//
//  TitleView.swift
//  TouchdownPlus
//
//  Created by Abdullah Bilgin on 9/20/23.
//

import SwiftUI

struct TitleView: View {
    
    // MARK: - Properties
    
    var title: String
    
    // MARK: - Body
    
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
            Spacer()
        } // End of HStack
        .padding(.horizontal)
        .padding(.top, 15)
        .padding(.bottom, 10)
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "Helmet")
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}

