//
//  ContentView.swift
//  TasarimCalismasi
//
//  Created by beyyzgur on 21.06.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //leading : left : start
        //trailing : right : end ; for Vertical Stack
        VStack(alignment: .trailing) {
                Rectangle().fill(.red).frame(width: 100, height: 100)
                Rectangle().fill(.green).frame(width: 80, height: 80)
                Rectangle().fill(.blue).frame(width: 50, height:50)
        }
      }
}
#Preview {
    ContentView()
}
