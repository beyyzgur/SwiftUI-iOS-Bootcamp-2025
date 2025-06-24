//
//  Chip.swift
//  PizzApp
//
//  Created by beyyzgur on 21.06.2025.
//

import SwiftUI

struct Chip: View {
    var icerik = ""
    var body: some View {
        Button(icerik){
            
        }.padding(10)
            .foregroundStyle( Color("yaziRenk1"))
            .background(Color("anaRenk"))
            .cornerRadius(15)
    }
}

#Preview {
    Chip()
}
