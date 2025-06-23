import UIKit

// Array Kullanımı
var numaralar = [10, 20, 30, 40, 50]
var meyveler = [String]()

//Veri ekleme
meyveler.append("elma")  // 0. index
meyveler.append("muz")   // 1. index
meyveler.append("kiraz") // 2. index

print(meyveler)

//Güncelleme
meyveler[0] = "armut"
print(meyveler[0])

//Insert - istediğim yere ekleme
meyveler.insert("bergamot", at: 1)
print(meyveler)

//Veri Okuma
print(meyveler[2])
let a = meyveler[0]
print(a)

// Boyut
print("Boyut: \(meyveler.count)")
print("Boş kontrol: \(meyveler.isEmpty)")

for meyve in meyveler {
    print("Sonuç 1: \(meyve)")
}

for (index, meyve) in meyveler.enumerated() {
    print("\(index). -> \(meyve)")
}

meyveler.remove(at: 2)


for (index, meyve) in meyveler.enumerated() {
    print("\(index). -> \(meyve)")
}

meyveler.removeAll()
print(meyveler) // Boş array döndü

// Nesne Tabanlı
class Ogrenciler {
    var no: Int?
    var ad: String?
    var sinif: String?
    
    init(no: Int, ad: String, sinif: String) {
        self.no = no
        self.ad = ad
        self.sinif = sinif
    }
}

var ogrenci1 = Ogrenciler(no: 200, ad: "Zeynep", sinif: "9C" )
var ogrenci2 = Ogrenciler(no: 300, ad: "Beyza", sinif: "11B")
var ogrenci3 = Ogrenciler(no: 100, ad: "Emre", sinif: "10A")

var ogrencilerListesi = [Ogrenciler]()
ogrencilerListesi.append(ogrenci1)
ogrencilerListesi.append(ogrenci2)
ogrencilerListesi.append(ogrenci3)

for ogrenci in ogrencilerListesi {
    print("No : \(ogrenci.no!) | Ad : \(ogrenci.ad!) | Sınıf : \(ogrenci.sinif!)")
}

// Filtreleme
print("Filtreleme 1")
var f1 = ogrencilerListesi.filter { $0.no! > 100 } //Buradaki $0, ogrencilerListesindeki her bir öğrenciyi temsil ediyor.

for ogrenci in f1 {
    print("No : \(ogrenci.no!) | Ad : \(ogrenci.ad!) | Sınıf : \(ogrenci.sinif!)")
}

print("Filtreleme 2")
var f2 = ogrencilerListesi.filter { $0.ad!.contains("yz") }

for ogrenci in f2 {
    print("No : \(ogrenci.no!) | Ad : \(ogrenci.ad!) | Sınıf : \(ogrenci.sinif!)")
}

// Sıralama - Sorting
print("Sıralama 1")
var s1 = ogrencilerListesi.sorted(by: { $0.no! > $1.no! })
print("Sayısal Büyükten Küçüğe Sıralama")
for ogrenci in s1 {
    print("No : \(ogrenci.no!) | Ad : \(ogrenci.ad!) | Sınıf : \(ogrenci.sinif!)")
}

print("Sıralama 2")
var s2 = ogrencilerListesi.sorted(by: { $0.no! < $1.no! })
print("Sayısal Küçükten Büyüğe Sıralama")
for ogrenci in s2 {
    print("No : \(ogrenci.no!) | Ad : \(ogrenci.ad!) | Sınıf : \(ogrenci.sinif!)")
}

print("Sıralama 3")
var s3 = ogrencilerListesi.sorted(by: { $0.ad! > $1.ad! })
print("Metinsel Büyükten Küçüğe Sıralama")
for ogrenci in s3 {
    print("No : \(ogrenci.no!) | Ad : \(ogrenci.ad!) | Sınıf : \(ogrenci.sinif!)")
}

print("Sıralama 4")
var s4 = ogrencilerListesi.sorted(by: { $0.ad! < $1.ad! })
print("Metinsel Küçükten Büyüğe Sıralama")
for ogrenci in s4 {
    print("No : \(ogrenci.no!) | Ad : \(ogrenci.ad!) | Sınıf : \(ogrenci.sinif!)")
}

