//
//  GameViewModel.swift
//  Quick Math
//
//  Created by Taylor Tran on 9/23/24.
//

import Foundation
import SwiftUI

class GameViewModel: ObservableObject {
    
    //emits events when changes are made to our GameModel
    //wrapped in @Published so our GameViewModel can notify any observers when changes are made
    @Published private var game = GameModel()
    
    var currentQuestion: Question {
        game.currentQuestion
    }
    
    var questionProgressText: String {
        "\(game.currentQuestionIndex+1) of \(game.numberOfQuestions)"
    }
    
    //Handles guessing
    var guessWasMade: Bool {
        if let _ = game.guesses[currentQuestion] {
            return true
        } else {
            return false
        }
    }
    
    var gameIsOver: Bool {
        game.isOver
    }
    
    var correctGuesses: Int {
        game.guessCount.correct
    }
    
    var incorrectGuesses: Int {
        game.guessCount.incorrect
    }
    
    //Internal Methods
    func makeGuess(atIndex index: Int) {
        game.makeGuessForCurrentQuestion(atIndex: index)
    }
    
    func displayNextScreen() {
        game.updateGameStatus()
    }
    
    func color(forOptionIndex optionIndex: Int) -> Color {
        if let guessedIndex = game.guesses[currentQuestion] {
            if guessedIndex != optionIndex {
                return GameColor.mainColor
            } else if guessedIndex == game.currentQuestion.correctAnswerIndex {
                return GameColor.correctGuess
            } else {
                return GameColor.incorrectGuess
            }
        } else {
            return GameColor.mainColor
        }
    }
    
}
