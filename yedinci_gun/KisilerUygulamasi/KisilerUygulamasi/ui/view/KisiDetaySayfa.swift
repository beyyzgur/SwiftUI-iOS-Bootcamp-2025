//
//  KisiDetay.swift
//  KisilerUygulamasi
//
//  Created by beyyzgur on 24.06.2025.
//

import SwiftUI

struct KisiDetaySayfa: View {
    @State private var tfKisiAd = ""
    @State private var tfKisiTel = ""
    
    var kisi = Kisiler()
    
    func guncelle(kisi_id: Int, kisi_ad: String, kisi_tel: String){
        print("Kişi Güncelle : \(kisi_id) & \(kisi_ad) & \(kisi_tel)")
    }
    
    var body: some View {
        VStack(spacing: 10){
            
            TextField("Kişi Ad", text: $tfKisiAd)
                .textFieldStyle(RoundedBorderTextFieldStyle()).padding()
            
            TextField("Kişi Tel", text: $tfKisiTel)
                .textFieldStyle(RoundedBorderTextFieldStyle()).padding()
            
            Button("Güncelle"){
                guncelle(kisi_id: kisi.kisi_id!, kisi_ad: tfKisiAd, kisi_tel: tfKisiTel)
            }
            
        }.navigationTitle("Kişi Detay")
            .onAppear{
                tfKisiAd = kisi.kisi_ad!
                tfKisiTel = kisi.kisi_tel!
            }
    }
}

#Preview {
    KisiDetaySayfa()
}
