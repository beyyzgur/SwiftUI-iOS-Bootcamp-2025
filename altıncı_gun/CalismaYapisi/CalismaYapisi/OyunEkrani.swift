//
//  OyunEkrani.swift
//  CalismaYapisi
//
//  Created by beyyzgur on 21.06.2025.
//

import SwiftUI

struct OyunEkrani: View {
    @Environment(\.presentationMode) var pm
    @State private var sonucEkranınaGecis = false
    
    var kisi = Kisiler()
    
    var body: some View {
        
        VStack(spacing: 100) {
                Text("| \(kisi.isim!) | \(kisi.yas!) | \(kisi.boy!) | \(kisi.bekarMi!) |")
            Button("BİTTİ"){
                sonucEkranınaGecis = true
            }
        
            Button("GERİ"){
                pm.wrappedValue.dismiss() // dismissle geriye döndürdük
            }
            
        }.navigationTitle("Oyun Ekranı")
            .sheet(isPresented: $sonucEkranınaGecis){
                SonucEkrani()
            }
    }
}
