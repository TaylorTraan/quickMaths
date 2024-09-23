//
//  ContentView.swift
//  Quick Math
//
//  Created by Taylor Tran on 9/21/24.
//

import SwiftUI

struct GameView: View {
    //HERE WE ADD OUR CONSTANTS FOR THE APP
    @StateObject var viewModel = GameViewModel() //the brains of our GameView
    
    //Body is what we'll add to the screen
    var body: some View {
        ZStack{
            GameColor.mainColor.ignoresSafeArea()
            VStack {
                Text(viewModel.questionProgressText)
                    .font(.callout)
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                    .padding()
            
                Spacer() //pushes text to the top of the Vstack
                
                QuestionView(question: viewModel.currentQuestion)
                
                
            } //End of Vstack
            .foregroundColor(Color.white)
            .navigationBarHidden(true)
            .environmentObject(viewModel)
        } //End of Zstack
        .background(
            NavigationLink(destination: ScoreView(viewModel: ScoreViewModel(correctGuesses: viewModel.correctGuesses,
                                                                            incorrectGuesses: viewModel.incorrectGuesses)),
            isActive: .constant(viewModel.gameIsOver)
            , label: {EmptyView()}
                          ) //destination: This is where the application will navigate to when the game is over
                            //isActive: This configures the navigationLink to monitor the new gameIsOver property you added to the GameViewModel.  When the game is over, the constant is true and the scoreview will be presented
                            //label: The label is assigned to a special view EmptyView.  Does not display anything to the screen so the player does not see the navigation at all, the NavigationLink observes invisibly from the background
        )
    }
}

struct GameView_preview: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
