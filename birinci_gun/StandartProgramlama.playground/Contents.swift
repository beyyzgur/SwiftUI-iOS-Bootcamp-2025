import UIKit

// Karşılaştırma Operatörleri
var a = 40
var b = 50

var x = 90
var y = 80

print(" a == b : \( a == b )")
print(" a != b : \( a != b )")
print(" a < b : \( a < b )")
print(" a > b : \( a > b )")
print(" a <= b : \( a <= b )")
print(" a >= b : \( a >= b )")

print("a > b || x > y : \(a > b || x > y)")
print("a > b && x > y : \(a > b && x > y)")

// If
var yas = 23
var isim = "Ospik"

if yas >= 18 {
    print("reşitsiniz efendim.")
} else {
    print("reşit değilsiniz.")
}

if isim == "Ospik" {
    print("Merhaba Ospik")
} else if isim == "Emre" {
    print("Merhaba emroş")
} else {
    print("merhaba yabancı")
}

let ka = "admin"
let s = 123456

if ( ka == "admin" && s == 123456 ) {
    print("Welcome..")
} else {
    print("Hatalı giriş")
}

let sonuc = 9

if ( sonuc == 9 || sonuc == 10 ) {
    print("sonuç 9 veya 10'dur.")
} else {
    print("sonuç 9 veya 10 değildir.")
}

print("------------------------------------------")
// Switch - Case

let gun = 0

switch gun {
    case 1: print("monday")
    case 2: print("tuesday")
    case 3: print("wednesday")
    case 4: print("thursday")
    case 5: print("friday")
    case 6: print("saturday")
    case 7: print("sunday")
    default: print("such a day is not exist")
}
print("------------------------------------------")
// Loops - Döngüler
// 1 2 3
for i in 1...3 {
    print("Döngü \(i) : \(i) ")
}
print("------------------------------------------")
// 10 ile 20 arasında beşer artış
for i in stride(from: 10, through: 20, by: 5) {
    print("Döngü 2 : \(i) ")
}
print("------------------------------------------")
// 20 ile 10 arasında beşer azalış
for i in stride(from: 20, through: 10, by: -5) {
    print("Döngü 3 : \(i) ")
}
print("------------------------------------------")
// While
// 1 2 3

var sayac = 1

while sayac < 4 {
    print("Döngü 4 : \(sayac)")
    sayac += 1
}

print("------------------------------------------")

for i in 1...5 {
    if i == 3 { break } // break ise KIR artık döngüyü BREAK IT Meenn
    print("Döngü 5 for break feat: \(i)")
}
print("------------------------------------------")
for i in 1...5 {
    if i == 3 { continue } // continue ise sallanma kardeşim bunu da görmeyiver DEVAM ET anlamında
    print("Döngü 6 for continue feat : \(i)")
}
