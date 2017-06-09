//
//  ViewController.swift
//  CalculatorApp
//
//  Created by KimSoo Ha on 2017-06-08.
//  Copyright © 2017 KimSoo Ha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var TipAmount: UITextField!
    @IBOutlet weak var tipPercentage: UITextField!
    @IBOutlet weak var percentageSlider: UISlider!
    
  
    @IBAction func calculateTip(_ sender: Any) {
        
        let percentage = Double(tipPercentage.text!)! / 100
        let tipAmount = Double(billAmountTextField.text!)! * percentage
        TipAmount.text = String(format: "%.2f",tipAmount)
    }
    
    

    @IBAction func percentageBar(_ sender: UISlider) {
        
        percentageSlider.minimumValue = 0
        percentageSlider.maximumValue = 100
        
        tipPercentage.text = String(format: "%.0f",percentageSlider.value) //format: "%.0f", -- MAKE IT INTEGER
        if let num = Double(billAmountTextField.text!) {
            TipAmount.text = String  (format: "%.3f",num * Double(percentageSlider.value / 100))
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

