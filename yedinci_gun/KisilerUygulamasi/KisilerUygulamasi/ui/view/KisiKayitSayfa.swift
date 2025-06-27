//
//  KisiKayit.swift
//  KisilerUygulamasi
//
//  Created by beyyzgur on 24.06.2025.
//

import SwiftUI

struct KisiKayitSayfa: View {
    @State private var tfKisiAd = ""
    @State private var tfKisiTel = ""
    
    func kaydet(kisi_ad: String, kisi_tel: String){
        print("Kişi Kaydet : \(kisi_ad) & \(kisi_tel)")
    }
    
    var body: some View {
        VStack(spacing: 10){
            
            TextField("Kişi Ad", text: $tfKisiAd)
                .textFieldStyle(RoundedBorderTextFieldStyle()).padding()
            
            TextField("Kişi Tel", text: $tfKisiTel)
                .textFieldStyle(RoundedBorderTextFieldStyle()).padding()
            
            Button("Kaydet"){
                kaydet(kisi_ad: tfKisiAd, kisi_tel: tfKisiTel)
            }
            
        }.navigationTitle("Kişi Kayıt")
    }
}

#Preview {
    KisiKayitSayfa()
}
