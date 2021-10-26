//
//  ContentView.swift
//  RGBullsEye
//
//  Created by Silvia España on 19/10/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var showAlert = false
    @StateObject var viewModel: ContentViewModel
    
    var body: some View {
        
        VStack{
            
            HStack {
                
                VStack {
                    
                    Rectangle()
                        .foregroundColor(Color(red: viewModel.rTarget, green: viewModel.gTarget, blue: viewModel.bTarget, opacity: 1.0))
                    Text("Match this color").font(.footnote)
                }
                
                VStack {
                    
                    Rectangle()
                        .foregroundColor(Color(red: viewModel.rGuess, green: viewModel.gGuess, blue: viewModel.bGuess, opacity: 1.0))
                    
                    HStack {
                        
                        Text("R: \(Int(viewModel.rGuess * 255.0))")
                        Text("G: \(Int(viewModel.gGuess * 255.0))")
                        Text("B: \(Int(viewModel.bGuess * 255.0))")
                    }.font(.footnote)
                }
            }
            
            VStack {
                
                Button(action: {
                    self.showAlert = true
                    }){
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
                        message: Text("\(viewModel.computeScore())"),
                        primaryButton: .destructive(Text("New try")){
                      viewModel.rGuess = 0.5
                      viewModel.bGuess = 0.5
                      viewModel.gGuess = 0.5
                  },
                        secondaryButton: .default(Text("Keep trying"))
                  )
                }
            }
            VStack { 
                Text("0")
                    .foregroundColor(.red)
                Slider(value: $viewModel.rGuess)
                Text("255")
                    .foregroundColor(.red)
                Text("0")
                    .foregroundColor(.green)
                Slider(value: $viewModel.gGuess)
                Text("255")
                    .foregroundColor(.green)
                Text("0")
                    .foregroundColor(.blue)
                Slider(value: $viewModel.bGuess)
                Text("255")
                    .foregroundColor(.blue)
            }
            .padding()
        }
        
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: ContentViewModel())

    }
}
 
 
