//
//  ContentView.swift
//  Magic8
//
//  Created by Heethasha on 19/2/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var currentPrediction = ""
    let choicesArray = [
        "It is certain",
        "It is decidedly so",
        "Without a doubt",
        "Yes, definitely",
        "You may rely on it",
        "As I see it, yes",
        "Most likely",
        "Outlook good",
        "Yes",
        "Signs point to yes",
        "Reply hazy try again",
        "Ask again later",
        "Better not tell you now",
        "Cannot predict now",
        "Concentrate and ask again",
        "Don't count on it",
        "My reply is no",
        "My sources say no",
        "Outlook not so good",
        "Very doubtful"
    ]
    var body: some View {
        VStack {
            ZStack {
                Image("predict-ball-image")
                    .resizable()
                    .scaledToFit()
                
                ZStack {
                    Circle()
                        .foregroundStyle(.indigo)
                        .frame(width: 140, height: 140)
                    
                    Text(currentPrediction)
                        .foregroundStyle(.white)
                        .fontWeight(.heavy)
                        .multilineTextAlignment(.center)
                        .animation(.default, value: currentPrediction)
                    
                }
                .frame(width: 140, height: 140)
                .padding(.bottom, 34)
            }
                Button("Predict!") {
                   currentPrediction = choicesArray.randomElement() ?? "Something went wrong!"
                }
                .font(.title2)
                .buttonStyle(.bordered)
                .tint(.indigo)
                
            }
            
            .padding()
        }
    }

#Preview {
    ContentView()
}
