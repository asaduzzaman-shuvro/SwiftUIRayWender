//
//  HistoryView.swift
//  SwiftUIRayWender
//
//  Created by Asaduzzaman Shuvro on 8/9/23.
//

import SwiftUI

struct HistoryView: View {
    let today = Date()
    let yesterday = Date().addingTimeInterval(-86400)
    let exercises1 = ["Squat", "Step Up", "Burpee", "Sun Salute"]
    let exercises2 = ["Squat", "Step Up", "Burpee"]
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            VStack {
                Text("History")
                    .font(.title)
                .padding()
                Form {
                    Section(header: Text(today.formatted(as: "MMM d"))
                        .font(.headline)) {
                            ForEach(exercises1, id: \.self) { exercise in
                                Text(exercise)
                            }
                    }
                    
                    Section(header: Text(yesterday.formatted(as: "MMM d"))
                        .font(.headline)
                    ) {
                        ForEach(exercises2, id: \.self) { exercise in
                            Text(exercise)
                        }
                    }
                }
            }
            Button {
                
            } label: {
                Image(systemName: "xmark.circle")
            }
            .font(.title)
            .padding(.trailing)

        }
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView()
    }
}
