import UIKit

func kisiTanima1(ad: String) {
    if ad == "Beyza" {
        print("Welcome Beyza")
    } else {
        print("Tanınmayan Kişi")
    }
}

kisiTanima1(ad: "Beyza")

func kisiTanima2(ad: String) {
    guard ad == "Beyza" else {
        print("Tanınmayan kişi")
        return
    }
    print("Merhaba Beyza")
}

kisiTanima2(ad: "Beyza")

// Hata Ayıklama
//1. Compile Error : Editör Hataları
    //let x = 10
    //x = 20
//2. Runtime Error : Exception : Çalışma sırasında oluşan hatalar
enum Hatalar: Error {
    case sifiraBolunmeHatasi
}

func bolme(sayi1: Int, sayi2: Int) throws -> Int {
    if sayi2 == 0 {
        throw Hatalar.sifiraBolunmeHatasi
    }
    return sayi1 / sayi2
}


do {
    let sonuc = try bolme(sayi1: 10, sayi2: 0)
    print(sonuc)
} catch Hatalar.sifiraBolunmeHatasi {
    print("Herhangi bir sayı sıfıra bölünemez!")
}

let sonuc2 = try? bolme(sayi1: 10, sayi2: 4) // Eğer hata olursa sonuç nil olur.
if let temp = sonuc2 {
    print(temp)
} else {
    print("Herhangi bir sayı sıfıra bölünemez!")
}
