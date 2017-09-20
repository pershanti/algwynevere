//
//  FourthViewController.swift
//  alWon
//
//  Created by Liseth Cardozo Sejas on 9/19/17.
//  Copyright © 2017 Liseth Cardozo Sejas. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {
//    for i in range(1,4):
//    print i*2
//    #2,4,6
//    #video: for loops
    //*****Button OULETS************//
    @IBOutlet weak var watch: UIButton!
    @IBOutlet weak var back: UIButton!
    @IBOutlet weak var tryAgain: UIButton!
    @IBOutlet weak var messageLabel: UILabel!
    
    //User Input variables
    @IBOutlet weak var answer1: UITextField!
    
    
    //hold the output of the user
    let correctResults = "2,4,6"
    var correct = true
    var triesCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
          print("Loaded")

    }

    //Go button check the answers
    @IBAction func runButtonWasPressed(_ sender: UIButton) {
        triesCount += 1
        
        // check the user ouput with correct Result
        if correctResults == answer1.text {
            correct = true
        } else {
            correct = false
        }
        
        if correct == true {
            messageLabel.isHidden = false
            let message = "You answer correct"
            messageLabel.text = message
            //add button to next challenge
            
        } else {
            messageLabel.isHidden = false
            messageLabel.text = "You need to Study More"
            tryAgain.isHidden = false
            if triesCount == 3 {
                watch.isHidden = false
            }
        }
        
        correct = true
        
    }
    
    @IBAction func tryAgainButton(_ sender: UIButton) {
        print("try again Button was pressed")
        answer1.text = ""
    
    }
    
    
    @IBAction func watchVideo(_ sender: UIButton) {
        print("watch again Button was pressed")
    }
    
    @IBAction func backtoField(_ sender: UIButton) {
        print("back")
        dismiss(animated: true, completion: nil)
    }



}
