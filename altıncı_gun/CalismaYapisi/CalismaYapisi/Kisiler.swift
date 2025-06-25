//
//  Kisiler.swift
//  CalismaYapisi
//
//  Created by beyyzgur on 21.06.2025.
//

import Foundation

class Kisiler{
    var isim: String?
    var yas: Int?
    var boy: Double?
    var bekarMi: Bool?
    
    init() {}
    
    init(isim: String, yas: Int, boy: Double, bekarMi: Bool) {
        self.isim = isim
        self.yas = yas
        self.boy = boy
        self.bekarMi = bekarMi
    }
}
