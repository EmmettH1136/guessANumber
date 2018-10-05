//
//  ViewController.swift
//  guessANumber
//
//  Created by Emmett Hasley on 9/17/18.
//  Copyright © 2018 John Heresy High School. All rights reserved.
//

import UIKit
var permnumber = 1000
var number = Int.random(in: 1 ... permnumber)
var tries = 10
var victory = false
var permtries = 10
class ViewController: UIViewController {
    
    @IBOutlet weak var label20: UILabel!
    @IBOutlet weak var label19: UILabel!
    @IBOutlet weak var label17: UILabel!
    @IBOutlet weak var label18: UILabel!
    @IBOutlet weak var label16: UILabel!
    @IBOutlet weak var label15: UILabel!
    @IBOutlet weak var label14: UILabel!
    @IBOutlet weak var label13: UILabel!
    @IBOutlet weak var label12: UILabel!
    @IBOutlet weak var label11: UILabel!
    @IBOutlet weak var guessPlease: UILabel!
    @IBOutlet weak var triesButton: UIButton!
    @IBOutlet weak var label10: UILabel!
    @IBOutlet weak var label9: UILabel!
    @IBOutlet weak var label8: UILabel!
    @IBOutlet weak var label7: UILabel!
    @IBOutlet weak var label6: UILabel!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var geese: UITextField!
    @IBOutlet weak var slidySlider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        label1.text = ""
        label2.text = ""
        label3.text = ""
        label4.text = ""
        label5.text = ""
        label6.text = ""
        label7.text = ""
        label8.text = ""
        label9.text = ""
        label10.text = ""
        label11.text = ""
        label12.text = ""
        label13.text = ""
        label14.text = ""
        label15.text = ""
        label16.text = ""
        label17.text = ""
        label18.text = ""
        label19.text = ""
        label20.text = ""
        geese.resignFirstResponder()
    }
    
    @IBAction func whenButtonPressed(_ sender: Any) {
        let gueesss = geese.text?.trimmingCharacters(in: CharacterSet(charactersIn: "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ,.?><!@#$%^&*()-=   "))
        let gueessss = gueesss?.trimmingCharacters(in: .whitespaces)
        let gueess = gueessss
        let list = [label1, label2, label3, label4, label5, label6, label7, label8 ,label9, label10, label11, label12, label13, label14, label15, label16, label17, label18, label19, label20]
        if victory == false {
            if tries == 0 {
                result.text = "You lost! It was \(number)"
            } else {
                if Int(gueess!) == number {
                    result.text = "You won!"
                    list[permtries - tries]?.text = "\(Int(gueess!)  ?? 500) Victory!"
                    victory = true
                } else if gueesss == "" {
                    result.text = "Try again"
                } else if Int(gueess!)! <= number {
                    result.text = "Higher"
                    list[permtries - tries]?.text = "\(Int(gueess!)  ?? 500 ) Higher"
                    tries -= 1
                    if tries == 0{
                        result.text = "You lost! It was \(number)?"
                    }
                } else if Int(gueess!)! >= number {
                    result.text = "Lower"
                    list[permtries - tries]?.text = "\(Int(gueess!)  ?? 500) Lower"
                    tries -= 1
                    if tries == 0 {
                        result.text = "You lost! It was \(number)?"
                    }
                } else if (geese.text) != nil {
                    result.text = "Try again"
                }
                
            }
            geese.resignFirstResponder()
        }
    }
    
    @IBAction func whenReset(_ sender: Any) {
        tries = permtries
        number = Int.random(in: 1 ... permnumber)
        label1.text = ""
        label2.text = ""
        label3.text = ""
        label4.text = ""
        label5.text = ""
        label6.text = ""
        label7.text = ""
        label8.text = ""
        label9.text = ""
        label10.text = ""
        label11.text = ""
        label12.text = ""
        label13.text = ""
        label14.text = ""
        label15.text = ""
        label16.text = ""
        label17.text = ""
        label18.text = ""
        label19.text = ""
        label20.text = ""
        victory = false
    }
    
    @IBAction func diffTries(_ sender: Any) {
        if permtries == 1 {
            permtries = 20
            triesButton.setTitle("Tries : \(permtries)", for: .normal)
        } else {
            permtries -= 1
            triesButton.setTitle("Tries : \(permtries)", for: .normal)
        }
    }
    @IBAction func whenSliderChanged(_ sender: Any) {
        permnumber = Int(slidySlider.value)
        guessPlease.text = "Guess a number between 1 and \(permnumber)"
    }
    
}
