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
        
        //Display number each time pressed and add them up as string
        label.text! += String(sender.tag - 1)
        
        //Convert string to Double
        numberOnScreen = Double(label.text!)!
        
    }
    // Connect buttons to IBAction func button: C ÷ x - + = and tag them from 11 to 16
    @IBAction func button(_ sender: UIButton) {
    }
    
}

