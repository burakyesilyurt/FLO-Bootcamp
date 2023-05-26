//
//  main.swift
//  DepoFlo
//
//  Created by Burak Yeşilyurt on 26.05.2023.
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
class Urun{
    var miktar = 0;
    var sonEklenenMiktar = 0;
    var urunAd:String
    var urunKod:String
        init(urunAd:String, urunKod:String){
            self.urunAd = urunAd
            self.urunKod = urunKod
        }
    func ekle(){
        var sayi = 0
        var toplamEklenen = 0
        while(true){
        print("Mikatrı Giriniz (çıkış için 0)",terminator: ": ")
         sayi = inputCheck()
         if(sayi != 0) {
            sonEklenenMiktar = sayi
            toplamEklenen+=sayi
         }
         miktar+=sayi
         if(sayi == 0) {
            print("\(self.urunAd) stoğuna toplam \(toplamEklenen) adet \(urunAd) Eklendi")
            
            break
         }
         
        }
        
    }
    func cikar(){
        
        var sayi = 0
        var toplamCikarilan = 0
        while(true){
        print("Mikatrı Giriniz (çıkış için 0)",terminator: ": ")
         sayi = inputCheck()
          if(sayi > miktar){
            print("Stokta bu kadar yok, \(miktar) adet kaldı")
            return
        }
        if(sayi != 0) {
            sonEklenenMiktar = sayi
            toplamCikarilan += sayi
         }
         miktar-=sayi
         if(sayi == 0) {
             print("\(self.urunAd) stoğuna toplam \(toplamCikarilan) adet \(urunAd) Çıkarıldı")
            break
         }
         
        }
    }

    func stok() {
        print("\(urunKod)lu Stokta \(miktar) adet \(urunAd) var")
        
    }

}

func ara(){
    let ara = readLine()?.lowercased()
    
    switch ara {
    case "ayakkabı":
        ayakkabi.stok()
    case "çanta":
        canta.stok()
    case "gözlük":
        gozluk.stok()
    default:
        print("Böyle bir ürün bulunamamakta")
        
    }
}

func girisEkranı(islem:String? = "") {
    
    
    print("1- Mal Ekle")
    print("2- Mal Çıkart")
    print("3- Stok Ara")
    print("4- Stok Listele")
    print("5- Son işlem")
    print("6- Çık")
    print("Secim",terminator: ": ")
    
    let secim:String? = readLine()
    switch secim {
    case "1":
        malTuruMenu(islem:1)
    case "2":
        malTuruMenu(islem: 2)
    case "3":
       ara()
       girisEkranı(islem: islem)
    case "4":
        ayakkabi.stok()
        canta.stok()
        gozluk.stok()
        girisEkranı(islem: islem)
    case "5":
        
        print("\(islem ?? "Son İşlem Bulunmamakta")")
        girisEkranı(islem: islem)
     case "6":
      break
     
    default:
        print("Yanliş Seçenek Girildi")
        girisEkranı()
    }
    
}

func malTuruMenu(islem:Int,sonIslem:String=""){
    print("1- Ayakkabı")
    print("2- Çanta")
    print("3- Gozluk")
    print("4- Vazgec")
    print("Seçim",terminator: ": ")
    var sonIslem:String = sonIslem
    let secim:String? = readLine()
    switch secim {
    case "1":
        if(islem == 1){
            ayakkabi.ekle()
            sonIslem = "\(ayakkabi.sonEklenenMiktar) adet Ayakkabı Eklendi"
        }else if islem == 2 {
            ayakkabi.cikar()
            sonIslem = "\(ayakkabi.sonEklenenMiktar) adet Ayakkabı Çıkartıldı"
        }
        malTuruMenu(islem: islem,sonIslem: sonIslem)
        
    case "2":
         if(islem == 1){
            canta.ekle()
             sonIslem = "\(canta.sonEklenenMiktar) adet Çanta Eklendi"
        }else if islem == 2 {
            canta.cikar()
            sonIslem = "\(canta.sonEklenenMiktar) adet Çanta Eklendi"
        }
        malTuruMenu(islem: islem,sonIslem: sonIslem)
    case "3":
         if(islem == 1){
            gozluk.ekle()
             sonIslem = "\(gozluk.sonEklenenMiktar) adet Gozluk Eklendi"
        }else if islem == 2 {
            gozluk.cikar()
             sonIslem = "\(gozluk.sonEklenenMiktar) adet Gozluk Eklendi"
        }
        malTuruMenu(islem: islem,sonIslem: sonIslem)
    case "4":
    girisEkranı(islem: sonIslem)
    default:
        print("Yanliş Seçenek Girildi")
        malTuruMenu(islem:islem,sonIslem: sonIslem)
    }
    
    
}



let ayakkabi = Urun(urunAd: "ayakkabı", urunKod: "u01")
let canta = Urun(urunAd: "çanta", urunKod: "u02")
let gozluk = Urun(urunAd: "gözlük", urunKod: "u03")

print("---- DepoFLO v1.0 ----")

girisEkranı()


