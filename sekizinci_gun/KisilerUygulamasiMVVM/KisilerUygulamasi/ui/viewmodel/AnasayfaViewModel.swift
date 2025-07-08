//
//  AnasayfaViewModel.swift
//  KisilerUygulamasi
//
//  Created by beyyzgur on 8.07.2025.
//

import Foundation

class AnasayfaViewModel : ObservableObject {
    
    @Published var kisilerListesi = [Kisiler]() // Published özelliği oldugu için kisilerListesi 'ni anasayfada dinleyebiliyorum.
    
    func kisileriYukle(){
        var liste = [Kisiler]()
        let k1 = Kisiler(kisi_id: 1, kisi_ad: "Beyza", kisi_tel: "7777")
        let k2 = Kisiler(kisi_id: 2, kisi_ad: "Emre", kisi_tel: "9999")
        let k3 = Kisiler(kisi_id: 3, kisi_ad: "Yunus", kisi_tel: "4444")
        liste.append(k1)
        liste.append(k2)
        liste.append(k3)
        
        kisilerListesi = liste // Tetikleme
    }
    
    func ara(aramaKelimesi: String){
        print("Kişi ara : \(aramaKelimesi)")
    }
    
    func sil(kisi_id: Int){
        print("Kişi Sil : \(kisi_id)")
    }
}
