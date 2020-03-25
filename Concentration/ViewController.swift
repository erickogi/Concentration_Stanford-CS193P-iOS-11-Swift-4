//
//  ViewController.swift
//  Concentration
//
//  Created by Admin on 25/03/2020.
//  Copyright © 2020 kogi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var flipCount = 0 {
        didSet{
            flipCountLabel.text = "Flips : \(flipCount)"
        }
    }
    
    @IBOutlet var cardButtons: [UIButton]!
    @IBOutlet weak var flipCountLabel: UILabel!
    var emojiChoices  = ["🎃","👻","🎃","👻"]

    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        if let cardNumber = cardButtons.firstIndex(of: sender){
             flipCard(withEmoji:emojiChoices[cardNumber], on: sender)
        }else {
             print("Card not found")
        }
        
       
    }
    
    func flipCard(withEmoji emoji: String, on button: UIButton){
        if button.currentTitle==emoji{
            button.setTitle("", for: UIControl.State.normal)
            button.backgroundColor = UIColor.orange
        }else{
            button.setTitle(emoji, for: UIControl.State.normal)
            button.backgroundColor = UIColor.white
            
        }
       
    }
    

}

