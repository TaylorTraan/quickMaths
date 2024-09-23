//
//  game.swift
//  Quick Math
//
//  Created by Taylor Tran on 9/22/24.
//

import Foundation

struct GameModel {
    
    private let questions: [Question] = Question.allQuestions.shuffled()
    private(set) var guesses: [Question: Int] = [:]
    private(set) var currentQuestionIndex: Int = 0
    private(set) var isOver: Bool = false
    
    
    var currentQuestion: Question {
            questions[currentQuestionIndex]
        }
    
    var numberOfQuestions: Int {
        questions.count
    }
    
    var guessCount: (correct: Int, incorrect: Int) {
        var count: (correct: Int, incorrect: Int) = (0, 0)
        for (question, guessedIndex) in guesses {
            if question.correctAnswerIndex == guessedIndex {
                count.correct += 1
            } else {
                count.incorrect += 1
            }
        }
        return count
    }
    
    mutating func makeGuessForCurrentQuestion(atIndex index: Int) {
        guesses[currentQuestion] = index
    }
    
    mutating func updateGameStatus() {
        if currentQuestionIndex < questions.count-1 {
            currentQuestionIndex += 1
        } else {
            isOver = true
        }
    }
    
    
}
