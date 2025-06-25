//
//  ContentView.swift
//  CalismaYapisi
//
//  Created by beyyzgur on 21.06.2025.
//

import SwiftUI

struct Anasayfa: View {
    @State private var oyunEkranınaGecis = false // @State → Bu değişkenin arayüzle bağlı olduğunu belirtir. Yani değeri değişince SwiftUI arayüzü otomatik günceller.
    
    init(){
        print("init methodu çalıştı.")
    }
    
    var body: some View {
        
        NavigationStack {
            VStack {
        
                Button("BAŞLA"){
                    oyunEkranınaGecis = true
                }

            }
            .toolbar{
                ToolbarItemGroup(placement: .navigationBarTrailing){
                    Button("Ayarlar"){
                        print("ayarlar tıklandı.")
                    }
                    
                    Button{
                        print("artı tıklandı.")
                    }
                     label: {
                         Image(systemName: "plus")
                    }
                }
                ToolbarItem(placement: .navigationBarLeading){
                    Button("Geri"){
                        print("heri tıklandı")
                    }
                }
                
            }
            .navigationTitle("Anasayfa")
                .navigationDestination(isPresented: $oyunEkranınaGecis){
                    let kisi = Kisiler(isim: "Emre", yas: 23, boy: 1.80, bekarMi: false)
                    OyunEkrani(kisi: kisi)
                }
                .onAppear(){ // sayfa her göründüğünde çalışır.
                    print("onAppear methodu çalıştı.")
                }
                .onDisappear(){ // sayfa her görünmez olduğunda çalışır.
                    print("onDisappear methodu çalıştı.")
                }
        }
    }
}

#Preview {
    Anasayfa()
}
