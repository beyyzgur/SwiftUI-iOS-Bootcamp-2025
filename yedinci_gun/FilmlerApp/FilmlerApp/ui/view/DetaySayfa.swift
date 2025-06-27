//
//  DetaySayfa.swift
//  FilmlerApp
//
//  Created by beyyzgur on 27.06.2025.
//

import SwiftUI

struct DetaySayfa: View {
    var film = Filmler()
    
    var body: some View {
        VStack(spacing: 50){
            Image(film.resim!)
            Text("$\(film.fiyat!)")
        }.navigationTitle(film.ad!).font(.title2).font(.system(size: 30))
    }
}
