//
//  welcomeView.swift
//  Quick Math
//
//  Created by Taylor Tran on 9/22/24.
//

import Foundation
import SwiftUI

struct WelcomeView: View {
    
    var body: some View {
        NavigationView {
            ZStack {
                
                GameColor.mainColor.ignoresSafeArea()
                VStack {
                    Text("Welcome to Quick Math")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .padding(.top, 50)
                    
                    Spacer()
                    
                    Image(systemName: "cloud.bolt")
                    //most common image arrangements
                        .resizable() // Make image resizable
                        .aspectRatio(contentMode: .fit) // Maintain aspect ratio
                        .frame(width: 100, height: 100)
                        //.clipped()
                    
                    Spacer()
                    
                    NavigationLink {
                        GameView()
                    } label: {
                        HStack {
                            Spacer()
                            Text("Start")
                                .font(.body)
                                .bold()
                                .padding()
                            Spacer()
                        }
                        .background(GameColor.accentColor)
                    }
                } //Vstack
                .foregroundColor(.white)
            } //Zstack
        } //NavigationView
    } // Body
} //struct


struct WelcomeView_preview: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
