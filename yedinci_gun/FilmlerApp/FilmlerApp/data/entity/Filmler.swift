//
//  Filmler.swift
//  FilmlerApp
//
//  Created by beyyzgur on 27.06.2025.
//

import Foundation

class Filmler : Identifiable {
    var id: Int?
    var ad: String?
    var resim: String?
    var fiyat: Int?
    
    init(){}
    
    init(id: Int, ad: String, resim: String, fiyat: Int) {
        self.id = id
        self.ad = ad
        self.resim = resim
        self.fiyat = fiyat
    }
}
