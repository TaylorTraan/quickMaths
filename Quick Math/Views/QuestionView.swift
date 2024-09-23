//
//  QuestionView.swift
//  Quick Math
//
//  Created by Taylor Tran on 9/23/24.
//

import Foundation
import SwiftUI

//Going to handle displaying questions from GameView
struct QuestionView: View {
    //Constants
    @EnvironmentObject var viewModel: GameViewModel
    let question: Question
    
    
    var body: some View {
        VStack {
            Text(question.questionText)
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
            
            Spacer()
            
            HStack{
                ForEach(0..<question.possibleAnswers.count, id: \.self) {answerIndex in
                    Button {
                        print("Tapped on choice \(answerIndex): \(question.possibleAnswers[answerIndex])")
                        viewModel.makeGuess(atIndex: answerIndex)
                    } label: {
                        ChoiceTextView(choiceText: question.possibleAnswers[answerIndex])
                            .background(viewModel.color(forOptionIndex: answerIndex))
                    }
                    .disabled(viewModel.guessWasMade)
                }
            }
            
            if viewModel.guessWasMade {
                Button {
                    viewModel.displayNextScreen()
                } label: {
                    BottomTextView(str: "Next")
                }

            }
        }
    }
}

struct QuestionView_previews: PreviewProvider {
    static var previews: some View {
        let viewModel = GameViewModel()
        QuestionView(question: GameModel().currentQuestion)
            .environmentObject(viewModel)
    }
}
