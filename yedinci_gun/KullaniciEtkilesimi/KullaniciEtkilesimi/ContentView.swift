//
//  ContentView.swift
//  KullaniciEtkilesimi
//
//  Created by beyyzgur on 23.06.2025.
//

import SwiftUI

struct ContentView: View {
    @State private var alert = false
    @State private var actionSheet = false

    var body: some View {
        VStack(spacing: 100){
            Button("Alert"){
                alert = true
            }
            .alert("Başlık",isPresented: $alert, actions: {
                Button("İptal", role: .cancel, action: {
                    print("İptal seçildi.")
                })
                Button("Tamam", role: .destructive, action: {
                    print("Tamam seçildi")
                })
                
            }, message: { Text("içerik") })
            
            Button("Action Sheet"){
                actionSheet = true
            }.actionSheet(isPresented: $actionSheet){
                ActionSheet(title: Text("Başlık"),
                            message: Text("İçerik"),
                            buttons: [
                                .default(Text("İptal"), action: {
                                    print("iptal seçildi")
                                }),
                                .destructive(Text("Tamam"), action: {
                                    print("Tamam seçildi")
                                })
                            ] )
            }
            Text("Context Menu")
                .contextMenu{
                    Button(){
                        print("Resim seçildi")
                    }label: {
                        Label("Resim Çek", systemImage: "camera")
                    }
                    
                    Button(){
                        print("Video seçildi")
                    }label: {
                        Label("Video Çek", systemImage: "video")
                    }

                }
        }
    }
}

#Preview {
    ContentView()
}
