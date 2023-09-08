//
//  RatingView.swift
//  SwiftUIRayWender
//
//  Created by Asaduzzaman Shuvro on 8/9/23.
//

import SwiftUI

struct RatingView: View {
    var body: some View {
        HStack {
            ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                Image(systemName: "waveform.path.ecg")
                    .foregroundColor(.gray)
                    .font(.largeTitle)
            }
        }
    }
}

struct RatingView_Previews: PreviewProvider {
    static var previews: some View {
        RatingView()
            .previewLayout(.sizeThatFits)
    }
}
