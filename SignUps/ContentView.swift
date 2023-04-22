//
//  ContentView.swift
//  SignUps
//
//  Created by Grace Crowell on 4/15/23.
//

import SwiftUI

struct ContentView: View {
    
   @State private var teamName = ""
    @State private var titleText = "What team are you on?"
    @State private var presentAlert = false
    var body: some View {
        
        ZStack {

            Color(.systemYellow)
                .ignoresSafeArea()
         
            
            VStack (spacing:20){
                
                Text(titleText)
                    .font(.title)
                
                Image("lax")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                TextField("Type team name here...", text: $teamName)
                    .font(.title)
                    .foregroundColor(.red)
                    .multilineTextAlignment(.center)
                    .border(Color.black, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                
                
                Button("Submit Team Name") {
                    titleText = "Congrats on making, \(teamName) lacrosse team!"
                }
                .font(.title2)
                .buttonStyle(.borderedProminent)
                .tint(.purple)
               
                Button("Not on a team?") {
                    presentAlert = true
                    
                Text(presentAlert ? "Presenting":"Dismissed")
                

                }
                Spacer()
            }
            .padding()
            .alert("Check your email.", isPresented: $presentAlert, actions: {})

        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
