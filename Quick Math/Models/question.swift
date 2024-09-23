//
//  question.swift
//  Quick Math
//
//  Created by Taylor Tran on 9/22/24.
//

import Foundation

struct Question: Hashable {
    let questionText: String
    let possibleAnswers: [String]
    let correctAnswerIndex: Int
    
    static var allQuestions: [Question] = [
        Question(questionText: "What was the first computer bug?",
                 possibleAnswers: ["Ant", 
                                   "Moth",
                                   "Fly",
                                   "Beetle"],
                 correctAnswerIndex: 1),
        Question(questionText: "Who invented the World Wide Web?",
                 possibleAnswers: ["Steve Jobs",
                                   "Linus Torvalds",
                                   "Bill Gates",
                                   "Tim Berners-Lee",
                                  ],
                 correctAnswerIndex: 3),
        Question(questionText: "What was the first object oriented programming language?",
                         possibleAnswers: [
                            "Simula",
                            "Python",
                            "Swift",
                            "C"
                         ],
                         correctAnswerIndex: 0)
    ]
    
}
