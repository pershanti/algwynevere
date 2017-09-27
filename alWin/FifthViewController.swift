//
//  FifthViewController.swift
//  alWon
//
//  Created by Liseth Cardozo Sejas on 9/19/17.
//  Copyright © 2017 Liseth Cardozo Sejas. All rights reserved.
//

import UIKit

class FifthViewController: UIViewController {

//    list = [1,2,3,4]
//    for item in list:
//    print item+1
//    #1,2,3,4
//    videos iterate through an array
    
    //*****Button OULETS************//
    @IBOutlet weak var watch: UIButton!
    @IBOutlet weak var back: UIButton!
  
    
    @IBOutlet weak var messageLabel: UILabel!
    
    //User Input variables
    @IBOutlet weak var answer1: UITextField!

    //hold the output of the user
    let correctResults = "1,2,3,4"
    var correct = true
    var triesCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Loaded")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "home2"{
            let target = segue.destination as! GameViewController
            target.thirdScene()
        }
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
            //add button to next challenge
            
        } else {
            messageLabel.isHidden = false
            messageLabel.text = "You need to Study More"
          
            if triesCount == 3 {
                watch.isHidden = false
            }
        }
        
        correct = true
        performSegue(withIdentifier: "win", sender: nil)
        
    }
    
    @IBAction func tryAgainButton(_ sender: UIButton) {
        print("try again Button was pressed")
        answer1.text = ""
    }
    
    
    @IBAction func watchVideo(_ sender: UIButton) {
        print("watch again Button was pressed")
    }
    
}
