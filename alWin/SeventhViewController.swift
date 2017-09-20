//
//  SeventhViewController.swift
//  alWon
//
//  Created by Liseth Cardozo Sejas on 9/19/17.
//  Copyright © 2017 Liseth Cardozo Sejas. All rights reserved.
//

import UIKit

class SeventhViewController: UIViewController {
//    x = 5
//    while x>2:
//    x = x-1
//    print(x) #2

    //*****Button OULETS************//
    @IBOutlet weak var watch: UIButton!
    @IBOutlet weak var back: UIButton!
  
    @IBOutlet weak var messageLabel: UILabel!
    
    //User Input variables
    @IBOutlet weak var answer1: UITextField!
    
    //hold the output of the user
    
    let correctResults = "2"
    var correct = true
    var triesCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "home3"{
            let target = segue.destination as! GameViewController
            target.showSecondScene()
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
            let message = "You answer correct"
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
        performSegue(withIdentifier: "home3", sender: nil)
        
    }
    
    @IBAction func tryAgainButton(_ sender: UIButton) {
        print("try again Button was pressed")
        
    }
    
    @IBAction func watchVideo(_ sender: UIButton) {
        print("watch again Button was pressed")
    }
    

}
