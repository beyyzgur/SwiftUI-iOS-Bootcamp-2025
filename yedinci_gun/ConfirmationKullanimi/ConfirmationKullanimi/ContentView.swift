//
//  ContentView.swift
//  ConfirmationKullanimi
//
//  Created by beyyzgur on 26.06.2025.
//

import SwiftUI

struct ContentView: View {
    @State private var dialogue = false
    
    var body: some View {
        
            Button("Delete me"){
                dialogue = true
            }.confirmationDialog("", isPresented: $dialogue){
                Button("Delete", role: .destructive){
                    print("Clicked Delete Button")
                }
                Button("Cancel", role: .cancel){
                    print("Clicked Cancel Button")
                }
            } message: {
                Text("Do you really wanna delete?")
            }
    }
}

#Preview {
    ContentView()
}
