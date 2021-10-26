//
//  RGBullsEyeApp.swift
//  RGBullsEye
//
//  Created by Silvia España on 19/10/21.
//

import SwiftUI

@main
struct RGBullsEyeApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(rGuess: 0.5, gGuess: 0.5, bGuess: 0.5, viewModel: ContentViewModel())
        }
    }
}
