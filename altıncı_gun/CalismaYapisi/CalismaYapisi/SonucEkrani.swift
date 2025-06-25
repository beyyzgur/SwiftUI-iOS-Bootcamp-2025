//
//  SonucEkrani.swift
//  CalismaYapisi
//
//  Created by beyyzgur on 21.06.2025.
//

import SwiftUI

struct SonucEkrani: View {
    @Environment(\.presentationMode) var pm
    var body: some View {
        VStack(spacing: 100) {
            Text("Sonuç Ekranı").font(.system(size: 20))
            
            Button("KAPAT"){
                pm.wrappedValue.dismiss()
            }
            
        }
    }
}

#Preview {
    SonucEkrani()
}
