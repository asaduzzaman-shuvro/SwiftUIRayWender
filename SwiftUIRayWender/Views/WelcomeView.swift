//
//  WelcomeView.swift
//  SwiftUIRayWender
//
//  Created by Asaduzzaman Shuvro on 8/9/23.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack {
            VStack {
                HeaderView(titleText: "Welcome")
                Spacer()
                Button("History") {
                    
                }
                .padding(.bottom)
            }
            VStack {
                HStack {
                    VStack(alignment: .leading) {
                        Text("Get fit")
                            .font(.title)
                        Text("with hight intensity interval training")
                        Button(action: {}) {
                            Text("Get Started")
                            Image(systemName: "arrow.right.circle")
                        }
                        .background(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.gray, lineWidth: 2)
                        )
                    }
                    Image("step-up")
                        .resizable()
                        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                        .frame(width: 240.0, height: 240.0)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                }
            }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
