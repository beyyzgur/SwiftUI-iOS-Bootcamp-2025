import UIKit

// Set
var meyveler = Set<String>()

//Veri Ekleme
meyveler.insert("Elma")
meyveler.insert("Portakal")
meyveler.insert("Muz")
print(meyveler)

meyveler.insert("Amasya Elması")
print(meyveler)

for (index, meyve) in meyveler.enumerated() {
    print(" \(index). indexte \(meyve) var.")
}

print("Set Boyutu: \(meyveler.count)")
print("Boş Mu?: \(meyveler.isEmpty)")

meyveler.remove("Elma")
print(meyveler)

meyveler.removeAll()
print(meyveler)

//Dictionary (HashMap, Map de denir)
var sehirler = [Int: String]()

//Veri Ekleme
sehirler[07] = "Antalya"
sehirler[20] = "Denizli"
sehirler[06] = "Ankara"
sehirler[83] = "Paris"
print(sehirler)

//Veri Okuma
print(sehirler[07]!)

//Veri Güncelleme
sehirler[07] = "Yeni Antalya"
print(sehirler[07]!)
print(sehirler)

for (anahtar,deger) in sehirler {
    print(" \(anahtar): \(deger)")
}

sehirler.removeValue(forKey: 83)
print(sehirler)

sehirler.removeAll()
print(sehirler)
