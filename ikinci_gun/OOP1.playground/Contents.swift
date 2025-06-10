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


class Fonksiyonlar {
    //Geri dönüş deeğeri olmayan  ( void )
    func selamla1() {
        let word = "Merhaba"
        print(word)
    }
    
    //Geri dönüş deeğeri olmayan  ( return )
    func selamla2() -> String { // geri dönüş değerinin type'i iste
        let word = "return var sende canim"
        return word
    }
    
    //Parametre
    func selamla3(isim:String) {
        let sonuc = "Merhaba \(isim)"
        print(sonuc)
    }
    
    func toplama(sayi1:Int, sayi2:Int) -> Int {
        let sonuc = sayi1 + sayi2
        return sonuc
    }
    
    //Overloading
    
    func carpma(sayi1:Int, sayi2:Int) -> Int {
        let sonuc = sayi1 * sayi2
        return sonuc
    }
    
    func carpma(sayi1:Double, sayi2:Double) -> Double {
        let sonuc = sayi1 * sayi2
        return sonuc
    }
    
    func carpma(sayi1:Int, sayi2:Int, sayi3:Int) -> Int {
        let sonuc = sayi1 * sayi2 * sayi3
        return sonuc
    }
}

let f = Fonksiyonlar()

f.selamla1()
f.selamla2()
f.selamla3(isim: "Beyzoş")
let toplamSonucu = f.toplama(sayi1: 8, sayi2: 12)
print("Toplam Sonucu : \(toplamSonucu)")
let ilkCarpmaSonucu = f.carpma(sayi1: 2, sayi2: 7)
let ikinciCarpmaSonucunu = f.carpma(sayi1: 2, sayi2: 7, sayi3: 3)
print("İlk Carpma Sonucu : \(ilkCarpmaSonucu)")
print("İkinci Carpma Sonucu : \(ikinciCarpmaSonucunu)")

//Statik Değişkenler ve Metodlar

class ASinifi {
    static let x = 10 // var diyince kırmızı hata verdi niyeyse
    
    static func metod() {
        print("Metod çağırıldı.")
    }
}
/*
let a = ASinifi()
print(a.x)
a.metod()

print(ASinifi().x) // Sanal Nesne - Virtual Object - İsimsiz Nesne
ASinifi().metod() // Bunu yapma, boşuna hafızada 2 nesne oluşturuyor. Yukarıda let a diyerek hafızada sadece 1 adet nesne oluşturmuştuk.
*/
print(ASinifi.x)
ASinifi.metod()
