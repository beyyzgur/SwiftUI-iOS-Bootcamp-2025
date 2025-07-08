//
//  ContentView.swift
//  KisilerUygulamasi
//
//  Created by beyyzgur on 24.06.2025.
//

import SwiftUI

struct Anasayfa: View {
    @State private var aramaKelimesi = ""
    
    @ObservedObject private var anasayfaViewModel = AnasayfaViewModel()
    
    var body: some View {
        NavigationStack{
            List {
                ForEach(anasayfaViewModel.kisilerListesi){ kisi in
                    NavigationLink(destination: KisiDetay(kisi: kisi)){
                        KisilerSatir(kisi: kisi)
                    }
                }
                .onDelete(perform: sil)
            }.navigationTitle("Kişiler")
                .toolbar{
                    ToolbarItem(placement: .navigationBarTrailing){
                        NavigationLink(destination: KisiKayit()){ //Navlink olarak tanımladık cunku sayfa gecisi yapmasını istiyorum
                            Image(systemName: "plus")
                        }
                    }
                }
                .onAppear{
                    anasayfaViewModel.kisileriYukle()
                    
                }
        }
        .searchable(text: $aramaKelimesi, prompt: "Ara")
        .onChange(of: aramaKelimesi) { _, sonuc in
            anasayfaViewModel.ara(aramaKelimesi: sonuc)
        }
    }
    
    func sil(at offsets: IndexSet) {
        let kisi = anasayfaViewModel.kisilerListesi[offsets.first!]
        anasayfaViewModel.kisilerListesi.remove(at: offsets.first!)
        anasayfaViewModel.sil(kisi_id: kisi.kisi_id!)
    }
    
}

#Preview {
    Anasayfa()
}
