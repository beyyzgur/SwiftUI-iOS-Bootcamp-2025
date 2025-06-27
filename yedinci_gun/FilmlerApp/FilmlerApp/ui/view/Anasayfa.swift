//
//  ContentView.swift
//  FilmlerApp
//
//  Created by beyyzgur on 27.06.2025.
//

import SwiftUI

struct Anasayfa: View {
    @State private var filmlerListesi = [Filmler]()
    
    var body: some View {
        
        GeometryReader { geometry in
            // padding : 10
            // item arassı bosluk : 20
            // 10 + item + 20 + item + 10 = 40 + 2 item = genislik => item = (genislik - 40) / 2
            let ekranGenislik = geometry.size.width
            let itemGenislik = (ekranGenislik - 40) / 2
            
            NavigationStack {
                ScrollView {
                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 20){
                        ForEach(filmlerListesi){ film in
                            NavigationLink(destination: DetaySayfa(film: film)){
                                FilmItem(film: film, genislik: itemGenislik)
                            }
                            
                        }
                    }
                    
                }
                .padding(10)
                .navigationTitle("Filmler")
                .onAppear() {
                    var liste = [Filmler]()
                    
                    let f1 = Filmler(id: 1, ad: "Django", resim: "django", fiyat: 24)
                    let f2 = Filmler(id: 2, ad: "Interstellar", resim: "interstellar", fiyat: 32)
                    let f3 = Filmler(id: 3, ad: "Inception", resim: "inception", fiyat: 16)
                    let f4 = Filmler(id: 4, ad: "The Hateful Eight", resim: "thehatefuleight", fiyat: 28)
                    let f5 = Filmler(id: 5, ad: "The Pianist", resim: "thepianist", fiyat: 18)
                    let f6 = Filmler(id: 6, ad: "Anadoluda", resim: "anadoluda", fiyat: 10)
                    liste.append(f1)
                    liste.append(f2)
                    liste.append(f3)
                    liste.append(f4)
                    liste.append(f5)
                    liste.append(f6)
                    filmlerListesi = liste
                }
            }
        }
        
    }
}

#Preview {
    Anasayfa()
}
