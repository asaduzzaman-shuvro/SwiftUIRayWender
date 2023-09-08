//
//  ContentView.swift
//  SwiftUIRayWender
//
//  Created by Asaduzzaman Shuvro on 7/9/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            WelcomeView()
            
            ForEach(0..<4) { index in
                ExerciseView(index: index)
            }
            
            Text("Exercise 2")
                .tabItem {
                    Text("Exercise 2")
                }
        }
        .tabViewStyle(
            PageTabViewStyle(indexDisplayMode: .never)
        )
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
