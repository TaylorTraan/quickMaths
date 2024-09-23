//
//  CustomGame.swift
//  Quick Math
//
//  Created by Taylor Tran on 9/22/24.
//

import Foundation
import SwiftUI

struct options {
    let possibleOptions: [Int]
    
    init(possibleOptions: [Int]) {
        self.possibleOptions = possibleOptions
    }
    
}

struct CustomGame: View {
    let timeOptions: options = options(possibleOptions: [5,10,15,20])
    
    var body: some View {
        ZStack {
            GameColor.mainColor
                .ignoresSafeArea()
            
            VStack {
                Text("Customize")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .padding(.top, 20)
                
                Spacer()
                
                Text("Time Per Question")
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                    .padding(.leading)
                    .font(.headline)
                    .fontWeight(.bold)
                
                HStack {
                    ForEach(timeOptions.possibleOptions, id:\.self) { time in
                        Button {
                            print("Tapped on Choice \(time)")
                        } label: {
                            ChoiceTextView(choiceText: "\(time)")
                        }
                    }
                }
                
                Spacer()
                NavigationLink {
                    GameView()
                } label: {
                    BottomTextView(str: "Start")
                }

                    
            }.foregroundColor(.white)
        }
    }
}


struct CustomGame_preview: PreviewProvider {
    static var previews: some View {
        CustomGame()
    }
}
