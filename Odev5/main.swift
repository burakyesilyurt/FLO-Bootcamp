//
//  main.swift
//  Odev5
//
//  Created by Burak Yeşilyurt on 31.05.2023.
//

import Foundation
greetings()
var btc = false
let ad = readString("Adınızı Girin")
let yas = readInteger("Yaşınızı Girin")
var risk = readInteger("Risk iştahı (1 ve 5 arasında)")
let miktar = readFloat("Yatırılacak para miktarı")
let aylikGelir = readFloat("Aylik geliriniz")
let paraOrani = aylikGelir / miktar

if paraOrani >= 1 && paraOrani <= 5 && yas > 60 {
    risk -= 1
} else if paraOrani >= 0.5 && paraOrani <= 1 && yas > 40 && yas <= 50 {
    btc = true
} else if paraOrani >= 0.5 && paraOrani < 1 && yas > 50 {
    risk -= 1
} else if paraOrani >= 0.1 && paraOrani < 0.5 && yas > 30 {
    risk -= 1
} else if paraOrani < 0.1 {
    if risk == 5 || risk == 4 {
        risk = 2
    } else if risk == 3 {
        risk = 1
    }
}

if(risk < 1 || risk > 5 || aylikGelir < miktar) {
    printString("Yatırım yapamazsınız")
    byeBye()
    exit(EXIT_SUCCESS)
}

let yatirimParasi = yatirimYap(risk, miktar, btc)

let toplamKar = yatirimParasi.altin + yatirimParasi.avro + yatirimParasi.bitcoin + yatirimParasi.dolar + yatirimParasi.faiz + yatirimParasi.gumus

print("""
Guncel Kur
    Altın: \(kur.altin)
    Avro: \(kur.avro)
    BTC: \(kur.bitcoin)
    Dolar: \(kur.dolar)
    Gumus: \(kur.gumus)
***************
""")

print("""
    Yaptığınız Zararlar/Karlar
    altin karı: \(yatirimParasi.altin)
    avro karı: \(yatirimParasi.avro)
    bitcoin karı: \(yatirimParasi.bitcoin)
    dolar karı: \(yatirimParasi.dolar)
    faiz karı: \(yatirimParasi.faiz)
    gumus karı: \(yatirimParasi.gumus)
""")

print(toplamKar < 0 ? "Toplam Zarar: " : "Toplam Kar: ", toplamKar)
printString("Genel Toplam: \(miktar + toplamKar)")
byeBye()

