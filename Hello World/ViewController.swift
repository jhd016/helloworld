//
//  ViewController.swift
//  Hello World.
//
//  Created by Jonathan Drouin on 11/18/17.
//  Copyright © 2017 Jonathan Drouin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

 
    @IBOutlet weak var theLabel: UILabel!
    
    var tapCount = 0
    
    @IBOutlet weak var textOne: UITextField!
    @IBOutlet weak var textTwo: UITextField!
    
    @IBAction func buttonTap(_ sender: Any) {
        
        print(textOne.text!)
        print(textTwo.text!)
        
        theLabel.text = "Answer is.... \(Double(textOne.text!)! + Double(textTwo.text!)!)"
        
    }
    
    @IBAction func donotTap(_ sender: Any) {
        
         tapCount = tapCount + 1
        print(tapCount)
        if tapCount == 10 {
            theLabel.text = "You have tapped this button 10 more times than you should have!"
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

