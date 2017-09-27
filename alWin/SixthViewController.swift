//
//  SixthViewController.swift
//  alWon
//
//  Created by Liseth Cardozo Sejas on 9/19/17.
//  Copyright © 2017 Liseth Cardozo Sejas. All rights reserved.
//

import UIKit

class SixthViewController: UIViewController {

//    x = 3
//    while x<3:
//    print "Hi!"
//    x -= 1
//    #function output (nothing)
//    x #3 (while loop never executes)
    
    
    //*****Button OULETS************//
    @IBOutlet weak var watch: UIButton!
    @IBOutlet weak var back: UIButton!
   
    @IBOutlet weak var messageLabel: UILabel!
    
    
    //User Input variables
    @IBOutlet weak var answer1: UITextField!
    
    //hold the output of the user

    let correctResults = ""
    var correct = true
    var triesCount = 0
    
    //VIEWLOAD
    override func viewDidLoad() {
        super.viewDidLoad()
  
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
            let message = "Your answer is correct"
            messageLabel.text = message
            back.isHidden = false
            
        } else {
            messageLabel.isHidden = false
            messageLabel.text = "You need to Study More"
          
            if triesCount == 3 {
                watch.isHidden = false
            }
        }
    
        correct = true
        performSegue(withIdentifier: "seventh", sender: nil)

        
    }
    
    @IBAction func tryAgainButton(_ sender: UIButton) {
        print("try again Button was pressed")
       
    }
    
    
    @IBAction func watchVideo(_ sender: UIButton) {
        print("watch again Button was pressed")
    }
    



}
