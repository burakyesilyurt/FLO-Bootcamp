//
//  ViewController.swift
//  Unlu_Alintilari
//
//  Created by Burak Yeşilyurt on 25.06.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var girisBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        girisBtn.backgroundColor = UIColor(cgColor: CGColor(red: 242 / 255, green: 169 / 255, blue: 165 / 255, alpha: 1))
        girisBtn.layer.cornerRadius = 14.0
        girisBtn.layer.borderWidth = 1
        girisBtn.layer.borderColor = UIColor.gray.cgColor
    }


}

