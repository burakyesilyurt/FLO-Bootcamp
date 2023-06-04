//
//  yatirim-robotu.swift
//  Odev5
//
//  Created by Burak Yeşilyurt on 31.05.2023.
//

import Foundation

struct Para {
    let dolar: Float
    let avro: Float
    let altin: Float
    let gumus: Float
    let faiz: Float
    let bitcoin: Float
}

func yatirimYap(_ risk: Int, _ yatirilacakPara: Float, _ btc: Bool = false) -> (dolar: Float, avro: Float, altin: Float, gumus: Float, faiz: Float, bitcoin: Float) {
    let risk = btc ? 6 : risk
    let dolar = (yatirim[risk]!.dolar * yatirilacakPara / kur.dolar) * (ihtimal(50, 0.2) * kur.dolar)
    let avro = (yatirim[risk]!.avro * yatirilacakPara / kur.avro) * (ihtimal(60, 0.1) * kur.avro)
    let altin = (yatirim[risk]!.altin * yatirilacakPara / kur.altin) * (ihtimal(40, 0.15) * kur.altin)
    let gumus = (yatirim[risk]!.gumus * yatirilacakPara / kur.gumus) * (ihtimal(30, 0.2) * kur.gumus)
    let faiz = yatirim[risk]!.faiz * yatirilacakPara * 0.15
    let bitcoin = (yatirim[risk]!.bitcoin * yatirilacakPara / kur.bitcoin) * (ihtimal(20, 0.25) * kur.bitcoin)
    return (dolar, avro, altin, gumus, faiz, bitcoin)
}

func ihtimal(_ sayi: Int, _ degisimYuzdesi: Float) -> Float {
    if(gelirMi(sayi)) {
        return degisimYuzdesi
    }
    return -degisimYuzdesi
}

let yatirim = [
    1: Para(dolar: 0, avro: 0, altin: 0, gumus: 0, faiz: 1, bitcoin: 0),
    2: Para(dolar: 0.3, avro: 0.3, altin: 0.2, gumus: 0, faiz: 0.2, bitcoin: 0),
    3: Para(dolar: 0.5, avro: 0, altin: 0.1, gumus: 0.3, faiz: 0, bitcoin: 0.1),
    4: Para(dolar: 0.3, avro: 0, altin: 0, gumus: 0.1, faiz: 0, bitcoin: 0.6),
    5: Para(dolar: 0.1, avro: 0, altin: 0, gumus: 0.2, faiz: 0, bitcoin: 0.7),
    6: Para(dolar: 0.2, avro: 0.2, altin: 0.2, gumus: 0.2, faiz: 0.2, bitcoin: 0)
]

let kur = Para(dolar: 8.3, avro: 10.1, altin: 510, gumus: 7.5, faiz: 0, bitcoin: 1000)
