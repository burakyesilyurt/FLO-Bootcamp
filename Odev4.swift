//
//  main.swift
//  Odev4
//
//  Created by Burak Yeşilyurt on 30.05.2023.
//

import Foundation

struct Cevher{
    let adi: String
    let fiyat: Int
}

struct Tane {
    let adi: String
    let etkisi: Float
}
var cevherler = [
    "DMR": Cevher(adi: "Demir", fiyat: 1500),
    "KRM": Cevher(adi: "Krom", fiyat: 5000),
    "BKR": Cevher(adi: "Bakır", fiyat: 3000),
    "KMR": Cevher(adi: "Kömür", fiyat: 500)
]

var taneler = [
    "1": Tane(adi: "Erik", etkisi: 0.15),
    "2": Tane(adi: "Portakal", etkisi: 0.10),
    "3": Tane(adi: "Karpuz", etkisi: 0)
]

func taneEtkisi(_ taneBuyuklugu: String, _ kod: String) -> Float {
    return Float(cevherler[kod]!.fiyat) - (Float(cevherler[kod]!.fiyat) * taneler[taneBuyuklugu]!.etkisi)
}

func temizlikEtkisi(_ temizlikOrani: Float, _ taneFiyat: Float) -> Float{
    let oran: Float = Float(temizlikOrani / 100)
    return taneFiyat - (taneFiyat * oran)
}

func cevherFiyat(_ temizlikEtkisiFiyati: Float, _ taneEtkisiFiyati: Float) -> Float {
    return taneEtkisiFiyati - temizlikEtkisiFiyati
}

print("*** Cevher v1.0 ***\n* Müşterinin")
print("Adı: ",terminator: "")
let isim = readLine() ?? ""
print("Soyadı: ", terminator: "")
let soyad = readLine() ?? ""
print("* Cevherin")
print("Kodu: ", terminator: "")
let kod = readLine()?.uppercased() ?? ""
print("Tane büyüklüğü: ",terminator: "")
let taneBuyuklugu = readLine() ?? ""
print("Temizlik Oranı: ",terminator: "")
let temizlikOrani = Float(readLine() ?? "") ?? 0
print("Miktar (Ton): ",terminator: "")
let miktar = Int(readLine() ?? "") ?? 0

if(cevherler[kod] == nil || taneler[taneBuyuklugu] == nil){
    print("Cevher veya Tane Bulunamamakta")
    exit(EXIT_SUCCESS)
}

let taneEtkisiFiyati = taneEtkisi(taneBuyuklugu, kod)
let temizlikEtkisiFiyati = temizlikEtkisi(temizlikOrani, taneEtkisiFiyati)
let birimFiyat = cevherFiyat(temizlikEtkisiFiyati, taneEtkisiFiyati)
let toplamFiyat = Float(miktar) * birimFiyat
let kdv = toplamFiyat * 0.08
print("***** Fatura *****")
print("Alıcı \(isim + " " + soyad)")
print("Cevher Türü: ",cevherler[kod]!.adi)
print("Normal Birim Fiyat: ",cevherler[kod]!.fiyat, "Ton/TL")
print("Tane: ", taneler[taneBuyuklugu]!.adi, " (-%\((taneler[taneBuyuklugu]!.etkisi * 100).rounded()))")
print(taneler[taneBuyuklugu]!.adi, " Fiyat: ", taneEtkisiFiyati, "Ton/TL")
print("Temizlik: %\(temizlikOrani)", terminator: ", ")
print("Etkisi: -\(temizlikEtkisiFiyati)TL")
print("Temizlik Etkisi Sonrası")
print("Birim Fiyatı: \(birimFiyat) TON/TL")
print("Toplam:", toplamFiyat.rounded(),"TL")
print("KDV (%8): \(kdv)TL")
print("Genel Toplam:", toplamFiyat + kdv)
print("Mega Madencilik, 2016")