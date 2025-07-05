//
//  ContentView.swift
//  MVVMKullanimi
//
//  Created by beyyzgur on 4.07.2025.
//

import SwiftUI

struct Anasayfa: View {
    @State private var tf1 = ""
    @State private var tf2 = ""
    
    @ObservedObject private var viewModel = AnasayfaViewModel()
    
    var body: some View {
        VStack(spacing: 50){
            Text("Result : \(viewModel.sonuc)").font(.system(size: 50))
            
            TextField("Enter first number", text: $tf1)
                .textFieldStyle(RoundedBorderTextFieldStyle()).padding()
            TextField("Enter second number", text: $tf2)
                .textFieldStyle(RoundedBorderTextFieldStyle()).padding()
            
            HStack(spacing: 50){
                Button("Addition"){
                    viewModel.toplamaYap(alinanSayi1: tf1, alinanSayi2: tf2)
                }
                
                
                
                Button("Multiplication"){
                    viewModel.carpmaYap(alinanSayi1: tf1, alinanSayi2: tf2)
                }
            }
            
        }
        .padding()
    }
}

#Preview {
    Anasayfa()
}
