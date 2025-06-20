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

// Enumeration

enum KonserveBoyut {
    case kucuk
    case orta
    case buyuk
}

func ucretHesapla(boyut: KonserveBoyut, adet: Int) {
    switch boyut {
        case KonserveBoyut.kucuk: print("Fiyat: \(adet * 10)₺")
        case .orta: print("Fİyat: \(adet * 10)")
        case .buyuk: print("Fiyat: \(adet * 30)")
    }
}

ucretHesapla(boyut: KonserveBoyut.buyuk, adet: 5)
ucretHesapla(boyut: .kucuk, adet: 5)

// Composition

class Kategoriler {
    var kategori_id:Int?
    var kategori_ad:String?
    
    init(kategori_id:Int, kategori_ad:String) {
        self.kategori_id = kategori_id
        self.kategori_ad = kategori_ad
    }
}

class Yonetmenler {
    var yonetmen_id:Int?
    var yonetmen_ad:String?
    
    init(yonetmen_id:Int, yonetmen_ad:String) {
        self.yonetmen_id = yonetmen_id
        self.yonetmen_ad = yonetmen_ad
    }
}

class Filmler {
    var film_id:Int?
    var film_ad:String?
    var film_yil:Int?
    var kategori: Kategoriler?
    var yonetmen: Yonetmenler?
    
    init(film_id:Int, film_ad:String, film_yil:Int, kategori: Kategoriler, yonetmen: Yonetmenler) {
        self.film_id = film_id
        self.film_ad = film_ad
        self.film_yil = film_yil
        self.kategori = kategori
        self.yonetmen = yonetmen
    }
}

let k1 = Kategoriler(kategori_id: 1, kategori_ad: "Dram")
let k2 = Kategoriler(kategori_id: 2, kategori_ad: "Komedi")

let y1 = Yonetmenler(yonetmen_id: 1, yonetmen_ad: "Quentin Tarantino")
let y2 = Yonetmenler(yonetmen_id: 2, yonetmen_ad: "Christopher Nolan")

let f1 = Filmler(film_id: 1, film_ad: "Django", film_yil: 2012, kategori: k1, yonetmen: y1)
print("Film id: \(f1.film_id!)")
print("Film ad: \(f1.film_ad!)")
print("Film yıl: \(f1.film_yil!)")
print("Film kategori: \(f1.kategori!.kategori_ad!)")
print("Film yönetmen: \(f1.yonetmen!.yonetmen_ad!)")
