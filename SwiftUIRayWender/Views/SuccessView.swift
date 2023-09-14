//
//  SuccessView.swift
//  SwiftUIRayWender
//
//  Created by Asaduzzaman Shuvro on 14/9/23.
//

import SwiftUI

struct SuccessView: View {
    var body: some View {
        VStack(alignment: .center) {
            Image(systemName: "hand.raised.fill")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fill)
                .foregroundColor(Color.purple)
                .frame(width: 175, height: 175)
                .font(.largeTitle)
            .scaledToFill()
            Text("High Five")
                .padding(EdgeInsets(top: 30, leading: .zero, bottom: .zero, trailing: .zero))
                .font(.system(size: 80, weight: .bold))
            Text("Good job completing all four exercise! Remember tomorrow's another day. So eat well and get some rest.")
            
        }
    }
}

struct SuccessView_Previews: PreviewProvider {
    static var previews: some View {
        SuccessView()
    }
}
