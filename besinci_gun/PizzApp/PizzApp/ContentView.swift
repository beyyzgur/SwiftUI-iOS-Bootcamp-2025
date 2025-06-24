//
//  ContentView.swift
//  PizzApp
//
//  Created by beyyzgur on 21.06.2025.
//

import SwiftUI

struct ContentView: View {
    
    init() {
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = UIColor(named: "anaRenk")
        appearance.titleTextAttributes = [.foregroundColor : UIColor(named: "yaziRenk1")!, .font : UIFont(name: "Pacifico-Regular", size: 22)!]
        
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().compactAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
    }
    
    var body: some View {
        
        GeometryReader { geometry in
            let ekranGenislik = geometry.size.width
            let ekranYukseklik = geometry.size.height
            
            NavigationStack {
                VStack(spacing: ekranYukseklik/20){
                    Text("pizzaBaslik")
                        .foregroundStyle(Color("anaRenk")).bold().font(.system(size : ekranGenislik/15))
                    Image("yemek_resim")
                    
                    HStack{
                        Chip(icerik: "Cheese")
                        Chip(icerik: "Sausage")
                        Chip(icerik: "Pepper")
                    }
                    
                    VStack(spacing: 50){
                        Text("teslimatSure")
                            .foregroundStyle(Color("anaRenk")).bold().font(.system(size : 22))
                        
                        Text("teslimatBaslik")
                            .foregroundStyle(Color("yaziRenk2")).bold().font(.system(size : 22))
                        
                        Text("pizzaAciklama")
                            .foregroundStyle(Color("yaziRenk2")).font(.system(size : 22))
                            .padding([.leading, .trailing],20)
                            .multilineTextAlignment(.center)
                    }
                    
                    HStack{
                        Text("fiyat")
                            .foregroundStyle(Color("anaRenk")).bold().font(.system(size : 40))
                        
                        Spacer()
                        
                        Button("butonYazi"){
                            
                        }.padding(10)
                            .foregroundStyle( Color("yaziRenk1"))
                            .background(Color("anaRenk"))
                            .cornerRadius(5)
                    }.padding()
                }.navigationTitle("Pizza").navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}
#Preview {
    ContentView()
}
