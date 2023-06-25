//
//  RandomViewController.swift
//  Unlu_Alintilari
//
//  Created by Burak Yeşilyurt on 25.06.2023.
//

import UIKit

class RandomViewController: UIViewController {

    @IBOutlet weak var authorNameLbl: UILabel!
    @IBOutlet weak var authorWordLbl: UITextView!
    @IBOutlet weak var genderImg: UIImageView!
    @IBOutlet weak var generateBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        generateBtn.layer.cornerRadius = 14.0
        generateBtn.layer.borderWidth = 1
        generateBtn.layer.borderColor = UIColor.gray.cgColor
        generate()

    }

    @IBAction func generateWord(_ sender: Any) {
        generate()
    }
    func generate() {
        if let randomQuote = quotes.randomElement() {
            authorNameLbl.text = randomQuote.author
            authorWordLbl.text = randomQuote.quote
            genderImg.image = randomQuote.gender == .male ? UIImage(named: "erkek") : UIImage(named: "kadin")
        }
    }
}
