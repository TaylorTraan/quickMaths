//
//  ContentView.swift
//  Quick Math
//
//  Created by Taylor Tran on 9/21/24.
//

import SwiftUI

struct GameView: View {
    //HERE WE ADD OUR CONSTANTS FOR THE APP
    @State private var mainColor = GameColor.mainColor
    
    let question = Question(questionText: "What was the first computer bug?", possibleAnswers: ["Ant", "Moth", "Fly", "Beetle"], correctAnswerIndex: 1)
    
    //Body is what we'll add to the screen
    var body: some View {
        ZStack{
            mainColor.ignoresSafeArea()
            VStack {
                Text("1 of 10")
                    .font(.callout)
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                    .padding()
                Text(question.questionText)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
            
                Spacer() //pushes text to the top of the Vstack
                
                HStack {
                    //ForEach loop to create buttons because every new view(button) must have unique identifier
                    ForEach(0..<question.possibleAnswers.count, id: \.self) { answerIndex in
                        Button {
                            print("Tapped on Choice \(answerIndex) : \(question.possibleAnswers[answerIndex])")
                            mainColor = answerIndex == question.correctAnswerIndex ? .green : .red
                        } label: {
                            ChoiceTextView(choiceText: question.possibleAnswers[answerIndex])
                        }
                    }
                } //end of Hstack
                
                
            } //End of Vstack
            .foregroundColor(Color.white)
        } //End of Hstack
    }
}

#Preview {
    GameView()
}
