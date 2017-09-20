//
//  ThirdViewController.swift
//  alWon
//
//  Created by Liseth Cardozo Sejas on 9/19/17.
//  Copyright © 2017 Liseth Cardozo Sejas. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
//    
//    x = false
//    y = false
//    x = y
//    y = true
//    x # true
//    y # true
//    #video variables and reassignment
    
    //*****Button OULETS************//
    @IBOutlet weak var watch: UIButton!
    @IBOutlet weak var back: UIButton!
    @IBOutlet weak var tryAgain: UIButton!
    @IBOutlet weak var messageLabel: UILabel!
    
    //User Input variables
    @IBOutlet weak var answer1: UITextField!
    @IBOutlet weak var answer2: UITextField!
    
    //hold the output of the user
    var results = [String]()
    let correctResults = ["false", "true"]
    var correct = true
    var triesCount = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Loaded")
    }

    //Go button check the answers
    @IBAction func runButtonWasPressed(_ sender: UIButton) {
        triesCount += 1
        results.append(answer1.text!)
        results.append(answer2.text!)
        var i = correctResults.count - 1
        
        // check the user ouput with correct Result
        while i >= 0 {
            if results[i] != correctResults[i] {
                correct = false
                break
            }else {
                i -= 1
            }
        }
        
        if correct == true {
            let message = "You answer correct"
            messageLabel.text = message
            back.isHidden = false
            
        } else {
            messageLabel.text = "You need to Study More"
            tryAgain.isHidden = false
            if triesCount == 3 {
                watch.isHidden = false
            }
        }
        results = [String]()
        correct = true
        
    }
    
    @IBAction func tryAgainButton(_ sender: UIButton) {
        print("try again Button was pressed")
        answer1.text = ""
        answer2.text = ""
    }
    
    
    @IBAction func watchVideo(_ sender: UIButton) {
        print("watch again Button was pressed")
    }
    
    @IBAction func backtoField(_ sender: UIButton) {
        print("back")
        dismiss(animated: true, completion: nil)
    }


}
