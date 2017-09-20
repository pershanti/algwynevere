//
//  SecondViewController.swift
//  alWon
//
//  Created by Liseth Cardozo Sejas on 9/19/17.
//  Copyright © 2017 Liseth Cardozo Sejas. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    
//    x = 3
//    x**2 #9
//    x/2 #1
//    x%2 #1
//    # video: data types in python
    
    //*****Button OULETS************//
    @IBOutlet weak var watch: UIButton!
    @IBOutlet weak var back: UIButton!
//    @IBOutlet weak var tryAgain: UIButton!
    @IBOutlet weak var messageLabel: UILabel!
    
    //User Input variables
    @IBOutlet weak var answer1: UITextField!
    @IBOutlet weak var answer2: UITextField!
    @IBOutlet weak var answer3: UITextField!
    
    //hold the output of the user
    var results = [String]()
    let correctResults = ["9", "1", "1"]
    var correct = true
    var triesCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Loaded Second View Controller")
    }

    //Go button check the answers
    @IBAction func runButtonWasPressed(_ sender: UIButton) {
        triesCount += 1
        results.append(answer1.text!)
        results.append(answer2.text!)
        results.append(answer3.text!)
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
            messageLabel.isHidden = false
            
        } else {
            messageLabel.isHidden = false
            messageLabel.text = "You need to Study More"
//            tryAgain.isHidden = false
            if triesCount == 3 {
                watch.isHidden = false
            }
        }
        results = [String]()
        correct = true
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "watchSegue" {
            let destination = segue.destination as! WatchVideoViewController
            destination.videoSearch = "module operation in python"
            
        } else if segue.identifier == "nextSegue" {
            _ = segue.destination as! SecondViewController
        }
    
    }
    
    @IBAction func tryAgainButton(_ sender: UIButton) {
        print("try again Button was pressed")
        answer1.text = ""
        answer2.text = ""
        answer3.text = ""
    }
    
    
    @IBAction func watchVideo(_ sender: UIButton) {
        print("watch again Button was pressed")
    }
    
    @IBAction func backtoField(_ sender: UIButton) {
        print("back")
        dismiss(animated: true, completion: nil)
    }


}
