//
//  FilmItem.swift
//  FilmlerApp
//
//  Created by beyyzgur on 27.06.2025.
//

import SwiftUI

struct FilmItem: View {
    var film = Filmler()
    var genislik = 0.0
    
    var body: some View {
        VStack(spacing: 5){
            Image(film.resim!).resizable().frame(width: genislik)
            
            HStack(){
                Text("$\(film.fiyat!)").font(.system(size: 20)).foregroundStyle(.black)
                Button("Sepete Ekle"){
                    print("\(film.ad!) sepete eklendi.")
                }
                .padding(5)
                .font(.system(size: 20))
                .foregroundStyle(.white)
                .background(.indigo)
                .cornerRadius(5)
                .padding(.bottom, 5)
            }
        }
        .background(Rectangle().fill(Color.white).shadow(radius: 3))
        
        
    }
}

//Preview'ı sildim çünkü nesne tabanlı çalışacağımız için bazı hatalar verebilir.
