//
//  ScoreViewModel.swift
//  Quick Math
//
//  Created by Taylor Tran on 9/23/24.
//

import Foundation
import SwiftUI

struct ScoreViewModel {
    let correctGuesses: Int
    let incorrectGuesses: Int
    
    var percentage: Int {
        (correctGuesses * 100) / (correctGuesses + incorrectGuesses)
    }
    
}
