import UIKit

var ogrenciAdi = "Beyza"
var ogrenciYas = 21
var ogrenciBoy = 1.63
var basHarfi = "B"
var ogrenciDevamEdiyorMu = true

print("\(ogrenciAdi) | \(ogrenciYas) | \(ogrenciBoy) | \(basHarfi) | \(ogrenciDevamEdiyorMu)")


var urun_id:Int = 3416
var urun_adi:String = "Macbook Air"
var urun_adet:Int = 100
var urun_fiyat:Int = 35000
var urun_tedarikci:String = "Apple"

print("Ürün id            : \(urun_id)")
print("Ürün adı           : \(urun_adi)")
print("Ürün adeti         : \(urun_adet)")
print("Ürün fiyatı        : \(urun_fiyat)₺")
print("Ürünün tedarikçisi : \(urun_tedarikci)")


// Constants ==> let in Swift, var yerine let kullan performans ve bellek açısından önemli
var sayi = 10
print(sayi)
sayi = 20
print(sayi)

let numara = 100
print(numara)

//Tür Dönüşümü - Type Casting
//Sayısaldan Sayısala
var i = 42
var d  = 56.78

var sonuc1 = Double(i)
var sonuc2 = Int(d)

print(sonuc1)
print(sonuc2)

//Sayısaldan Metine
var sonuc3 = String(i) // "42"
var sonuc4 = String(d) // "56.78"

print(sonuc3)
print(sonuc4)

//Metinden Sayısala
var yazi = "34."

if let sonuc5 = Int(yazi) {
    print(sonuc5)
} else {
    print(yazi + " bir sayı değil.")
}
