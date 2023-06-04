//
//  functions.swift
//  Odev5
//
//  Created by Burak Yeşilyurt on 31.05.2023.
//

import Foundation

func printString(_ str: String) -> Void {
    print(str)
}

func printInteger(_ int: Int) -> Void {
    print(int)
}

func printFloat(_ float: Float) {
    print(float)
}

func readInteger(_ message: String) -> Int {
    print("\(message): ", terminator: "")
    return Int(readLine() ?? "0") ?? 0
}

func readFloat(_ message: String) -> Float {
    print("\(message): ", terminator: "")
    return Float(readLine() ?? "0") ?? 0
}

func readString(_ message: String) -> String {
    print("\(message): ", terminator: "")
    return readLine() ?? "0"
}

func messageBox(_ message: String, _ messageType: String) -> Void {
    print("*** \(messageType) ***\n*** \(message) ***")
}

func greetings() {
    print("Hoşgeldiniz... \nYatırım Ustası v1.0 by FLO Bootcamp")
}

func byeBye() {
    print("İyi günler... \nYatırım Ustası v1.0 by FLO Bootcamp")
}

func randomNumber(_ sayi: Int) -> Int {
    return Int.random(in: 1...sayi)
}

func gelirMi(_ deger: Int) -> Bool {
    return Int.random(in: 1...100) < deger
}
