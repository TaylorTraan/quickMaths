//
//  Quick_MathComponents.swift
//  Quick Math
//
//  Created by Taylor Tran on 9/22/24.
//

import Foundation
import SwiftUI

struct ChoiceTextView : View {
    let choiceText: String
    
    var body: some View {
        Text(choiceText)
            .font(.body)
            .bold()
            .multilineTextAlignment(.center)
            .padding()
            .border(GameColor.accentColor, width: 4)
    }
}

struct ChoiceTextView_Previews: PreviewProvider {
    static var previews: some View {
        ChoiceTextView(choiceText: "Bat")
    }
}
