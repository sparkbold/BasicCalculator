//
//  ViewController.swift
//  autoLayoutCalculator
//
//  Created by Sparkbold on 11/10/17.
//  Copyright © 2017 Sparkbold. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var numberOnScreen: Double = 0
    var previousNumber: Double = 0
    var performingMath = false
    var operation = 0

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Connect all numbers 0-9 to IBAction func numbers and tag them from 1 to 10 (remember tag 0 is for every elements)

    @IBAction func numbers(_ sender: UIButton) {
        
        if performingMath {
            label.text = String(sender.tag - 1)
            numberOnScreen = Double(label.text!)!
            performingMath = false
        } else {
        
        //Display number each time pressed and add them up as string
        label.text! += String(sender.tag - 1)
        
        //Convert string to Double
        numberOnScreen = Double(label.text!)!
        }
        
    }
    
    // Connect buttons to IBAction func button: C ÷ x - + = and tag them from 11 to 16
    @IBAction func button(_ sender: UIButton) {
        
        
        //Make sure label is not nil and reset and equal buttons are not pressed
        if label.text != "" && sender.tag != 11 && sender.tag != 16 {
            
            previousNumber = Double(label.text!)!
            
            if sender.tag == 12 { //Divide
                
                label.text = "÷"
                
            }
            else if sender.tag == 13 { //Multiply
                
                label.text = "x"
                
            }
            else if sender.tag == 14 { //Subtract
                
                label.text = "-"
                
            }
            else if sender.tag == 15 { //Add
                
                label.text = "+"
                
            }
            
            operation = sender.tag
            
            performingMath = true
            
        } else if sender.tag == 16 {
            
            if operation == 12 { //divide
                
                label.text = String(previousNumber / numberOnScreen)
                
            } else if operation == 13 { // mutiply
                label.text = String(previousNumber * numberOnScreen)
                
            } else if operation == 14 { // Subtract
                label.text = String(previousNumber - numberOnScreen)
                
            } else if operation == 15 { // Add
                label.text = String(previousNumber + numberOnScreen)
            }
            
        } else if sender.tag == 11 { //reset
            label.text = ""
            previousNumber = 0
            numberOnScreen = 0
            operation = 0
        }
    
    }
    
}

