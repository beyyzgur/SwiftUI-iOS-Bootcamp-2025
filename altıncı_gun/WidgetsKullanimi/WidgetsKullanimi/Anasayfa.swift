//
//  ContentView.swift
//  WidgetsKullanimi
//
//  Created by beyyzgur on 22.06.2025.
//

import SwiftUI

struct Anasayfa: View {
    @State private var tf = ""
    @State private var alinanVeri = ""
    @State private var resimAdi = "happy"
    @State private var switchDurum = false
    @State private var segmentedDurum = 0
    @State private var stepperDurum = 0
    @State private var sliderDurum = 50.0
    @State private var saat = Date()
    @State private var tarih = Date()
    @State private var ulkelerListesi = [String]()
    @State private var secilenUlke = "Türkiye"
    
    var body: some View {
        VStack(spacing: 5) {
            Text(alinanVeri)
            
            TextField("Veri giriniz...", text: $tf)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Button("Oku"){
                alinanVeri = tf
            }
            .font(.system(size: 25))
            .foregroundStyle(Color(.purple))
            .padding()
            .background(Color(.systemGray5))
            .cornerRadius(10)
            
            HStack{
                Button("happy"){
                    resimAdi = "happy"
                }
                .foregroundStyle(Color(.purple))
                .padding()
                .background(Color(.systemGray5))
                .cornerRadius(10)
                
                Image(resimAdi).resizable().frame(width: 50, height: 50)
                
                Button("sad"){
                    resimAdi = "sad"
                }
                .foregroundStyle(Color(.purple))
                .padding()
                .background(Color(.systemGray5))
                .cornerRadius(10)
            }
            
            Toggle("Toggle SwiftUI", isOn: $switchDurum)
                .onChange(of: switchDurum) { _, value in
                    print("switch durumu: \(value)")
                }
                .padding()
            
            Text("Picker")
                .frame(maxWidth:.infinity, alignment: .leading)
                .padding([.leading])
            Picker("Picker", selection: $segmentedDurum){
                Text("Yemekler").tag(0)
                Text("Tatlılar").tag(1)
                Text("İçecekler").tag(2)
            }
            .pickerStyle(.segmented)
            .padding()
            .onChange(of: segmentedDurum){ _, value in
                print("picker durum: \(value)")
            }
            
            Text(String(stepperDurum))
            Stepper("Stepper", value: $stepperDurum,in : 0...10 )
                .padding()
            
            Text(String(Int(sliderDurum)))
            Slider(value: $sliderDurum, in: 0...100)
                .padding()
            
            Text("TIKLA").onTapGesture {
                print("tıklandı.")
            }
            
            Text("ÇİFT TIKLA").onTapGesture(count: 2) {
                print("çift tıklandı")
            }
            
            DatePicker("Saat", selection: $saat, displayedComponents: [.hourAndMinute])
                .padding()
            
            DatePicker("Tarih", selection: $tarih, displayedComponents: [.date])
                .padding()
            
            Picker("Ülke", selection: $secilenUlke){
                ForEach(ulkelerListesi, id: \.self){ ulke in
                    Text(ulke)
                }
            }
            .onAppear{
                ulkelerListesi.append("Türkiye")
                ulkelerListesi.append("İtalya")
                ulkelerListesi.append("Japonya")
            }
            
            Button("Göster"){
                print("Switch Durum    : \(switchDurum)")
                print("Segmented Durum : \(segmentedDurum)")
                print("Stepper Durum   : \(stepperDurum)")
                print("Slider Durum    : \(sliderDurum)")
                
                let tf = DateFormatter()
                tf.dateFormat = "HH:mm"
                let alinanSaat = tf.string(from: saat)
                print("Saat            : \(alinanSaat)")
                
                let df = DateFormatter()
                df.dateFormat = "dd/MM/yyyy"
                let alinanTarih = df.string(from: tarih)
                print("Alınan Tarih    : \(alinanTarih)")
            }
        }
    }
}

#Preview {
    Anasayfa()
}
