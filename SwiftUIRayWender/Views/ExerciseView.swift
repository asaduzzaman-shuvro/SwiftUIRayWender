//
//  ExerciseView.swift
//  SwiftUIRayWender
//
//  Created by Asaduzzaman Shuvro on 8/9/23.
//

import SwiftUI
import AVKit

struct ExerciseView: View {
    
    let videoNames = ["squat", "step-up", "burpee", "sun-salute"]
    let exerciseNames = ["Squat", "Step Up", "Burpee", "Sun Salute"]
    
    let index: Int
    
    var body: some View {
        
        GeometryReader { geometry in
            VStack {
                HeaderView(exerciseName: "\(exerciseNames[index])")
                    .padding(.bottom)
                    .padding(.top)
                
                if let url = Bundle.main.url(
                    forResource: videoNames[index],
                    withExtension: "mp4") {
                    VideoPlayer(player: AVPlayer(url: url))
                        .frame(height: geometry.size.height * 0.45)
                } else {
                    Text("Couldn’t find \(videoNames[index]).mp4")
                        .foregroundColor(.red)
                }
                Text("Timer")
                Text("Start/Done Button")
                Text("Rating")
                Text("History")
            }
        }
    }
}

struct ExerciseView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseView(index: 0)
    }
}


