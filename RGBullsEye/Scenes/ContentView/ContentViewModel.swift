//
//  ContentViewModel.swift
//  RGBullsEye
//
//  Created by Silvia España on 20/10/21.
//

import Foundation
import SwiftUI

class ContentViewModel: ObservableObject {
    
    //Variables
    
    let rTarget = Double.random(in: 0..<1)
    let gTarget = Double.random(in: 0..<1)
    let bTarget = Double.random(in: 0..<1)
    
    @Published var rGuess: Double
    @Published var gGuess: Double
    @Published var bGuess: Double
    
    init() {
        
        rGuess = 0.5
        gGuess = 0.5
        bGuess = 0.5
    }
    
    
    //Methods
    
    func computeScore() -> Int {
        
        let rDiff = rGuess - rTarget
        let gDiff = gGuess - gTarget
        let bDiff = bGuess - bTarget
        let diff = sqrt(rDiff * rDiff + gDiff * gDiff + bDiff * bDiff)
        return Int((1.0 - diff) * 100.0 + 0.5)
    }
    
    func resetGuessNumber() {
        rGuess = 0.5
        gGuess = 0.5
        bGuess = 0.5
    
    }
    
}

