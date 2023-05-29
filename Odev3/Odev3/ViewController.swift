//
//  ViewController.swift
//  Odev3
//
//  Created by Burak Yeşilyurt on 28.05.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var sonucLabel: UILabel!
    @IBOutlet weak var turAraView: UIView!
    @IBOutlet weak var miktarTextField: UITextField!
    @IBOutlet weak var getInputView: UIView!
    @IBOutlet weak var turAraTextInput: UITextField!
    @IBOutlet weak var kgTextField: UITextField!
    @IBOutlet weak var tazeMiSwitch: UISwitch!
    var i = 0
    
    var otlar = [
         Otlar(otTur: "Kekik", otFiyat: 0, tazelikEtkisi: 0.10,tazeMi: true),
         Otlar(otTur: "Nane", otFiyat: 0, tazelikEtkisi: 0.20,tazeMi: true),
         Otlar(otTur: "Fesleğen", otFiyat: 0, tazelikEtkisi: 0.10,tazeMi: true),
         Otlar(otTur: "Reyhan", otFiyat: 0, tazelikEtkisi: 0.25,tazeMi: true)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    @IBAction func belirleButton(_ sender: Any) {
        i += 1
        switch i {
        case 0...3:
            otlar[i].otFiyat = Float(miktarTextField.text ?? "") ?? 0
            textLabel.text = otlar[i].otTur
            
            if !tazeMiSwitch.isOn{
                otlar[i].tazeMi = false
            }
            miktarTextField.text = ""
        default:
            getInputView.isHidden = true
            turAraView.isHidden = false
        }
        print(otlar)
    }
    
    @IBAction func turAraButtonAction(_ sender: Any) {
        
        if let index = otlar.firstIndex(where: {$0.otTur == turAraTextInput.text}){
            var tutar = otlar[index].otFiyat * (Float(kgTextField.text ?? "0") ?? 0)
            tutar = otlar[index].tazeMi ? tutar : tutar - (tutar * otlar[index].tazelikEtkisi)
            let kdv = String(tutar * 0.18)
            let adet = tutar / (Float(kgTextField.text ?? "0") ?? 0)
            sonucLabel.text = """
            \(otlar[index].otTur): \(String(describing: kgTextField.text ?? "error")) X \(adet)  = \(String(tutar))
            KDV(%18): \(kdv)
            Genel Toplam: \(tutar + (Float(kdv) ?? 0))
            tutar = \(tutar)
"""
        }else{
            sonucLabel.text = "HATA OLUŞTU !!!!!"
        }
    }
    
}

