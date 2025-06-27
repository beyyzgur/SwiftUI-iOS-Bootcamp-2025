//
//  ContentView.swift
//  KisilerUygulamasi
//
//  Created by beyyzgur on 24.06.2025.
//

import SwiftUI

struct Anasayfa: View {
    @State private var aramaKelimesi = ""
    @State private var kisilerListesi = [Kisiler]()
    
    var body: some View {
        NavigationStack{
            List {
                ForEach(kisilerListesi){ kisi in
                    NavigationLink(destination: KisiDetaySayfa(kisi: kisi)){
                        KisilerSatir(kisi: kisi)
                    }
                }
                .onDelete(perform: sil)
            }.navigationTitle("Kişiler")
                .toolbar{
                    ToolbarItem(placement: .navigationBarTrailing){
                        NavigationLink(destination: KisiKayitSayfa()){ //Navlink olarak tanımladık cunku sayfa gecisi yapmasını istiyorum
                            Image(systemName: "plus")
                        }
                    }
                }
                .onAppear{
                    var liste = [Kisiler]()
                    let k1 = Kisiler(kisi_id: 1, kisi_ad: "Beyza", kisi_tel: "7777")
                    let k2 = Kisiler(kisi_id: 2, kisi_ad: "Emre", kisi_tel: "9999")
                    let k3 = Kisiler(kisi_id: 3, kisi_ad: "Yunus", kisi_tel: "4444")
                    liste.append(k1)
                    liste.append(k2)
                    liste.append(k3)
                    kisilerListesi = liste
                    print("Anasayfaya dönüldü")
                    
                }
        }
        .searchable(text: $aramaKelimesi, prompt: "Ara")
        .onChange(of: aramaKelimesi) { _, sonuc in
            print("Kişi ara : \(sonuc)")
        }
    }
    
    func sil(at offsets: IndexSet) {
        let kisi = kisilerListesi[offsets.first!]
        kisilerListesi.remove(at: offsets.first!)
        print("Kişi Sil : \(kisi.kisi_ad!)")
    }
    
}

#Preview {
    Anasayfa()
}
