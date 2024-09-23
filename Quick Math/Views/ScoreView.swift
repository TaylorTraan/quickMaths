//
//  ScoreView.swift
//  Quick Math
//
//  Created by Taylor Tran on 9/23/24.
//

import Foundation
import SwiftUI

struct ScoreView: View {
    let viewModel: ScoreViewModel
    
    var body: some View {
        ZStack {
            GameColor.mainColor
                .ignoresSafeArea()
            VStack {
                
                Spacer()
                
                Text("Final Score")
                    .font(.body)
                Text("\(viewModel.percentage)")
                    .font(.system(size:50))
                    .fontWeight(.bold)
                    .padding()
                
                Spacer()
                
                VStack {
                    Text("\(viewModel.correctGuesses)✅")
                    Text("\(viewModel.incorrectGuesses)❌")
                }
                .font(.system(size: 30))
                
                Spacer()
                
                
                NavigationLink (
                    destination: WelcomeView(),
                    label: {
                        BottomTextView(str: "Re-take Quiz")
                    })
            }
            .foregroundColor(.white)
            .navigationBarHidden(true)
        }
    }
}

struct ScoreView_preview: PreviewProvider {
    static var previews: some View {
        ScoreView(viewModel: ScoreViewModel(correctGuesses: 8,
                                            incorrectGuesses: 2))
    }
}
