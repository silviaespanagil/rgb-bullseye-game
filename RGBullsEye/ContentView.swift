//
//  ContentView.swift
//  RGBullsEye
//
//  Created by Silvia España on 19/10/21.
//

import SwiftUI

struct ContentView: View {
    
    let rTarget = Double.random(in: 0..<1)
    let gTarget = Double.random(in: 0..<1)
    let bTarget = Double.random(in: 0..<1)
    @State var rGuess: Double
    @State var gGuess: Double
    @State var bGuess: Double
    @State var showAlert = false
    @StateObject var viewModel: ContentViewModel
    
    

    func computeScore() -> Int {
      let rDiff = rGuess - rTarget
      let gDiff = gGuess - gTarget
      let bDiff = bGuess - bTarget
      let diff = sqrt(rDiff * rDiff + gDiff * gDiff + bDiff * bDiff)
      return Int((1.0 - diff) * 100.0 + 0.5)
    }

    
    var body: some View {
        
        
        
        VStack{
            HStack {
                VStack {
                    Rectangle()
                        .foregroundColor(Color(red: rTarget, green: gTarget, blue: bTarget, opacity: 1.0))
                    Text("Match this color").font(.footnote)
                }
                
                VStack {
                    Rectangle()
                        .foregroundColor(Color(red: rGuess, green: gGuess, blue: bGuess, opacity: 1.0))
                    HStack {
                      Text("R: \(Int(rGuess * 255.0))")
                      Text("G: \(Int(gGuess * 255.0))")
                      Text("B: \(Int(bGuess * 255.0))")
                            
                    }.font(.footnote)
 
                }
 
            }
            VStack {                 Button(action: {
                    self.showAlert = true

                }) {
                  Text("Validate my match!")
                }
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color.white)
                        .shadow(color: .gray, radius: 2, x: 0, y: 2)
            )
                .buttonStyle(PlainButtonStyle())
                .alert(isPresented: $showAlert) {
                  Alert(title: Text("Your Score"),
                        message: Text("\(computeScore())"),
                        primaryButton: .destructive(Text("New try")){
                      rGuess = 0.5
                      bGuess = 0.5
                      gGuess = 0.5
                  },
                        secondaryButton: .default(Text("Keep trying"))
                  )
                }
            }
            VStack { 
                Text("0")
                    .foregroundColor(.red)
                Slider(value: $rGuess)
                Text("255")
                    .foregroundColor(.red)
                Text("0")
                    .foregroundColor(.green)
                Slider(value: $gGuess)
                Text("255")
                    .foregroundColor(.green)
                Text("0")
                    .foregroundColor(.blue)
                Slider(value: $bGuess)
                Text("255")
                    .foregroundColor(.blue)
            }
            .padding()
        }
        
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(rGuess: 0.5, gGuess: 0.5, bGuess: 0.5, viewModel: ContentViewModel())

    }
}
 
 
