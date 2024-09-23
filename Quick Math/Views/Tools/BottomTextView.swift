//
//  BottomTextView.swift
//  Quick Math
//
//  Created by Taylor Tran on 9/22/24.
//

import Foundation
import SwiftUI

struct BottomTextView: View {
    let str: String
    
    var body: some View {
        HStack {
            Spacer()
            Text(str)
                .font(.body)
                .bold()
                .padding()
            Spacer()
        }
        .background(GameColor.accentColor)
    }
}

struct BottomTextView_preview: PreviewProvider {
    static var previews: some View {
        BottomTextView(str: "Test")
    }
}
