//
//  KisiKayit.swift
//  KisilerUygulamasi
//
//  Created by beyyzgur on 24.06.2025.
//

import SwiftUI

struct KisiKayit: View {
    @State private var tfKisiAd = ""
    @State private var tfKisiTel = ""
    
    var kisiKayitViewModel = KisiKayitViewModel()
    
    var body: some View {
        VStack(spacing: 10){
            
            TextField("Kişi Ad", text: $tfKisiAd)
                .textFieldStyle(RoundedBorderTextFieldStyle()).padding()
            
            TextField("Kişi Tel", text: $tfKisiTel)
                .textFieldStyle(RoundedBorderTextFieldStyle()).padding()
            
            Button("Kaydet"){
                kisiKayitViewModel.kaydet(kisi_ad: tfKisiAd, kisi_tel: tfKisiTel)
            }
            
        }.navigationTitle("Kişi Kayıt")
    }
}

#Preview {
    KisiKayit()
}
