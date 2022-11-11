//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Brianna Lewis on 11/7/22.
//

import SwiftUI


struct ContentView: View {
    let possibleMoves = ["rock", "paper", "scissors"]
    @State private var currentChoice = "rock"
    @State private var winOrLose = true
    @State private var score = 0
    @State private var round = 0
    @State private var showingAlert1 = false
    @State private var showingAlert2 = false
    @State private var showingAlert3 = false
    @State private var showingAlert4 = false
    @State private var showingAlert5 = false
    @State private var showingAlert6 = false
    @State private var showingAlert7 = false
    @State private var showingAlert8 = false
    @State private var showingAlert9 = false
    @State private var showingAlert = false
    var computerChoice: String {possibleMoves.randomElement()!}
    var body: some View {
    
        VStack {
            Text("Players Score: " + String(score))
                Spacer()
            Image("rockpaperscissors")
            HStack {
                
                Button("🪨"){
                    if computerChoice == "rock"
                    {
                        showingAlert1 = true
                    }
                    else if computerChoice == "scissors"
                    {
                        showingAlert2 = true
                        score += 1
                    }
                    else if computerChoice == "paper"
                    {
                        showingAlert3 = true
                    }
                }
                .alert("It's a tie! Computer played rock", isPresented:$showingAlert1){
                    Button("Next round", role: .cancel){}
                }
                .alert("You win! Computer played scissors", isPresented:$showingAlert2){
                    Button("Next round", role: .cancel){}
                }
                .alert("You lose... Computer played paper", isPresented:$showingAlert3){
                    Button("Next round", role: .cancel){}
                }
                .buttonStyle(.bordered)
                .tint(.mint)
                .controlSize(.large)
                .font(.system(size:70))
                    
                
                Button("📄") {
                if computerChoice == "paper"
                    {
                    showingAlert4 = true
                }
                    else if computerChoice == "rock"
                    {
                        showingAlert5 = true
                        score += 1
                    }
                    else if computerChoice == "scissors"
                    {
                        showingAlert6 = true
                    }
                }
                    .alert("It's a tie! Computer played paper", isPresented:$showingAlert4){
                        Button("Next round", role: .cancel){}
                    }
                    .alert("You win! Computer played rock", isPresented:$showingAlert5){
                        Button("Next round", role: .cancel){}
                    }
                    .alert("You lose... Computer played scissors", isPresented:$showingAlert6){
                        Button("Next round", role: .cancel){}
                    }
                    .buttonStyle(.bordered)
                    .tint(.mint)
                    .controlSize(.large)
                    .font(.system(size:70))
                
                Button("✂️") {
                    if computerChoice == "scissors"
                    {
                        showingAlert7 = true
                    }
                    else if computerChoice == "paper"
                    {
                        showingAlert8 = true
                        score += 1
                    }
                    else if computerChoice == "rock"
                    {
                        showingAlert9 = true
                    }
                }
                .alert("It's a tie! Computer played scissors", isPresented:$showingAlert7){
                    Button("Next round", role: .cancel){}
                }
                .alert("You win! Computer played paper", isPresented:$showingAlert8){
                    Button("Next round", role: .cancel){}
                }
                .alert("You lose... Computer played rock", isPresented:$showingAlert9){
                    Button("Next round", role: .cancel){}
                }
                
                .buttonStyle(.bordered)
                .tint(.mint)
                .controlSize(.large)
                .font(.system(size:70))
                
            }
            
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
