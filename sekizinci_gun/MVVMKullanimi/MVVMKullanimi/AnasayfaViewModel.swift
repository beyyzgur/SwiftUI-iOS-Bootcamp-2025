//
//  AnasayfaViewModel.swift
//  MVVMKullanimi
//
//  Created by beyyzgur on 5.07.2025.
//

import Foundation
class AnasayfaViewModel : ObservableObject {
    @Published var sonuc = "0"
    
    func toplamaYap(alinanSayi1: String, alinanSayi2: String){
        if let sayi1 = Int(alinanSayi1), let sayi2 = Int(alinanSayi2) {
            let toplam = sayi1 + sayi2
            sonuc = String(toplam)
        }
    }
    
    func carpmaYap(alinanSayi1: String, alinanSayi2: String){
        if let sayi1 = Int(alinanSayi1), let sayi2 = Int(alinanSayi2) {
            let toplam = sayi1 * sayi2
            sonuc = String(toplam)
        }
    }
}
