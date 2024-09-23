//
//  Quick_MathApp.swift
//  Quick Math
//
//  Created by Taylor Tran on 9/21/24.
//

import SwiftUI

@main
struct Quick_MathApp: App {
    var body: some Scene {
        WindowGroup {
            WelcomeView()
        }
    }
}

struct app_preview: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
