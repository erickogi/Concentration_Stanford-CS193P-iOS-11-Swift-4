//
//  ViewController.swift
//  Concentration
//
//  Created by Admin on 25/03/2020.
//  Copyright © 2020 kogi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBAction func touchPumpkinCard(_ sender: UIButton) {
        flipCard(withEmoji: "🎃", on: sender)
    }
    
    @IBAction func touchCard(_ sender: UIButton) {
        flipCard(withEmoji: "👻", on: sender)
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

