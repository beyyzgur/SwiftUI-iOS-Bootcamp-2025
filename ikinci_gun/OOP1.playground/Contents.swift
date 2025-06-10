import UIKit

class Araba {
    var renk:String?
    var hiz:Int?
    var calisiyorMu:Bool?
    
    init() {
        print("Boş init metodu çalıştı.")
    }
    
    init(renk:String, hiz:Int, calisiyorMu:Bool) {
        self.renk = renk // self, bulunduğu sınıfı temsil ediyor. (Kotlin, java : this)
        self.hiz = hiz
        self.calisiyorMu = calisiyorMu // bu şekilde tanımlamaya shadowing - gölgeleme deniyor.
        print("Dolu init metodu çalıştı.")
    }
    
    func bilgiAl() { // Side Effect: Bir fonksiyonla classın değişkenlerini değiştirebiliyorsak buna side effect deniyor.
        print("--------------------------------------------")
        print("Renk                                : \(renk!)")
        print("Hız                                 : \(hiz!)")
        print("Çalışıyor mu? T (evet) / F (hayir)  : \(calisiyorMu!)") // unwrap yaptık hepsine, kontrol etsen daha iyi olurdu..

    }
    
    func calistir() {
        calisiyorMu = true
        hiz = 5
    }
    
    func durdur() {
        calisiyorMu = false
        hiz = 0
    }
    
    func hizlan(kacKm:Int) {
        hiz! += kacKm
    }
    
    func yavasla(kacKm:Int) {
        hiz! -= kacKm
    }
}

//Nesne Oluşturma

var bmw = Araba(renk: "Beyaz", hiz: 50, calisiyorMu: true)
//Değer atama

//bmw.renk = "Siyah"
//bmw.hiz = 100
//bmw.calisiyorMu = true

bmw.bilgiAl()
bmw.durdur()

//Değer okuma
print("--------------------------------------------")
print("Renk                                : \(bmw.renk!)")
print("Hız                                 : \(bmw.hiz!)")
print("Çalışıyor mu? T (evet) / F (hayir)  : \(bmw.calisiyorMu!)") // unwrap yaptık hepsine kontrol etsen daha iyi olurdu..

bmw.calistir()
bmw.bilgiAl()
bmw.hizlan(kacKm: 18)
bmw.bilgiAl()
bmw.yavasla(kacKm: 3)
bmw.bilgiAl()

var sahin = Araba()
sahin.renk = "Kırmızı"
sahin.hiz = 0
sahin.calisiyorMu = false

sahin.bilgiAl()
