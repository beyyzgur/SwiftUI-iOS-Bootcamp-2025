import UIKit

// Tanımlama
var message = "Hello"

//null, nil
var str:String? // = nil demene gerek yok ? ile demiş oluyorsun zaten.
// variable'ın nil olma ihtimali varsa onu optional yap.
// Optional - Nullable - Null Safety

str = "merhaba"

if str != nil {
    print(str!) // nil olmadıgını kesinlikle biliyorum, ! ile unwrap yap!!
} else {
    print("str nil değer içeriyor")
}

// optional binding
if let temp = str {
    print(temp) // if let yapısı kullandığımız için unwrap yapmamıza gerek kalmadı.
} else {
    print("str nil değer içeriyor")
}


if var temp = str {
    print(temp) // if let yapısı kullandığımız için unwrap yapmamıza gerek kalmadı.
    temp = "Nasılsın?"
    print(temp)
} else {
    print("str nil değer içeriyor")
}
