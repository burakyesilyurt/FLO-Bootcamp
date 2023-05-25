//
//  main.swift
//  Ot Master
//
//  Created by Burak Yeşilyurt on 25.05.2023.
//

import Foundation

func inputCheck()->Int{
    
    while(true){
        guard let input = readLine()else{
            print("Geçerli Bir Değer Girin")
            continue
            
        }
        guard let convertToInt = Int(input) else {
            print("Girdi Sayı Olmalıdır")
            continue
            
        }
        return convertToInt
    
    }
}

func otBirimFiyat(message:String)->Int{
   
    print("\(message)",terminator: ": ")
   return inputCheck()
}

func tazelikEtkisi(){
    print("Tür",terminator: ": ")
    let tur = readLine()?.lowercased()
    print("\(tur ?? "Yanlis Tür") miktar (kg)",terminator: ": ")
    let miktar = inputCheck()
    print("Taze mi? (1=taze)",terminator: ": ")
    let taze = inputCheck()
    let tazeMi = taze == 0 ? false : true
    
    
    var islemTutar = 0
    var tazelikEtkisi = 0.0
    var tutar = 0.0
    var kdv = 0.0
    let KDVORANI = 0.18
    switch tur{
    case "kekik":
        islemTutar = miktar * kekik
        tazelikEtkisi = tazeMi ? 0 : Double(islemTutar) * 0.1
        tutar = Double(islemTutar) - tazelikEtkisi
        kdv = tutar * KDVORANI
    case "nane":
        islemTutar = miktar * nane
        tazelikEtkisi = tazeMi ? 0 : Double(islemTutar) * 0.2
        tutar = Double(islemTutar) - tazelikEtkisi
        kdv = tutar * KDVORANI
    case "fesleğen":
        islemTutar = miktar * feslegen
        tazelikEtkisi = tazeMi ? 0 : Double(islemTutar) * 0.1
        tutar = Double(islemTutar) - tazelikEtkisi
        kdv = tutar * KDVORANI
    case "reyhan":
        islemTutar = miktar * reyhan
        tazelikEtkisi = tazeMi ? 0 : Double(islemTutar) * 0.25
        tutar = Double(islemTutar) - tazelikEtkisi
        kdv = tutar * KDVORANI
    default:
        print("Geçerli Bir Ot Girin")
        return
    }
    
    print("İşlem Tutar: \(islemTutar)TL")
    print("Tazelik Etkisi: \(-tazelikEtkisi)")
    print("Tutar: \(tutar)TL")
    print("KDV (%\(KDVORANI * 100)): \(kdv)TL")
    print("********************************")
    
    print("Fatura: ")
    print("\n ------------------------------")
    print("OT A.Ş")
    print("* \(tur ?? "Yanlis Tür"): \(miktar)kg x \((tutar/Double(miktar)))TL = \(tutar)")
    print(tazeMi ? "Taze." : "Taze Değil.")
    print("KDV (\(KDVORANI * 100)): \(kdv)TL")
    print("Genel Toplam: \(tutar + kdv)TL")
    
    

}

print("Kg Başı Ot Fiyatlarını Giriniz")
let kekik = otBirimFiyat(message: "Kekik")
let nane = otBirimFiyat(message: "Nane")
let feslegen = otBirimFiyat(message: "Fesleğen")
let reyhan = otBirimFiyat(message: "Reyhan")
print("********************************")
tazelikEtkisi()







