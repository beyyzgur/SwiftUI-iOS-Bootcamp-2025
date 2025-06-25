//
//  TabSayfa.swift
//  CalismaYapisi
//
//  Created by beyyzgur on 21.06.2025.
//

import SwiftUI

struct TabSayfa: View {
    
    init(){
        let appearance = UITabBarAppearance()
        appearance.backgroundColor = UIColor.systemIndigo
        
        renkDegistir(itemAppearance: appearance.stackedLayoutAppearance)
        renkDegistir(itemAppearance: appearance.inlineLayoutAppearance)
        renkDegistir(itemAppearance: appearance.compactInlineLayoutAppearance)
        
        UITabBar.appearance().standardAppearance = appearance
        UITabBar.appearance().scrollEdgeAppearance = appearance
    }
    
    func renkDegistir(itemAppearance: UITabBarItemAppearance){
        //Seçili Durum
        itemAppearance.selected.iconColor = UIColor.orange
        itemAppearance.selected.titleTextAttributes = [.foregroundColor: UIColor.orange]
        //Seçili Olmayan Durum
        itemAppearance.normal.iconColor = UIColor.white
        itemAppearance.normal.titleTextAttributes = [.foregroundColor: UIColor.white]

    }
    
    var body: some View {
        NavigationStack{
            TabView{
                HomePage().tabItem{
                    Label("Anasayfa", systemImage: "homekit")
                }
                Settings().tabItem{
                    Label("Ayarlar", systemImage: "gear")
                }
            }
            .navigationTitle("Tab View Kullanımı")
        }
    }
}

#Preview {
    TabSayfa()
}
