//
//  ViewController.swift
//  LoginApp
//
//  Created by Burak Yeşilyurt on 15.06.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var kullaniciTextField: UITextField!
    @IBOutlet weak var sifreTextField: UITextField!
    let kullaniciAdi = "Test"
    let sifre = "1234"
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func kontrol(_ sender: Any) {

        if(kullaniciTextField.text == kullaniciAdi && sifreTextField.text == sifre) {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let sucessContoller = storyboard.instantiateViewController(withIdentifier: "sucessContoller")
            self.present(sucessContoller, animated: false)

        } else {
            let alert = UIAlertController(title: "Hata", message: "Kullanıcı Adı veya Şifre Hatalı", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default acction"), style: .default, handler: { _ in
                    self.kullaniciTextField.text = ""
                    self.sifreTextField.text = ""

                }))
            self.present(alert, animated: false)

        }
    }

}

