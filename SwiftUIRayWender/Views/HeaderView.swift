//
//  HeaderView.swift
//  SwiftUIRayWender
//
//  Created by Asaduzzaman Shuvro on 8/9/23.
//

import SwiftUI

struct HeaderView: View {
    let titleText: String
    
    var body: some View {
        VStack {
            Text(titleText)
                .font(.largeTitle)
            HStack {
                Image(systemName: "hand.wave")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
                Image(systemName: "4.circle")
            }.font(.title)
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HeaderView(titleText: "Squat")
                .previewLayout(.sizeThatFits)
            HeaderView(titleText: "Squat")
                .previewLayout(.sizeThatFits)
                .environment(\.sizeCategory, .accessibilityLarge)
                .preferredColorScheme(.dark)
            
        }
    }
}
