import UIKit

// Bir sınıf sadece bir kez kalıtıma sahip olabilir.
class Ev {
    var pencereSayisi: Int?
    
    init(pencereSayisi: Int) {
        self.pencereSayisi = pencereSayisi
    }

}

class Saray : Ev {
    var kuleSayisi: Int?
    
    init(kuleSayisi: Int, pencereSayisi: Int) {
        self.kuleSayisi = kuleSayisi
        super.init(pencereSayisi: pencereSayisi)
    }
    
}

class Villa : Ev {
    var garajVarMi: Bool? // buraları optional yapman en sağlıklısı <3
    
    init(garajVarMi: Bool, pencereSayisi: Int ) {
        self.garajVarMi = garajVarMi
        super.init(pencereSayisi: pencereSayisi) // super ifadesiyle üst sınıfa eriştik
    }
}

let topkapiSarayi = Saray(kuleSayisi: 3, pencereSayisi: 10)
let bogazVilla = Villa(garajVarMi: true, pencereSayisi: 8)

print(topkapiSarayi.kuleSayisi!)
print(topkapiSarayi.pencereSayisi!)

print(bogazVilla.garajVarMi!)
print(bogazVilla.pencereSayisi!)

// Overriding => inheritance olmalı , overload ile karıştırma => aynı sınıf içerisinde aynı fonksiyon farklı sayıda parameetreler alabiliyordu

class Hayvan {
    func sesCikar() {
        print("sesim yokkine..")
    }
}

class Memeli : Hayvan {
    
}

class Kedi : Memeli {
    override func sesCikar() {
        print("Miaww")
    }
}

class Kopek : Memeli {
    override func sesCikar() {
        print("Hav hav")
    }
}

let hayvan = Hayvan()
let memeli = Memeli()
let kedi = Kedi()
let kopek = Kopek()

hayvan.sesCikar() // Kalıtım yok, kendi fonksiyonunu çağırdı
memeli.sesCikar() // Kalıtım var, kendi sınıfını kontrol etti, fonksiyon olmayınca üst sınıfın fonksiyonunu çağırdı
kedi.sesCikar() // Kalıtım var, kendi metodunu çağırdı
kopek.sesCikar() // Kalıtım var, kendi metodunu çağırdı

// Tip / Tür Dönüşümü
// Upcasting - as
let ev = Saray(kuleSayisi: 10, pencereSayisi: 20) as Ev

// Downcasting - as? / as!
let saray = Ev(pencereSayisi: 30) as? Saray

// Tip Kontrolü
if ev is Ev {
    print("Nesne ev sınıfındandır.")
} else {
    print("Nesne ev sınıfından değildir.")
}

// PROTOCOL
// 1) Kendine ait bir fonksiyon veya değişkeni varsa bunu kendi fonksiyonuna eklemek zorundasın.
// 2) Bir class virgülle birden fazla protocol alabiliyor.

protocol myProtocol { // myProtocolden sonra virgül koyarak başka birçok protokol de ekleyebilirim.
    var degisken: Int { get set }
    
    func method1()
    func method2() -> String
}

class myClass : myProtocol {
    var degisken: Int = 0
    
    func method1() {
        print("void method 1 çağırıldı.")
    }
    
    func method2() -> String {
        return "method 2 çağırıldı."
    }
}

let a = myClass()

print(a.degisken)
a.method1()
print(a.method2())

// Extension
extension Int {
    func carp(sayi: Int) -> Int {
        return self * sayi
    }
}

var sonuc = 3.carp(sayi: 4)
print(sonuc)

// Closure
let ifade = {
    print("Hello")
}

ifade()

