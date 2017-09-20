//
//  ViewController.swift
//  alWon
//
//  Created by Liseth Cardozo Sejas on 9/19/17.
//  Copyright © 2017 Liseth Cardozo Sejas. All rights reserved.
//

import UIKit

class firstViewController: UIViewController {
    
//    #basics
//    
//    x = 4
//    y = 8
//    x + y #12
//    y/x #2
//    x*y #32
    
    @IBOutlet weak var watch: UIButton!
    
    @IBOutlet weak var solveChallenge2: UIButton!
    
 

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var anser1: UITextField!
    @IBOutlet weak var answer2: UITextField!
    @IBOutlet weak var answer3: UITextField!
    @IBOutlet weak var answe4: UITextField!
    //hold the output of the user
    var results = [String]()
    let correctResults = ["12", "2", "32"]
   
    var correct = true
    var triesCount = 0
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    

    @IBAction func runButtonWasPressed(_ sender: UIButton) {
        triesCount += 1
        results.append(anser1.text!)
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
            solveChallenge2.isHidden = false

        
        } else {
            messageLabel.text = "You Need to Study More"
           
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
            destination.videoSearch = "math operation in python"
            
        } else if segue.identifier == "nextSegue" {
            _ = segue.destination as! SecondViewController
        }
        
    }

    @IBAction func tryAgainButton(_ sender: UIButton) {
        print("try again Button was pressed")
        anser1.text = ""
        answer2.text = ""
        answer3.text = ""
    }
    
    
    @IBAction func watchVideo(_ sender: UIButton) {
          print("watch again Button was pressed")
    }
//    
//    @IBAction func backtoField(_ sender: UIButton) {
//        print("back")
//        dismiss(animated: true, completion: nil)
//    }
//    

}

